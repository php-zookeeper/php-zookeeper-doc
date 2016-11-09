#! /bin/sh

PHPDOC=${HOME}/phpdoc
PHPDOC_URL=https://svn.php.net/repository/phpdoc/modules/doc-en

svn co ${PHPDOC_URL} ${PHPDOC} || exit 1

cp -r en/ ${PHPDOC} || exit 1
#cp -r zh/ ${PHPDOC} || exit 1

cd ${PHPDOC}
php doc-base/configure.php --with-lang=en || exit 1

exit 0
