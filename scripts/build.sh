#! /bin/sh

PHPDOC=${HOME}/phpdoc
PHPDOC_URL=https://svn.php.net/repository/phpdoc/modules/doc-en

if [ ! -e ${PHPDOC} ]; then
    svn co ${PHPDOC_URL} ${PHPDOC} || exit 1
else
    svn update ${PHPDOC} || exit 1
fi

echo "Copying git repo. files to phpdoc svn repo. ..."
cp -r en ${PHPDOC}/ || exit 1
#cp -r zh/ ${PHPDOC} || exit 1

cd ${PHPDOC}
php doc-base/configure.php --with-lang=en || exit 1

exit 0
