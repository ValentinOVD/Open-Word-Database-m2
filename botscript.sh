#!/bin/bash
# echo "Original" ==> pot
for i in `cat original | sed 's/\n//'` ; do echo -e "msgid \"$i\"\\nmsgstr \"\"\\n" >> bot.pot ; done
rm original
wget "https://$1:$2@www.transifex.com/api/2/project/database/resource/origin/translation/fr/?file" -O fr.po
wget "https://$1:$2@www.transifex.com/api/2/project/database/resource/origin/translation/de/?file" -O de.po
wget "https://$1:$2@www.transifex.com/api/2/project/database/resource/origin/translation/ja/?file" -O ja.po
wget "https://$1:$2@www.transifex.com/api/2/project/database/resource/origin/translation/mt/?file" -O mt.po
wget "https://$1:$2@www.transifex.com/api/2/project/database/resource/origin/translation/ru/?file" -O ru.po
wget "https://$1:$2@www.transifex.com/api/2/project/database/resource/origin/translation/ar/?file" -O ar.po
wget "https://$1:$2@www.transifex.com/api/2/project/database/resource/origin/translation/nl/?file" -O nl.po
wget "https://$1:$2@www.transifex.com/api/2/project/database/resource/origin/translation/it/?file" -O it.po
wget "https://$1:$2@www.transifex.com/api/2/project/database/resource/origin/translation/el/?file" -O el.po
wget "https://$1:$2@www.transifex.com/api/2/project/database/resource/origin/translation/pt/?file" -O pt.po

git pull
git add -A *
git commit -m "DB Update of `date +%F_%T`"
git pull
git push
