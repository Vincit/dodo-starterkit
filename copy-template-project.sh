# TODO: read wanted template from commandline agruments... e.g.'npm install dodo-starterkit -- ts'
# TODO: check that arg is one of ['es5, 'es6', 'ts']

if [ -e ../../package.json ]; then
  # TODO: add better check that directory is really empty... not only package.json but any other file too...
  echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
  echo "!!"
  echo "!! Looks like you already have project in this directory. Please remove package.json to allow overriding files."
  echo "!!"
  echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
  exit 1;
fi

cp -r es5-template/* ../..
rm -fr ../dodo-starterkit

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
echo "##   Installed Dodo.js project template! Now run 'npm install' and 'gulp' and keep up good work!                #" 
echo "##                                                                                                              #"
echo "#################################################################################################################"
