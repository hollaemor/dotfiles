Vim�UnDo� �V򨋊g;<�s�;����[u�rR�^��      :  echo $(cat sample.txt | cut -d ' ' -f 1 | wmenu -i -l 5)   	         /       /   /   /    hq�    _�                            ����                                                                                                                                                                                                                                                                                                                                                             hq�	     �               echo "Hello, World!"5��                                               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             hq�     �               echo $("Hello, World!"5��                         "                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             hq�     �               echo $("Hello, World!")5��                                                5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             hq�     �               echo $("Hello, World")5��                                             �                                             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             hq�     �               echo $(kitty @ ls | jq ',')5��                        $                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             hq�      �               echo $(kitty @ ls | jq '.')5��                         %                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             hq�$     �               echo $(kitty @ ls | jq '.[0')5��                      #                 #       5�_�      	                 !    ����                                                                                                                                                                                                                                                                                                                                                             hq�&     �               #echo $(kitty @ ls | jq '.[0].name')5��                        )                     5�_�      
           	      #    ����                                                                                                                                                                                                                                                                                                                                                             hq�*     �               %echo $(kitty @ ls | jq '.[0].tabs[0')5��       #                  /                      5�_�   	              
      %    ����                                                                                                                                                                                                                                                                                                                                                             hq�,    �               'echo $(kitty @ ls | jq '.[0].tabs[0].')5��       %                  1                      5�_�   
                    "    ����                                                                                                                                                                                                                                                                                                                                                             hq�1     �                #echo "This is a simple zsh script."5��                          9       $               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             hq�2    �                echo "Current date: $(date)"5��                          9                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             hq�a     �                 ,echo $(kitty @ ls | jq '.[0].tabs[0].title')5��                         #                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             hq�n     �                 /echo $(kitty @ ls | jq -r '.[0].tabs[0].title')5��                        (                     5�_�                       /    ����                                                                                                                                                                                                                                                                                                                                                             hq��     �                 1echo $(kitty @ ls | jq -r '.[] | .tabs[0].title')5��       &       	          2       	              �       !                 -                     5�_�                       "    ����                                                                                                                                                                                                                                                                                                                                                             hq��     �                 %echo $(kitty @ ls | jq -r '.[] | []')5��       "                  .                      5�_�                       $    ����                                                                                                                                                                                                                                                                                                                                                             hq��     �                 'echo $(kitty @ ls | jq -r '.[] | [ .]')5��       $                  0                      �       (                 4                     5�_�                       .    ����                                                                                                                                                                                                                                                                                                                                                             hq��    �                 1echo $(kitty @ ls | jq -r '.[] | [ .tabs[] | .]')5��       .                  :                      5�_�                       4    ����                                                                                                                                                                                                                                                                                                                                                             hq��    �                 6echo $(kitty @ ls | jq -r '.[] | [ .tabs[] | .title]')5��       4                  @                      5�_�                       <    ����                                                                                                                                                                                                                                                                                                                                                             hq�
    �                 =echo $(kitty @ ls | jq -r '.[] | [ .tabs[] | .title] | @csv')5��       <                  H                      5�_�                      4    ����                                                                                                                                                                                                                                                                                                                                                             hq��     �                 Eecho $(kitty @ ls | jq -r '.[] | [ .tabs[] | .title] | @csv' | wmenu)5��       3                  ?                      5�_�                       "    ����                                                                                                                                                                                                                                                                                                                                                             hq��    �                 Decho $(kitty @ ls | jq -r '.[] | [ .tabs[] | .title | @csv' | wmenu)5��       !                  -                      5�_�                       9    ����                                                                                                                                                                                                                                                                                                                                                             hq��    �                 Cecho $(kitty @ ls | jq -r '.[] |  .tabs[] | .title | @csv' | wmenu)5��       3                  ?                      5�_�                       <    ����                                                                                                                                                                                                                                                                                                                                                             hq�    �                 =echo $(kitty @ ls | jq -r '.[] |  .tabs[] | .title ' | wmenu)5��       <                  H                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             hq�(     �                �             5��                                                �                                                5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             hq�.     �             �               print_tabs()5��                                               �                                               �                                                �                                                �                                                5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             hq�1     �                Eecho $(kitty @ ls | jq -r '.[] |  .tabs[] | .title ' | wmenu -i -l 5)5��                                 F               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             hq�2     �             �             5��                                         F       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             hq�4    �               Eecho $(kitty @ ls | jq -r '.[] |  .tabs[] | .title ' | wmenu -i -l 5)5��                                                5�_�      !                      ����                                                                                                                                                                                                                                                                                                                                                             hq�;     �                  �               5��                          f                      �                          f                      �                          g                      5�_�      "           !          ����                                                                                                                                                                                                                                                                                                                                                             hq�@     �                 pr5��                         i                      �                      
   g              
       �               
          g       
              5�_�   !   #           "          ����                                                                                                                                                                                                                                                                                                                                                             hq�A    �                 prit5��                      
   g              
       5�_�   "   $           #           ����                                                                                                                                                                                                                                                                                                                                                             hq�K    �                 5��                                                5�_�   #   %           $           ����                                                                                                                                                                                                                                                                                                                                                             hq�M    �                �             5��                          e                      �                          e                      �                          f                      5�_�   $   &           %          ����                                                                                                                                                                                                                                                                                                                                                             hq��     �                print_first_column5��                          f                      5�_�   %   (           &           ����                                                                                                                                                                                                                                                                                                                                                             hq��     �      	   	       �             5��                          f                      �                          f                      �                          g                      5�_�   &   )   '       (          ����                                                                                                                                                                                                                                                                                                                                                             hq��     �      
           �      
       �      
   
      print_first_column()5��                         {                      �                         }                      �                          ~                      �                          ~                      5�_�   (   *           )   	       ����                                                                                                                                                                                                                                                                                                                                                             hq��    �      
           echo $(cat sample)5��                      :   ~              :       5�_�   )   +           *      
    ����                                                                                                                                                                                                                                                                                                                                                             hq��     �                 
print_tabs5��                        �                     5�_�   *   ,           +      	    ����                                                                                                                                                                                                                                                                                                                                                             hq��    �                 	print_fir5��               	          �       	              5�_�   +   -           ,   	       ����                                                                                                                                                                                                                                                                                                                                                             hq��    �      
         :  echo $(cat sample.txt | cut -d ' ' -f 1 | wmenu -i -l 5)5��                        �                     5�_�   ,   .           -   	   #    ����                                                                                                                                                                                                                                                                                                                                                             hq��     �      
         :  echo $(cat sample.csv | cut -d ' ' -f 1 | wmenu -i -l 5)5��       "                 �                     5�_�   -   /           .   	   "    ����                                                                                                                                                                                                                                                                                                                                                             hq�      �      
         :  echo $(cat sample.csv | cut -d 'm' -f 1 | wmenu -i -l 5)5��       "                 �                     5�_�   .               /   	   "    ����                                                                                                                                                                                                                                                                                                                                                             hq�    �      
         :  echo $(cat sample.csv | cut -d 'r' -f 1 | wmenu -i -l 5)5��       "                 �                     5�_�   &           (   '          ����                                                                                                                                                                                                                                                                                                                                                             hq��     �      	   
      print_first_column() [   ]�      	          5��                         {                      �                         }                      �                          ~                      5�_�              !              ����                                                                                                                                                                                                                                                                                                                                                             hq�=     �      	          print_windows() {       J  echo $(kitty @ ls | jq -r '.[] |  .windows[] | .title ' | wmenu -i -l 5)   }5��                        g              _       5�_�                       ;    ����                                                                                                                                                                                                                                                                                                                                                             hq�>   
 �                >echo $(kitty @ ls | jq -r '.[] | [ .tabs[] | .title]' | wmenu)5��       4                  @                      5��