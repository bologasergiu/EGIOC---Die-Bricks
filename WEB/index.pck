GDPC                                                                            (   D   res://.import/DieBricks.png-77aba5011726c1827aa59a51358610dc.stex   P#            }��+��99|.�Fv�ms<   res://.import/Quit.png-3dc4dad911f20a79c1d059c9a409aff6.stex 9            yl�[^�KCU[7=_��@   res://.import/QuitGame.png-2d03aba2e693198eed49d44739346356.stex�I      r      û��	�"����,�@   res://.import/Start.png-bf279aa252997c37bb2e45e8fb1b6ee3.stex   0[      @      9�+&u��<D(#1N��D   res://.import/StartGame.png-0c0690e8fc386ca4b3d12b21f8fd7901.stex    m      d      ������|~�H�Bu=�@   res://.import/Timer.png-606ba82c1d896aa4eda0b9b5b92e3cc5.stex   P      8D      ��%�ў���̭$�D   res://.import/TitleScreen.jpg-ad2aedbf96ed0ba7fefebccec6f97b7e.stex @�      �       :m�֡�N"(A���-P<   res://.import/ball.png-bc91096d257a7ab889f72eb03aef0a7c.stexU     H       d��US���xw��@   res://.import/brick.png-e5b934862d723d35e311d8bb10977107.stex   X     P       >e��"=�<�E�<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�m     �      &�y���ڞu;>��.p@   res://.import/paddle.png-2a911b567abf32cb67206a34d0146622.stex  [     F       ����Z?`kf��pU   res://Mini Scene/Ball.tscn  �      0      ?����V�K$o��   res://Mini Scene/Brick.tscn       �      )Y�p�^�%�S�y�U   res://Scene/LevelOne.tscn          Q      $�d)�)�$���~��   res://Scripts/Ball.gd.remap �v     '       A������xE��   res://Scripts/Ball.gdc  `      �      U��/�?J��[fG�    res://Scripts/Paddle.gd.remap   �v     )       ćQ��9#�D[P,   res://Scripts/Paddle.gdc@      �      ���s��X� ���A   res://Scripts/World.gd.remap�v     (       ����
`o��RarB2   res://Scripts/World.gdc "      7      ��I�D�����~��$   res://Textures/DieBricks.png.import `6      �      &gwd��h�/��mS�	    res://Textures/Quit.png.import  @G      �      ���c��x#�$   res://Textures/QuitGame.png.import  pX      �      ��A����cΞ��P    res://Textures/Start.png.import pj      �      e��W]���m2�f�Y�$   res://Textures/StartGame.png.import �|      �      )K�p|�wJ�9;��    res://Textures/Timer.png.import ��      �       .���Hg�{i���|d�(   res://Textures/TitleScreen.jpg.import   PR     �      ��{xi�i�È�m{��    res://Textures/ball.png.import  `U     �      ���g�5�m-�_1r��    res://Textures/brick.png.import `X     �      �O��#����o�E��    res://Textures/paddle.png.import`[     �      ��Y������䶐���   res://Timer.gd.remapw             MT�}%	���!��VY�   res://Timer.gdc  ^     4      ����d�ǫ�_,mH   res://Timer.tscn`_            ��f\�bS� �e�    res://TitleScreen.gd.remap  0w     &       8?J}�m��|۳��=[   res://TitleScreen.gdc   pa           b6�4�X��8�o�Q�Q   res://TitleScreen.tscn  �d     �      ���M�(�������c   res://default_env.tres  @m     �       um�`�N��<*ỳ�8   res://icon.png  `w     �      G1?��z�c��vN��   res://icon.png.import   �s     �      ��fe��6�B��^ U�   res://project.binaryP�     ~      *~�3)i������            [gd_scene load_steps=5 format=2]

[ext_resource path="res://Scripts/Ball.gd" type="Script" id=1]
[ext_resource path="res://Textures/ball.png" type="Texture" id=2]

[sub_resource type="PhysicsMaterial" id=1]
friction = 0.0
bounce = 1.0

[sub_resource type="RectangleShape2D" id=2]
extents = Vector2( 4, 4 )

[node name="Ball" type="RigidBody2D"]
position = Vector2( 280, 268 )
mode = 2
physics_material_override = SubResource( 1 )
gravity_scale = 0.0
contacts_reported = 1
contact_monitor = true
linear_velocity = Vector2( 200, -200 )
linear_damp = 0.0
angular_damp = 0.0
script = ExtResource( 1 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="."]
scale = Vector2( 4, 4 )
texture = ExtResource( 2 )

[node name="Collision" type="CollisionShape2D" parent="."]
shape = SubResource( 2 )
[gd_scene load_steps=3 format=2]

[ext_resource path="res://Textures/brick.png" type="Texture" id=1]

[sub_resource type="RectangleShape2D" id=4]
extents = Vector2( 30, 14 )

[node name="Brick" type="StaticBody2D" groups=["Bricks"]]
position = Vector2( 424, 109 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="."]
scale = Vector2( 2, 2 )
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 4 )
      [gd_scene load_steps=7 format=2]

[ext_resource path="res://Textures/paddle.png" type="Texture" id=1]
[ext_resource path="res://Mini Scene/Brick.tscn" type="PackedScene" id=2]
[ext_resource path="res://Scripts/Paddle.gd" type="Script" id=3]
[ext_resource path="res://Scripts/World.gd" type="Script" id=4]
[ext_resource path="res://Timer.tscn" type="PackedScene" id=5]

[sub_resource type="RectangleShape2D" id=3]
extents = Vector2( 40, 4.7 )

[node name="World" type="Node2D"]
position = Vector2( 32, 0 )
script = ExtResource( 4 )

[node name="Paddle" type="KinematicBody2D" parent="."]
position = Vector2( 283, 296 )
script = ExtResource( 3 )

[node name="Sprite" type="Sprite" parent="Paddle"]
scale = Vector2( 2, 2 )
texture = ExtResource( 1 )

[node name="Collision" type="CollisionShape2D" parent="Paddle"]
shape = SubResource( 3 )

[node name="Ancor" type="Position2D" parent="Paddle"]
position = Vector2( 0, 32 )

[node name="Wall" type="StaticBody2D" parent="."]

[node name="Collision" type="CollisionPolygon2D" parent="Wall"]
position = Vector2( -31, -33 )
polygon = PoolVector2Array( 1, 0, 640, 2, 640, 361, 609, 361, 608, 33, 32, 34, 32, 360, 1, 360 )

[node name="Bricks" type="Node2D" parent="."]
position = Vector2( 1, 0 )

[node name="Brick" parent="Bricks" instance=ExtResource( 2 )]
position = Vector2( 367, 130 )

[node name="Brick2" parent="Bricks" instance=ExtResource( 2 )]
position = Vector2( 290, 129 )

[node name="Brick3" parent="Bricks" instance=ExtResource( 2 )]
position = Vector2( 213, 129 )

[node name="Brick4" parent="Bricks" instance=ExtResource( 2 )]
position = Vector2( 403, 88 )

[node name="Brick5" parent="Bricks" instance=ExtResource( 2 )]
position = Vector2( 326, 86 )

[node name="Brick6" parent="Bricks" instance=ExtResource( 2 )]
position = Vector2( 248, 86 )

[node name="Brick7" parent="Bricks" instance=ExtResource( 2 )]
position = Vector2( 174, 86 )

[node name="Score" type="Label" parent="."]
margin_left = 22.0
margin_top = 18.0
margin_right = 62.0
margin_bottom = 32.0
text = "Score: 0"

[node name="Node2D" parent="." instance=ExtResource( 5 )]
position = Vector2( 294, 233 )
               GDSC      	      �      ��������τ�   �������   �������򶶶�   �����϶�   ������������������Ŷ   ���������������Ŷ���   ����׶��   �����Ŷ�   �������������������Ŷ���   ���϶���   ����������ƶ   �������Ӷ���   ����Ӷ��   ���������Ӷ�   �������Ӷ���   ����Ҷ��   ������������������϶   �����޶�   ��������ض��   �����������ض���   ������������������ض   �������϶���   ���������Ҷ�   ������������������϶   ϶��   ����������������¶��   ��Ҷ   �������Ӷ���   �����������Ӷ���   �     0u              Bricks        /root/World             Paddle        Ancor         res://TitleScreen.tscn                                                       	   !   
   (      )      /      8      A      G      Q      \      n      o      p      �      �      �      �      �      �      3YY:�  Y:�  �  Y0�  PQV�  �  P�  Q�  Y0�  P�  QV�  �  ;�  �  PQ�  �  )�	  �  V�  &�	  T�
  P�  QV�  �  P�  QT�  �  �  �	  T�  PQ�  &�	  T�  PQ�  V�  ;�  �  PQT�  PQ�  ;�  �  PQ�	  T�  P�  QT�  PQ�  �  �  ;�  �  T�  PQ�4  P�  �  �  R�  �  Q�  �  P�  Q�  �  &�  PQT�  �  PQT�  T�  V�  �  PQ�  �  PQT�  P�  QY`  GDSC            �      ������������τ�   ���������Ӷ�   ���Ѷ���   �����϶�   ������������������Ŷ   ����������������¶��   ���������������Ŷ���   ����׶��   ϶��   �����������ض���   ������ζ   �����������¶���   �����������������ض�   ζ��   �����������ض���   �����¶�   ����¶��   ��������������������ض��   ���������Ҷ�   ���ڶ���   �������Ӷ���   �������Ӷ���   �������¶���   ��������Ҷ��      res://Mini Scene/Ball.tscn                                                                              !   	   (   
   1      >      H      I      P      `      d      m      }      �      �      �      3YY:�  ?PQY;�  �  Y0�  PQV�  �  P�  Q�  �  P�  Q�  Y0�  P�  QV�  ;�  �	  PQT�  �  ;�
  �  PQT�  PQT�  �  �  P�  P�
  R�  QQYY0�  P�  QV�  &�  4�  �  T�  PQ�  �  V�  �  �  �  ;�  �  T�  PQ�  �  T�  P�	  PQ�  P�  R�  QQ�  �  PQT�  PQT�  P�  QYYY` GDSC         
   )      ���ӄ�   ����Ӷ��   ��������Ӷ��   ����Ӷ��   �������Ӷ���   �������¶���             Score         Score:                     
                        %      &   	   '   
   3YY;�  9�  YY0�  P�  QV�  �  �  �  �  P�  QT�  P�  �>  P�  QQYYY`         GDST  w            �  WEBPRIFF�  WEBPVP8L�  /�w��m��ϝv���m��	�³�a�1x��$EVD��6 �!�ֶ�r��J�l'�	'��m�oG��VFǶOt�ѱ�a��Z����ۉ�G�I�\8����/x���p�m۲�\����Ӷ�t��a۶m۶m۶�g��m]kK�sl>�gD�%�m$I��i��ʬ��}BD�?������� ^�)����J)��F@� �2(��J�	����D'�Ђ�I(�\��u�(�=�$&$��S���~���.��9ljX9"��n�24�	�S.C�A�����-��$w
Q]LnpJ��8����Ys#o���Öa9^X<\�F���ϴ���rMF��>���kSaC��d����.�D��nE����ֱ���'�~f���\,�O�w;������ۤ"���S��"h�5]�����P{E��>~|7��M ��'mN �7����E���I�:RG�o_j��X�s�8_n��x֙���<���B�z�5��*癥��`�}$i)����F��.�ѹ�$�)[I"<Y�0(��[���;VE4��)GQ������t�ƛs���aA��O7�C�	e���ӮF�t|cB�L����%N�Y������!6��$u��O����T��N�p�)<�u�O̃��{��̵�&Lp�ie��kJ<���4�g:+�]꽙e/�������VL=�:���wvi���;�|�t�M��ig�����
����?p}��پ|ݥ���7�C�?tp��5v@#o���!���j�j���<��(�Oc�#!f���z�"�v�/�r�����mu-�O��鮯�\�r��:f��_]�+��Z 1S��W���Sr��p��yS�z��h��;���N�uut�ݵ�l3H���G������k��N-��e�]?�(75�L*

��zk�&G�[�O�E��JJφ$ݕ���p:V����,�]���QS `k�w辏�z{&�` @����&��7yc溚����9ι��� @��v�p�ۅ��7�)1��Y���~
Q���hDVPC�dl�/l7�RU�8|�nLDNn������p�Lk�ӹ����Z�TS �E�k��BӮ��_���A}d��>9�K���o�j��� 7]njy����d��s����G��b��b�+�bWI$z$����'
7�Ty��p3Z>P�i�͂��u�����S;�����
�i4�p_�	�G�C"��NG5�*L�\*^�'׏{kL�f�,E��y]�yAD���N�Gs�N��p�w��ٖ�ACl�}�3N(�vP|#�5�w�z�%J�/G�,("M�"�mA�>zX8ˌ4�1�����u0#ۋ�|�?`Y�p_�����$�����p��V���G�U?u����D��w3��m÷�Ƹ]�8Œ���$�4PnS9Z�K�2&e�»�a�D�2rd^�H�<�;�;TD����:��h�b/,�!��1Ԕ���0�p�*��i���qf����oM�:���5����,R�]�Q��i��җ��g�M	]9k|�;kL��\��H�p�K���]���b�rj�7�� ԇecZ��}��6М����w������j'H��پ��"�C*Z�6 2��6�D�	�'��t�A_R<���E�ӎG7��0�e���==��yX�rm)��+ʈ�T������U:l�q�\���d���lf/ye�j���h�ˠ5��Gg8�����"\f�!���1QҾ�J��gw�����^Lii�,�<�q��Ƴ�r�Qj�5a�hF��+�Q$� hJŷ���1JB�f@��n?���]�/�鶷�T�ջc�.�2���+g��f�V��iv�Ȣ/�M1-x���q�������.4�=�Ui���:O���^6��݄:�m�%F�xj�[���?梗�?�">n">G�a�:}��֘�ld�4�/���ct����t��e�x}7�Z
�0�sQ�{P��	�`K���d>F��;u��p�W}ᨱ�'��K�� �sw��̋<��;�.5���帖��X~�
��Qd��.�)�h�<4�ґ���Ӗ�|�D���tm��-����nv�O�y8Q�1"� 7rmI�0WNg�:	��!�im)��dgo��&��*�5A�ϥ:|�(�)6ۛ`���7���r���D���pY0���C��ƺ�4>�߈�7���pg�įӗm8�>}so]M��	�>����6��!-yh��S9�T�֞�ֶ����5�3�-:ʚ,Ĩ+|������ù��c���-��MB�g��_����p�	�_7�����UizXP�.��^6G��5ޚ6P�߅9���(1�j+�!_/�=�4�3��l]ш��C=���4��>>�!�R*Z�/\1Y�0�A.�] �[~��;l�,�8Q�[��;k,Cq���'�s������d��0�Mx�JϺ��+�����F��<wf�_�@o�fl��O{;�Wk�o�,��f�����Ƕ�q�
I*�#ձ� ͫ��"�@AΟq�p���n�:HtvC �a�>�Q>����e�نw:��#įϾ��B㞪S��d�C�0G��F���e��T�FE���H�a�S��Fx��s���TɎ$��]�J|���׮�+E����Wנ��;ߑ�h� ��&�֚ʻ�Fbp�HD�C}�c-*�ӣ��v�B��Nv�}BXq�	x\E=�d �<�o���SFA��/�?��*�M�e��c�W*)�+�0����:2����oOO���nZ�Kw.�B�_W�,��Kc�Ə0����NT���w�1}B @�����X�	�n����w���MZ�H:��z]o�U���PC��{"g���9Li3�	��ʷ����n�m)ɜ��W��W�LFpB	����r�JUl�)`?J�~4��Q�(�_����w�u�]L>-�)(���i+��M��؍T�r��˾���wE��>6Pg���Kʶ�}������hF��D�R���b=Q+��R�C��T���d΃�Ke6U�1~����ϔ�n����P�'��$RT����<�RBK�I��kJ$y'à@���$ �p~��F�6�yHw*����L�� |��k�%�0�4uF��~���]!�tC�+��R�P�p�p�.�>��g9�o�AI
h�y�К�	ag�~�t�bx)\�{�Xu	�M�S
�V\#����Kܓ�5���_r�~L��
���M0�C�J�|���&a�y�t�5H�h�H��g�Oz:�њoN�֑�Y��ưp���\����Nw>ŏ`|� ܭk~�}�ʖ�I�7���QO�1	�����zJ�u�,��}|�?���!���֝o8�Mc�(��!�f�_>.�K�-$Ľy�r���:�	v����p	Z����;��֚�-�)A�~�pis�P��^�|���[�� ���2��2R#̛�jCt���zؼ��M�Z��,w�D}w�>b�.�l�QЖ-��#(���t������K������B�A��-� �������}����6�dӚ'��h}9V�qt�>1Q4����>����0����fc���ʳ'�{ĥݵ���o��E4�S}T8�~{���w'���	W�!/}s�٘a#�3R���cћ����B�o����"f�j������I��onl���p^�R�l�"<�{T���%�,;ܳ�b!ŝ̖��puX#$�cÕ.#��ё�D{���X�oQw�O���vpmw���!\��R_Ab-K�#���G
��~��0��q�����t[e4���`K�=����~�Ow|���2��3ͥ���bOg��47��Fu�݇��;\7�|�kM��R\n�K�n�)��ߢ;R}jK_�M��d���7O���&�~na���+oj��;����5v��\T����m,�j~C��]q�v�vq���(轫�k���}��:_8r�&:{܍���S�{N���s�am4;>?��?���vŶg�9G���#�J�  SdY��������L5x���9�O�(�rJ}�:=�қI�\U���w��̉��u0���J-/r�ć��q�R�ta�W���l>m	�ޑ�:���}^�r~�?z�@���h\���xl׺S$�hI[�^��bU���~Ub���~��Bw��BJ��ĳ�C�ƤI Os��Rk�g�����<�x|G��jI���Ӳ#���>�d���dG�����?��,7P��o��>��1C�t���j����;}z׮kF�ڛ�a!�5u�O�ڵ���zZ*�7��Į]�{߫�����c=��᯺s��++{���WGuP���'��}��x�{�������v{��4���J�u���ΉaO�ܨ�b�}���o�n�}D��آ�"�1#Z���o�}�NS�uI���i���P,�[��N �0!�[�;J�g�������R�X,d�&���"f��\n/�+�&���`ES����V�����65T$��`A5i�¬xyC[{KmI�d�;E�Y��X]ZZ��*�&#T���w��ue��#�u#�Y�x<[�@�&w+2(�C�x"�J��	%�F��I�N%�A�J���K�-�i"{<ꙺ)+H����S���N�F�ba�Ţ��*#�.-��]T�bO���`�w��<��1����4F�* ��	�d�H%/��i���]���@@I$ʹ,SgD��0z^~� ����?��,��&,$!�m�<�����?            [remap]

importer="texture"
type="StreamTexture"
path="res://.import/DieBricks.png-77aba5011726c1827aa59a51358610dc.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Textures/DieBricks.png"
dest_files=[ "res://.import/DieBricks.png-77aba5011726c1827aa59a51358610dc.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
      GDST�   ,            �  WEBPRIFF�  WEBPVP8L�  /��
�0D�?�m���q�K����m�򴶶�}?	�e`�!8��1���������9\�����v�� �R��.n�H�TNv�����7��8���@��p �Ge� ��r   �Cح�N�Ɖg�r�;��)M+zy#�C��E� ʚU���(��y���U�L,���*��)��ݢ7۪T�!Ddں�K�,���n�&kْK��^�؛} ��8�M����䬼<�X��M� �:a�w��%"�}��W�{Ĥ*����ˉ�P"���) '���R( (��H�$y��_;��G�J}җ�l��ѣ  ����  8b��=  (����ٲ��$/�lD�OP�ـ���䅂p^x�[�:� �`�9��y�� @���Ҙ�fa!��%���B�"	�,%�ɹ=q7/�	d-i���պ f��|  �� �~8�X��Vm3 �gL,f��  ���I嘇*g�r[��p��x���F��y��x��q7�O�����x�7ð��*��7x�r6�d�@BB|������ hv"�R�@ӱ��&�-�x�{�b��<��ʒ.���6ߒ�y׊��K�"��J ��I�}@�E
ElX jú��� �Xu�I��l�S'��
�L�i�b�sc�{/���{�?��@��X��N0&P&��o�R& q��(Ǚ�f�ܡІX��+�p���G�ĺ����6)Aκ`r.[�j��n��%A����lSd/�I�X��Kk&<����=L²q�8FJ�
��3�Q�X ��ec �P��)S�CpE,�
�Ҧ��%� �tŲe��	ФV�A` �X�v���@`��ѪZ�"%<� v�_��URb�~ ��.G�80��,t�U �vF0�n QFE�L�,Q�����  X?/\� �4��X^� �T <e�b�DJ8T,N$�N'`�v���yi��c �*4�'C��p ��,�A�%����e(/!Z���tQކ���
	G����cT ��� e%� ���#θ
��s�  +��Nd�@�K�������60��pXnb��Y��&I?�x
l@`�T ��� N�A��u���� O�,	�˔P�ո�����NQ��@��?�~���6+��(kNإ�  �	�84JJp P�� �3�2�3{g�^�p �RA�L0Hi�MDq�C__
�QJcr�$���v�N���A?������Uu��Hă4/_* ���� �h#�`">�v���C��K��\��@�7�6	{)=� H��}`�UE�A`� ���i�3�@'��t���/��w� s�]�}wg��`�֛�p `�l�p�9@��`t��]�!c��&��4!�����jT�<!�Q�4ى@G�'�;"�U���MfD��> ����c]J���nT� �G��\;�-DY��NU ��H�dL�� G f�5���J�m5����!�S0�� !� 읲\6@� pI�9��d�0:4����1�̨���`-�4��]�XU� ��ú7��YԌV(v����2�:���f��:)@�q�+�/��Q�Axvsƚ�L]f4F<Rzf :gU@�A�����i�^�X������!�IT�x5#<��03�P�B� "0:L ��Z�� V�V-	��y"Zm�ƒ�X3@�"^�I�1F\�obP��B� ��(c��m�4A�*%�A]�"�9�@�� P&//�AJ��I	�/ �67��`?�a��b�V� u����u�_	ʖ�V�Wht�9dd�,+ˊm��gR�[ ���h0��*��" &5	"����
cY�������^#�um`�z�9 ��s: ^+ /v�:�Փ���FM��. UR	�.��s���F��qd� �� A&��#V��Pw�"���Հ�uȉ�A�7���0���uZ�f])4�CCּ�^ʌn�ϸE@ɯ�-�Yܗ��JH��ǋ�1  ��R@�,�8^भ�<���d��Af5Ǵ�L� H�y�|Κfu"	���X�F��\���p�D� P�q<�8e�X��<�1�:��u&�qH%by���h�X"a�~�}�s�� �	��� 0H0� sY�r�0:�I ,���d�e�Ǔ%V {��#�2�|�2� �1�x� * 8g��q]�h�Pu	=V �vv;E �B��,1��y^�8+=���0\2�*te�� ̨�a�t�n�9FY6јv�Li����#���z�R� �� ���x�C @)ţ�1�*3�;]d��A4f�S�1bET8��dԬV��:F8Ye ��w��� ��D�M�� F�0]H@�2|+�\���.���1�-���u�J��m��V�Q]�!��#f� 6[�bx�f h�%|H�7{9��d��D`��O"� ���@�a�	�sv0� ,�f�Lk�k�h������B�/#5N�I�,D�j��
��2jPJj��P���g�q��(� gm'�9[)ǁ�h��J� ���i���C��[�a��'�^wP��$} `Nʘ@3WC-�4��<�<Lk���� ห�i`T�I u{����
�̐朗��"c: ��[[��
n�8��~Px�2 �= �P �Q`^S�EX�a�6���
�g��� 3�)�H;�r0 3!�k�Z0&�gT$�9@�1� h4��8+���nv���
Dn,lc �PÎ�~����A�- �2A�@]pZ<��x} �� �0� �i����)P�����"���3�@�zp>%~�n��Y7��W��ީ]��"INp+��^e�������眴�$���;e��"�������B����K �G���P
���(�9m��F�DD��@�s��0x�i�2��q� �L�D�7x�k=�P����f����
�[ݨp���<�=�g�����wz ���^c�R�F(�o�d�)� ������ <��?�?c�/i�u2n3�;���e���` �}U_��p��> z|�f%J�0�io ��� ��"<u&���Y��I^�B��6��1�<�Ɲ'�Q�9��%�E?��F P�R��P
x) h���lg̋f[��O` Ъ"��b�A(�N�6��k<�i�A  k�B���C���uW�Z?�15  W/PbAu�rvK�����ǥ �>f@��Z �A-�ee�U ��5�2��7'�v_p\5�~�����ýٷ��3�c·<�k��\�S�+>�i�u����{-X�uE��;�)���dQ^�J�g��窵)$�%jD!3���H:cJ�:		޻�#�P�!A�j�Ш�NE�͹"��3����F�E 0#��%%	
t���$�V̜q����*	          [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Quit.png-3dc4dad911f20a79c1d059c9a409aff6.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Textures/Quit.png"
dest_files=[ "res://.import/Quit.png-3dc4dad911f20a79c1d059c9a409aff6.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
     GDST�   ,            V  WEBPRIFFJ  WEBPVP8L=  /��
O��m$��y.�r��S>�
۶mS��:��`A�`BP�`�A��ď ö�k��^��,h�4<�al�ǎ1L��'�23S��0�Yޤ�f�0��m�e��{�1�����و�C�$7n��}H��b8�T�i2�P�2hNT5�04E�U���,��>CWDQ�E�B�{E,U6��d��`�!��c)�EY�ir��I��i�PΥ
�fh��	�j����@��P�#�����jS�)��۫v���X�1�zh��{ `OcPah�������k�"K�F��Q�gYi�Q�i�x���S=f�W��GU�#&vD�5i*Mw���F8bZ�(ȸj�ă� ϸb���'���5O����|T��,;AD�����s���seb!��������8�tH�hű�[���5ּH�����"�-�G|ޝ6Db-��G!i��
�n�G�����@���,�L���`ٷ�؎�&2��;�<w�����c�@sm<�<���+��l�	�`���+��2�Z����� `hZ@"�J�rY�)S1�y���#�pDEo�l9g�%�w���=wܲ�f���Jo_�6Y6Ι�*����TF�j���vg������3y89��x!phx��e�����$�7l�8��#�NX��2���m��D5��m�ؕ�{��H��)��مTT�� ���w5wL ����8�լ����/�k|,'�c����h(���S�U�q����d�g���< l)�]�x>"��/ ��PW���ē���l��m�hQ� �4�⊰l�i�f����db���^Z��>�s�	���ֺ�z �gC<��G�����_��ΆyQ~�R�V��k��^���D2U38څ��eqO]~�e��T,��v��0��ˏ���^��T�p!�/�I��O�J���U�����~ �;SQc�嶦J���G��>U�u�'<�v�����rO.�74U�)�#�����Z[D|����l_�t������A���l{R*_��yn���	��H��^^�?X9�"��͗s�+t�A�����R֯�Ϻ���8�k�!d�[z�A��$��^4-�3�_�
 ���,��m�I������e<Ѿ�՛*��]Li��m���:�,M��.�<S�~#� �ڗ5t�C|ڙ�K6���U"KG	w�5B)�9�[������l����O�u~�� L��|�/g���TP.���{f�eM1��b(���T��	�H��7u.���N8ޗՅr*�r<]��e n�7��Jo�2j˖�Re��-�
qY`����"�d��sWR�I�ތ.q�N�����&P�|˺������LB��M��Z-r4/+�H�yp� p���7g��Є-���!:�<E�6�� 6�W�X��Ŕ6	9o�r���R`���4q�(��o; ������{��>���P��Eb
m�ay�Lޏ=�0牽��z⾢(�8�/�i��ޔ��8���*� �pbh��a�3`h�*���xw*�MJ�"<�+�{�z��Yn��򇦈J�ؾ��+[lYX�}�N�v7�i{w�&�������2z��k�p�;��	`}k�N�FN�m�R>���[}P����ch��j�N#n�O�~M���!&x�
wܭ �K��1�;:ɖ; �l�}�q�����Č�ДG�-��d����c.�x~�̖e(2�;�~�C�[�c])��x�� ^-4xl%Q�aաTW�<'�IEyGN%.��s�"<�����14�0MS��o����� ��GPm3?���`Y:B��F����"~��n��p�u�z�QV�ߧ�<�I��7�x��g�pN���g�^ΌL���t҉%7> W�c��ē�.[���ѱ��˃
+(p���d����= V�u�����N+�ŗ�|xJT��}	S�g�y��V�n���4�M�[�۪�wU��x40�_FOI�&'n��Ջ,gI�ӕP\��]���R�~`C{��q7��	�n2�ٝ�w�;��(m��7���9`ykeS��?`9���N�=9����we��H�I_�}����)��ҚS�;���]�F�>4Y���WL4[^���c���%'#�r�CG��O���o�:S���#�;��5�hos�)��8�C�/�i�+=u�>�6}2}�QBL�$ l��G;�]3:��� n�{�О\B���檧�c]� ��HWK~Z}2�1������a�l��2�	͡��A[n!�-Hd��q�վ| hX��h��x����>�-c�����A3������N"���΄+gU�¤LbuV�6+��Ŵn����k|�SkMb������8q�X�P�W��*	,Uቶ��=�#p�K����_�
�Ƞ��-�Ⲭ��:�����l-U�/خ)���?ڧWpvz�<��1M�*#� ��^�g��=.��X�T)�A�2 }-բ$� �؝���0�2��-pv�%n<F��7��&k�z�ؖ4Et^�ok�2��c��`s��j$'S���RCL�G s�CS$4`99P_��A��(O�h�hVB�ɋ��V����-3��:�;��#��2Y�P���rgBQ�D�ך�N��ݹ0��5�V�s 7��> ����|�e~c� 
I7�Bl����.�m�Ǒư��;ĭ������ƐRml���u}6�':jLux��
�,��B���ӧ���j�"���U"aCG�?%}+�> �Y7�L����5i�1}NJ�����璵c6�����0L�Q|�� pdpZP�F޼�#��!���jQrAS�={«�g��6M�"��J�C9�Y��)QA��=g��%f^DT|L�igh%?h�(��IEu�3-���H�?h��X��k+�	�����l�z����h+C� ^�LNx�`�ʡ)�R�^Ĕe}{m�)������ ��p��>J����L���]�I���ȳA ������s�٧�^���,GK}D�)e}-��c�d� +�.ŉ�mM���V� ��Q�rx�#�\
�����O`�`�)[�� .k���I�h��Y�a�icD��H��y��l���wmgnl�	���8��W���SSDcD�B Å�.�,� �J�3ep�
 ������δ?:�i�ڟ�E 7w��Zdpt�9f�M34�I�������ȹ� '�ڲ�Z W$��P����Wm�r�op�#}���,���,�8�R�r5��d��o�_|
��GWW�X��8n���孻��r읤)0D�u�X�;P&�6�<��$�ҙ�  ��!�w9���Ԫ"K��j?/���|��|�f}�),-�+��L��Aƺ���+e�x^������ޣ
V�.����,~�2�R��+���tHํ7�C���������(Z���_�Mo��6������8N������.Pv�,9W���y�Q�hΈeW�x[�Xh�tɍ�Q����s7޾��=�X�5��ݸ쒞B]������u+V���)���2�+ёu/�?�P_�3��˯_Q�n��<�sղ��
����-]�Wj�F��c%x�KW��t4]t�+W=��+�\�r���               [remap]

importer="texture"
type="StreamTexture"
path="res://.import/QuitGame.png-2d03aba2e693198eed49d44739346356.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Textures/QuitGame.png"
dest_files=[ "res://.import/QuitGame.png-2d03aba2e693198eed49d44739346356.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
         GDST�   ,            $  WEBPRIFF  WEBPVP8L  /��
G��m����v���m�6)�#>!���{DC�E��������������Z�mj�M�������0l��ذ3;~�ܠ0G��>��:���%��?�m$I���{���
��nݦZ]DY�JC���U�%t��>M�:&#(�i��&�X���֭+f����Mst�'>M|>��4���%�B�uCA���p08�0�
`�3~�ܙ�n�?9y�4��\H��0��!V�F ��W'Æ�B���tO���~��9T⡉�? ����ч�[
 ?��q|������T�_�[��el��K�:g����t��-�m|>/nH�<�u~��:'����~��7!��Ci]���T���e�.�2���ͣ��!>N:��&�1�>�\'7V�$���-�N���:_��;7�(Q64�U�:�ڎZՠ��*�� ^z۲�x9���} ?��C`WW�d��� ���q���ə ^��
Sm*�Oi� �n� ���|�sZ�� /����Ȼ<3w��:3㢓���\�~�z ��ƷY�g�?`W�2��ԩG����k��Z���;���� 7�{��mɀ8�SZ;�d�~;k|�) #-ԁsm�#��� ���UC�f}��D�>ս�;���u��l� ���~-���+�=������6�>�1�ț,�zkT�:0j�u�� nn�+�k�qO�=�����[�b�[�\ ���K�C]�O7'E����U�I�]{fgٔ7��f�Zv�Z35�l�;������ڸ5����c�z]�����a0���ew��$=��c��,,�7�xh�#����\w����lJ1!t�9���t��l�����Dr;�h�>C��ݽٸa�Uk`���S�M~��*h ���֭pVSP�ui}6�x �f��&��`��KQ7[��ꂏ�X�V��cL;��t�UM/�����px��/�[R�*k�A�h_6*˒�2��� �ⶐ����t���1C=������KŖ�V ��X�&v{�$Z��P�iJ
u�HX^���s��Եx}mUP��L���!�!��e}gL#N/��h��Bw�d��.S�
`O!������0ϸ6�i�)7wDU�+�>�qR�	T��x�D�h8�r���-��0��vsh�$�ح�L��;��{kC�i�	3 l�Wy-\�R�0X�SB���S&#)k�,��WGJd��Dj��Q���	�����:�H�� ���<�֝8�z���@<dJqmBal��r�:�`6�U�9	�m(˱,����|H�F��B �%��R0�3�3� ��OMlw�i s�b���6TvPW)ƃ ��B%�>��4�bc�w� Xљ�8�rpr�=���`�xh�� ��R��G����+F���.�����Y�f���~a��+]u3px�5�Pw&!��8x�4�ܔ��w�GÍ�7�z�(# ��6��	� �=�~�-�֏Y�Y�3rY�[2���0ޚ�&�}� _4. ��mgI;<Xo��!�?Xޚ�8�ę �?	�R��TJ�/����4$��&�ާ �������8�P�)�!��Օ ����"�JZ`��{��ּf��D����O�fJK���k�
��Z k�2�/_oiO�%��2�rxpb�- ;�b:�x��|51�8<�@]j�eIG�/�85d���`8 ������Y�~���+ ��%E�rd�5�3��T��1�& �WXo��x~��Q�b�f����q�P�9&TaX�eB�{J ���_G/�b�펶��� ~J��F?૮jk��!����+� 0�-�؍�b�3<�g�Yek�f��.�c�5q���3�����S3�R�AF��z�m ZӺ�_Ν �?�S�0&ƺ��Fl��ѽ .���YR�к7�ON�� ��ߵ�ݶ�M �&�\�S� ���`�Bx��X��8/�9N��N����T�pd�=�1�k�ؒ�]P���MlV/ p�]#}� ;��nF[B>_E>���i�/t�p� 8��4c26
�O X3����l�����	�x�k����� ���*�Q]L�G|�x�Z�m ��F��+=�� �?gb�y�X�6�2��= �:2��+�*O����xqu.�=4�Y�����4�~x��N)��|݃ ���Y�>0x�}Ju�cJ�Y���}��3Fzsw ��vb'l��yz&�������� �� ��D.fJ�M�Oi����xg���b�!Q�-�����}�:EF=`Ys�Z�Ē�v�4	�4�ݔ>����&�S�Fz��:iK�ѶPB�P��і�!{hb��r	坩���S��I;:�����1S+�ތ.�LwF�}������Z�=]i��	����W���@J�]�:?TJsP�c �(���&�)O5�l+n�˔#c�D4
iB��b�W�:]�q6����|MX���ר��6��o���s񰓧gB]�9��5/M��c����d�R[*��ְ_U���0���M#M�	`YW��&��YC��s,���w��N9�XkX� ��t/MJz \�U~�rE>���6��د��l}	��<Ǳ�CV���B�@S��Hg��� ��P�_����jM�sH��'��&չ���	��0�YX�Ԭ�xl��-A����S"�T���2�ĳ�������._"�|5�Q�.R�4�{o���)����΄��覧&G�2�86�o��&��<^�����p�)�q�\ �;��`k��������ů���=���$�ۨ�fO�J�v�dB��P�<5a�y����*5��s,j�h���.T��pvUP��X��Cj�&nF?l��+"g��3b5�� �Ƭ����>�׆Ź ����!OMX~#�b[R	M����� ks1����N��/�⦘����.j�`�z�A�_?C�F\��֤̗���N�� +���yOM8~p�ؒ���/ސk����u�֝�0[6�:zŸ�� ��`��ugd���Y�r�����u�D��
 \Ԗ�0��J?�SN�Z2�d=V�I��l ��+ir��K��l)��c�}Y3� �	�[��%%��
[��s�RN��oc�Wg�8z�mq�ڍ8�u�p� vL���|3ַؖyj"��,MV#0dV���I��$�/Q�ŷ�����ɹ-����o���p�Ֆ���N�?p��Y+.pf[B�f�P̽�����w�Һ!l�S���� �oL��{j"ɖ����c�h�=�:$�J�P���3���U ��mX�yk�c$� W�e�
+�}#���^.X��"	����<�UTy�8��⶗_��Y_ �xJM"x�S�`�Y�Ñ��*0�0�E���T���pl���L�%e����$ \Y��%�f�cI�����ë�u��<��.��o��~��w�B����pߏ4|f��O�H��I;����ײ�$0�o����"��eԙ'l�^lK�"��̓�a�MP�TOae{�+l�	 �7�˼Sڐ��Ϥ����!|�[�s`��l�,�m�Yi�����	��斦���vwsD㴿h�δ����I�٠&:���~3+F֜��+��is��&��isr�*�[��=�*7��f�u+~Ꭓ]ua��83Y�r����W�����W.��U�eV6g]|�e��\}���-�x(ߖM�4���)C��i��/�Ǧ=����}-��&����/]�|���>�sԋ9�+ɔ���]�|�};߼�4w  [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Start.png-bf279aa252997c37bb2e45e8fb1b6ee3.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Textures/Start.png"
dest_files=[ "res://.import/Start.png-bf279aa252997c37bb2e45e8fb1b6ee3.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
  GDST�   ,            H  WEBPRIFF<  WEBPVP8L/  /��
W���$���\!�)�r�m۠�0�ڴ<;� �@��m�c&��/���-o�m���b�d�ٖ)�e�����M�T�4TfHӆ����]f'�@����{1t�HK�	�$)�d9�G�Uy_�U�/������()�^.�0M��Ia���@٘TTu��o�`�ŉ�i��l��d�C�ϥ�� �_WE�8�0LUE�0�����Xo�Ԫ�O��{p[:�����=�� {�aE`��4fʄX9� ��[���O��=��'"� �t�S&�R���g�A�g+
 �4��	��$S���L�_���¥6�db�����g�O��>[�0eJi�SZ�σ̡8�ב	����	�'����~`��[s\j~�(W�������֨N������2 {YW�En���x�u��BC����	C����%�1׉x�������
?{��oYv�.~۵�w�'v l�I�9�� pZ{B�,Jj.�W�`���Ua����x!�o6| ��1�̹V��A ���MZF� �\8�S��s���^�f�:��s&���t1�o�����&��'J|ҩ�k�3��	�: �/z�����SZ;B���>��(��6���v�#��>���UC�n}b�����v/���9�W1i%��3������t�e���������<�1�SB�����u��-
����V 74'��Uw��u`��P�?-I�̭�^ �'ʹe.��G[���&����ͦ'�:���U�����bK�6��b{�.�kx�9��T[W���<���r��hH̑Q ��{~��5����vT��	�|�: ���gn�<�[�
>ʝ�(墢(�� �F�b!,�����`�dW2�x��	C����\��4k�:��o	�LӢ`U_}�* ������g�Io _���O0�i�҉�h,_��G����k���4�u���9IӍ�� �o�D��<�-mh�n��b�"��j� 8�#�:���&�`Sg�%i�x��|�-����Eέ�]L��ۂ����`��(+6��Q�X ���&��'�kBOu88��` �5�q�8�t�c�����?G]Һ,q���\T
}�/�#u턥�θ�+�A�e��I�.2�,��Z��2M��"!��>A�#<�MX��LJ�Vv�"�m�o��a״��9 �jC��m�O���	!����~*���C��W��N�%fT��M�u � ��_��t�B� �-1�:�u'��ƺr$-��eJ\;aP�o��C���5��U����U��G}^p�n�÷����QP>�I�� ���N�C���]|��h�d�4F4T�y�;"*{�y���x@�9*8H�Xڝ�y�z3pd�3��rQJ��N����|Z	���h���`��� ��c�;�1��� 8�����d*�m �M�GT��$�S'?<=��h�-��hs�浡�Q%�����!�3��U��Ͽ��*�"KoV�ȿ��[C
�,y�5�~�j�)x.�Gm�%k�p�)U���	�����{&�p��`�U`�0��x!�¿o�5(��u����8������7�[�"�i�˄RR9A[��B�!��� 挾�f�kv�ˤ+�z��m���l�vb�w^`eO�S��k,�I�̖\�8����R�M [;�G=R�����nb.5�rrW"��8:b�0��t�`�<fnp�R K�)I`�o��ͭ��|�(� g7DD���<39��8{��� L��A������P��(%��w��>�+���� �ζ��63�S���\1B��� �쩵�o1~ �]v+�Y�n2����kϪXkАu �7���['�x8:� pt�Lf5�*�W,�@{ƨ���	Z�0��X?���P���:�9)���pa_6��ʅW�������s���\;��<���}���0�+�jT� ���N�,���b2���ɭ�)���� �Ot�uZ��(�z�6�	�;�YQ:�� ���l-ԺoW��� GfY�;ʟ	�l�i�Om���r�9�_���X�:��,�N���XS�}�l�Ns1�����[ �l�1�W��'lp܂��g����G�?�k ���j��g��L��=� xnE>�<tb����M0uJ�s/��`�.1����� �����G���a��A��m�ڳ�v����
`����n����v%����������vxh*����-��q;����g�}�FSf<~j���vU��(��ŭqk�����4��xoK� 0{�d��n�o�1��-�D����9 ;��B�����o�lo�����s��ښsq�
�a�d O�fU��I�	�!`g�)�'�ٓQx�hX��r�d�)����ܞ�ˬ�hJ���FS�҉��N�#Mu��F�
c�D>��úX%�� �e���|�M�!v��P����'
u��N���y��	����E=L��Jh� ۆr����Ff4¦���&f��o�4M����o�C{ ��b�̒�Xܓ�i`�PΔ����g��Κݩg �h��|�#��ᥓ�> W�4D�\Z�$7���-��*�/�� �<�ߊ�QYj�	�4 �]	����:������V���:�2��|��C6��N(��pw]p9���z� f��T�G���5hV��YE8c�m6�)�ŭ˗(7_NtD5����U�8��_o:pJ�B���;�l��N(��1g88���c�&��<R��g	��PKX��� �t'���D!ڿ�'F��_[`EgL'��1 73;$˞֕h�l���&K��z��Y:3z�ji�9Z��Ψ��"�����W�3jB���ғ2)k��Y��q�`�WDɱ�נR-�%/G'���֍�=(�G�� 6�aO�p�: ������7� �������J�?�Z��J��z�)�Z�$�=��L#�_���"T������� �ͨ3
�:ᅍ��R[R6g>wm�%��# Vw[w�B)W1�9zYռ���4\P� #�Y�w8�!N�\9�>pdv�_&�����ߑ1�����8�S'���l�5.*F�!���	������<Q�"Y��X��#��9�^ S�o�`4��y'n~Χ�x�:���1A�`��� �v$LfqL��� ��h��|=ܑ16{�D�6[Z�f$h*�l�ޗ	��iv.Q��nZ�UZ��#ۢ���_';���+,]iE ��_`O�=!q>N:�iIY�`m)�.p����Һ!\�����S <8؜4��ԉ�X�8ʋO�d�1�6,���3������.�L� �X���S\>���b�v��3�@�`E!�&�/�ݗ x��>�	qJ�P�6�/�̼�\0�.�멓P�)�����&R�QJ9=��k��f��O���g�eS .�����G �b�!s7���~� ��oy�!Q�C �~���i �f���w y{$���iM�y��S��?�+u��N:�N��9dOm~L��N�K-����=��Z�H)���}��50UnO�{�K���=s w�EpJv�������4E���ə��9q��N��n�6N�,��}N�օA�iscK��ź�5���������������\H����]3'EW��KK��nO��t�͑�`��$��W1��hX���w�Q�i����S��/[r^gMD�s����|M@���.��ԟol9����:r���|��5m�B�!m����F|�}m�?Ж	{�3�|�E����5��y��g\h%��s�ŗ/Y~��G6,-�I]             [remap]

importer="texture"
type="StreamTexture"
path="res://.import/StartGame.png-0c0690e8fc386ca4b3d12b21f8fd7901.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Textures/StartGame.png"
dest_files=[ "res://.import/StartGame.png-0c0690e8fc386ca4b3d12b21f8fd7901.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
      GDST�  g            D  WEBPRIFFD  WEBPVP8LD  /��!� �7K��J8l�6����'M�?@�lۖ9Ͷm���$D!BDp(R4�w�<u���������� �-V�X[\R H�D��:v	�$�m� �H�}�.�^��PB,��u�N���x���"������2cU	) �b���3���#k|RMPg�� � ���vY�W3 �mg�ǀ8����&SHTDT�����@,�������Xj�\���|�gT��]�Ak0�ܑ�3�� !NZJ��_=����u5�)�O�b� �o)���<��Dw���l�|��Y�6����Gg��r��;;8H����D�C�.K>�@������F۟�X.T������r3Հ![���'7;�,''�%x4aS݄Yr������t�B�1:�}ɗ���L��z��*�O 1 z���|b��JФ�4�g"��!D�o����;>EjԺ�:O0�kL8�FO�B!e`�|@�A%"~?��� �Z���f"���+qw�F��V�����5n�����笌$�2��f۷���q f��3�6���N���w�)�G�g]hX8�i
����^f���E���
�|~a�Jh��bT�>_

,����6(�+�vF< !?v��As�l�h� ��p>H��x��5f��'=X<}x����=�6|̷�1�`̿��m��x��u
� �����^f�<�����M<̳��cdʂ�
���C=!�� ��!b�!mtY4�"M�f9JZ6�h�����8�|��+^�^FYm~=sR�k^�1�#��7�蟂��F�_ ���G&08V�@-&���փ��L:�7��z�����h�R��'�WP�3�#b]-��w�i�'��Y� L��}8"z�@����z5Eg��s�.`�c� 	��.�t �����4o������@ǃ,��j(�}�Hʯ첖�֣]Hȁ'g&��@�2Z��1:�T���f��H�f�@h�H��f��/FT[�T�OR�g��x�M� �%`F�a��d<����t96�㖓 ������b`W�����d���"i<ðu���4%x�"(y�!��:��C�lb��^���@+T��3���͝�F�Ŋ�N��IP�c"~V��T� ���>c`v�)��
"����c��(p� ��`�RFnЭ�&-��^��Ǵdd���6q�X3yǌ���L�A�M�,���]O:� ]G��J��A!�ໂ ��H�,�P�����!-K�3������	�@Ҁ�S��r"�cD�5;!|�?����-��f��5m����fKϰ�l��J�%�m�F	� =�Y �e& k�3�B��w��2 _��|�O .C���^a�o�;}�"������u�֛��.;�>%��|��X�g½.����4B��#Z�?��h5�����Fs< �V��(�F��I��M���n�KF����<.�9bț�5�d$!!������\��i#uYh&"w��] ���|JL�Ä��U�!E�L�#������נA�� ��W�I|�^>2e�U}fkl����0bt- ��a�&��D#D�ƺ���9?�TL�"�62L�	?�C������N9a!׻1!�C��2��9��� ���F�)�]��NJRRJ��q�nwgs����%�4�l��,!(,,*�/��ҬD��CJ�XB����Ғ�Vk�&НW���P��	>W����	D@�销���(l�wY�̉�"����lwQ�ߝ|	�e�Tj@Lr�n��P�J�7�3$_�(:����c�	"��ȅ������z�&D��p�_�+��]��ʍ.y��\'�.xV������i�u26���C����� %�֚c���8���+�^���������%�ap�At�V+]g�7��U�$���np��ndX|�ЫW����%������,H&|T��E}��c|B&�B�X���� �ǖ��$m���-�bAa@�=� �X a����AR��}����!�	ac@!��A���`�"��[H	�d#�~w��Ą�@��.h�nTK~��}�1��p�~{U����mU�?mRB!h��� ���m*y���`�F����y]��L��-�/`Ċ-��ДS�N�d���^A8�CZE��I�	C"�k'��2J_ƈ�f��� �`DEB�d+��Ē���$ ��V;4x�5�#0��d"F|�	a#���P��0���{q�.Ϛ��c=?�ʕ�`C�?B�� `��Bj p�^L��)H�ld �8!�����=��:���o6���s� ܎*::�͍F1�j�a�SA�&0�R���!�V�4���2��9�Q�}���Qo9��3Ybc
��Ăl#% ���1�R��	��t���|�F�@���W��ANZ$!�ȶ
E9^�(�4�	adq�8��A�-�/ ��o��\���r	�ʮ'�$6�F"pE�ͺ��e��r�Cz��Q���J[H����E�T�� Mk�ު��a����^H�z�%6�7�1�+��0�BcA�)���G5 @�.   ����Fw��	_�|��)�1����.�x4
�*2�ށ$���X�t�Ā_;�2�x�� �Yݶi.��P`.;**�M�:/s���!�<m���rQiv�5���6��9����FK�Q��j���!0 YQhcb�(�z��V�h�"��'']a�M]41��X� ,2�G��%�U{-+x�l�E����Z�"Wm�z�u-1*��W躄J�l��H�v��vC�"[�hh�-:�8��0Aۡ x�v.�(Q<�x] (����L����l�7�i�-D��}���,�+��.�z�I��DP���eFO� C�0$JD�����������#bp������̧�2E�㪴��賺5)s�	�-�rC$���V��jjQ����d�� $�hH8i\�Drr��`F/��K/��.3Y�@���K���u�*�`8�ݦ�P�p�%�=Λ��	]�k?d U�o�
��1�ˠB���+���C��f�bк����V���J��� p�s��`.�� �þeD+�T����@P3FZ�:�6�B�p���s��D��[�i�8���W�J�sL�rLR�AD<��4�J�
l��Z���6vA��3��NI�BXԝq\�I&��:������$�����	gy�C��%���'Y�)�N��^���GX-`q1��SM@E�F]@���^�������GJ�.�.��k2�p΀ڢ�{_R�բ��>��Q�%���%a:���7���Tz^tk��	N�4��8D�P�Y��n�q#48@tr�d�u"<b����f�#"V`N:f@�	�	�U
��� �!�!,"�`t�r?�X5b����> qcO:@>E�B?���(r&"��^ Z�1#�@�񮹇�	HF��R��7 ��Yj�k� Hj���K�S)�+�"��"VB��D�MB�%	c3���>�ؘ� *�w�;�W�(���T�AU��p���Pp��_K�m��эeڡdC#��:�_n�}k���xE	J��"	("@8��HY�NJgP�'cŢ��z*A�/<�4!��$$�1 ��H�ሉ�{�'�e�|��sA�Mp�pڊ��~��"��k���� `����fu?_Q��l��ٌfat�#�Iq°m��H/|&]�'��WL������ â��Ħ?X�n�����ʢ��*���&���m�N�
�䞄o��1��J7 5�D¤ɛ!�hrÍHi�䆈������!Qiઊd�����q���5�sU��h���$-t�$���"��+� ���a��p��ށE�.D�ό���"'�9�h	�0ؑW�N��d� ��D8�c&
"並.�Bi�`R�@ٗO�P�L� �IY����oL,�#(�Y���Rh�P��p�#��aXM))�	$��0��7 ��!�SYL#�A�\�����LJHVZ�55|GOz#��t�� �A��]�����K�^�EtK?��5��Xr�t�0 ��	O EVyOM���> GH��}��Vǀ��͆�i��\F����#�PV��lؚ�)Tq�� A�J?�F�����0j�")0�Q�a�  z���"�yH�bK�c�L"P�(HJ��E��_�VEP��PcV�l?;�o8��mtY�u�E؅u������nm��\b���h�4e�� Ԏ�%�C��ثQ��0J��\��8�XY�@E�8:��e�P��/�7�$@�u (.�h�7�&����a���	�><�p~D�|���c/̓�Hf�HA����\�t�6�	��Ω�נR��/4q�i9�u	a��!�:MT�`��,,�DF�G:x��,�A��L�
> 9��զ�@i!�"�A��,7]R�D3�L8D���;��b3��"�Aq7 E|��<�P�(�C?��<�( (�F��L;]�)���Fa�q[����XcG���79`K����E��w/�0�R���;gJӅ��O8�ᾮ��&�9�]�H"5JC��e=ΩI�u.@H{+	�Mj!*�+:
N��-�$#� �	a�m N7�tnT�(����ÙMd�t2�]	����t {�pR0���)�����a�a�������n�(D�N��T��{Q�ui� \�D���P�7r{x�!�!�΁�`T�mpQRVsP&U6�F
"W�
�6�4"�0�b �^5�0�W���� �'�r1��9�Y6F����Q��	x��q�7��zt80��g��O�M�(���6�s�AFp �T6Jk��+r�amڰ�v/t4x��b�_-�4ƃÜ���0}$#
����p�������9uN�9f���Ԡ��Y��O0�)���)�ț%4y ��j%�+�{0�Է;$�(MX���N	㴚
��
 '0l ����ׅ�	�.�M�RU�H����:EUd���'Z0Q�1�JR�tj�Do�3T\�!#f��LD���Y1�`,r�`���z�2�@@��=àH��h���U��"wwH ���ə��%�( b<"����n�Z�uua@��s ��ΛT����Nm��?�f�_��`��^4F7n�k�ʊ��f�2��)Q�-)a�NP�FB�B��e|��@*�tƍ��� �w����m]�]�op)g]c?�b 9�� ���s � w�Y=Ě.���ה�8�e�.��M�)nb *���
��g��7��<"@�k.�Ѓ��\�ʝ/E@�׌PB��	}���.lC���',u���GY�R��PA<|�0ܩ���bX��gNH�/b&\ 	�?�jd����+��(~ �o�7Z@��_Pޡ(}�4�I�+�V*+�n1%)>�P/�2���;;��9h��n�cD�
!�7�^�����ݳ*R�`DK��������.��AC@�>pP�F҈������;�Q� ���a���!A��t��@ ������vi��A�;"P�DΪ�S}�Ttw�SO��Pɤ�0�|�a>ې<�W9FP�	�HOUѤ˰�� ]DЃ�n냦�/���F�Д�)�CC�撡v��ʅ41l`%"^?��Lh�GLsB��)�$i|'@HbN7���.�D?��㻠$!��҅�z�@�
H��Q2�06u���p���J�&���d���+fA�7��+V��o�Fhn���D�pG0|�=]in���� �H�t�2m9�~�1�%al�G�u�	���H�?!�W�P�/d���4��<�0as��Ql�߀p%l8^�'S�.��ǫ#~�-���\<�e?@J��3���RWʓK��Uۛ1#����R�
�5���]U5M�IH(k��������6dD~B�x��(c0�kr�^�@N5D�1��_��I�VN3��$���� ��ɖ`OT 4OF�^�6}fÜQק��!=J
/� �)��2E�������nbzt@{ppgڅl�AXV֝���a�q��r7�*H��/]c����6��#P��-��� B���Pnq[v� �W��]pd�i�ѓ�	���y�L&g5��̥�B�bOzG�ot/�#���j�����C+�O��	C���ģ�4T�J�/����S0�A�J#�I�68(��J�o��24��𡙵��|��L���"����0�e	�Q�А3���g��O�1�b��2�Q��I�m$�0����k��7�<��DӅ{���䠺o�$��dI	7�ZȀ��%�e ���D�i�D +8� ob& �S����*"��� ������%�L�D(M{L^ ��� �@���d܃R�B�;�����M��"�@:~����`v��=�@�C[��m� @n��2�P��~"4�@A@��J��Ni�n�"���S�R!�y^�RCNi�FD"8���l��p#Bgi"S'��,�}���D����[�<���l:M�!=�����
a[�Æ|Ӧ�? ��T��>$�@.*���}���� .A �7�e/ �%��DAl_j��j ��
�;�k�\��Bc�H��[KiU��B����uW�Bғ�Gҁ[����۹j�A���vc�d�X�����P��ф����G�̜.@ �m	嚽m>����E��A�bҭ>���Y���F��8��N��D��e�'�HE(A��V=:K}�é(��o���QYL�	@!�1�ϯ�닳������ej�@�-�da�#@@�^ą �qY	8�Fw�u�R:�E%�m3ITAn��p-\��֟APf�f�o�^�s���|�K�2���c4�������H��X� ��.�'K�����u�%5ܧF 2�՞��[� Ģ�� ]C)9�n����I�\-K4�gn@1�u;���~��"PV�P0�nO�"�L���#4UOv���P��܆�|�l�^�� �_d�=�3��{fbШ��P�+xYG;)t����M<�D25@��� p��@ø�[5`č`�@��>W#�Y�KfA0IQp��@J�{��� @�O��ajq����+�e& ��pU��S\s<dP�4#t�F��E76�]P-�"k��
04.)% P�L=J��G�4h�P<��ҏ���_BR��M��~^v��0{S���Axn�� ���/tJ��i��=�/���v&.x:�V/�b�5���{�Q��0!���qU�  Ч�ct�����p	�f58�K�B��M�~	��H�,��$F�)8�q�vnDDg����+�ϻ	p��O�Fk+]P��Q2�9(�� ֐�i!�C6��t��� ���G�pՁ�:J�΄+!���R?O	�sj��g���3:�Ũ;�f��P����D�����k�2����#Ĩ��#bķZ�f][lu��_,��ޖ1�� �j��&�Fx���B!�a�������*Y�~�tPEࢊ��D�.�4>�Q���� ���><�D�.�ƻP�FKp�i���pXS|%\V��C�?X�f�'
�v��c�^�FK���<�2�0��9�i�r|�t�?��]]���+C��EZ��� �r#W���ҵ�Z`��>�	3��@DO����qΩ�x�ҐP�,P�`�����
!�#�o33� �vܓ�j!�	��k���g~�0I�{�#��#����~�'��_F U�ٴ���~�e�A�$U`�]�'�>�XXj�_������%��n'�������E,��&�
^+�~�C�I+~b��]�/0 �9J�y�"��"!:��7w& ��
��p8�~��^��C���N2B��L)(ᴯ.B���ܬ�q�z�c��*	�'f�·����\�)��.C��n��4S�=��f\=7+&OL�<yj�n�N��)0M�3~�C�FIQ{��|B
�����m��E壢a���l7^1֧��1 ��!^&J㷟{�q�������|Y��p�06�	g���?ĘK�W?�P��~��0?��9��
o��6��Iټ^��	p�a��(�b��%�V���c�KaĘ�.�����;K,7S�SqH��Z0F�ȁ�B�Ԕ���Ck0�O��(�r��>�y`�#XwL���Ȏ�h-��)���-�@X�.��'�`�3GdL&�־ī �T-L����c���L<�>��1�]U�Z'��j��H@@�)���>
��N X~P�r��zMWD� S�����8t�MO!!�
�#|�w'ӑ��5�i5�<�@V�9
;�^�@DL�/|{`�~ l��\Hh���r�A* U��'��6/�� p�¦`�x����0���ŨAH뙺^�� �')����z�ԏkm���rN>�����%&"�N��Ґ�@�a�z\�0ߎx��Rq�����%�9�����
N��{`�q� ^EA9�>��q,���'�o!,�{�FA���6�?@�o�+�}8H�cD�L���Yc��ʄ�J�d�`L3u��/���8�BR٦�pCGh�� )�����!&���$E��y@���U�AHz�h�C�@7n�W2Vx5)?ǳ���f*��x�|���5�`��@ۤEv]Hx$8H!�h�DP����]���x#�p�b��6!�	�N��]��(�������#��i�Rԓ�D!�0G0�a�d���t�k+k1_�!��=^�]"F���@����R�{g�/� � B���en7�;�1(%-��hd��}Fz_+���)�)T�����<��K3�+��w�}��B�1#��7�	~��?Ȁ_n��#}�����|��v��?��4a_�*��G�	���a	_l�Y�a�Õ6�&_�S�3�a���N/��ޤ����J§DD���9����e�Ii����0'�/�O2'�	�����W93���FJ"{���p�P����n�&]w50���K�߽��۱�Qe?��k�#g=���]/1������4z2,���Wbb�CoAπ �qJ��[<O{�����v�>nܿ�3bHBY��P� ����2ȥ�H�@��$��s���Tbn!�/&������`��70�%�Pm!=]�.����`��&#�hf��K@,;�3���_:�*
	�i-}��q Y��������!� �ˊ�+���#F�˔��U��]M�EG<V���m���!��k4ޤ�@.��\��>pR���G�yu=+z+mAD�˷)��C���^�*��J~��vJh�C@������G ���*b���N�ָpD�C
�*ޙ�W�1�����эq ͣ^͋.�C�&�w�<3�ƈG��O��6ް7��ѓp鄸��� .%���.Z���H����f].�(µ�C�j�PY ��x�.ΏX�B��JD�d���_<')VB�1�@x�K]jb������`��H!��E��6p�o-5���i�A8���G�$߽Q�J���*M4�h�89lR�u���@��Y���D?v��#��( >LY_{R���i[5�Gf�B�£�����.X�"$�
f":lȃ���r�@Bt�	K��r�Q���A/둨좑ٰ!.��
EP;���+�kdT� ���E���ap\����.�E���3h�b��C@8�Q��aVv�u#!��g��'�ݞӁER�o���CM*u�جd�^�m�����X�`{��RK�eJ,���t�j{��Y�l�:%즻�����	�N6�7���~+?ƈ8T�"��C�uA�)���DL¢�����Y�VV���Y�؏Ŋ�E!$���A�� ��h��
�"[	b�@��(ۇPi�f���F
�J�|)	��=.�1y��: `���A���]�M1iZ��3:�B������r�y��9X� O)�Y���hM�e������0F%�˕}�C�0���/��^���"7�6B,�z���M����$E��U!��\_�֊�<뎄뽜'M4�L�Һ
˔>.����.j��"���0�zOX����X�]�F俲�R�#�-��"A�)�Ύ���`ݓe,V�/�!�T� ���ΈRW��!!-���� ����6;�;�����`2(���Sg��ef�Ql�}�_�$*q� ��� ������X=T�&������׸�1b�x7blu?#��kf2�b���@����bУ�<C
~RL��1M�v��ᅓ�#���2�e,ϐ���yb�~��2 �����$��#��9�v� N_��ۂ@0�C%�0�u*]�)�S��;�X��k�����H�~���C�����8�B T-6v+H��4���t@o�+)� �� ��hMO����U�0�_|K��s��DܶP	�=���e٣=a��HEd��`�Y/���-")��& Q1^�#�+��؊;cN��&��Ǔ���:�p0ح� �a�z�@*��H).q)cCDo�'�hk��Y��y�����xc�"��V��厄�C\��,>���q�Z���Xg��	K��opNe�E�"���
�������?S&Ƈu�
��Ss��/+pRI�t��tXF����0�2!0���N����c�>Ƹ��
� ڠ�@+7�@���.B� 8�@8$i��Ec6YU�(a�|��@�&h��#�a%
bT:��F �8i��q2��iǁ��ۊ��yÇ���n��F_��w�*_p8��IT��� ���[�BW]�&u]���ykc�O���/�#mCb|�+-�`�,; rV���� ���@xoM�G� ���I�	�z�9]��6OCH�R�)��e"�+2_�v��~"�ܥ�K�L�:iL��GMn��cӁ�����NJm��u���%,uΓ*��v�q�Tv����Ӧ�FΨO(6Xlb]���+� ��	��-,ҧsJ����d�JBtQ} �p���O���`����[=�I�s0�t� �
<��VlVy�&���F�\m�HX$N��H�����5�y�N�c���ox�Z:ovM���{灚����@ޥ{Q����Ջ$�p�ȓ ��g
��F�d�\�SY�b�|#�� ��.�ԅ��
�v�k�[�%�_C��<_0졹�L:i��	P��*7�������ID5�
 e�+R��D�3 !���U�r.��^�O � ���L$E~WH�@�����Dg����~�A�.�{�1 �鲽�Z7w�$�ŇQ���@s�YoM��r�C�"���!�	t�AE?�(B��JC�B�-!�`k�(�mXpA��wL+AM2���Zg���0aШ��Y�� zS���CF�wk��B ����+F�x�_���b�=��{p��9{�E�.?&`�KCL��:���zB����O��h�[�H/��}JZ%^IA�	@�AY"���!��J�䠩	u��Q����G|dzV ��`���-�骍�<�����f�qk�]h.#��\|�;���&���0!�
 a�娷16z$�y�}��"���MV�̘mP�/|�P�BB��4�|�A��k"��E����m���h @� ���t ����+,�t��)e�a���;=K@�ߌ�
l,Q�dƱCB�L�]$ �����?:��� ��"�I�ٕ�a 2"o6�m㌺C,�%@4q���:B"O�Q�E�d-��P�π`�+@aax=�9�Q������TU��~r��[�%i�yW��_l���/���'T땃�(!���B�Z#�o�ޠ<IZi�w%\�	�=�"#�F�|'�	����"52��A�xY�<.�%�����Qt��G$�!m�J�] Ĩ�o28ڀ䈖6����"$fW�������P��`<" �f*LX�0��n�2�ƚ�	eM��ß�I��%%�[�|��x��e
��r�TT.��FH�qc�O�ߗ!��1���U:�v!WL��� (?���<����B;� t?OV�2*�t+P؀ M��8�6
�8T����cĀ�Q�'��r�a��+'�H���C��:��5��䕶��-��B~V����\�Mӭ�����J=a��F��_؈��^�7!T�8�A�7?C�A���ј��k�����.���1My��K�(�D�R[� �Z t׌6DĎ�F���M�St G����7�� R���<M�Ӗ��E�8��HE�	8Nn�)4|��`h�5:�Z�c-/Q\u���e�!`rDX[�b�Z�c1&�	;�����!5��yЃ�t�l����.l �����0"�F�z�.�"4���.~	ߘ���q�6�0u�إs�1Bd��	�y���hBj��������:B�2���t ����Z@��2y��R;ְ�|�9ąJ$�����b�A�����#O"����,���7?��a���v����7�f�Xi�	��ċ �5��\��Q�6��Y 9`�� Aw_�����7=a��Η	�qk!���tN[��O<E$;���Z|��=�f��P+�N��Lr�z��-"
����7��&]HG]�EE��ȵ�����\�M@���L���L���>3�؃����;��% ��(��p��D�v4��ee'�x����o9���ē@���<�� �
����X��sH��7��d��1څy�G�Cl�P�4��"&�rRo���T;�&�������Hع g���!�$*�B+i�֦K�@:�ҫ�$L�6@D6��NXt����� �>8�BI���S�V �x�]E��ͪ�]��G�.��t(E:$�4�;�Pk���8Rz2e^�MM3lR�9�F�荄��%k��N��R@���t�xe)# :<��@A8u&9�|���f�6N��_����e�@��t���~}�� ���,nJ��[M�Rʓ~�:�1AJ�;邤�N��6�D��/a���g �0  o�SS��R������+Ļ�\6�]s����%�ʁ�\�'P@U���N�p���NQ8��"�{�X��θ�$��n���.����Ż��i`����a����7}�$y�kj��ػ��DQ����' 0଩����x�K���&�"������tږ/�A5�=�
z���B�������o3l��M~�����C�=�$,�-y ���a��B��Y1? �Lh�C=� �@r��f�M_4�BJ&gY�Uc��e��	i�B�鼐D�&T� �,�3���� �A����W�D�����t$$4"6�h�B���i^�L��.i6��k�(�ӳ�[�ƶ2�+�|)[ASf����>H+]^�� �tI	��2pB��#�� "x�	��˟|���	m�@���L�+�MRH�ij0�����t�8�N;��L :�`��<G���T
D I��a"`u_�:�X܈@�Qx��#�@�|#���~���U"v
S a�""�� D�?���"�}e8g�PƩ�^�� �
O|�_qI�T/�+�w��O�]��Q�4	��0���w]N@�]��&dEI�� �Κ��F��B�V ݪ�0�Ny9
Z�d�瑀}�j)kN�հ2�u^�Rd�p��qrA�X��k��3V_d�n��
sb� ���i��'�W�޼�t���9�Ax�"�P �!\�A�T��P����`g'�Xy����hY���$����"�k5���lc��8�[-$@�U���b��!p�.��N
�d��&��d�`��4�rrP[4 V��lp=���ĨEz�'���3(��{��{YG&M��=���>���@\�A!�m`��Φ>�h���Ic��X H����=ʡkE��!A�48S����X?����C�o�vk� v��&O��&�b�=@��z2�S�i�" �!_�ZI4��;��0;fp�ٌR}�����ZkVxS���70�,,U�qFD�n�z=`�(�:IB��ra��jk�Z76]�W�ܼ�5"p�+�
]�hXc�\�Bi"�D
[ R�20��ϊ{(�����Z"�������6�P�P
�k�^G��p�h�Au�Aɖ&AwGuEJJC�+0D��V(O"�N�5�p�±�Bce�v!>�:t���3�Π��� �q>m�0��JK����(�@�
S���8P��@W'b�R��
t	�7�������fB���e�	��<�S�0�V���� |H�7r�2����?����ufu�6j.� �70���9� ,���h�C�`@)	�7Z>��F�,7A���,����1п}��
����ߠ�30���@''�:�(�IDD5�b�B0t/gUu �`$�^���2Fj_�nD,�%-kT�4��LX����!����J�E���"��_ ��	��
���+P |����|�uB\�/��#Jݹ0�xz�ᛢ�zϏ�Q���䰄�IB��� 0Q�֊š��<թ6�Ȝ��`"���D��q|�^�\*b��O�g]T��������G5���H�U�V6��	-|.�6{�#��S3��?d@ D�7>���w��q��F��	0� !�g��Y��[��6p��*�"N����L�#�8 �B_�S
~*ʯ�/e�� ���~'lTWo��9A{���Uiy�%������x�cM�\�O˒����-���|~c�#��$O�)8B��� �����L4[���zbM�n\�s��#@/~�)w�yV�r8Δ몄~QԡP��ᷮ�r�<��e�r����hUl����T4	

�S�7����nZg�93�7�X�ǫ���0x��/�Uga�Պ��Y�-D�
� ���X���|���h��{�)t���J@���.Y�wKR�b%n�5������čESM� 1�չ�HX
�kɂI�`�cf,ؘ�`Uu�uh���[+
F/�F�Uk���k"�|Z�~A4sCF����v�luU4���$�A���Y�0��hvi l3 ^yQ��_����H���w F��ܺbd�U@���]AD	#�GJf8B��`ϙwfl���q!C�zG��G*�fvW����b�h��I���f'������@�dq�vb���3t{�J��".!M�@�%��uy�J"�dq���V���Q�X�*�������[�#�j��61�p���m)�����M(��1����BPj��;JZ6:�t��x~�s}�om�K@� ��c�|��DW�,,�'Gu`��H�# �D�A ļi�N��SV*�C��}sN��N�@D!��V��p����3j����e4��u}�7�cqK��h@|0�0��O��h�Y�0^�@w�攓�Oe�D��������y��NpF�H�4�e
�R�-���uj�����4���,;��8e|�^H���_��y����a�L��.u��mm�gfs�[�r�J"��4b�سe%��9�S�C�>�F9(0"��������r"��T
䫦��ԋ�S�(@����9�%) �S���S8l�:51b�o|@� �̊�h-\��w?N�b��7t\��#��/�g<,�Ѫ3\qN�=��c�娏j��#�,��ƍO���|��,T��i�^�b�uA��Z��L�mh��gج8�{�+V�2@�^����~(`�',w-p1(\��ę_3���`�V(��J���	Z ���h�	^1�3!ԖM�� �s��ꎰ�lQ$`���*ڂ}�����AJ�gbb| %��''�m�� DD	�+�uYd.��R.�'$$(�P����8HK��9�I;"��)�bJ8�_� s�E���m@6��IBb"�B���:�]54�o�`�l�*�LSʹ�׻v)�\= r9�M~g�"a#�ONVVNFVVFV�P@�rz�[hp���%U���z�	��-1`�&�3����Ou�O�R!$T���Ȱ����E~>~~�����݌�q4q���З��Pf ��)�2���?M1�,�+s��.l�:F\zA�� �8y�3f�Sc�y�fYf!`0Gjm�EA��
�p3S�PD��1����<3q4�G�W�HL�K#���yP���s|�����4OH����6�V�}I�����$\Fg���|O����U�����������4 CJT�ŕ��e����>�Rť�1�X�6,v��3�|�(�\�����%��i�������>��6�\�,HO Q4�k�9l��h妛���ఘGx�y)R�(�/��m	r %	��%x�UgU�}.!��	�Ě��'�@�,Jۚ.s�Ħ����PT��HT3r`'���\7FMy��C1kT
|=��'��hb����%����F��H�-��IY�Yij�8�S�Y� �i[�-�:ťp�-||J��r@*����<��4b��!��b�#�T�o�UD�u��T�a���:H�%��� �� ��;��(SǴ�R��4��Ɂ��JvԨUU�t\�1shy#����1)U�*	(��`〔v Q
�<�U�]�4�B$-�`Y�ED'����eĚMa:S��AK��T�t07����8��4hȰ�8�� ��\3��G���?X��b��AV !���P1.��7c �i�H         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Timer.png-606ba82c1d896aa4eda0b9b5b92e3cc5.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Textures/Timer.png"
dest_files=[ "res://.import/Timer.png-606ba82c1d896aa4eda0b9b5b92e3cc5.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
  GDST  �            �  WEBPRIFFދ  WEBPVP8Lы  /, � h�6 b����"�?���I�vU���)wY�q$Im�N�x*���tI�"�����h�=�O���1��l����ٹ!"R�)�
 �C�� ��*H� ���Q���� ""�� ��)�.8j�?���w�3�F�$I�XΞ��۩���j|K�dI�d[�$5_7��+}s3�a�r���?qc�@j#I��\�����=:
�H�$It��彧3�m�޿�=&��$I�$I����Q�����J�����/��� 9����öm�����I�mْ$I�u���,V���u%L���M�� I�$I��V���{KgBߒ$Y�$��j�����u�t#�	�$ٶlI�$�u���l����赫1����|K�dI�d[�l�s]���sn��&�[�$K�$�Bf�l���?�gU�pL�oI�,I�l��Yݣ�������7����$	�#I4�w���b��06�$H�$�������T�	�-I�%I�m!�e����cg:��!<��|�dI�$Y�b^����P&ߒ$Y�$��h��m_Ӎ9&�R$I�$I-�?�)t�`��m �w��{&Ķ�$I�\uO���muL�oI�,I�lI������a��ٿ �m$Ar������E�m$A�Ĉ��}���ݪ������ew�y� ���}�'^׾z�鎧]�QL��P`�8���^��*�J*`�&�V�(��Y 
�B�cǮc3Jv�Q�;7�;hp �3@/, 4; P���E�K���Ao g��`��S���� �?Rĩ!��\M�T}j���2��
��Yr��@.��<�f;�A�;v��r�n�Ϟ(� ��9�+�����y��Oo �>�\��ED����w=�й�9���4 84Ph��������Ou����P��`�7P������|����z�tFY����~�(����s'�#�h�@�X�������s{��/����ž�L V1����������iދ8�}��}��O;���e��(Àn~^d��Op�&�w�	�{= X � �w� �h`��,�=��$�OM����N�h���|��!�Z� ,��� 80`�P t���댲�n��M�Zta!͎�� �c�m�H����K`�* �*b�o�xx�bj�a�; �{Ւ����|b	c��= ��a ��_S��`��11��w��J+ ���%����w `�N ����O���)�7� F��h�� ��˨�>JI����� � ���7��<�`���W�w ��?���@� X  �²��-�"�h*�a�W���w�Bj��}o��}?K� 2�
 $`�Ab ���m_s"�t��Z����B���:� :h��<��=ISP�}F����8��/�:p�W��<:�e\��/����9���
����,�� ��0�n�T��a��_j�.(؂Xŀ�? Q�H�8��-ˢ�sY��;��w4��)D�]	�"!�~:ʻ�q��O16��] /���K�o�Lt�(c��woi�SY��o����,J*%��2�W�> *��g �ҕ{����w���^�^��aX) X�C&@D� ��VyU0`��a*裾� D��!b��rY.X�䌓��~^d������axc� `b�䑇��x���0�A�`�΍cUz�9��a���P���4�J�S-U�2�]����AG�3Hz �������5��� t`�A�Z�@ ��1��~b=1���Lc|0)"C 	��(0Zw�.���}/>�^T秇a8D,�3�_�p��� ����Yn�d�ψ�����n_� ��`u!cǮ�1~~�M�7S 
MY�>���tTb ���ЁJ,�̃�� ��C�٫����h  Z ��w�����D��' c@��("F��1u�[.ohY7C�=D�)��"�H,�9�G�0s�:����z�;�a��dI��x��Ts��}�a �Jwؔ���P�1Niv�4�?c���������PR� v�Ze��{j�:���	�({^�~�k�_����6��g���
�%Ph��q���ٹ��wɃ���K�~b�//����0���@[� TX(�eS�KO�����罇����y��)�% �Y�=���A�ay����a�e�W���L��������f�౛��/0�b��00��0�(�RT����"���}+��������RUܪj�� ��#P���4
�F�c �:�m��W٫��g[ �g   ��;ؽ�Kj�	@S1$""h�BX�^[��O޼���~�{�w��MD@�����~��$@�7��Ͳ���
�rfY�0 p
  T_��w�l�����y��`ٷ����}��hP��y�੩ U%���ӣ��GA	 n�Ё�͎����텽�q��7lw��1��}b�A�o�0������� <���'|_ ��4�@X�\¾����� �^,���e�o���P�c�D`���  	8,��3^1���'�W��+ ��

#�%��χ� G��8�J���o{g�2����V�o(��
]hT�A��X#n ܼ�����eY��Q�h��H��c��`�a/� �`� �w@Ă��p@ ��O  �"�CP�\���K ��A�� �w���0`Y] 0�|�r'.0r8��WƳ����_�+�V؃��cT1� ���Zz�� ` cg3:�tdUJOt��}���۾��
��>�B���MS������x��~� �C0������?��b�Z�BpO|��	�|_ |�~Z�i�b�),�����Up���Z.���7<v\V7 � 	 HX�g�a�_����,����N>r{���(o�J�0� ~[dw��MGV�t:c�6d�[1 �8 �I
f� 0ry�����娼����k/� �o�^e�u��7�Ve�������, �O���x����N  @��oC
�P`� p���}/N@ �2�>��p*-�3�� b �JR��!"�χ�]�y}��6��أ0]y�t�f����y1��a0 ����ƾ훳o���)�i`P��^��U�m�2.��s �w�'ޯ``�q@D�CDH�� j�@ �F
T��þT ܴ�S�[(�^ul4u46u��=��� �}�q!����WwSw�I���P @ 2� ��Z� ��;��� �~�^P����4
�Y60���~y��/x�C�t��^x�����k��s���� �8��,aO �&"�x� $P�	?T؟`8 *0 TC)~8��{��FYD�����x������>�W��=���g�J p(NJ���s�]J,����@ 8\ߕ�']�t��`���;�s�w��]�A�y��,�Y��\�)F�1 ��߯]��������x��pC}�`>QK�e�ݟ���� �,��v���qG�}/_�,��/�=�/�y����m�bu��U�a��XP-��+,྾��r�\-��>l�Zp����4�C�h>c�#��b�t���<ɿ��e}0�g�΃�w>����#�y6��N�18GJ.`�\�������ys�@� w�� WSD:0��{)4 0�����pY��.�e3�~a��,v!���Xc�  7 ft ������\���2t�����w���a\pxxq�?�{��W��ŋ���I���fEJ��]ò�X�{� ,��{�EݎZV����ng��7�#0��X	6���n�@H) �Gݞs��?�{��!z��0�8�� �b�&��(����8��h
�B�m�wj Ki��b3��`�ձ_�
*s���u�
��g�a;t���
8 0�Q X�{z��qxxc^^�Mc6���om��O�y�]cYJ�b@��TO�����,���2v}��:+0�����P��-�H�-<w���p�vw�������>����	2�uyxx�3HT؂���7�29�I��t`�7��300 lF��J#��߰�ӌ��NAJ��E��,��ٌ0x���/��t[�k8F5 �p�0
�(<؀Q��@p��8\^\q�y�x� 10�TE\at��k��W����a	LX�~��Ҭ)T���a�p�S�q�xR�ø�n[v�׎<����t������d�M��~���}�.[�Ca^����H�o�Zx�� �`�
)��l�� ���p�w�h>��8;E�eY�b3��8��kW�~��C���� 0���x(!k�3���5�8�p8�b�q�\.Gc�]�.���˅��2uũG�ز,������TD�l *�Z�c~�a�>��Oa�qZz2w *���=|O;���P��n&�c���}��~:�[2ך��Ȥ׭�w�ݮ\	l9�dWd�E(l<��� 0:(C��dSY���k͢D��Yg�Y��_؅���_#
֐TPת 7x��elP��5pz��\���r���8<D$`�)ԅ�|OFǞ��e�?�+,`��H��0W���@�����o yh:�n}d ,`#���P6W�2���ys#G;�̢7[)�v��퀽r)�z&3�$��HN�����
EzNq<�������7
h��,M1�S�ˢ 
 � l�5���Փ�{��p\��M���}w�����cZ纀!��H M����O�ةC
���p�4L�0��As�=<>�'���� A@- �a��e���.�2P��J)T�s5�nR��Zn�2��k����
�ʃ��h	����ԛGg�( P6N)�F����}C�Ш��SLi��Y�@ �B5�� �N6�z�u|S�10��� �@Ʒ�K�/1"�_�  ����G=$�T��
��}o�-X�C��0D����*�T��i��j&����	@ ���ޠ��y4,5�x
g/�Ѳ��#��$�I\ݶ����I�7����� �� �F�2�d�s�"ؔ;��U�^�����z�ٟ=n5���Y������0�TX� f�c��=���^c�q��l�����B�^�E����C��c �p�%�P���_U�p՛�jj`�:����@����w;���Co�&!�m�\޼�vY>Pģ������m�����t���7������񰡘�94�ǹ\߹��;�^;����(�����2�h��<w?y����d��؈���H @�P0p��A)� e/��Ѡ�Q����b
;�O��Y��Y�@x0� ������a�ѱéP t�}ׅ��px� C� �)ЗaZ�oj)�0��!�,LR���u�,��B��ᣝ���<@p�鰷8q�����@q�wh���;${�����9�p�h%�+o����w��Mz�t���� � P@( �8=�(4ͭ��8͞��,�G��,p�Ѐ�PR@`�, ���݀1��
��9v8�r���������.x��/���X 0j}�����U�k1�Љj߻R,�?qx�����+�@I���@î��ׯ}�	�M-� �9�,-ϓ��ɹ_�s ��p%��;�h��ScW�b{��w�� �߮��{�U�*��N�iTsO�G��Ơ,c �� , �
 ����0c|����] ������!"�r��*.� 0TD��  ���e�\�r��ED�/�0<u����@<g⢴�S��+ |�`NͼHX���FQp ����܌��K�O��i�n��
(@�@g  ��� ��� �jJc<	�$K��@��@�`�
�e�` @`.K`�X���0
V�n)c�0��n��=������_�}���u�8��^�%��n��)�3M@�bY�����˝���=��Ei�a*x��������.ז��<3�}K���ļ�I�Sl�R|���;%F�k����J��gO,`����/����d�����^4���S���@�����U�/܌� X0���c����o� |3���U�}�!�������1ޫr)���žW���
�!* �։�wk�;.�d�^�HCDU�����>ۆR����w޳)��o�䜧 O���<�l���\`�T��Cbn0as��ǿ|:�2�S������ `���pz`/@5(hLi����`�(@��`|��~u��)�����/��7���2~�P|3��� ����ゃe@������U\ .���-�/ �b"�݈��m�x��n�(0� {���5;���3�{�Z�W�q�ʻ�S)�u��8PS�|?8��{j�Cr^�� h  17�0��������2�:��?�΂�00|V�@Ii`P�=5�l���v�nx�i���[g�����x�yI���� ��s����D���_�2�� �\�* �V1}���w����0��k�����W����SN	8��No�b.��( ��ws��ɢ�V�P� �X
�ݘRz?�D�D�	�(sj�?t`���0ʃ*� �������}ױ����^
��5�hX�=�X`�ϝ�����[w�bkp�'T�>�|���{� �\�2���/�pl�S@ /�{��!�����O��>x�&����[&O^y�	VX��{w�n� l�܌�~�~�=����M���)��=�>6r����qzS�X�����K�������� y$��Cp����O�!Ƅ��9o �@t`
Ё�0:eU�*t`�A1<�BAg��n�:��;h����pg��-�����]$����F �aXbF�Y��ŗ+��%�*.q1C:-Q�r������2`Ái�}� X&����A��r+����b�6,�0��8J
������v�<��< r ��@��s�} �10���j��ZyGz���%@t-v�������X!@ ��f|J��` N]�4�RS�P���oF1�j4����=��CF8��1` l0c 3�k X�d<�LMg(�����@B���I�dS354s� $ ;���g�-� �� Ou��F
et`J :� P�`Ё1 �tP�B��>X hX � v�~n�5>���겺಺R)b��,P=;@�����y��e���jG��`xd0��1 ���dS'5���� ��{�5�&�����X� W� � cK&�X��l@A����
 �
�qv0�  � 0P��,@ vv��}����A/ ��8T 蓫e����KU "(S��~ �"b4D˵��S���C�(�Y��Տ1Ƹ` 2�,�`���1��,>t܋�g� ��3gj�5ݥ  y��c�C��#񡶴%)�2	X *GA�a���S �`(��J��P t``:
�Ae� @��;X� ���pI���&�,  �0\N�c�Ȁ) �Q� ]R�054nw�/�@�
 ?�0`�(  ?���͘ Y������E���t@ ��,,Ă=[� �C�%8v}��$�fU����BNA ) :0(@�� ��@u (���(@����͂��A��q��+�(`�����F�U\��ax �
B���
$������/�7ï�j��� �c3`�n�`��}7<0��� 2�:O0�7���v����@^��� �����ds��=zĴ��  #X � ЁAq
 (���lБN��Q000e��(S�z�` �A�Y�~n �8>ѿ�Kv�,�ax8� 0,� 
 ���TX!��f�Z��z�7}o�����%-��5c�  X�1��	��l. ��� D�o6�.f ��>e=D� Hu� :�k���C ؃b�`P( ��򇋲sc:7r(������
:(�Q�� ��{ `!�X�� ���.j	hŞ,����Ӌ����sU �!-��\@��aX]��US]  �etpu�z�Y1�b�  ��[?q���) �~�r����/&������[�#����1���w�c���jɡ� 
���q$�ȳ�}��S��.o�y��8
(��� �t

ʃ�SL�(`t`�`������A�B)� �4X ���?��]D�a9�X���0�����1�ALMՈ �@uf�Z��w� �� � ��f7�� X�]��
C���+�es*.O ,Xp@����R��C�< 	$�8��p� 
�@{+ c�Q`Ё��16߀
J0 D+��� x , ��^΂'�o��eD��YK@TX��e�U� �h
X�l��5�,��sED����]�~ P h�64 ��p�IAl*�?Ѐ�D ���  ��,`�B� �,V�����(�@� 
(�SL��b �#
���@��� ���`� `��w9�X�}?���#T@�eKUp!|%L����[�&����`	 \ d�3�    ,�;cd�<u��2` @��1ŭ�cc��	$���`����\M���`�@{�b%:P�@�tP�P  � c�aS�� 
�@ٰ�
(  "�j����-���Ў��!Z�Чi�с�
)�� �j�v��(��|!ݬ^ĩax�������!ƺ � ����Ӝ�i�t&t�@?�K���J�6�[D8 �)hg�5�C�u�!+8Y� P]�J(@"x.(
g�^ ��*E(x4 ���F�p�Y�jX؃� �!"3\b��1F � 0 S��|[a,�4��R[�}�����aA,@p�1F ����O�G�ϰ3i:��t y���80��<{�՞�4�r&8�p����a� 	S
�B�$8��P]�yB����۝�s�1l0� 0��({� |��]7�����ܽ�A 0x�����r��,�aăH�*@��
 � �0��ޗ�p��;�rs,X��/�� 4��?�կ~��I��.�� ����Y:�d�`y���#�vh��.�H��@) x)�1x�Eŭ��o@g�����r����S�J� ��`��Tz@�g�`�Y�~ l� {Е�8W�.q9����.`��/�`� ��Mtg�����
�7��  V�xq���e]p����ŝ���``���{bോ_�?��N-l�2Ș�LY"�H�r0("0L�B`H$v�R\� nH ��K����~F�C�������U��WOŁ`���3�0ۭw}W ���&�l�c��/����:e_@Gx� �} ܌"b� 	`���"p�?.��A���*�������_>`�s�V�W=�fV������ދ���S��ð�ŝ����)�p�tj8:d�>�1p�=�=�{u�P����?/����� ���8����� 2�+sW�W�ظ�ً�%p]��h���%(x
W���i3��N3��&Ec=������E��7H���������	 ,t-��"` � (�t��6�1|�8��;���P�`�*2��0~� ���@��.  ! t��k=:��-�X\.�s;;��s�7�� ��e�\.�eY�%�U��m4���{�����sj���۾�{���H����~�ЩS����
y;��L�y�}/���Bt%z���.�0��H��u��Ȃ
�p��y��(�$S4cr�}�sRR�%aP:EU Ӂ c �<�`� ���͆G �ݏ`(� 	��x��/���g�eYaYD�T��۲ZV�9��eQ�Ek�Tb�J+��=tq��ފ\*�������Z��������\Y�_}�ͱ�_������t������s���l��7��b8	��G���Z�]����țes0L�����K�X@�1{@��P<�N1e�eǗ��(�T(��1v��@  �@Dć#<�x�/� b� �S��#�?����%�/@YE�lj4��_�������ro��Y����S����Z�޻?�ػ1++�>��@P�ҪX����j��`��f�179�yY�� �&
�>�#����FG�p5�j���l���U
T�A�(��3�:0�6��7(����`�`�zt!؞DtE Hq�s��C�8<|�Xt��Yam�岬�Nv횆�QO���N���}��\i�|;��{��¾���f�:<��������{׻n��V��EH�4�B뷾����M��@!  ��B�'C��N��؁��^p`��PI���P�< �* O(X�LF�- �2Fe���(��,]�"� " "q���ءk�s�`���\]]���׏��S���Q�b>O4��V��^��"L����v�=.:������o��<��]��u�h�ժ*�OC�C����>|���o��0� �hL��[M��.
���W�����ȵ��9H������N��(c c�� 
:6lFg  �:0P��"�"`�k �B H E<���]Ƙ߫Ag�����ыǞ�)w�w�@�5�
\�GM�����߯FU�s��\��5G�߹���o��=콰w[���������1h>�Ri�+��v� �˩�qmf��K�P�2A�tv�Т��0���\��8 �� �`^<tP�*@ PFg���4 �r.0   ""� ��4�1@#���Ci��N���\[-���U���ө��(������>:�����^��VS��߾(�j�[�w��;~w��u|U��?��d�f\SZU�i�M^{0 �&d��\�:x���
����k��fly8D	���H) ��p  lЁ�fp�o
>,��A
�p���>���30ζ|@ ��Q ���� B q�8�Y0��]��Ђ=|�W���
�;���Ļ=+Vo=����o�_�>F3�4�e�3W����]������}������R�ucݹ��������}��t7wF^y^�i7O�b�P!���:����qs=�T��,kW4j��������n�Y�V����(�
f�L�Z�īO00 :(Px]p� �	�e�΂G��`��0��+2 ���@B��1��@ кPB�*��j+ @���+:5�� �
���{h[s[�j|�j�����ŕ���S  9^ ���a�5Ђ������=% �W���1�:�q+�<  � R�9 ��=��A�}3��(P �� ��@����e�� \���}�V V}��8W  Bt� ���@��Pu�j  `YbV���<�����A�Y�Y�.�3Gs�>�� �<y���[9�@ �8��k�::��f4;��V�/�]`���lr�<�����<]�2Em�M�L)����� 0
T ����&p��-m�#f8 r�gDD� �Ĺ�]��0�i��Td|�pߛZ',33�8<�\�=W�봃u������x  ��O?q�8����i	�0�"�a]����Lw
/�HIR�m:;�*ސS4�DXH@ � ��s�0�1`�W� ʓ�@@�³00``��!c�kϧ�'ȹ�g���t8�L p80|��~*�)dC��h�PXm/�b����P'б4z���wi@�9��)l�:��X`�Vߥ'n�2�أ��1 x x<�L.OxΡ`.k�xS��K˯��l`���Hw*�"�(�����o
�����> ��1x�d�10�| ���B��@p8<_�c #�HYt}@�~w��#�*��@ �^ \Zb���_�ξ?Xfp�����X�n ]\]�n��t``=5vx׫� ��Y���<�����r���ZR�p �0ކT��& j�B� ��,��ֹv��:���������1������P^Ww���z8�?���`��u�8�% ""! ����
�q#hy㽏:4�e��� �}o�m�=�{�p�����k$�z �t����2 ����`���@kL'L\���C�K=�?. R��:S�(�AIC 2�(���Myp1bwI
�� � W` S�l�rj�( �
:���ƌ2�wA@ ���s-�G�8�|��c��������D<�.]� (�·T��U�Y��/��}�ٸ\޾?YL�n��tЖf�s�j��n�q��h��R��`�Y��z�d�q�ǁ�\����,v��"ʛe�����Ղ.��|	��'��� `��)�]�K�W��!p�  B�>�u�]�s�l06�ybg���<�ۃu@ ����m���!V��|@�7��D��������W�a���� �1é�5쯝���sR�5��B8��(��ruy�R<5~�����_��y>L���2���y�#����w�MM��<N�����ۯ�8�Muow�,ql��{����O�����䷴{yV֎��w������I�)���幔�����?�SZ�L�����F���<�Ԏ���=��;wh����CSP�x0������������e�X��6��`�zr����`����q����H�O�
����N�,�Jc��xX���*� Ԁ����aZ�eYsa,ׯ�W/8WϹ\[�N��vP��y�A��)��7w��6p���I��~�s�q�|������g�B��O<���Æn���bP��!y \ M�^Ϛ�gi��O�0HP�'m�4e4?J�o�sN�{{^�����8��|Al�Q �}l `�� ��߭ 0|_��.�U �e�\�C�o ��0�Q < xlx���� �X,�a�m�^�x��!�����X����2fu�}��ʊ[��!�<o�����?2�?vx���y�.�/�;?/�:p�vy�K�.�x^o"����P�����@pNs�2��� �06�flc`�a� lx�����n�G`c��D`A,�_������0U`��%�p8D����vDSG�v��| ��a���j�A&��`HC�������u^y�����&WН�`�7y�X^ik�I'�t	Z"ؠ&F�/]����~���)@��A�eOFJ1ps! �w8�M���v ��� ���P` ��# ,�cc#�   ���À�%P8�0ę�a�9G�B������ĬUu��^�4^	  ��*��-������U]��)fi��s�k�Ls�:���7$8�e��g�D��
�?$/R\�~x���c�&�� ���`�QpW¢!X�LS|O߀P�L\ P`6���q�`�ú�u���߮��� c��@D"� ��'�˲,o. @����kˣ�3t���U��k5Ec��={�8��I�.lʲ�ʢ[�u�7u����������y��{�P��� ����6$��V���p���� �2� �ea���K?p �8���0���$��Vs�)xkg�	 0��7�a�=T *� .� nqlbA��XV����WsV��nGo��f�ŕU4�0�DcࠐPP�ӭJ0@�[��+���q�0}��:�A
�c� =��BVs��ZY��2blE�$����I�4X1���!k�� ��7���&���VNSԐ� ~u� 0���
�~�,�p |  0�'����RaG��FO[N�p����.h�.՚Z��,Ӷ\�ph��W����V�qm#�p��b�7�'�~2{���{[\r< Y ���
C
��{ ��FG5��.O�@ �d��wMk��'���H�������  P�$�
Pw ��Ⱦs�� nn`��6���Y@ ���;|��C����r5�x  �=Z.���+�BX>�<�����˴�
P ���{Σ�n��3t/����������c����o_�b�`�(��ש+�#am߮��wn��g|�	�������y}݁z" ���~��j�E$/�v��������gGCL  ��1���������D}@y�ޗ;������_���/�E�������:E��UG��B�?��%��ĖX�^pp��|�\.�4�� 0��T���Q�j�@  =��bg͢}ݯ�P��P�!ؐ����i��~Y�2�<����BFK ��UWJ~�FR@X&p �ɠ�I˚��Cp�����¥ҒaEK�WO��c�r)��׫�KA��JS ��9���Sn��U�c# �ѸĸD\���@ �k�8��"  �[ ԆeZbQK6��0<C���P`_;��z���W�o�m�+m�CC�UC����<���7>��"����-��, ��28��*�i;�L�Pp�90��F�(�*��@�l p ̵b���)��r@-��!�fKCG�ǢLQF�xy�����10F �
��=,�p86�� ���! [E�hۛ��@������g��ʥ�{:(�b�v(pHpe��������Z
C
8'����L�i��y�DKgqQ �V,E��DA �< �-�۽�m;w� ��1BW_�c}�Ք ���/�u�5��}��@���� P�w�r��S * �@�'Ԁ� �Z�)��l�:	� ����k;�k_��  �m�i�P�b�)WK���Yz��\} P8��R� ��k�Z'Ǡ��|>t��X�"A��b(��� `�
fY��]�"�kP"!h����`vy���2F��� �y�?~@�A��<������i�;�e��?�y,@ě@�3�O�H�N��@�����f�s��t������d���@Iֹ	yGx����åkl��c�P�Q	P�.�J�q+��b�d64�EIp�ǅ `�
 �� �F���; ʀ�,֮;��Q�!X� �o ���rW jX�u�@����|M�ML�!�k���/��PSs ̰�Q�~ݯ��9{�L�X�`�M,�Z�-rMBL�*�ۗ����ϋ.qX  Q$�`s�4��Hc��9��$ �dR@�#��]!���@e��Hq`��P�mp�:�A�ΐQ�|��{������ �˃H����e4.@���eY��� Xu8Ă􅋥�����K]�����0�����}��x���?(�
���}�5�Q�o�.�ѹv-th�/H()@��cQ��0�kc�3Q�&�{�N\"�4��u38<��MU�4� 9�K�I�9	�/��y8p �x�z���P�����N��������tdK��_ گe��/e3�'=Oq$bgk`�!����j��u;��:Ѕ�����r�ŋ�a�X���q��eY[|�����h�����,����_~���[���w�qkw�ig{�W�_����3�ι�2�/��}�V���Ę��3�}N�Z}�����c��sSbe���^��C������-�`z,'���4�s�d痣�۽�-){���_n�*� �nPh8��c�܈(nΪ�z�ir[�}-(�k�eS��^���@��m��dt ����� �����st��@��5ְ���=�Q � 0�OA���-��y=|����Y�Xu�����D
�5לg;��a`����UU�t�B�RU�ki{���B��@�p����즜��ى�>��|� ܃Z!����%#GTu�x��!�>�����!,yH�p��; ��P @s��!8%�
�Ղ�(�>�`��¡�(( ����� �7���m���] N� D��@x��1|�@T`$` �`��[h�,k�0^~���  � ��X�}��߫���.�k��ٙ�:8,����>��Ʋ��#{^��|����iy8�"��`%���?U������ہ����s�Q ��-!�1
 
�  бE��� �P]��Z�jI��YJI��U�8� ��8" 
:P���nt�ql����."p p (C"���@@�u���>�n��\���{�>��1��|�X��,��ϾW�^�����O�W�ܙˑ�B2�dv,]t-/I"椘�	�֤[ś�n���g�tP��-3g�`��q( �Ѣ�K���#�mS$�,�,�d�z_�.��g㈬�(೙���rưA����-��@����F � 0P-X0�2 a*x�@w������~��Y�����u`���K,.,����U�޹���}��Y�:��O��`7�jF�w_��[�� R�b��)1..�̚��}G]�Y{H��*��΁���� H�y��t��a ��P\�$�$�I���ʟ�qDV�^�m {	8%�tD�"��m��b  ��0C��;�D�ܝ
~�a�rY�Ns�NۜCĂX �e���4�A�٩?��:����>u �X�g�&�to"�����/�h*/�h
����K���\�8�)�=)h$�B�� `ZJ�Ï: �3�L, �%  �Ci��懄ΐ��G�\��`G�J�`/t���7��*��`kCBK7X �.#�\@�P��2�����ڹ`�C��|o�v�ӹ?� �:@,�u" `�ԩS�����y�s?��O�a��'f&����7�o��ɑ�� �Vʩe�j
h
����;I�7I��`���Vg�S��P���� V$ё'�t�@ �@3�$�o�`���\>�)���� 
��P7�Utĺ�	X���  �n��Y�Q]()b�����f��a޾��T���s��� K|A,�6�eYi- �3�r��g�}�����9�����q���$>9܂@
��; 4�a�\._ϻ�^�u�J�8�WT���� 4`��>ر�ǆ$X� �b��bq��h�z�p��DoF���Myg4��>�dF	XpC_��=p~��P�0�<�\���
���_�Z���h�ᴈ�KA1;������T��l���O������ڲ @�>�����z�����_S�۬:��̪3�<a1p��a̟7�إק���=* <������[{��$W����f*y,��1L���~��c�c��oh ~7�f�q dђofO��j��"� �\p���V��
�;���Rb��� �u��/�1qxt�8�X`Y��r���Sղ�a!��\�*(fg�j4;i�b��j��;��f�9�u��b�t�����N���kW�m���~�<I�TXK�b�*  ��d�	 g]L���]��+����a�� `!�t N9 ~^L�KL�I��\~�X
� ����� �Γo�o�����(��6Ek����3c��5���<�q��T�B�5�zՈ��FC�pv(P��K�lA��Eu
�@ "��a�:���[>��5[�5��ɸlƚj����S�#�L�<��lf��(���H�պ��(�= �%t,�0< 8X�]{�!�$<�=I �jQ�Y,� ��	N�V�~��U�w
��;���o�;(eq��u�l�1\]���Ë����@�������aڂe�)0�E�v(�eS���,q�93m��O�2����~өW��uV�
d��I�$ y��F?ShH"�l�5a�EC�
�H�` |G�� �� vC�%������7�f�@��!:�ڬV�m��.��>�P+�<�`/� ߔ��fslc P �����F��A����á�\p��kK,F�X�8�Œ���R��܉7i4��T�H#�9��������3�}��:��寫5+�6̺/��ZZD˃<�H�ܕ*�@ �.�E��\��B �u
G��� /P� / X���fryn ��ޡ	$^v�  ?��ڬV����0  '8�^Q
|�o�����n/��~30��`D��8[���,px����)���0�<\<�7��rY��������DS��4`�>;��;�|���`Y������w������{xmC�b�ޙU��Yu�T딼�����@ ���Sw�	��`$���!8�0�D��B �.5i�g4�!U�~v�[:��k�(��Tj�譎�� �u�X;)(e�u�� �@��f�m(� �q8�8��K$��a�a�eA<o[����2,xZ,��RDL�!���^�zH��v1����wІ ��DD�:uj��=����j5|��թF,�,�����@�� ��ȿ@0�R �$.R�_6��0	��`�B����	�� (�ÞZ��v�� 8�����S��q
�q@g��4�5� p��=<��t8��-p�\0����r�fY�/�U���b��y�nP̖jGm���N�Yg��u��-�M������B�/�LDL�3����������Νs�>��>Ğt���%� ��R!� (sZ� J�c�쟒䉒
�h�7y:��p^	Õb��ݤ� y�!�ڐ�/��+�����ҶZ���v)�����-���H�k�ݷs���kX��[ !"N��+�����@DT��p�r��~s_ @��}~WO^0���~_o��4�˂w�\��=c���.���}����<����� f7�_��a��<o�}}�Q`�4��找���!���nе<���yR)\` ��j�V�DCu��~AN^�������0K�Ӻ�mV��/��$E�#M��$��R ������8�rs���\t �� =�p�p�� � v�(=;@��8���!� @��j dKV���Q�bڲ��G�� h?z'S;/�ƃ4p�Z�
V�k���Ϥ�ӧ�'of\�б6_��1�Ԍ%� ]L4y j�M�7����R�Q,%^�����WۥW��t����W_�,Mて,E���̺�']�ֶ����"��l�e�i���q�r�-.�_����� `��4 v�eP �C  �`��P�e�\�8� �{@�% �A���� 8 �^`x�0&��_��k�cm�U�N��ܴ�L�Yy���Y �A{F�Ɲ X	8�j�Cp�f��@�<��پ�Ö����l��C�e)}��G#ΝC:k+�������<�{~��H�1�Z-$�1���yJ����׵|=?�4 4;  �v@�! Ĺ�3�0�� D�Dq�� �&`߫��;��H{}�O�g!   <��u���+�.X���F�����c�  4`@c4�8�֑`� ��6oo\u�G/{ާ��MV�͇,�2��h�R��^7b�t�K��uRK���o H����L�#=����N � �A��uù�Y��@�E�'"�"���.j KD�� ���ht�� ��=�PAN��m2� x��^
Pη,Kץ��- �)��7un�X�y8�>��Fc$GJO�YoA� �	  �+A�P�����_�00�t��4e���!���7��4�%�@sˬV�Ȁ��H z�~��E�����= ;  �`	��CD��3  �i1 �� .�a4��n ���.�^�K�9,�h~r��ft)�,ME:�c
�,ɫ!�����@C�� �q+<6�bB�� @{8Ё`E���:�IJ�Η���<`��/����	��$̀��`>� 9�_��:� { C�eH����������Z��-"�A �a8:�� 컨q	\��X�?}2Ȝ��<�w���ce�iq!�!�`� ���<���V�E�H�M
0 `|G!c�� W t�r�$&�κ�HA�I$�����;�� �9�m����uy�
R �-3l����^P+I��?{_��E�? @,d��� @��4,X���@5� " pYh�;�O����<mh��i�{v �1&RH[EhG XH�ع`I@m&( �P ��u���D#U ! ��@�7+����J�	f�ݼӠ3ah
:˝��sc
 4@s�@��ޡV��qc�W�/���+��qi0�.ū� , ��=�qy
 (P����C��HA�5����'��!2D�� ����2�/Ƴ����{����ޯ?�_~���O�3Y�ӕ��4#���@�d�\D[�]��'����z^��_�����;��`aX ��m������Ǒ��<�L�
����]nKok�;�C�.�$ԭ�MyH���s��MS�� ���v�R���$��+@�/�_�((8`�<0��� �!J��� 0 �˲ Xe1-!����"b,��Ж�8� g ���Ζ�^���RnJ�s c1hf%"�I@�622n�Ӛ#��{�v����������_A�����佞%@6dl�¢�gV^;��q�՛���r��*���R�1����0�:5�n��Sn6�|l�:O�}Q z `<�"� = ��y\F�а0|�:,ڂ!���,QC �Du��1L}P ��. �<�{�;�=}�@���tx���Z}�t:���`�n��)w�mZ�.���!���c�ǉ�����AjƊ��C 	�.w
k֮�{�Z�ˌnknn��>�r�
7�4���q�`��K����k�*��?��ὠ��s���|�O�(@���F�� � ,��c1v],`�vY�Z�j)K`ADP K `W3�""}2�"bt�� �  �ܕ�u>�6�]��1�cp;�`z��dK�B�d��Jֽ�v�����I��7������&]�Xͮ�")T�o:Ðũ��2U�����ކ����ֽC�=�� N�$Y��+���$��� ܂�0��z~������+��   ��[� X���h�!
`�`�b8\;j@�W@T���+���!b����5��3 r����>�VwP1^����I�Ü�)f)�5D�U+fQ~���o�{4�jˉ H4H%ѡ��`>�Q�W��U�!�?�p��kS�T�Tj�k��7pp��Ȟ�}�v�48�S@��)P�rϗ%u+@��&�ŷc����e�px�.�!���`YbYDLE�ab���-� �=j���b�3�0�= �nhnY�r]kݕ�m��O'�}���lZ¿o��r�t&���}-�~Z�)o`I��^}$�!7�K����8�-�T�$i���n@8 ����8� ����`������+_�|]Q~���`A��w{ �˸�1.��4  ��2���-�2,�>�q�
>�SC-i��Sg����3�X;���w��T�� ���rj����.���6��9FW�
N��!����+�\2��h\�K�g�2^�Jn�G��$�q b�H�$Im/hn�ǁ�l_�V p/ɑ�� 	��w ��e�uW��
`�`�,�~�|����t͍�k���'�k` 0 8m�����vo-�E�PD��a��辏֊"�S1�:;�N�Y݇n�Ĺ�^�݃<Ч����6�u=����2 ��KX<�2�K�����j��{4y����z��Y�=o�s��Tc�XȎG)Tys��[ʲ��Bz�Q�!� <D�㐜V* n��ZA���*��8h��&@��#$�?�`��k�������yе>�p.l?�~���X�=����w��
�=|��$���j�n{�K/���{� �׋��X5hVX���w�b�bjvN�f�ꦖ��r�������s>��n�4�:�tn&]p���V�r�.���y���9�|���w�;���QV��X���[}N�)�1��7c���z��< ����z׃���z��fE�/��5��ͽ6w�<����h	 �$��=4����%	&3䎼���7T�j)��5�����/ 4��| ��onc�Yw�eY."jӨ�7�V�e��
�,@��%���]����� �����ǧ���~�O�>��ϳ����_��D����D:�}nH�D.m��|d�3S�R��	 � �K�6L�T��D ��k�#��4Au(4$�:��g�)"����������<l�sepzͤ �7�KQ,-���;����.,  #�>0�>.+`r�\��-��e�0�eb�@��,@;�"5p{,�p����k^;��y�t��Ln�p(���Տ�5�p��J���Лt���) Z
 :��[S
��p E�0	KN�6  $� �PP
��$ x�tP,���/���=��;q��@L �r�F@D`Z_�D ����� N����>_L�%��2��8|:�Wd3�����B(�%�aA`Y�G�/`:�� @���ڡC�c��1�� q�s$��R�R
��$H ���� �7=��s���}  ��k��zC�G�iTC ͽ�U��ͲDL����! $,ay��˹E;C+����{�@@�;��hq1����tJ���D���{��ǃ%�l��Ѱ�՟� t��Xa�@  Xt��`j�py:K��7��M��e�@��6����� � ���M����R������a4�
ܮ>�y�K7�@q���]�Е��ۄ��p8$�^ ��rٶ�
"��@ �%b��,n�ô��Mgwד�.�t���
b�;[ܯ�&�Rq�N�"���xC�,z �$!�x?���т%�* ����IX"@T��!�P���P��iRA�+ � $����,u �` �h�ŭ�v���o
`�������t8<<��!�Z�,�6D:l]�e��b��A��K�Q�,���v����~h%���"��"�t��
��B�E�i�$@ ��-���R�) 0=�]��X�D�+$B �xO�t��=� C�$X�� M�D4	8���ځ+o�f�)�R��s��fhŻv��~��Q@�����b�.�LC�X��U @�� �� � ����y�Z�b�;��fX���S����E�.>��P�2^�e��b1]pJ��ގK;t	��p ��6��%( 8% �C� ��:�!  � M��>  ����� yq���. vPl@��bڡe�o��QĹ� ��;��/���z�~邿��Vq���@�'X����/wʐF� ;��=�-����9<5�:w�}���p��>���b���Oa�`	�.]7M�b\c�����Q�{M;%�E�(y���� |��s�9:�6A!A9����
}�;\8Pb��Zl�p�=@AS�����"@���Z�R��04ւ�Np����/ n�pcp�s��68ל�w/�
l��|��k)E�l��������CD� �o����~qy�ˈ�Pz	  x���6E�τ��h�0��3�V1B7Ĭ��~�Oa
 �`RѢ8Xl�T6KC�y�p�x
Vr�8@q��hg�A(yh�� ��� ��N�a5�{i*��h�q)`h*@AS��J@r P�e@p8�(8o��5��Z�S\�R�YС3:����\��a p��#Ҹ��V�6,������@C 0� �h�3kg�ά��jhiay�'��t�1�(M(7pA�Ǆ9& v�C��q� @ ���Д)�#�($�Sx1*v���ԲH��̸�Q-���&Z4�`�l*�� ȯ�$	�n ��5 |��5��ђ��#���n�Mr��@-�S�����Ƈ�]�-�����FD& }9�@x�� �/A����!��fgVi�0+0�M�|��4�  ��������;}q綩 �t��V��.��p��� FC$�!Y:�JIc@��ˡ n�`n�����`�@ASZ4@���D	2���� g(pp ���+(u��V�q�po�>��v @��)m�)���� |q��������}�0`���@ @ ��Q��gRԙU����W���[��x�a/0(���P��.�eb樍��<��[���Zq�>�A�C�d�3k#��^������cW��@R�"8@�9%(�T� 4����&H�a y.A�|7�} �u ���@k�Uݘ����ݼ�r:(hN�Ag���nx�Ѕ��������� ��\� �����F�%a�ϴ b��R �>�ڗ��Wԩ?��z  6�  ��J��T����j�D�d���ϵ@<��`:tWb�v	��h ��	�4|��j  ��̬ez fP�
24h� (QI$��"�H�#	ܗr����PP,'�*��Ng�/��ٮݩ{����:�jh�)"R�y��<<����*eX@Ԁ}wY�e@P��@�t���ܡ�l��`�;uf������t~�: ��xA����E]��ˡh�f��0���$0!���E�CV !/D��89�ZfaR�`�TX �L�dH� 	�/yc�`	�`\\ ܥ ((���j�s���n5�]�n��7���B��a9� ��� �z􇾠{�bp��}gX
7E ��-�����NDo��wJ�:hݢ5<�0�Y����UP��f�K:����Q �:x��kOД��l�;*i!~��O�):D ��
J
�@0��ʣ�nX��]	�� �5�$�����1a`�4 �\�$"	 �ryw��])�H ���{h�r^��{\Hi�kߌZԻ����{�9�����w���V{�S�������g�@ ~�`�����������w���y��[xڧ�� ���a��:�>n��S���x<�n��������s*��<�� �@�.+_Gk�Aէ�u�������د>�4�{�~Ӟ�}��������w�����<�}��Ϲ����\���;��_L������֯�����0����wO����w�����׳�GA� ^�@���^	$)��p�>/�4"�p����_�'�����L�s
�=@��b�L�U��UZ0#�!b�5�.X�P�Q�U�ý�q�=�Ҿ�%|����%N SWX�e��U�v
��'��ʓ��]���{����;K�I� y;�e 1�cA��K9׎�8.�$]�����@� @�o��y	 \�!E��ʓ��źl���w�=��Þ���$ ` � 8Р 	p �#�i�<��1����9-50> �K3�>���s:�EA� X2� �%C<�D`�`��% ,`�9).k\�T�� �ǜ������( ?tyt�Y�p  �$ʢ�]�|NOP$�wy��� ���g4EA��<p8H����%@�����Z�Ⱥ1y�]����y^��ׁ�nAAi��A��L9���� (�lȢ9�����	�W� 3��AY��wA��@ �aŰ �5�e�� )�)�Fװ M �'�I�1�Mgc  ���7���{ҫ�I��!��8%	Rev�2�CU���DB�������*
 p�~޹����s�>���$K�d��ݻ�<���[�ꯣ@A�� 8��̔�K��qy9��X��96qZ��	@��<��R�� � ���7`� �H����0-�5,
 |ϰ;�n���=�����h"0�W�]�>y� ctA��e9��p�Ӊ��( ���� ��˕?������
R�� ��5�"���(M�b )��܈2\V�y�K��! X  9PJ!.j�2m����w>��qPp
����ƈiz/A�-�{㢃����U�7�+h� e�*:�9@A�T0,S	�Pղ`Y�|h+�Ֆҹ��T�����ǝ)2V��� � <(���ŝ�R  A��6P��I�dykh��W�s 0�Vi�����$�qi
 M���^����\�	�2 �cVPn
Z�ļ���0	����r�&�MtvNK�f����ޯ�ΧR�� ӂB ƀ*@
��\�X��r������f�5u��;P^���cl�t�s�˝8G�SS8� 8 �լ�����R���l�Ƀ A	��H)[�Q$	�w��t�� �4"����}x���;8�.o� `@  ����ւ�nE��˫ׂ��`Ct �����輧�#�e�܀�`���ΨNW�
��`��= , [�B`�|]~ �sF@5+M͊avƍ
&grM�t�������ŅE*�ֆ[�����.o�V�7	9.��~C   e)�)��#� 
h�"R�5:|W�N��h���8�w�\���,@S`��S X
 �r��<S��FEh:�z��Y��х�R��r�H�5�R
mU�-L�pi��{����Xl�ŋ��7/=.�����3���g{�����@��<w��ι\x��^X����|��_�� �����I��}��<���J.��<������;�������T��-n� $�?������:�f�U���
��˭nw�}�e�V�%c�&��5p  A�
�+�zh�fS\Pʣ��SI�8e���,:��6�⭸P]�������sSN;F���z��Q����7:��� �zf�D`	 `@E`��O�aX.X>y��N=��>��j#4�  �A.�2x��^`UnJ)�A. J�eV�Ǟq���DK�=��Hc4	w%ʊ��p�=� ��Rp݀s��i+]�e鶴�l�f)G����A
���p�	6�p���)��Tml�0E�Ӈ#r�ǥ*�Gf���pN4�����H�PD@0�]� ,��,˛����������������Z�|���� `<� x�Di��T|�;m=��Ŏ7��y.�{�u*W�Bc)��A��,(P�j�ь ΋j��]�ֵ꬚��l��I�eg�� @9 $��C=4.8\���2u��I���s��1��LQ�T����sD8���|�u��khf :h4�l0,�0�� ��P}���\.�a9��W}��z�ܙm��ŀ����r<&������Eŧ0 <) ��e$�y؂=��۱�Ի�`����5�O�,�� ��L��Zͦi[�S�%3:.4��P*	��^=�CS��rO�e�l� �p�ԗ)��{3��� �tŞ�T�+�H�>���+E� p(
f����a4 ��P���'iC�6��\�z٫f��7t���<�  < ���"��I�l]ҔR� �Q�=!\���vյ�'\� �" �ր'5��w(%�"(E �������/{�"*[��%Y2If�� ɵ��$@Hʕj�R�d� �����	����66�e˱�.M��):Ai�t���cG�J\�,�E�P�����2� X��C���1���c���z?~�m@ƙu{�������+���]WCJ) y0K"
���$0��i+5�(	�Y3/ @�$�w��`�lm6���a�d��]�0�y_*�r�J����$��)6$'�= P���A�
�4O�f�lL;�ߊN�iQ����g�;;�p��]�PP�4-DDLaY�e��G�|�AJ��0�333�
m���. �Ѐx=��b!)��X@D�/,.ɉ�hE� V>�$K)(@�44�fӘNA�
�	&�A�( 
��P  �m���'��=X6�ժw��@a�xL��Y��ͩ�Qq����}��o�����w�n.��c7�P�{�iD|������
�n�B�V~��k���}�W?����P Cx�'B`  T,����t:=�?@@ �qϜa,�P)  ��1ɸ����������M�Y�:��d����r ����N�H�X+H2��
����` 4(h� 	K
6[�ʙ����R��+�ʴ��~{�{f�� � ��b�$��lݸ�ny7�~s�yO�t��P�O�V�� ��\V3GϝcU	���vg�y��S���@�~����wf4�Qx xAy�<<?w��~{�A�@�v>>Xn��:�o�0���?�G�g�=�)��] �*��X����U�<�=~���M��W}��:bd��l
$A(Z,�7=:����toKކ����mke��9���"�pR 	��]KIN��w�w)����=����q_�6�����oeʹsl�g���l�{L��������r���z�=��k��{�~T���(��� Eèja���TL����X��Ǐ���ھW������q( ܂<���;.��%* p�
P|G  �d��������m�Yںo�4�h+
Z�Ec��0A��,{i�Єm@� 	,hASJ@�tF)�!w/�\�����t�V��^z  ��  Ћ��R��a�B]=.����̪  �PC�21�C����&:���b�;�.���/��'�<:��po���#�e݂�J B�j������ `!p�TW -��� �( �Z ܠ4{�,�� �i`�
Z�$�����·'�z�쥻��S @��� 9n� �ת3ߜ��஝w_~�� �Zڝ��"��'
�0�Na�2��"�RU�b8��""w���h������ >�   �N ��?� �����t߾���֪)�Yu����H�s)(@���T*8;P����%���sͅ����^|�imb���)�p��� no���Tg����s�Η;_.��<Ls���)�j	�� ��Y@���s�p&�+�tf"�\{���:v|l��D}��� 4� y�^��ze������ � ��#�s�d��R�3k)�R�&Y2�H�@
�I%C�|�� &;ChPp�δ�6 ��{�	��P]�y��+�k��hvv���D W�bKnK 0��#��Cg�)���u�����vg�YCݴ�`�1bCZZ],*�a�jY-�b����T�}�¾Wv�;ς���M;N  ���p�0��p�	 �'$,:�k�k�G��ij�z�tJ��4$	~� ���@@��h j)7�2M�	����r��=K.řj����<�@�1��? .T�Z�  �3�h����Zm�U@��PT��%޿a�\b8���,haZ�YC�n�1 z=�=�2�뙾��C
\��G'7� x����R-Op���!pp�S  �|H)�5����1M(2 2 ���Ԓ	N�`r��3��u�TЁS�f�j�Z�)�&4wƃ kM��&^���  P (  %oNn>��m����Xw:�훭�6�@ ?"BU�U,�[h�ND����*b~l�=B�u_Z��72� �����/
�R������ Idq�F�ֶ�4RJS|N2|�4 h�9I 8>rV���еX����� �"�dʌ��3nG �-�{o��@9=�ܺ\n����F�p����i%3�[����傱aX!��_ ��⒖,N���7��01�YA]����9\��f�̀}������y�EY#2���:�s ���q��>�����y^[C��u(D@/r4���M��푑���o�_�M��j�|i�	�otn�{������h�|ʻ�(�R0��נlP���ҩT�H~֦�R-4!n����������]�ZԦ؞�=��h�k�&:�
B�Np(୕�6��ֆO��α_���Ǭ�"��ZfU�Μ���Ǳ ��@ @�U�ũaH��a��V��Xs�V3邠D���i��E�,v.Oނ��  <hdp̬��
�A$����DA��`H���Yo�Mӌ�iJ�o�@� �� (
P�MG����aXo�܁v73�
kS��θ=���:�@�(g8ȃ)T�8siE��kw���vL�~P��niߜ|�)e�1�(*D�RC.����N-�����N�:i0���;�lT�J婥;K}����D�:�7J���<��"cioM(hRޜ�%�Kc�T�m������R:Mi6=�i�\
0 ���I7�t
F)(��
й�2!�M:��T]:d�MՆ|o/�������ت�ֶ�r�h�Dl4�Pg�؋��@@Ybi�͈�hъJ3E�?���S���vf��@DL!�b�@H�,�p8p8�$�l`Y�˖�K��FM A�/��E�.�2ny"ce����>0�e�u��,�i6a!�h�3��vY;����I�)h6�,�)e�`?�j5�RPlP�^�� �>��T��TmU����.�V�Vl���:�j" r���l��7��M���6�
�������Si�
gz:�u
 D@E?�iëG�a���N�,W�]c�2'�hs�.��t�Dyly"�y��  y�N˲�K$�mb0�XA  ��9�:l��"뒁iLASR ` (n��j{<�f�`�=h*YI�w�4��p�N�hHZq�h�~i��.�3EW��*m����Ė)�P@'�M�șx9m3�-�ſւ
j!n�S��eZNˌ����@Ā�@ t��U��XV5`!,1TS ,ngec��F�0�b����lNd���O���
�*�X`����v��1��Jօ`)KXs-@rv�قM(fӔ��w#IFR�TP�`]�$s�� T*��`V��r̡U�
��%���ڸiC�[�hU+c����
��F��8�-��4��-V[��)�Pu�3j����� HD5@���p8����L������|��zu���g�Yu*�)����˃�X�2Z�-�V �ؐc��4w&,��@s���#yޕ(8Rs-
�$� Ȑ�� ��$�$��� L�%�$ɵ��$4���T��� 9�Z,�ͬ��Rr�f�Ǧ�F�Xm�)NM ���t
9��YZ[�آv:����Q2k�[)7شR� T "2T��0<k�m���K@`^|��?wv��S�~�
P�`x�q���e��ӭ� �]�]�;-~�G� �7����@{B�譠Z�  H#:R ��@ʁ��ެ���	P��K0��S�$	�<Z/������i�FI�\�4��:xOFl���n��9��%)0��� �1:gK�z4�ێ�)M]PPXi+ZPn�p |j*�E"���\g8zxfx�M�03`L�d,c5�IAu�]*��O�`�V �.�����)m��Xŧx�3R%��]����|����x����t����/����W�����3�?�Z�h�Ki�`�r���y�}�*����/A�S�^	D�����$��v��}2Td������^<�B<����A�Ǝ��r�lLK�t�:Ig���(7�{��?����q�?�]?�0��ְ���
�4��� �M��Y��� L 0�U@)f0�� 0 ���.X�d<���tp�� �cr@�9�  y � �)䌩�kI \7=��h�X������!�y)Ġ��� ��y�8)WV��HX	��(�l��������3Zr��M�ܔ���_;��Sی3��"�e��B���`8%����۽���5��p0�.@$4F߁� ��  � � ,��`�4`  ,���\'IL�$=���m^�ӿ�ܧ[���Ø���QHq�.Up1r�I�{�2��j j�,�� �� a�*� ��T�(50	�8 `���  �p ��4�H\  < ������hbS�q�F; ��� �=� Д={^�Z&��  p �ޡр� L�P�\��@`Y�Ĳ�@�0Q�F5c0PfL`���$�<�Y<c�
��A�41X,#%��(�:�@EI ��^񙢆i��Q�r cY5�H�H  �%A)?�@���0 T�B�;ظ6�-M�r����r�)@.���X�`��cZ�PH� %Cؑ��J?���f���>	~�X B,ݍQ� j@�26�SI'�.���<�����x�b��ǐ��˴�t���Ð�P| ��Ci�S �4I�$���eM�,K�
�঵�N��H(΂�H(~����i��N�V��ƴQ��@ hv4��H�bTͣ�F�i��F�0I����R�P�C3!+C�1$���@]]�q�&� ) ��6r �X��%�@��4L-� 26�@Y+������������` �����- ��Q�D m�D�&p�J�Фz @�4�,�" ` �tuʲ�Q�P��@�$H�$A��~u)���ڸr����* �q�6�k�ـ�Y��ɺaR2�a�.%�q/��k���@�v&v9ntN�.��!|%� G���K�`�%�Ah� �
�`����9��� ����{=��3��ݗ;�]? ��J�rr�� PX@�|�#�C*#���Ƿb$AiȲ�\�]�i+��*h����CQ6�	"a�5�S( �>(��T�W��#�M[����R\Sb��<v2��q�k Ǣ��(� �Lְ�Y�� `Q�h�!�,�tN�_ `��� "b�@�J�)ʠcP4̓�\���u8���$�X�젱�Je(Eq�d�%t'�!�j���yH)X��,ci�(�(G9Z�SFS�(@�h(��X�$@��� J� �8�P��ڼ2��4� @�w�m�i��6�ٔ��a��d�p�XȀ��KCb��Ri8�g HPE;fK �1�����C,��/h>IK<�"E��^�_�����³��j����}��U�K����>F4S�����`Au��ߜ��1.�~������22R�ׇ������>��.����i����uz�^���i�6�&��`))��^�/��f%C�
L�h<
�& �(:��gu&ۚb�u��������xS�*��yz������v��k��P���R3�VP�դ��p���`��;����{6\�u���r�$
s�% 0�' ���e�% 	��vI����L�z�ʶ(pw���].7�ʂ\YI��0�<�`h�.7�w�x'�ޭ�%y�ca�)��jC�V|�Ӵ���,P�"�`))J�@������5
H 	 |=�k��3Z��vid�����)�p9[�8�q;��h;m��,� .ϛ���&+����;tS���C�0@p���)��|Y$S@ ��?�r�,�"��X�Ĳ�֪��S'5>��` ����,c���E��Y����T�R��6O�\�=o���;Od�y��))�m` M�[��֒��%-�4����4K�hEA�ZQ\Vd E���S+�h���|- �98��̑��e��ͺ)� �c�l����?K�T���&���R��9})����Gf�O�6 X��@i2�^L[P�ଛ&�d��(a
P� `�p� "�b
��CҜ:ym:|� <�5"MY��\Y�eYY�G ��Pp�G�+ov��M�a^��7k�[H
J]�euԦf����RjY���,Z�
T>75�jh�I���pڨ�a��RNU��T���[p��`	M�ٴ��w��ꌶU�*����) ,��p�6?�Q�ymf�!8%A�0p�����ﴥ��4gk�L�a
@ a�#~���!"���/R)S�	���@٬֑[�X�,7��C5�<]��P7lm2���zHX ESR�b)�eK-�&#����bS�N��Y�I�*
�T����m K0IB�$�$P@��0m��PA�i�tTs� cӊ-Vm�:�,�SP���~:(]ފ7�H;���� ��`�X[Ъi�ִ��⌵ �0E�! 8<�X.��`GHqqh���P!���zmvm֩�io��z���k�k�C0��<��8�;��9J�r4(/AY��{(���i2Ͳ,�紬�$�e�uH��RP���5�j	�|�  @��F�:HI\���t`. �Vl�6�L�+��ivHWT �$�����kb�����j�$8D�$�����6mllmf�)�`
��=p
?q8���D,X,�Jb��Ϝe �;HҒ�s�:��e�f����j 
`����P�ܗ�gg�Gn�w��/ܫ 0�-4E�H�$I��R�,͐ IZQ�TVf � hP��H$	@	$� h4�i�Mp�*ӎ)� X9��[�MlɸmL+���ֳ1�P�p�.��&�ˑk��&^�J4$7-3���GljКW;���v�O8u8��r���b�K[�7�~�bֳ��=���\���ezu�:��d�d2��NB�_K"	w�I�Vs�u�PwP�DkI;t��|i��I�SF��K8^�C��%���;/ �j $H 	  ���)!�R퀺6ݵ@c�V�m�G�Nkc
�µ�~��a �0��yMP v  �yo#03���E����)�i	pv��25)��4L��5����=t�w��T4�������?|����z}����}ί�l��=���(���V�G��1;t������>����l���a6w�=ޝ[������6�R�s伯]�n+��H'9�����@W�2� �h���n��� �C^Ar^<�� ����L��[�Hf�W3����S��=_��/y���= \���]�w&�x�u��������@D3���C���ъ7��B�c��Bݞ</(`X~w_�6mJW(��)4�� :�            [remap]

importer="texture"
type="StreamTexture"
path="res://.import/TitleScreen.jpg-ad2aedbf96ed0ba7fefebccec6f97b7e.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Textures/TitleScreen.jpg"
dest_files=[ "res://.import/TitleScreen.jpg-ad2aedbf96ed0ba7fefebccec6f97b7e.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
GDST                ,   WEBPRIFF    WEBPVP8L   /� 0��?�������        [remap]

importer="texture"
type="StreamTexture"
path="res://.import/ball.png-bc91096d257a7ab889f72eb03aef0a7c.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Textures/ball.png"
dest_files=[ "res://.import/ball.png-bc91096d257a7ab889f72eb03aef0a7c.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=false
svg/scale=4.0
   GDST                 4   WEBPRIFF(   WEBPVP8L   /��?M�#!z�9��@�| [remap]

importer="texture"
type="StreamTexture"
path="res://.import/brick.png-e5b934862d723d35e311d8bb10977107.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Textures/brick.png"
dest_files=[ "res://.import/brick.png-e5b934862d723d35e311d8bb10977107.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
 GDST(                *   WEBPRIFF   WEBPVP8L   /'�  �֦������            [remap]

importer="texture"
type="StreamTexture"
path="res://.import/paddle.png-2a911b567abf32cb67206a34d0146622.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Textures/paddle.png"
dest_files=[ "res://.import/paddle.png-2a911b567abf32cb67206a34d0146622.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=false
svg/scale=4.0
             GDSC             %      ���ӄ�   �����϶�   ����������������¶��   ���������Ӷ�                                                 	   	   
   
                                                               #      3YYYYYYYYY0�  PQV�  -YYYYYYYY0�  PQV�  �  PQY`            [gd_scene load_steps=3 format=2]

[ext_resource path="res://Timer.gd" type="Script" id=1]
[ext_resource path="res://Textures/Timer.png" type="Texture" id=2]

[node name="Node2D" type="Node2D"]
script = ExtResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
position = Vector2( -2.00002, 0.999996 )
scale = Vector2( 0.465948, 0.476388 )
texture = ExtResource( 2 )

[node name="Timer" type="Timer" parent="."]
wait_time = 2.0
autostart = true

[connection signal="timeout" from="Timer" to="." method="_on_Timer_timeout"]
GDSC            ~      ���ӄ�   �����϶�   ��������������Ķ   ������������Ķ��   ������������ض��   ���������Ŷ�   ���������������Ŷ���   ����׶��   ���������Ҷ�   ������������؄��   ������������������������Ҷ��   �������Ӷ���   �����������Ӷ���   ����������������؄�������Ҷ�   ���¶���            res://Scene/LevelOne.tscn                      	                              0   	   =   
   N      [      \      ]      ^      d      m      n      t      |      3YY0�  PQV�  W�  �  �  �  T�  PQ�  YY0�  P�  QV�  &W�  �  �  �  T�  PQV�  W�  �  �  �  T�  PQ�  &W�  �  �  �	  T�  PQV�  W�  �  �  �	  T�  PQ�  YYY0�
  PQV�  �  PQT�  P�  QYY0�  PQV�  �  PQT�  PQY`              [gd_scene load_steps=8 format=2]

[ext_resource path="res://Textures/StartGame.png" type="Texture" id=1]
[ext_resource path="res://Textures/TitleScreen.jpg" type="Texture" id=2]
[ext_resource path="res://Textures/DieBricks.png" type="Texture" id=3]
[ext_resource path="res://Textures/Start.png" type="Texture" id=4]
[ext_resource path="res://Textures/Quit.png" type="Texture" id=5]
[ext_resource path="res://Textures/QuitGame.png" type="Texture" id=6]
[ext_resource path="res://TitleScreen.gd" type="Script" id=7]

[node name="TitleScreen" type="Node2D"]
script = ExtResource( 7 )

[node name="Sprite" type="Sprite" parent="."]
position = Vector2( 320, 179 )
scale = Vector2( 2.24296, 1.99435 )
texture = ExtResource( 2 )

[node name="MarginContainer" type="MarginContainer" parent="."]
anchor_left = 1.0
anchor_top = 1.0
anchor_right = 1.0
anchor_bottom = 1.0
margin_left = 205.0
margin_top = 30.0
size_flags_horizontal = 4

[node name="VBoxContainer" type="VBoxContainer" parent="MarginContainer"]
margin_right = 259.0
margin_bottom = 215.0
size_flags_horizontal = 4

[node name="TextureRect" type="TextureRect" parent="MarginContainer/VBoxContainer"]
margin_right = 259.0
margin_bottom = 119.0
size_flags_horizontal = 4
texture = ExtResource( 3 )

[node name="VBoxContainer" type="VBoxContainer" parent="MarginContainer/VBoxContainer"]
margin_top = 123.0
margin_right = 259.0
margin_bottom = 215.0

[node name="TextureButton" type="TextureButton" parent="MarginContainer/VBoxContainer/VBoxContainer"]
margin_left = 26.0
margin_right = 233.0
margin_bottom = 44.0
size_flags_horizontal = 4
action_mode = 0
texture_normal = ExtResource( 4 )
texture_focused = ExtResource( 1 )

[node name="TextureButton2" type="TextureButton" parent="MarginContainer/VBoxContainer/VBoxContainer"]
margin_left = 37.0
margin_top = 48.0
margin_right = 221.0
margin_bottom = 92.0
size_flags_horizontal = 4
texture_normal = ExtResource( 5 )
texture_focused = ExtResource( 6 )

[connection signal="pressed" from="MarginContainer/VBoxContainer/VBoxContainer/TextureButton" to="." method="_on_TextureButton_pressed"]
[connection signal="pressed" from="MarginContainer/VBoxContainer/VBoxContainer/TextureButton2" to="." method="_on_TextureButton2_pressed"]
         [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m��������_"�0@��^�"�v��s�}� �W��<f��Yn#I������wO���M`ҋ���N��m:�
��{-�4b7DԧQ��A �B�P��*B��v��
Q�-����^R�D���!(����T�B�*�*���%E["��M�\͆B�@�U$R�l)���{�B���@%P����g*Ųs�TP��a��dD
�6�9�UR�s����1ʲ�X�!�Ha�ߛ�$��N����i�a΁}c Rm��1��Q�c���fdB�5������J˚>>���s1��}����>����Y��?�TEDױ���s���\�T���4D����]ׯ�(aD��Ѓ!�a'\�G(��$+c$�|'�>����/B��c�v��_oH���9(l�fH������8��vV�m�^�|�m۶m�����q���k2�='���:_>��������á����-wӷU�x�˹�fa���������ӭ�M���SƷ7������|��v��v���m�d���ŝ,��L��Y��ݛ�X�\֣� ���{�#3���
�6������t`�
��t�4O��ǎ%����u[B�����O̲H��o߾��$���f���� �H��\��� �kߡ}�~$�f���N\�[�=�'��Nr:a���si����(9Lΰ���=����q-��W��LL%ɩ	��V����R)�=jM����d`�ԙHT�c���'ʦI��DD�R��C׶�&����|t Sw�|WV&�^��bt5WW,v�Ş�qf���+���Jf�t�s�-BG�t�"&�Ɗ����׵�Ջ�KL�2)gD� ���� NEƋ�R;k?.{L�$�y���{'��`��ٟ��i��{z�5��i������c���Z^�
h�+U�mC��b��J��uE�c�����h��}{�����i�'�9r�����ߨ򅿿��hR�Mt�Rb���C�DI��iZ�6i"�DN�3���J�zڷ#oL����Q �W��D@!'��;�� D*�K�J�%"�0�����pZԉO�A��b%�l�#��$A�W�A�*^i�$�%a��rvU5A�ɺ�'a<��&�DQ��r6ƈZC_B)�N�N(�����(z��y�&H�ض^��1Z4*,RQjԫ׶c����yq��4���?�R�����0�6f2Il9j��ZK�4���է�0؍è�ӈ�Uq�3�=[vQ�d$���±eϘA�����R�^��=%:�G�v��)�ǖ/��RcO���z .�ߺ��S&Q����o,X�`�����|��s�<3Z��lns'���vw���Y��>V����G�nuk:��5�U.�v��|����W���Z���4�@U3U�������|�r�?;�
         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              [remap]

path="res://Scripts/Ball.gdc"
         [remap]

path="res://Scripts/Paddle.gdc"
       [remap]

path="res://Scripts/World.gdc"
        [remap]

path="res://Timer.gdc"
[remap]

path="res://TitleScreen.gdc"
          �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      application/config/name      
   Die Bricks     application/run/main_scene          res://TitleScreen.tscn     application/config/icon         res://icon.png     display/window/size/width      �     display/window/size/height      h     display/window/size/test_width      �     display/window/size/test_height      h     global/displ          )   physics/common/enable_pause_aware_picking         $   rendering/quality/driver/driver_name         GLES2   (   rendering/2d/snapping/use_gpu_pixel_snap         )   rendering/environment/default_environment          res://default_env.tres    