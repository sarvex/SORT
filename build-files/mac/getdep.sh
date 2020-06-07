#
#    This file is a part of SORT(Simple Open Ray Tracing), an open-source cross
#    platform physically based renderer.
#
#    Copyright (c) 2011-2020 by Jiayin Cao - All rights reserved.
#
#    SORT is a free software written for educational purpose. Anyone can distribute
#    or modify it under the the terms of the GNU General Public License Version 3 as
#    published by the Free Software Foundation. However, there is NO warranty that
#    all components are functional in a perfect manner. Without even the implied
#    warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
#    General Public License for more details.
#
#    You should have received a copy of the GNU General Public License along with
#    this program. If not, see <http://www.gnu.org/licenses/gpl-3.0.html>.
#

case "$(uname -s)" in

Darwin)
rm -rf dependencies
curl -o dependencies.zip http://45.63.123.194/sort_dependencies/mac/dependencies.zip
unzip dependencies.zip
rm -rf __MACOSX
rm dependencies.zip
sh ./build-files/mac/build_tsl.sh
ls ./dependencies/ # just for debugging purpose
;;

CYGWIN*|MINGW32*|MSYS*)
echo 'MS Windows'
;;

# Add here more strings to compare
# See correspondence table at the bottom of this answer

*)
echo 'other OS'
;;
esac
