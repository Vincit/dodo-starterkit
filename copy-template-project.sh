# TODO: read wanted template from commandline agruments... e.g.'npm install dodo-starterkit -- ts'
# TODO: check that arg is one of ['es5, 'es6', 'ts']

if [ ! "${INSTALL_PATH:0:1}" = "/" ]; then
  echo "INSTALL_PATH found but it is not absolute.."
  unset INSTALL_PATH
fi

if [ ! $(ls -1 ${INSTALL_PATH} | grep -v -E "(node_modules|npm-debug.log)" | wc -l) == 0 ]; then
  echo "|    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |  "
  echo "v    v    v    v    v    v    v    v    v    v    v    v    v    v    v    v    v    v    v    v    v    v    v  "
  echo ""
  echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
  echo "!!"
  echo "!! Install directory was not empty! Please remove old files before installing new project template."
  echo "!!"
  echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
  echo ""
  echo "^    ^    ^    ^    ^    ^    ^    ^    ^    ^    ^    ^    ^    ^    ^    ^    ^    ^    ^    ^    ^    ^    ^  "
  echo "|    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |  "
  exit 1;
fi

cp -r es5-template/.??* es5-template/* ${INSTALL_PATH:?"Absolute path to INSTALL_PATH must be given. e.g. \"INSTALL_PATH=\$PWD npm install dodo-starterkit\" More info: https://github.com/Vincit/dodo.js/issues/16"}
rm -fr ../dodo-starterkit
# move npm ignore back to gitignore (npm automatically renames it...)
mv ../../.npmignore ../../.gitignore

echo "#################################################################################################################"
echo "           .-.                                                                                                   "
echo "          'iV                                                                                                    "
echo "       'i'in''V'                                                                                                 "
echo "      -'iniiiiV-.                                                                                                "
echo "    -iiViiiinnnin'                        .-'VVVViV'.                        ..                    .--           "
echo "   -iiiiV--''Vincni'.                   -inV'VVV .itc'                    .nctV                    ntti          "
echo "   'iiii-V'.-V--''--V-                 Vtn..ntti   ntt-                   Vttc.                    'ii-      .   "
echo "   'ciniV'   'V-VV'V-V   .-''''-.      nt' 'ttt-   nttV  -ViniiV.   .ViniVcttV   -Viiii-  .       'ini.  .iccc.  "
echo "  .ininii.-- -i-V-.iV. 'iiVV'VVini'.   .'- ntti   .cttV.ittc- itV .Vttn- Vttc. .ntti.-ccVi.       ntti   icttt-  "
echo "  iiiiVVVVii-V'-'iVn''iiVVVVVV'--'in'     -ttt'   'ttt-ittc- .ntnVcttn.  ntti .ntti  'ttV.       -ttt-  Vi'ttt'  "
echo "  Vnc'.-.-'V'-----''--'VniVVVVVV'--Vn'    ittn   .cttV-tttV   nt'-ttt'  'ttt- 'ttt-  'tn         ittn .Vn.-tttV  "
echo "   'c-Vii'--------------VVVVVVVVVV'Vii   -ctt'  -nttV 'tttV .iti 'ttt' -nttc..nttt- -cc-   .Vi' -ctt' nnV.-cttV  "
echo "    VV'-ViiVVVVVVVVV'--'VVVVVVVVVVVVnV   Vttcnncttn-  .icttccn'  .itttciVcttci'nttcccV.    Vttc.ittcVVinnnctcV   "
echo "    .'VininniiVVViiiiiiiiiiiinncnnnni.   .--. -''.      .---.      .--.  .--.   .--.        .'Victti.   ---.     "
echo "       .Vcnncnnnnc--'iVVinnniiiV..-'                                                        Vn-Vttc.             "
echo "         'cnnnnnnnV. .'ViiiiVV-                                                             Vnntci-              "
echo "          Vcnnnnnnin'    .-.                                                                  ..                 "
echo "          .cnnniiiiiii.                                                                                          "
echo "           icnnniiiiinn                                                                                          "
echo "          .icnnniiiiiic.                                                                                         "
echo "#################################################################################################################"
echo "##                                                                                                              #"
echo "##   Installed Dodo.js project template! Now run 'npm install' and 'gulp' and keep up the good work!            #"
echo "##                                                                                                              #"
echo "#################################################################################################################"
