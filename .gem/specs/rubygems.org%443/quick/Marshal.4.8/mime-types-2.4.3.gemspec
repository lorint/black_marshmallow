u:Gem::Specification�[I"
2.4.2:ETi	I"mime-types; TU:Gem::Version[I"
2.4.3; TIu:	Time���    :	zoneI"UTC; TI"oThe mime-types library provides a library and registry for information about MIME content type definitions; TU:Gem::Requirement[[[I">=; TU;[I"
1.9.2; TU;	[[[I">=; TU;[I"0; TI"	ruby; T[o:Gem::Dependency
:
@nameI"minitest; T:@requirementU;	[[[I"~>; TU;[I"5.3; T:
@type:development:@prereleaseF:@version_requirementsU;	[[[I"~>; TU;[I"5.3; To;

;I"	rdoc; T;U;	[[[I"~>; TU;[I"4.0; T;;;F;U;	[[[I"~>; TU;[I"4.0; To;

;I"hoe-doofus; T;U;	[[[I"~>; TU;[I"1.0; T;;;F;U;	[[[I"~>; TU;[I"1.0; To;

;I"hoe-gemspec2; T;U;	[[[I"~>; TU;[I"1.1; T;;;F;U;	[[[I"~>; TU;[I"1.1; To;

;I"hoe-git; T;U;	[[[I"~>; TU;[I"1.6; T;;;F;U;	[[[I"~>; TU;[I"1.6; To;

;I"hoe-rubygems; T;U;	[[[I"~>; TU;[I"1.0; T;;;F;U;	[[[I"~>; TU;[I"1.0; To;

;I"hoe-travis; T;U;	[[[I"~>; TU;[I"1.2; T;;;F;U;	[[[I"~>; TU;[I"1.2; To;

;I"	rake; T;U;	[[[I"~>; TU;[I"	10.0; T;;;F;U;	[[[I"~>; TU;[I"	10.0; To;

;I"simplecov; T;U;	[[[I"~>; TU;[I"0.7; T;;;F;U;	[[[I"~>; TU;[I"0.7; To;

;I"coveralls; T;U;	[[[I"~>; TU;[I"0.7; T;;;F;U;	[[[I"~>; TU;[I"0.7; To;

;I"hoe; T;U;	[[[I"~>; TU;[I"	3.12; T;;;F;U;	[[[I"~>; TU;[I"	3.12; T0[I"halostatue@gmail.com; T[I"Austin Ziegler; TI"r
The mime-types library provides a library and registry for information about
MIME content type definitions. It can be used to determine defined filename
extensions for MIME types, or to use filename extensions to look up the likely
MIME type definitions.

MIME content types are used in MIME-compliant communications, as in e-mail or
HTTP traffic, to indicate the type of content which is transmitted. The
mime-types library provides the ability for detailed information about MIME
entities (provided as an enumerable collection of MIME::Type objects) to be
determined and used programmatically. There are many types defined by RFCs and
vendors, so the list is long but by definition incomplete; don't hesitate to to
add additional type definitions (see Contributing.rdoc). The primary sources
for MIME type definitions found in mime-types is the IANA collection of
registrations (see below for the link), RFCs, and W3C recommendations.

This is release 2.4.3, restoring full compatibility with Ruby 1.9.2 (which will
be dropped in mime-types 3.0). It also includes the performance improvements
from mime-types 2.4.2 (since yanked because of the broken Ruby 1.9.2 support)
and the 2.4.1 fix of a bug in observed use of the mime-types library where
extensions were not previously sorted, such that

    MIME::Types.of('image.jpg').first.extensions.first

returned a value of +jpeg+ in mime-types 1, but +jpe+ in mime-types 2. This was
introduced because extensions were sorted during assignment
(MIME::Type#extensions=). This behaviour has been reverted to protect clients
that work as noted above. The preferred way to express this is the new method:

    MIME::Type.of('image.jpg').first.preferred_extension

Łukasz Śliwa created the
{friendly_mime}[https://github.com/lukaszsliwa/friendly_mime] gem, which offers
friendly descriptive names for MIME types. This functionality and
English-language data has been added to mime-types as MIME::Type#friendly. To
make it easy for internationalization, MIME::Type#i18n_key has been added,
which will return a key suitable for use with the
{I18n}[https://github.com/svenfuchs/i18n] library.

As a reminder, mime-types 2.x is no longer compatible with Ruby 1.8 and
mime-types 1.x is only being maintained for security issues. No new MIME types
or features will be added.

mime-types (previously called MIME::Types for Ruby) was originally based on
MIME::Types for Perl by Mark Overmeer, copyright 2001 - 2009. It is built to
conform to the MIME types of RFCs 2045 and 2231. It tracks the {IANA Media
Types registry}[https://www.iana.org/assignments/media-types/media-types.xhtml]
with some types added by the users of mime-types.; TI".https://github.com/halostatue/mime-types/; TT@[I"MIT; TI"Artistic 2.0; TI"
GPL-2; T{ 