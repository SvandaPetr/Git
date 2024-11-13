




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
