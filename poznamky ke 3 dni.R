




library("usethis")

usethis::use_git()

#takhle se spousti komunikace mezi Rstudiem, gitem a githubem

gh::gh_whoami()

usethis::create_from_github(
  repo_spec = "https://github.com/CUNI-SPRouT/VersionControl-playground.git",
  destdir = "C:/Users/Svara/Desktop/magistr/zimni 2025/Sprout"

)

#timhle prikazem muzu cokoliv stahnout z urcite adresy. repo_spec: mi rika, kde se nachazi to co chci stahnout,destdir: mi rika, kam na vlastnim kompu to chci ulozit a musi to byt absolutni cesta, nikoliv relativni. Nikdy nevkladat novy projekt do jiz existujiciho projektu, nevime proc ale je to 11. prikazani!

#a commit je record of a change a ty presne jsou zapisovany, ty zmeny ktere delame.mame soubor a udelame zmenu ulozime a to se ulozi jako commit 1, dalsi pridam dalsi text commit 2 pak za dva dny pridam obrazek a ulozi se commit 3.

# soubor muze mít 3 stavy: modified: změněný soubor, staged: jestli se změna pošle a bude z ni commit nebo ne a commit: že je zaznamenána jeho změna


#git je jako skritek co ti kouka naprojekt a kdykoliv se uvnitr vytvori zmena, tu zaznamena oproti puvodnimu souboru.

#clovek pote muze jim sledovane zmeny nalozit ->stage a poté spolecne s komentarem o jakou zmenu slo commitnout. a ta zmena spolecne s tim komentem see poté zobrazí v histoii zmen.


#je super commitovat vzdycky po nejakych logickych blocich, ne ze napisu celou vec za den a dam jeden commit. ale treba napisu jeden logicky odstavec ten commitnu o cem odstavec je treba. pak pracuju dal. aby zmeny davali smysl a jejich commity taky, kdyz si to treba po mesici otevru.

#SHA je specificky kod commitu a lze to sledovat v historii
# git vzdy porovnava soubor s pedchozi verzi a rozbaruje rozdili mezi starou a novou verzi
# v Rstudiu vzdy zobrazujr zmeny v ramci celeho projektu v jakemkoli souboru uvnitr, ale v githubu si pote lze navolit i sledovani zmen pouze urciteho souboru.


#zatím jsme to ukládali na local repository
#ted, ale potrebujeme synchronizovat local a remote repository usethis::use_github() tak synchronizuju git s githubem

usethis::use_github()

#pokazdy kdyz udelam zmenu, tak se to ulozi na local repository a git mi da vedet ze jsem x commitu pred remote verzi a musím je syncnout se sipkou - pushnout a commity z local se updatují na remote repository

#v githubu muzu videt ty zmeny jeste lepe nez v Rstudiu a dokonce zobrazovat cele projekty v jakemkoliv case, pred x zmenami. a zobrazuje to ty komenty kterre clovek pridava do commitu.

#commity se jiz nedají menit, ale dají se mazat, nebo vkládat nové commity
#reposity se dá vytvořit i prvne v githubu a pak naklonovat do rka nebo vytvorit projekt a soubory v rku a pak je propojit s githubem
#gitingnore soubor: se vytváří automaticky. je to seznm věcí, které má git ignorovat a nemá v nich kontrolovat změny.

#dase v Rstudiu dat i pull a tím se z guthubu, kde třeba někdo udelal commit a ja ji chci u sebe v lokalnim ulozisti, tak dam pull a aktualizuji se mi moje soubory
#pokud ale dva lide budou uploudovat zmenu ve stejne radce, bude merge conflict. protoze git nevi, jaky z nich je ten aktualni. to se tomu vyhnout tim ze casto commituju, pushuju a pullluju, rozdeluji projekt na mensi casti, ve kterych se da bez problemu pracovat najednou.
# kdyz se mi to stane, tak zkrátka vymazu co tam nechci a nechám tam co tam chci nechat.


#pomoci brachnes se dá vytvořit jakoby paralelní versmír, kde můžu dělat změny, commitovat, a pak se dá vice techto bracnches dát dohromady zase s původní verzí.
#v tý jiný realitě jsou ty soubory separovaně a vůbec nemění ty soubory v původní lince. A muzu je i pushnout, ale i v githubu se vytvoří druhá branch, a i tam to bude separovaný jako na local repository.

#spojovani branchy: spojuje se na githubu. je tam button compare and pull request. a tím se spojují ty branche.je důležitý jaký branch marguju do jakého. mohu toto spojení pojmenovat a napsat komentář co spojuji, proč to spojuji, atd.od te chvile co dam pull request, tak je to živoucí věc a mohu do té timeline dávat více změn a ty se budou v pull requestu zobrazovat. K sjednocení souborů dojde až ve chvíli, kdy je schválena a během toho je lze komentovat ostatními uživateli.

#tech branches muze byt vetsi pocet a muze byt vice pullrequestu najednou, takze muzu jednu analyzu dat pull request a dát ji na zkontrolovani vedoucimu. A behem toho co to schvaluje muzu zacit novou branch a pracovat dál a nemusim cekat.

#a samosebou se daji pull requesty zamitnout. Nebo pridat rewievera a bez jeho schvaleni to nepujde
# pri mergovani se mi muze opet stat merge problem, kdyz branche nebudou updatovany stejně. To se dá lehce vyšešit v githubu, který mi hezky řekne kde je merge problém a opět vymažu co chci vymazat a nechá mco tam chci nechat.













