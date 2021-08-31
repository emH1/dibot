#!/usr/bin/perl
use HTTP::Tiny;

#binmode STDOUT, ":encoding(UTF-8)";
#binmode STDIN, ":encoding(UTF-8)";
local $| = 1;

while (<STDIN>)
{
##    if (/\[.*\] <([^>]*)>.*[' ](est|était|es|étais|êtes( tous)?) (([^ ]+ment )?(trop )?([^.?!:, ]+)( [^.?!:, ]+)?( [^.?!:, ]+)?)[.?! ]*\n$/)
# dibot
#     if (/\[(.*)\] <[^>]*>.* [D|d]i([^.\/?!:,…" ])\2?([^.\/\)?!:,…" ]{2,}).*\n$/)
#    {
#      if (int(rand(13)) == 0)
#      {
#        my $chan = $1;
#        my $ans1 = uc($2);
#	my $ans2 = $3;
##	$ans =~ s/(\(|\)|").*//g;
##	if(length($ans)>2)
##	{
##	    print "$pseudo: C'est toi qui es $ans.\n"
#	    print "[$chan]$ans1$ans2 !\n"
##	}
#      }
#    }


#option cri
     if (/\[(.*)\] <[^>]*>.* cr[iy]([^.\/?!:,…\)\(" ]{4,}).*\n$/)
    {
      if (int(rand(10)) == 0)
      {
        my $chan = $1;
        my $ans = uc($2);
            print "[$chan]$ans !\n"
      }
    }
#Ne jamais oublier Dick Rivers
     if (/(\[.*\]) <([^>]*)>.*(d|D)ick (R|r)ivers.*\n$/)
    {
        my $chan = $1;
        print "$chan ckrivers. « crivers » ? Hmm...\n";
        print "$chan VERS !\n"
    }
#gratuit
     if (/\[(.*)\] <[^>]*>.* (g|G)ratuit.*\n$/)
    {
      if (int(rand(10)) == 0)
      {
        my $chan = $1;
            print "[$chan]Rien n'est gratuit !\n"
      }
    }
#soirce
     if (/\[(.*)\] <[^>]*>.* (V|v)ous faites quoi ce soir.*\n$/)
    {
      if (int(rand(4)) == 0)
      {
        my $chan = $1;
            print "[$chan]La même chose que chaque soir, Minus.\n"
      }
    }

#grotas !
     if (/\[(.*)\] <[^>]*> (G|g)rotas(!| !|.|…)?\n$/)
    {
      if (int(rand(6)) == 0)
      {
        my $chan = $1;
            print "[$chan]Grotas$3\n"
      }
    }

#.tumblr.com
     if (/\[(.*)\] <[^>]*> ([a-zA-Z]{4,}) ([a-zA-Z]{4,}) ([a-zA-Z]{4,})\n$/)
    {
      if (int(rand(10)) == 0)
      {
        my $chan = $1;
        if (int(rand(10)) == 0)
        {
        print "[$chan] Would be a great name for a band.\n"
        }
        else
        {
                my $ans = lc($2);
                my $bns = lc($3);
                my $cns = lc($4);
                my $url = "https://".${ans}.${bns}.${cns}.".tumblr.com";
                my %headers = (
                    "User-Agent" => " Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)");
                my $http_status = HTTP::Tiny->new()->get($url, { headers => \%headers })->{status};
                if ($http_status != 404)
                       {
                           print "[$chan] $url ?\n" ;
                }
                else
                {
                print "[$chan] dot tumblr dot com.\n"
                }
              }
      }
    }


#Ted-bashing gratuit
#     if (/\[.*\] <(Ted)>.*\n$/)
#     {
#       if (int(rand(150)) == 0)
#      {
#	if (int(rand(2)) == 0)
#	{
#        print "Shut up Ted, no one likes you.\n"
#      	 }
#	else 
#	{
#	print "Laisse les adultes parler, Ted.\n"
#	}
#	}
#     }

#La voie de son maître (et hopefully celle de personne d'autre)
     if (/^\[dibot\] <Machin>.* echo (.+)\n$/)
    {
        my $ans = $1;
        print "$ans \n"
    }

     if (/^\[dibot\] <([^>]*)>.* \[.*bot\] <Machin>.* echo \[(.*)\].+\n$/)
    {
        my $idiot = $1;
        my $chan = $2;
        print "[$chan] $idiot est un misérable cancrelat qui hacke les bots des braves gens.\n"
    }

#gifs
    if (/\[(.*)\] <([^>]*)>.* dibot.?: (E|e)xcellent\n$/)
    {
	my $chan = $1;
     print "http://youtu.be/kc5hzGXiEUc\n"
    }
    if (/\[(.*)\] <([^>]*)>.* dibot.?: (E|e)h bah\n$/)
    {
        my $chan = $1;
     print "https://www.youtube.com/watch?v=8HmBlvDR4IE\n"
    }

    if (/\[(.*)\] <([^>]*)>.* dibot.?: (H|h)(e|é)las\n$/)
    {
        my $chan = $1;
     print "http://ditesle.ina.fr/politique/charles-de-gaulle-helas-helas-helas\n"
    }

    if (/\[(.*)\] <([^>]*)>.* dibot.?: (N|n)ot sure\n$/)
    {
        my $chan = $1;
     print "http://uzy.me/oo\n"
    }
    if (/\[(.*)\] <([^>]*)>.* dibot.?: (B|b)ad\n$/)
    {
        my $chan = $1;
     print "http://uzy.me/oy\n"
    }
    if (/\[(.*)\] <([^>]*)>.* dibot.?: (I|i)diot\n$/)
    {
        my $chan = $1;
     print "http://uzy.me/qs\n"
    }
    if (/\[(.*)\] <([^>]*)>.* dibot.?: (Bénédicte (Cuperly)?|grotenedicte)('s)? seal of approval\n$/)
    {
        my $chan = $1;
     print "http://imgur.com/qtqScyO\n"
    }

#    if (/\[(.*)\] <([^>]*)>.* dibot.?: (B|b)ourgeois\n$/)
#    {
#        my $chan = $1;
#     print "http://machin.grotas.fr/brgs.jpg\n"
#    }

    if (/\[(.*)\] <([^>]*)>.* dibot.?: (C|c)aro\n$/)
    {
        my $chan = $1;
     print "scribot: un point éponyme pour Caro\n"
    }

    if (/\[(.*)\] <(aaz_?)>.*grossetasseroline.*\n$/)
    {
        my $chan = $1;
	my $idiot = $2;
     print "/kick $idiot And you will know I am the Lord when I lay My vengeance upon you.\n"
    }

#usage
     if (/\[(.*)\] <([^>]*)>.* (cr|d)ibot.?:.*-?(-?(help|usage)).*\n$/)
     {
	my $chan = $1;
     print "Je m'appelle dibot, machine de Machin,\n";
     print "Exécuteur scripté de ses sombres desseins.\n"
     }

#Raccourcis
     if (/\[.*\] <([^>]*)>.*dibot: trahison *\n$/)
    {
        print "scribot: Un point trahison pour aaz\n"
    }
     if (/\[.*\] <([^>]*)>.* dibot.?: (P|p)ads?\n$/)
    {
        my $chan = $1;
     print "Tu trouveras les pads grotas ici : https://mypads.framapad.org/mypads/?/mypads/group/grotas-f9145z786/pad/view/padgrotas-bt147z7ik\n"
    }

#Karabot
     if (/\[.*\] <([^>]*)>.*[a-z]{17}.*\n/) #problème avec la regex
        {
	if (int(rand(11)) == 0)
        {
                print "$1: C'est pas faux.\n"
	        }
	}
#1d6
     if (/(\[.*\]) <[^>]*>.*dibot: (\d+)d(\d+)[ ]?([\+\-] ?\d+)?.*/)
        {
        print $1;
        my $add = int($4);
        print "$2d$3";
        if($add > 0){print "+$add";}
        if($add < 0){print "$add";}
        print": ";
        my $a=0;
        if(int($2)>1e6 or int($3)>1e6 or int($4)>1e6){print "Non.\n";next;}
		for(1..int($2)){
            my $b=int(rand($3))+1;
            $a+=$b;
        }
        $a=$a+$add;
        print "$a\n"
	}
#     if (/\[.*\] <([^>]*)>.* ([^.\/\\?!:, ]{15,}).*\n$/)
#	{
#	my $ans = $2;
#	if /\[.*\] <([^>]*)>.* (C'est pas faux)\.?\n$/) #problème avec la regex
#    	{
#        	my $pseudo = $3;
#        	print "$pseudo : $ans? \n"
#    	}
#	}

#Kikoobot
if (/\[(.*)\] <([^>]*)>.*(J|j)'ai perdu(\.| !)?\n$/)
    {
        my $chan = $1;
        print "[$chan]Tout le monde a gagné !\n"
    }


#reconnaissance de paternité
     if (/\[(.*)\] <(Machin)>.*(cr|d)ibot.*(bébé|child|(E|e)nfant|(F|f)iston).*\n$/)
    {
        my $chan = $1;
        print "[$chan]Parent 1 !\n"
    }
if (/\[.*\] <(louis)>.*(cr|d)ibot.*(bébé|child|enfant|(F|f)iston).*\n$/)
    {
        my $pseudo = $1;
        print "Parent 2 !\n"
    }
if (/\[(.*)\] <(p4bl0)>.*(cr|d)ibot.*(bébé|child|(E|e)nfant|(F|f)iston).*\n$/)
    {
        my $chan = $1;
        print "[$chan]Parent A !\n"
    }
if (/\[(.*)\] <(Mc)>.*(cr|d)ibot.*(bébé|child|(E|e)nfant|(F|f)iston).*\n$/)
    {
        my $chan = $1;
        print "[$chan]Parent B !\n"
    }
#(p|b)ot
if (/\[.*\] <([^>]*)>.(P|p)(o|ô)t(\.| !| \?)?\n$/)
	{
	print "Syntaxe pot : p=Pôt ? o=Oui. 1200=Je suggère d'y aller à 12h00. ff=Freefood. c(1034)=Se référer aux clarchives( vers 10h34). n=Non.\n"
	}
}
