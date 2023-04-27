# Ultroid - UserBot
# Copyright (C) 2020-2023 TeamUltroid
# This file is a part of < https://github.com/TeamUltroid/Ultroid/ >
# PLease read the GNU Affero General Public License in <https://www.github.com/TeamUltroid/Ultroid/blob/main/LICENSE/>.

FROM theteamultroid/ultroid:main

# set timezone
ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY ult /root/TeamUltroid

COPY kstart.sh /root/TeamUltroid/kstart.sh

WORKDIR "/root/TeamUltroid"

RUN ./ultroid install

RUN chmod +x ./kstart.sh

# start the bot.
CMD ["./kstart.sh"]
