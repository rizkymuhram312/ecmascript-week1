PGDMP     1            	        y            ecomm    13.1    13.1 R               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                        0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            !           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            "           1262    16502    ecomm    DATABASE     �   CREATE DATABASE ecomm WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Indonesia.1252' TABLESPACE = "bootcampSpace";
    DROP DATABASE ecomm;
                postgres    false            �            1259    16542    address    TABLE     �  CREATE TABLE public.address (
    addr_id integer NOT NULL,
    addr_email character varying(55),
    addr_fullname character varying(55),
    addr_phone_number character varying(18),
    adr_is_default boolean,
    addr_zipcode character varying(15),
    addr_street1 character varying(255),
    addr_street2 character varying(255),
    addr_city_id integer NOT NULL,
    addr_user_id integer NOT NULL
);
    DROP TABLE public.address;
       public         heap    postgres    false            �            1259    16540    address_addr_id_seq    SEQUENCE     �   CREATE SEQUENCE public.address_addr_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.address_addr_id_seq;
       public          postgres    false    207            #           0    0    address_addr_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.address_addr_id_seq OWNED BY public.address.addr_id;
          public          postgres    false    206            �            1259    16594    cart    TABLE     �   CREATE TABLE public.cart (
    cart_id integer NOT NULL,
    cart_created_on timestamp without time zone,
    cart_is_closed boolean,
    cart_total integer,
    cart_user_id integer
);
    DROP TABLE public.cart;
       public         heap    postgres    false            �            1259    16592    cart_cart_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cart_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.cart_cart_id_seq;
       public          postgres    false    213            $           0    0    cart_cart_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.cart_cart_id_seq OWNED BY public.cart.cart_id;
          public          postgres    false    212            �            1259    16607    category    TABLE     d   CREATE TABLE public.category (
    cate_id integer NOT NULL,
    cate_name character varying(25)
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    16605    category_care_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_care_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.category_care_id_seq;
       public          postgres    false    215            %           0    0    category_care_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.category_care_id_seq OWNED BY public.category.cate_id;
          public          postgres    false    214            �            1259    16521    city    TABLE        CREATE TABLE public.city (
    city_id integer NOT NULL,
    city_name character varying(100),
    prov_id integer NOT NULL
);
    DROP TABLE public.city;
       public         heap    postgres    false            �            1259    16519    city_city_id_seq    SEQUENCE     �   CREATE SEQUENCE public.city_city_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.city_city_id_seq;
       public          postgres    false    203            &           0    0    city_city_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.city_city_id_seq OWNED BY public.city.city_id;
          public          postgres    false    202            �            1259    16639    order_detail    TABLE     �   CREATE TABLE public.order_detail (
    ordi_quantity integer,
    ordi_price integer,
    ordi_cart_id integer,
    ordi_prod_id integer,
    ordi_orde_name character varying NOT NULL
);
     DROP TABLE public.order_detail;
       public         heap    postgres    false            �            1259    16582    orders    TABLE     �   CREATE TABLE public.orders (
    order_name character varying(55) NOT NULL,
    order_created_on timestamp without time zone,
    order_is_closed boolean,
    order_total integer,
    order_user_id integer NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    16615    product    TABLE     a  CREATE TABLE public.product (
    prod_id integer NOT NULL,
    prod_title character varying(25),
    prod_description character varying(255),
    prod_stock integer,
    prod_price integer,
    prod_condition character varying(15),
    prod_manufacture character varying(25),
    prod_image character varying(100),
    prod_cate_id integer NOT NULL
);
    DROP TABLE public.product;
       public         heap    postgres    false            �            1259    16626    product_images    TABLE     �   CREATE TABLE public.product_images (
    prim_id uuid NOT NULL,
    prim_file_name character varying(255),
    prim_path character varying(255),
    prim_prod_id integer NOT NULL
);
 "   DROP TABLE public.product_images;
       public         heap    postgres    false            �            1259    16613    product_prod_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_prod_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.product_prod_id_seq;
       public          postgres    false    217            '           0    0    product_prod_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.product_prod_id_seq OWNED BY public.product.prod_id;
          public          postgres    false    216            �            1259    16505    province    TABLE     e   CREATE TABLE public.province (
    prov_id integer NOT NULL,
    prov_name character varying(100)
);
    DROP TABLE public.province;
       public         heap    postgres    false            �            1259    16503    province_prov_id_seq    SEQUENCE     �   CREATE SEQUENCE public.province_prov_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.province_prov_id_seq;
       public          postgres    false    201            (           0    0    province_prov_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.province_prov_id_seq OWNED BY public.province.prov_id;
          public          postgres    false    200            �            1259    16563    roles    TABLE     a   CREATE TABLE public.roles (
    role_id integer NOT NULL,
    role_name character varying(25)
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    16561    roles_role_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.roles_role_id_seq;
       public          postgres    false    209            )           0    0    roles_role_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.roles_role_id_seq OWNED BY public.roles.role_id;
          public          postgres    false    208            �            1259    16569 
   user_roles    TABLE     _   CREATE TABLE public.user_roles (
    user_id integer NOT NULL,
    role_id integer NOT NULL
);
    DROP TABLE public.user_roles;
       public         heap    postgres    false            �            1259    16534    users    TABLE     �   CREATE TABLE public.users (
    user_id integer NOT NULL,
    user_name character varying(55),
    user_email character varying(55),
    user_password character varying(255)
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16532    users_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_user_id_seq;
       public          postgres    false    205            *           0    0    users_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;
          public          postgres    false    204            b           2604    16545    address addr_id    DEFAULT     r   ALTER TABLE ONLY public.address ALTER COLUMN addr_id SET DEFAULT nextval('public.address_addr_id_seq'::regclass);
 >   ALTER TABLE public.address ALTER COLUMN addr_id DROP DEFAULT;
       public          postgres    false    206    207    207            d           2604    16597    cart cart_id    DEFAULT     l   ALTER TABLE ONLY public.cart ALTER COLUMN cart_id SET DEFAULT nextval('public.cart_cart_id_seq'::regclass);
 ;   ALTER TABLE public.cart ALTER COLUMN cart_id DROP DEFAULT;
       public          postgres    false    212    213    213            e           2604    16610    category cate_id    DEFAULT     t   ALTER TABLE ONLY public.category ALTER COLUMN cate_id SET DEFAULT nextval('public.category_care_id_seq'::regclass);
 ?   ALTER TABLE public.category ALTER COLUMN cate_id DROP DEFAULT;
       public          postgres    false    214    215    215            `           2604    16524    city city_id    DEFAULT     l   ALTER TABLE ONLY public.city ALTER COLUMN city_id SET DEFAULT nextval('public.city_city_id_seq'::regclass);
 ;   ALTER TABLE public.city ALTER COLUMN city_id DROP DEFAULT;
       public          postgres    false    202    203    203            f           2604    16618    product prod_id    DEFAULT     r   ALTER TABLE ONLY public.product ALTER COLUMN prod_id SET DEFAULT nextval('public.product_prod_id_seq'::regclass);
 >   ALTER TABLE public.product ALTER COLUMN prod_id DROP DEFAULT;
       public          postgres    false    217    216    217            _           2604    16508    province prov_id    DEFAULT     t   ALTER TABLE ONLY public.province ALTER COLUMN prov_id SET DEFAULT nextval('public.province_prov_id_seq'::regclass);
 ?   ALTER TABLE public.province ALTER COLUMN prov_id DROP DEFAULT;
       public          postgres    false    201    200    201            c           2604    16566    roles role_id    DEFAULT     n   ALTER TABLE ONLY public.roles ALTER COLUMN role_id SET DEFAULT nextval('public.roles_role_id_seq'::regclass);
 <   ALTER TABLE public.roles ALTER COLUMN role_id DROP DEFAULT;
       public          postgres    false    208    209    209            a           2604    16537    users user_id    DEFAULT     n   ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);
 <   ALTER TABLE public.users ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    204    205    205                      0    16542    address 
   TABLE DATA           �   COPY public.address (addr_id, addr_email, addr_fullname, addr_phone_number, adr_is_default, addr_zipcode, addr_street1, addr_street2, addr_city_id, addr_user_id) FROM stdin;
    public          postgres    false    207   ja                 0    16594    cart 
   TABLE DATA           b   COPY public.cart (cart_id, cart_created_on, cart_is_closed, cart_total, cart_user_id) FROM stdin;
    public          postgres    false    213   �b                 0    16607    category 
   TABLE DATA           6   COPY public.category (cate_id, cate_name) FROM stdin;
    public          postgres    false    215   �b                 0    16521    city 
   TABLE DATA           ;   COPY public.city (city_id, city_name, prov_id) FROM stdin;
    public          postgres    false    203   =c                 0    16639    order_detail 
   TABLE DATA           m   COPY public.order_detail (ordi_quantity, ordi_price, ordi_cart_id, ordi_prod_id, ordi_orde_name) FROM stdin;
    public          postgres    false    219   �c                 0    16582    orders 
   TABLE DATA           k   COPY public.orders (order_name, order_created_on, order_is_closed, order_total, order_user_id) FROM stdin;
    public          postgres    false    211   
d                 0    16615    product 
   TABLE DATA           �   COPY public.product (prod_id, prod_title, prod_description, prod_stock, prod_price, prod_condition, prod_manufacture, prod_image, prod_cate_id) FROM stdin;
    public          postgres    false    217   d                 0    16626    product_images 
   TABLE DATA           Z   COPY public.product_images (prim_id, prim_file_name, prim_path, prim_prod_id) FROM stdin;
    public          postgres    false    218   ge       
          0    16505    province 
   TABLE DATA           6   COPY public.province (prov_id, prov_name) FROM stdin;
    public          postgres    false    201   �f                 0    16563    roles 
   TABLE DATA           3   COPY public.roles (role_id, role_name) FROM stdin;
    public          postgres    false    209   �f                 0    16569 
   user_roles 
   TABLE DATA           6   COPY public.user_roles (user_id, role_id) FROM stdin;
    public          postgres    false    210   g                 0    16534    users 
   TABLE DATA           N   COPY public.users (user_id, user_name, user_email, user_password) FROM stdin;
    public          postgres    false    205   Pg       +           0    0    address_addr_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.address_addr_id_seq', 9, true);
          public          postgres    false    206            ,           0    0    cart_cart_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.cart_cart_id_seq', 1, false);
          public          postgres    false    212            -           0    0    category_care_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.category_care_id_seq', 7, true);
          public          postgres    false    214            .           0    0    city_city_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.city_city_id_seq', 7, true);
          public          postgres    false    202            /           0    0    product_prod_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.product_prod_id_seq', 7, true);
          public          postgres    false    216            0           0    0    province_prov_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.province_prov_id_seq', 5, true);
          public          postgres    false    200            1           0    0    roles_role_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.roles_role_id_seq', 5, true);
          public          postgres    false    208            2           0    0    users_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.users_user_id_seq', 9, true);
          public          postgres    false    204            n           2606    16550    address address_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (addr_id);
 >   ALTER TABLE ONLY public.address DROP CONSTRAINT address_pkey;
       public            postgres    false    207            t           2606    16599    cart cart_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_pkey PRIMARY KEY (cart_id);
 8   ALTER TABLE ONLY public.cart DROP CONSTRAINT cart_pkey;
       public            postgres    false    213            v           2606    16612    category category_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (cate_id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    215            j           2606    16526    city city_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (city_id);
 8   ALTER TABLE ONLY public.city DROP CONSTRAINT city_pkey;
       public            postgres    false    203            r           2606    16586    orders orders_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_name);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    211            z           2606    16633 "   product_images product_images_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.product_images
    ADD CONSTRAINT product_images_pkey PRIMARY KEY (prim_id);
 L   ALTER TABLE ONLY public.product_images DROP CONSTRAINT product_images_pkey;
       public            postgres    false    218            x           2606    16620    product product_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (prod_id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    217            h           2606    16510    province province_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.province
    ADD CONSTRAINT province_pkey PRIMARY KEY (prov_id);
 @   ALTER TABLE ONLY public.province DROP CONSTRAINT province_pkey;
       public            postgres    false    201            p           2606    16568    roles roles_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (role_id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    209            l           2606    16539    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    205            |           2606    16551 !   address address_addr_city_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_addr_city_id_fkey FOREIGN KEY (addr_city_id) REFERENCES public.city(city_id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.address DROP CONSTRAINT address_addr_city_id_fkey;
       public          postgres    false    203    207    2922            }           2606    16556 !   address address_addr_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_addr_user_id_fkey FOREIGN KEY (addr_user_id) REFERENCES public.users(user_id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.address DROP CONSTRAINT address_addr_user_id_fkey;
       public          postgres    false    205    207    2924            �           2606    16600    cart cart_cart_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_cart_user_id_fkey FOREIGN KEY (cart_user_id) REFERENCES public.users(user_id) ON UPDATE CASCADE ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.cart DROP CONSTRAINT cart_cart_user_id_fkey;
       public          postgres    false    205    2924    213            {           2606    16527    city city_prov_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_prov_id_fkey FOREIGN KEY (prov_id) REFERENCES public.province(prov_id) ON UPDATE CASCADE ON DELETE CASCADE;
 @   ALTER TABLE ONLY public.city DROP CONSTRAINT city_prov_id_fkey;
       public          postgres    false    2920    201    203            �           2606    16645 +   order_detail order_detail_ordi_cart_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_detail
    ADD CONSTRAINT order_detail_ordi_cart_id_fkey FOREIGN KEY (ordi_cart_id) REFERENCES public.cart(cart_id) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.order_detail DROP CONSTRAINT order_detail_ordi_cart_id_fkey;
       public          postgres    false    219    2932    213            �           2606    16655 -   order_detail order_detail_ordi_orde_name_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_detail
    ADD CONSTRAINT order_detail_ordi_orde_name_fkey FOREIGN KEY (ordi_orde_name) REFERENCES public.orders(order_name) ON UPDATE CASCADE ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.order_detail DROP CONSTRAINT order_detail_ordi_orde_name_fkey;
       public          postgres    false    2930    211    219            �           2606    16650 +   order_detail order_detail_ordi_prod_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_detail
    ADD CONSTRAINT order_detail_ordi_prod_id_fkey FOREIGN KEY (ordi_prod_id) REFERENCES public.product(prod_id) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.order_detail DROP CONSTRAINT order_detail_ordi_prod_id_fkey;
       public          postgres    false    217    219    2936            �           2606    16587     orders orders_order_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_order_user_id_fkey FOREIGN KEY (order_user_id) REFERENCES public.users(user_id) ON UPDATE CASCADE ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_order_user_id_fkey;
       public          postgres    false    2924    205    211            �           2606    16634 /   product_images product_images_prim_prod_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_images
    ADD CONSTRAINT product_images_prim_prod_id_fkey FOREIGN KEY (prim_prod_id) REFERENCES public.product(prod_id) ON UPDATE CASCADE ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.product_images DROP CONSTRAINT product_images_prim_prod_id_fkey;
       public          postgres    false    217    218    2936            �           2606    16621 !   product product_prod_cate_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_prod_cate_id_fkey FOREIGN KEY (prod_cate_id) REFERENCES public.category(cate_id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.product DROP CONSTRAINT product_prod_cate_id_fkey;
       public          postgres    false    215    2934    217                       2606    16577 "   user_roles user_roles_role_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.roles(role_id) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_role_id_fkey;
       public          postgres    false    209    210    2928            ~           2606    16572 "   user_roles user_roles_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_user_id_fkey;
       public          postgres    false    205    2924    210                 x�eнN�0����*|�q�n*�*U0!���(q'Qj�=.5��.����`�N������`�7I��,[����8Wز� םa-_9hl�H��j"A,T������I�կSgÚ����T1���fZN�y5%�#g7���)R��b�3|^e0��V7�rg-2�Ό���+f��vr���v<pb�-2(Q���lw�E���G���/��G;�a�3
Qb�G���}.W��{g���F7CX7�-��o���v��         K   x�U˱�0��?E�c��B��/(���hr���G������d����h��M�Z��(��{�ؾ����0(�         P   x�3��I,(�/�2��H�K)���K�2�t�I,Q��I�(JLO�2�H�N�L��2�t�I�.)�����2�t*�.����� *�{         W   x�3��J�N,*ITN�I,I��4�2�t�O�/�4�2�tJ�K)�K�M8��s�9��L9}S2K�L3ΐ�����Ĝ��D��=... ײ}         V   x���1�@D�z���(��M���9�쮉6R^~ L��؏mVWҦ:��km�MkWG~b�c>1�`J�������s�J �         e   x�]�1
�@D�:9�`�L&Э�kkO��qEe�vx^�	�� LZ���12Cvqq�O�d��`�qKJ��?ҫ�*�"���#�ק�d�e������z �'�         �   x�]��j�0�ϫ��˶�s��*b�Ӝr� �bI�'��u���.Z��f���/�����q>�8�D������
��f~��'N+"�qR*Οh7A�C�қ�]���:�����q�i������?���Uдmû]��V���-�o��j��CBE	:�����jiH(ӈ/;,F�4VǦ�X�r��z���oדI�:]�{bjj��c��m�         !  x�MнNC1���)x��8#RKE+Ul,v����

�OP`�d}:��l��m�@-(��sj��b�G>
�����ʗ���b2
��	��ae`"�d]b�)7�����SВ5@ɝ!�t����)|��<�N�+�����}�) ���Z7�n��MIf���u )�'!�������ƶ�)O����"�*eB��
�,��� ���<MM�{)Ty��T!#1h�>x�ֶly����t�:���&��ѓK	΃M[�S�+]�����c���r      
   9   x�3�t��T�J�N,*I�2��J,OTpJ,J,�2�pBR��3�L�����"�=... �I�         -   x�3�tL����2�-N-�2�t.-.��2M9}Ss���=... �|
�         "   x�3�4�2�4�2bS 6�4��4����� 5��         x   x�U���0�珩�����;s��E�D���/�YN:ݳƽȆ�^�>��]���$b��b1�JeM����oMY{Ly�X�֔�ĪT�����^(���98�m��1�2w"�9Da     