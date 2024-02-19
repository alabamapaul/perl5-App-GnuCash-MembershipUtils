# NAME

App::GnuCash::MembershipUtils - A group of perl modules and scripts to help in
using [GnuCash](https://www.gnucash.org/) for membership.

# DESCRIPTION

App::GnuCash::MembershipUtils is a group of perl modules and scripts to help in
using [GnuCash](https://www.gnucash.org/) for membership.

It assumes all customers are members, and uses the customer "notes" field to 
determine what type of membership for each member / customer.

# VERSION

Version 0.01

# SYNOPSIS

    use App::GnuCash::MembershipUtils qw( :all );

# PUBLIC FUNCTIONS

## get\_config($filename)

    my ($error, $config) = get_config($filename);

Returns an `$error` if the given `$filename` cannot be opened.
If there is no `$error` then `$config` will be a HASHREF with the
config.

## get\_gnucash\_filename($override, $config)

    my $filename = get_filename_from_config($override, $config);

Returns the `GnuCash.file` from the given `$config`.

## open\_gnucash($filename)

    my ($error, $schema) = open_gnucash($filename);

Returns an `$error` if the given `$filename` cannot be opened.
If `$error` is undef, then `$schema` will be a `GnuCash::Schema`
object.

## get\_all\_members($args)

    my @members = get_all_members($args);

Accepts a HASHREF of `$args` whose keys are as follows:

- config
- schema
- active\_only

Returns an ARRAY of HASHREFs whose keys are as follows:

- name
- id
- notes
- active
- membership\_type
- membership\_account
- membership\_amount

## title\_case($string)

    my $title = title_case($string);

Converts the given `$string` by returning a string by converting
the snake case into title case.

## max\_length(@strings)

    my $max = max_length(@array);

Returns the maximum length of the strings in the arguments provided.

## db\_accounts\_to\_hash($schema)

    my $accounts = db_accounts_to_hash($schema);

Returns a HASHREF whose keys are the complete name of each
account, and whose keys are as follows:

- account\_type
- hidden
- placeholder

## validate\_accounts\_in\_config($args)

    my ($errors, $warnings) = validate_accounts_in_config($args);
    warn $warnings if ($warnings);
    die $errors if ($errors);

Accepts a HASHREF of `$args` whose keys are as follows:

- config
- schema

Returns `$errors` which is a string indicating fatal errors, and
`$warnings` which is a non-fatal error.

# CONFIG FILE FORMAT

This module supports reading a [YAML](https://yaml.org/) based config file.

## SAMPLE

Here is a sample config file:

    ---
    GnuCash:
      file: /path/to/organization.gnucash
      dateFormat: MM/DD/YYYY

    Invoices:
      frequency:   monthly
      description: membership dues

    MembershipTypes:
      default:
        name:    Standard Membership
        account: Income:Membership Dues
        amount:  30.00
      others:
        - name:    Special Membership
          match:   Special
          account: Income:Membership Dues
          amount:  50.00
        - name:    Company Membership
          match:   Company
          account: Income:Membership Dues
          amount:  80.00

## CONFIG FILE SECTIONS

- GnuCash

    This section contains parameters related to the GnuCash file.

    Recognized keys are:

    - file

        The full path to the GnuCash file.

    - dateFormat

        The date format to use when generating CSV files for import into GnuCash.

- Invoices

    This section contains parametes related to generating CSV files for import
    into GnuCash.

    Recognized keys are:

    - frequency

        Used to generate descriptions. Should be one of `weekly`, `monthly`, `quaterly`,
        or `annually`.

        DEFAULT: `monthly`

    - description

        Used to generate descriptions.

        DEFAULT: `Membership dues`

- MembershipTypes

    This is a required section that configures how a membership type is determined, and
    the details such as `account` and `amount` used for generating invoices.

    This section recognizes the following sub sections:

    - default

        This required subsection provides details for the default membership type to apply
        when no others match.

    - others

        This optional subsection provides a list of sections that describe different types
        of memberships.

    Each of these subsections supports the following keys:

    - name

        The name of the membership type.

    - account

        The GnuCash account to use when generating invoices for this type of account.

    - amount

        The amount to use when generating invoices for this type of account.

    - match

        Used when examining the customer's `notes` to determine what type of membership
        for the customer.

        **NOTE:** The `default` does not include a `match` because it is used when none
        of the `others` match.
