repos=(
    goals
    crm
    teamcrypt
    python-docker-skeleton
    php-docker-skeleton
    ecommerce
    portfolio
    py-playground
    birthday-currency
    scripts
    artist
    js-playground
    php-playground
    tele-browser
    ram
    laravel-makefile
    useful
)

for i in "${repos[@]}"
    do :
        nohup git clone "git@github.com:kkamara/$i" &
    done

