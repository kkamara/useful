repos=(
batisteo.vscode-django
bibhasdn.django-html
bibhasdn.django-snippets
bigonesystems.django
bmewburn.vscode-intelephense-client
CoenraadS.bracket-pair-colorizer-2
deerawan.vscode-faker
DhavalVira.django-import-libraries
dsznajder.es7-react-js-snippets
eamodio.gitlens
Equinusocio.vsc-community-material-theme
mblode.twig-language-2
MehediDracula.php-namespace-resolver
ms-python.python
ms-python.vscode-pylance
ms-toolsai.jupyter
ms-toolsai.jupyter-keymap
ms-toolsai.jupyter-renderers
neilbrayfield.php-docblocker
nizami.update-python-packages-and-requirements-txt
onecentlin.laravel-blade
PKief.material-icon-theme
shamanu4.django-intellisense
Tyriar.lorem-ipsum
victorzevallos.vscode-theme-django
)

for repo in "${repos[@]}"
do
	code --install-extension "$repo"
done