PGDMP              	        |            ProductsApplication    16.3    16.0     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16398    ProductsApplication    DATABASE     �   CREATE DATABASE "ProductsApplication" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
 %   DROP DATABASE "ProductsApplication";
                postgres    false            �            1259    16430    comments    TABLE     �   CREATE TABLE public.comments (
    comment_id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    body character varying(255) NOT NULL,
    product_id character varying(36) NOT NULL
);
    DROP TABLE public.comments;
       public         heap    postgres    false            �            1259    16407    images    TABLE     �   CREATE TABLE public.images (
    image_id character varying(36) NOT NULL,
    url text NOT NULL,
    product_id character varying(36) NOT NULL,
    main boolean DEFAULT false NOT NULL
);
    DROP TABLE public.images;
       public         heap    postgres    false            �            1259    16399    products    TABLE     �   CREATE TABLE public.products (
    product_id character varying(36) NOT NULL,
    title character varying(255) DEFAULT NULL::character varying,
    description character varying(255),
    price numeric(10,2)
);
    DROP TABLE public.products;
       public         heap    postgres    false            �          0    16430    comments 
   TABLE DATA           M   COPY public.comments (comment_id, name, email, body, product_id) FROM stdin;
    public          postgres    false    217   �       �          0    16407    images 
   TABLE DATA           A   COPY public.images (image_id, url, product_id, main) FROM stdin;
    public          postgres    false    216          �          0    16399    products 
   TABLE DATA           I   COPY public.products (product_id, title, description, price) FROM stdin;
    public          postgres    false    215   �       &           2606    16413    images images_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_pkey PRIMARY KEY (image_id);
 <   ALTER TABLE ONLY public.images DROP CONSTRAINT images_pkey;
       public            postgres    false    216            $           2606    16404    products products_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    215            (           2606    16435 !   comments comments_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(product_id);
 K   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_product_id_fkey;
       public          postgres    false    4644    217    215            '           2606    16414    images images_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(product_id);
 G   ALTER TABLE ONLY public.images DROP CONSTRAINT images_product_id_fkey;
       public          postgres    false    215    4644    216            �   8  x��Vێ�6}�~�~@�-Kk��@/(��M�"O�!9^�(����|}�P��$���ū��Ù3gΌяMSmʂ��*66����uY��7�z�.�Oc�?��s�V[v���ژ���~9g�c��Ng�_�'��l�W��21wǐ��]��ɶ��4}�{��Ή˾�H�a1v�F�>|p篽�Ě����Ƕ�.���9���9�ll�| oq���tg���!"��}��8f���MŪ��v_T5o
��MQ��Q��T�V? �v�>rL	$�-RG��Md$6�|���d?���}|���=4��r�qv�4�c�=� P�+�z<�:{�������8l	(�`_J'&��� `�Xs�-Z5�l
����R��c��Del~$���f}��*�\�2��Pǒ��^��n�=�����rc�cQQ)�*|��h��2��~�He���`�Lp�1lru����:F�o�|�w�H���҆�6q�=�sn����pV���}-UIu���]��
J�Z-��zc{�c��� H����� �����֬���%h��E����zI]��0�w3Q�ە�7ғ����J��h���I��M�����MK�⁧��j����AYIGm� ��ݯ�ë��7&��w���>V��.rMĠa���=P{'Z��dMԓ�����(�����L��#Pwq��h�Ko�o��8W�L�/��zf�!9=�
Ju��pؙ�$K�Oґ�n���W0�c;P��; OL�j'�`��W0����� ZkG��˲��-�&'���F��Ϗ�(��8��`�����+�zrI�EBU��6T�eY��MU���ź����>^�hh}$1E �z���/�p�
3	{�x4w�[0���y3r۲?tg?��I(Z��$1M�ި���c�hq?x§K��ZI"�cu�/'����)���	�	��Rw ��T}��.������\�;�D!f���d���	���VI/�����*����qB̉��C�<�`y2���U`>�}��Ë��PW<a���gӤR� J�o���v\l��|��b�-w��)��q�3���cy�J�Jeo N��X}�gF���Oْ �D��l�,)����In�d�Fu҃o����4~FhZ����@Ұ�����g4�T��jfo��D��k#���f5�,Ѐ}JH�����x���Mta�0p:ʌE3XJc�TZ�{^oS��3I�16ri�� �7��X��01��P�od�����_�4&pɜP��"�e!�.�H���,�!^�l��b�Kq�-�*NIf���� ��L�����V�C�5�      �   �  x����r9�5�����lۉcb��L���::�<ܻ��A<S�l��R��_�u8e��$J�	c1�"�%d�R�;ӦYןz�ݲ^ϡ�^�j�[OWͪ����7nW�h�4�8��!--�ֻĭI&�N���,6_!�������E&rZl�n��'{֜^d2W���m�Vj�O��|�9���q�u0zv��d��Da�T�o�eB��w�5�-7'7b����C;3�6C������yKg�����L���g5���~s��4�Z���?�A��?g��@Ol�Hd`��ā8E�E�,(���l�R��v�M�������gRj�,Oj�����;��ǿ�\˳M]�����u5@#=6���2H`@�H�x�J�)[��y6�+��⠿/�L�Q;�#g
�Rv�y�ٿ�/2=M�s7w���>��ښ��������a��:1˃UĆ��t��!��i'Dp��?��l���|����/nǏ���;g`�����^��Ϸݷ�9?L�����;��ُ�a[3��%C��E�����z��A�5�9����EuFg�bݫzo��������s�L{5�3M��ۺ�hR�D�r��g@QR~.̇��>u9bH21h> I�'�U�j�[���>*Ulj�)��y7s�V�Wâ�-�Isx?N@�	S�LH�p���t���v�� ���      �   �  x�ŕͮ�F���S�h��OwY�Y5�Md�rl���Jr����|o� 7��ʂ���<琲�،�A���5��e�*��[J�s�~��c�7�i8��/�/g���i�p�uXO}���p9ӑ����2���i���s�+�K	mK&@�v#�
����b�������22�ѣ���W��m|�\O܏����q�ͼ����s�E�-�#[!Y�k��xt��_�v]`��W��+�u��p;�0~k)��k��db�\KEcS%v*�b�|�6��i�ӫ����2��<��\������Y�F �YX!����cCT�{�#~{��x#��@0�E�x��f�����tW���:���F4~Ǎ���!p9f(�W�![K��&
~`:��i�^k���`�6�������S�e��}_2��Pr�Pɀ�Y2\��Jn&E!���i���A	m�q�2�s�����n'I�˖п��F�5G5�7�C[P�R-U�������Q��i�;��;�8K\��t:����}gӋ�hI5��*�ԛ�F�����sB����S��8\{+�6�����e���=�2/�r�;�շ�@d��y�Pb��#�є,����`��������;n�9���QJm��[��DIL�Z��RUjLNfQ�t�����&f�����~xS�Ra��`�8�4�4De��.kt��Y#�h�d��� E]��2{�:��g�bh��K� ]D%�f5;o���ܜI���,8"�
Z�ٖ+�yt�E).����@�J�rm�d�>�Gg_ɪ.���FȔ0� �'��Ӻ^���a���\��|;|�B�.+_���:NH��(�Z�,,�@8�#([Z��;Ց�1��p�l�T�\!]���6)p�șLl�s�#J�����$��h��RX0Y���0�Fv�W@�BRnx����n���)~     