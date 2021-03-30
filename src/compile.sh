# TODO Urgent: rmd.css has more things than rmd.scss
# Tmp soln: MANUALLY Run
# cp src/scss/tmp_rmd.css inst/css/

# TODO Automate this with Makefile?

css=inst/css
mkdir $css
sassc src/scss/rmd.scss $css/rmd.css

# Live watch for dev
# gosass -watch -input src/scss/ -output $css/
