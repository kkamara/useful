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
    telebrowser
    ram
    laravel-makefile
    useful
    debian-desktop-setup-v2
)

for i in "${repos[@]}"
    do :
        nohup git clone "git@github.com:kkamara/$i" &
    done

