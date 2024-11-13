




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

