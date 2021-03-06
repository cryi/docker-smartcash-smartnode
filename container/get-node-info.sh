#!/bin/sh

#  SMARTCASH Smartnode docker template
#  Copyright © 2019 cryon.io
#
#  This program is free software: you can redistribute it and/or modify
#  it under the terms of the GNU Affero General Public License as published
#  by the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU Affero General Public License for more details.
#
#  You should have received a copy of the GNU Affero General Public License
#  along with this program.  If not, see <https://www.gnu.org/licenses/>.
#
#  Contact: cryi@tutanota.com

ver=$(./get-version.sh)
type="SMARTCASH_SMART"
mn_status=$(smartcash-cli -rpcuser=healthcheck -rpcpassword=healthcheck getmasternodestatus | jq .message)

printf "\
TYPE: %s \n\
VERSION: %s \n\
MN_STATUS: %s \n\
" "$type" "$ver" "$mn_status" > /home/smartcash/.smartcash/node.info

printf "\
TYPE: %s \n\
VERSION: %s \n\
MN_STATUS: %s \n\
" "$type" "$ver" "$mn_status"