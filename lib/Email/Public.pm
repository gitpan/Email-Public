package Email::Public;

use warnings;
use strict;

=head1 NAME

Email::Public - Quickly find if an email address is from a public email provider

=head1 VERSION

Version 0.02

=cut

use vars qw/$VERSION %PUBLIC_DOMAINS/ ;

$VERSION = '0.02';

=head1 SYNOPSIS

This module relies on a list of domains known to be
public email providers (such as yahoo , gmail, hotmail ... ).

To include a new domain in the list, or to remove one please submit a bug at
L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Email-Public>
I'll be notified and I will review it.


Code snippet:

    use Email::Public;

    if ( Email::Public->isPublic($email) ){
      ....
    }

=cut



=head2 isPublic

Returns true if the given email address belongs to the public list.

Usage:
    if ( Email::Public->isPublic($email) ){
      ....
    }


=cut

sub isPublic{
    my ($class, $email) = @_ ;
    my ( $user , $domain ) = split('@' , $email ) ;
    
    return $PUBLIC_DOMAINS{lc($domain)} ;
}


sub BEGIN{

#
# Please keep the list alpha sorted
#
    map { $PUBLIC_DOMAINS{$_} = 1 } qw/
163.com
absamail.co.za
adelphia.net
aim.com
airtel.net
aliceadsl.fr
alice.it
aol.com
aol.fr
aon.at
arcor.de
att.net
bellsouth.net
bigfoot.com
bigfoot.de
bigpond.com
bigpond.com.au
bigpond.net.au
bluewin.ch
blueyonder.co.uk
bol.com.br
btinternet.com
btopenworld.com
cantv.net
caramail.com
cegetel.net
cellc.co.za
charter.net
click21.com.br
clix.pt
club-internet.fr
clubinternet.fr
comcast.net
cox.net
dbmail.com
earthlink.net
eircom.net
e-mailanywhere.com
email.com
eresmas.com
euskalnet.net
evc.net
excite.com
fastwebnet.it
fnac.net
free.fr
freeserve.co.uk
freesurf.fr
fsmail.net
gadz.org
gmail.com
gmx.at
gmx.de
gmx.li
gmx.net
go2.pl
googlemail.com
highveldmail.co.za
hispavista.com
hispeed.ch
hotbox.com
hotmail.com
hotmail.co.uk
hotmail.fr
hotmail.it
hotmail.co.li
ibest.com.br
ifrance.com
ig.com.br
imode.fr
indiatimes.com
infonie.fr
inicia.es
interia.pl
iol.pt
itelefonica.com.br
juno.com
katamail.com
laposte.fr
laposte.net
latinmail.com
libero.it
libertysurf.fr
live.com
live.nl
lycos.com
lycos.co.uk
lycos.es
mageos.com
mail.ru
mailmate.co.za
menara.ma
mixmail.com
msn.com
msn.fr
mweb.co.za
myway.com
navegalia.com
netcourrier.com
netplus.ch
netscape.com
netscape.net
net-up.com
netzero.net
neuf.fr
nomade.fr
noos.fr
ntlworld.com
numericable.com
numericable.fr
o2.pl
oi.com.br
onet.eu
online.fr
ono.com
op.pl
operamail.com
optusnet.com.au
orange.fr
oreka.com
ozu.es
pandora.be
paradise.net.nz
peoplepc.com
peoplepc.fr
poczta.fm
poczta.onet.pl
pop.com.br
portugalmail.pt
prodigy.net.mx
rediffmail.com
romandie.com
sapo.pt
sbcglobal.net
seznam.cz
sify.com
sina.com.cn
skynet.be
sohu.com
sohu.net
swing.be
sympatico.ca
tele2.ch
tele2.fr
telefonica.net
telenet.be
telepolis.com
telkomsa.net
terra.com
terra.com.br
terra.es
tiscali.be
tiscali.co.uk
tiscali.fr
tiscali.it
tlen.pl
uol.com.ar
uol.com.br
uol.com.co
uol.com.mx
uol.com.ve
verizon.net
virgilio.it
virgin.net
vodamail.co.za
voila.fr
vp.pl
wanadoo.com
wanadoo.es
wanadoo.fr
web.de
webmail.co.za
worldonline.fr
wp.pl
ya.com
yahoo.ar
yahoo.ca
yahoo.co.in
yahoo.com
yahoo.com.ar
yahoo.com.au
yahoo.com.br
yahoo.com.cn
yahoo.com.hk
yahoo.com.is
yahoo.com.mx
yahoo.com.ph
yahoo.com.ru
yahoo.com.sg
yahoo.co.nz
yahoo.co.uk
yahoo.co.jp
yahoo.co.kr
yahoo.co.nz
yahoo.co.uk
yahoo.de
yahoo.dk
yahoo.es
yahoo.fr
yahoo.gr
yahoo.ie
yahoo.it
yahoo.jp
yahoo.nl
yahoo.no
yahoo.se
yahoomail.com
zipmail.com.br
zwallet.com
    /
    
    ;
}


=head1 AUTHOR

Jerome Eteve C<< <jerome at eteve.net> >>

=head1 BUGS

Please report any bugs or feature requests to
C<bug-email-public at rt.cpan.org>, or through the web interface at
L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Email-Public>.
I will be notified, and then you'll automatically be notified of progress on
your bug as I make changes.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Email::Public

You can also look for information at:

=over 4

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Email-Public>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Email-Public>

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Email-Public>

=item * Search CPAN

L<http://search.cpan.org/dist/Email-Public>

=back

=head1 ACKNOWLEDGEMENTS

Many thanks to L<http://www.careerjet.com> for the initial list.

=head1 COPYRIGHT & LICENSE

Copyright 2007 Jerome Eteve, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=cut


1; # End of Email::Public
