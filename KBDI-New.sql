PGDMP         "                z            KBDI-New    14.5    14.4 ?               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    25036    KBDI-New    DATABASE     j   CREATE DATABASE "KBDI-New" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Indonesia.1252';
    DROP DATABASE "KBDI-New";
                postgres    false            ?            1259    25063 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            ?            1259    25062    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    216                       0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    215            ?            1259    25072    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            ?            1259    25071    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    218                       0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    217            ?            1259    25056    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            ?            1259    25055    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    214                       0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    213            ?            1259    25079 	   auth_user    TABLE     ?  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            ?            1259    25088    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            ?            1259    25087    auth_user_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    222                       0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    221            ?            1259    25078    auth_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    220            	           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    219            ?            1259    25095    auth_user_user_permissions    TABLE     ?   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            ?            1259    25094 !   auth_user_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    224            
           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    223            ?            1259    25154    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            ?            1259    25153    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    226                       0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    225            ?            1259    25047    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            ?            1259    25046    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    212                       0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    211            ?            1259    25038    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            ?            1259    25037    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    210                       0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    209            ?            1259    25421    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            ?            1259    25184    fcm_django_fcmdevice    TABLE     6  CREATE TABLE public.fcm_django_fcmdevice (
    id integer NOT NULL,
    name character varying(255),
    active boolean NOT NULL,
    date_created timestamp with time zone,
    device_id character varying(255),
    registration_id text NOT NULL,
    type character varying(10) NOT NULL,
    user_id integer
);
 (   DROP TABLE public.fcm_django_fcmdevice;
       public         heap    postgres    false            ?            1259    25233    fcm_django_fcmdevice_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.fcm_django_fcmdevice_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.fcm_django_fcmdevice_id_seq;
       public          postgres    false    227                       0    0    fcm_django_fcmdevice_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.fcm_django_fcmdevice_id_seq OWNED BY public.fcm_django_fcmdevice.id;
          public          postgres    false    228            ?            1259    25252    kbdis_droughtfactor    TABLE     ?   CREATE TABLE public.kbdis_droughtfactor (
    id bigint NOT NULL,
    drought_factor double precision NOT NULL,
    date date NOT NULL,
    created_at timestamp with time zone NOT NULL,
    peatland_cover_id bigint NOT NULL
);
 '   DROP TABLE public.kbdis_droughtfactor;
       public         heap    postgres    false            ?            1259    25251    kbdis_droughtfactor_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.kbdis_droughtfactor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.kbdis_droughtfactor_id_seq;
       public          postgres    false    234                       0    0    kbdis_droughtfactor_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.kbdis_droughtfactor_id_seq OWNED BY public.kbdis_droughtfactor.id;
          public          postgres    false    233            ?            1259    25245    kbdis_droughtindex    TABLE     ?   CREATE TABLE public.kbdis_droughtindex (
    id bigint NOT NULL,
    kbdi double precision NOT NULL,
    date date NOT NULL,
    created_at timestamp with time zone NOT NULL,
    peatland_cover_id bigint NOT NULL,
    status character varying(255)
);
 &   DROP TABLE public.kbdis_droughtindex;
       public         heap    postgres    false            ?            1259    25244    kbdis_droughtindex_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.kbdis_droughtindex_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.kbdis_droughtindex_id_seq;
       public          postgres    false    232                       0    0    kbdis_droughtindex_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.kbdis_droughtindex_id_seq OWNED BY public.kbdis_droughtindex.id;
          public          postgres    false    231            ?            1259    25282    oauth2_provider_accesstoken    TABLE     ?  CREATE TABLE public.oauth2_provider_accesstoken (
    id bigint NOT NULL,
    token character varying(255) NOT NULL,
    expires timestamp with time zone NOT NULL,
    scope text NOT NULL,
    application_id bigint,
    user_id integer,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    source_refresh_token_id bigint,
    id_token_id bigint
);
 /   DROP TABLE public.oauth2_provider_accesstoken;
       public         heap    postgres    false            ?            1259    25281 "   oauth2_provider_accesstoken_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.oauth2_provider_accesstoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.oauth2_provider_accesstoken_id_seq;
       public          postgres    false    238                       0    0 "   oauth2_provider_accesstoken_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.oauth2_provider_accesstoken_id_seq OWNED BY public.oauth2_provider_accesstoken.id;
          public          postgres    false    237            ?            1259    25271    oauth2_provider_application    TABLE     /  CREATE TABLE public.oauth2_provider_application (
    id bigint NOT NULL,
    client_id character varying(100) NOT NULL,
    redirect_uris text NOT NULL,
    client_type character varying(32) NOT NULL,
    authorization_grant_type character varying(32) NOT NULL,
    client_secret character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    user_id integer,
    skip_authorization boolean NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    algorithm character varying(5) NOT NULL
);
 /   DROP TABLE public.oauth2_provider_application;
       public         heap    postgres    false            ?            1259    25270 "   oauth2_provider_application_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.oauth2_provider_application_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.oauth2_provider_application_id_seq;
       public          postgres    false    236                       0    0 "   oauth2_provider_application_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.oauth2_provider_application_id_seq OWNED BY public.oauth2_provider_application.id;
          public          postgres    false    235            ?            1259    25293    oauth2_provider_grant    TABLE     +  CREATE TABLE public.oauth2_provider_grant (
    id bigint NOT NULL,
    code character varying(255) NOT NULL,
    expires timestamp with time zone NOT NULL,
    redirect_uri text NOT NULL,
    scope text NOT NULL,
    application_id bigint NOT NULL,
    user_id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    code_challenge character varying(128) NOT NULL,
    code_challenge_method character varying(10) NOT NULL,
    nonce character varying(255) NOT NULL,
    claims text NOT NULL
);
 )   DROP TABLE public.oauth2_provider_grant;
       public         heap    postgres    false            ?            1259    25292    oauth2_provider_grant_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.oauth2_provider_grant_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.oauth2_provider_grant_id_seq;
       public          postgres    false    240                       0    0    oauth2_provider_grant_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.oauth2_provider_grant_id_seq OWNED BY public.oauth2_provider_grant.id;
          public          postgres    false    239            ?            1259    25377    oauth2_provider_idtoken    TABLE     5  CREATE TABLE public.oauth2_provider_idtoken (
    id bigint NOT NULL,
    jti uuid NOT NULL,
    expires timestamp with time zone NOT NULL,
    scope text NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    application_id bigint,
    user_id integer
);
 +   DROP TABLE public.oauth2_provider_idtoken;
       public         heap    postgres    false            ?            1259    25376    oauth2_provider_idtoken_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.oauth2_provider_idtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.oauth2_provider_idtoken_id_seq;
       public          postgres    false    244                       0    0    oauth2_provider_idtoken_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.oauth2_provider_idtoken_id_seq OWNED BY public.oauth2_provider_idtoken.id;
          public          postgres    false    243            ?            1259    25304    oauth2_provider_refreshtoken    TABLE     Z  CREATE TABLE public.oauth2_provider_refreshtoken (
    id bigint NOT NULL,
    token character varying(255) NOT NULL,
    access_token_id bigint,
    application_id bigint NOT NULL,
    user_id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    revoked timestamp with time zone
);
 0   DROP TABLE public.oauth2_provider_refreshtoken;
       public         heap    postgres    false            ?            1259    25303 #   oauth2_provider_refreshtoken_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.oauth2_provider_refreshtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.oauth2_provider_refreshtoken_id_seq;
       public          postgres    false    242                       0    0 #   oauth2_provider_refreshtoken_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.oauth2_provider_refreshtoken_id_seq OWNED BY public.oauth2_provider_refreshtoken.id;
          public          postgres    false    241            ?            1259    25236    peatlandcovers_peatlandcover    TABLE     '  CREATE TABLE public.peatlandcovers_peatlandcover (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    image character varying(255) NOT NULL,
    result_type character varying(255) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    alarm character varying(255)
);
 0   DROP TABLE public.peatlandcovers_peatlandcover;
       public         heap    postgres    false            ?            1259    25235 #   peatlandcovers_peatlandcover_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.peatlandcovers_peatlandcover_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.peatlandcovers_peatlandcover_id_seq;
       public          postgres    false    230                       0    0 #   peatlandcovers_peatlandcover_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.peatlandcovers_peatlandcover_id_seq OWNED BY public.peatlandcovers_peatlandcover.id;
          public          postgres    false    229            ?            1259    25409    peatlandfields_peatlandfield    TABLE     
  CREATE TABLE public.peatlandfields_peatlandfield (
    id bigint NOT NULL,
    water_level double precision,
    max_air_temperature double precision,
    date date NOT NULL,
    created_at timestamp with time zone NOT NULL,
    peatland_cover_id bigint NOT NULL
);
 0   DROP TABLE public.peatlandfields_peatlandfield;
       public         heap    postgres    false            ?            1259    25408 #   peatlandfields_peatlandfield_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.peatlandfields_peatlandfield_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.peatlandfields_peatlandfield_id_seq;
       public          postgres    false    246                       0    0 #   peatlandfields_peatlandfield_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.peatlandfields_peatlandfield_id_seq OWNED BY public.peatlandfields_peatlandfield.id;
          public          postgres    false    245            ?           2604    25066    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            ?           2604    25075    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            ?           2604    25059    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214            ?           2604    25082    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            ?           2604    25091    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            ?           2604    25098    auth_user_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            ?           2604    25157    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            ?           2604    25050    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            ?           2604    25041    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            ?           2604    25234    fcm_django_fcmdevice id    DEFAULT     ?   ALTER TABLE ONLY public.fcm_django_fcmdevice ALTER COLUMN id SET DEFAULT nextval('public.fcm_django_fcmdevice_id_seq'::regclass);
 F   ALTER TABLE public.fcm_django_fcmdevice ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227            ?           2604    25255    kbdis_droughtfactor id    DEFAULT     ?   ALTER TABLE ONLY public.kbdis_droughtfactor ALTER COLUMN id SET DEFAULT nextval('public.kbdis_droughtfactor_id_seq'::regclass);
 E   ALTER TABLE public.kbdis_droughtfactor ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233    234            ?           2604    25248    kbdis_droughtindex id    DEFAULT     ~   ALTER TABLE ONLY public.kbdis_droughtindex ALTER COLUMN id SET DEFAULT nextval('public.kbdis_droughtindex_id_seq'::regclass);
 D   ALTER TABLE public.kbdis_droughtindex ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    232    232            ?           2604    25285    oauth2_provider_accesstoken id    DEFAULT     ?   ALTER TABLE ONLY public.oauth2_provider_accesstoken ALTER COLUMN id SET DEFAULT nextval('public.oauth2_provider_accesstoken_id_seq'::regclass);
 M   ALTER TABLE public.oauth2_provider_accesstoken ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237    238            ?           2604    25274    oauth2_provider_application id    DEFAULT     ?   ALTER TABLE ONLY public.oauth2_provider_application ALTER COLUMN id SET DEFAULT nextval('public.oauth2_provider_application_id_seq'::regclass);
 M   ALTER TABLE public.oauth2_provider_application ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235    236            ?           2604    25296    oauth2_provider_grant id    DEFAULT     ?   ALTER TABLE ONLY public.oauth2_provider_grant ALTER COLUMN id SET DEFAULT nextval('public.oauth2_provider_grant_id_seq'::regclass);
 G   ALTER TABLE public.oauth2_provider_grant ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239    240            ?           2604    25380    oauth2_provider_idtoken id    DEFAULT     ?   ALTER TABLE ONLY public.oauth2_provider_idtoken ALTER COLUMN id SET DEFAULT nextval('public.oauth2_provider_idtoken_id_seq'::regclass);
 I   ALTER TABLE public.oauth2_provider_idtoken ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    244    244            ?           2604    25307    oauth2_provider_refreshtoken id    DEFAULT     ?   ALTER TABLE ONLY public.oauth2_provider_refreshtoken ALTER COLUMN id SET DEFAULT nextval('public.oauth2_provider_refreshtoken_id_seq'::regclass);
 N   ALTER TABLE public.oauth2_provider_refreshtoken ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    242    242            ?           2604    25239    peatlandcovers_peatlandcover id    DEFAULT     ?   ALTER TABLE ONLY public.peatlandcovers_peatlandcover ALTER COLUMN id SET DEFAULT nextval('public.peatlandcovers_peatlandcover_id_seq'::regclass);
 N   ALTER TABLE public.peatlandcovers_peatlandcover ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230            ?           2604    25412    peatlandfields_peatlandfield id    DEFAULT     ?   ALTER TABLE ONLY public.peatlandfields_peatlandfield ALTER COLUMN id SET DEFAULT nextval('public.peatlandfields_peatlandfield_id_seq'::regclass);
 N   ALTER TABLE public.peatlandfields_peatlandfield ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    246    246            ?          0    25063 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    216   P2      ?          0    25072    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    218   m2      ?          0    25056    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    214   ?2      ?          0    25079 	   auth_user 
   TABLE DATA           ?   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    220   )5      ?          0    25088    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    222   F5      ?          0    25095    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    224   c5      ?          0    25154    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    226   ?5      ?          0    25047    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    212   ?5      ?          0    25038    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    210   w6      ?          0    25421    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    247   ?9      ?          0    25184    fcm_django_fcmdevice 
   TABLE DATA           y   COPY public.fcm_django_fcmdevice (id, name, active, date_created, device_id, registration_id, type, user_id) FROM stdin;
    public          postgres    false    227   ?=      ?          0    25252    kbdis_droughtfactor 
   TABLE DATA           f   COPY public.kbdis_droughtfactor (id, drought_factor, date, created_at, peatland_cover_id) FROM stdin;
    public          postgres    false    234   >      ?          0    25245    kbdis_droughtindex 
   TABLE DATA           c   COPY public.kbdis_droughtindex (id, kbdi, date, created_at, peatland_cover_id, status) FROM stdin;
    public          postgres    false    232   q>      ?          0    25282    oauth2_provider_accesstoken 
   TABLE DATA           ?   COPY public.oauth2_provider_accesstoken (id, token, expires, scope, application_id, user_id, created, updated, source_refresh_token_id, id_token_id) FROM stdin;
    public          postgres    false    238   ?>      ?          0    25271    oauth2_provider_application 
   TABLE DATA           ?   COPY public.oauth2_provider_application (id, client_id, redirect_uris, client_type, authorization_grant_type, client_secret, name, user_id, skip_authorization, created, updated, algorithm) FROM stdin;
    public          postgres    false    236   ?>      ?          0    25293    oauth2_provider_grant 
   TABLE DATA           ?   COPY public.oauth2_provider_grant (id, code, expires, redirect_uri, scope, application_id, user_id, created, updated, code_challenge, code_challenge_method, nonce, claims) FROM stdin;
    public          postgres    false    240   ?      ?          0    25377    oauth2_provider_idtoken 
   TABLE DATA           u   COPY public.oauth2_provider_idtoken (id, jti, expires, scope, created, updated, application_id, user_id) FROM stdin;
    public          postgres    false    244   9?      ?          0    25304    oauth2_provider_refreshtoken 
   TABLE DATA           ?   COPY public.oauth2_provider_refreshtoken (id, token, access_token_id, application_id, user_id, created, updated, revoked) FROM stdin;
    public          postgres    false    242   V?      ?          0    25236    peatlandcovers_peatlandcover 
   TABLE DATA           g   COPY public.peatlandcovers_peatlandcover (id, name, image, result_type, created_at, alarm) FROM stdin;
    public          postgres    false    230   s?      ?          0    25409    peatlandfields_peatlandfield 
   TABLE DATA           ?   COPY public.peatlandfields_peatlandfield (id, water_level, max_air_temperature, date, created_at, peatland_cover_id) FROM stdin;
    public          postgres    false    246   ??                 0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    215                       0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    217                       0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 64, true);
          public          postgres    false    213                       0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    221                       0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);
          public          postgres    false    219                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    223                       0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    225                       0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 16, true);
          public          postgres    false    211                        0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 38, true);
          public          postgres    false    209            !           0    0    fcm_django_fcmdevice_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.fcm_django_fcmdevice_id_seq', 1, false);
          public          postgres    false    228            "           0    0    kbdis_droughtfactor_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.kbdis_droughtfactor_id_seq', 15, true);
          public          postgres    false    233            #           0    0    kbdis_droughtindex_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.kbdis_droughtindex_id_seq', 15, true);
          public          postgres    false    231            $           0    0 "   oauth2_provider_accesstoken_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.oauth2_provider_accesstoken_id_seq', 1, false);
          public          postgres    false    237            %           0    0 "   oauth2_provider_application_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.oauth2_provider_application_id_seq', 1, false);
          public          postgres    false    235            &           0    0    oauth2_provider_grant_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.oauth2_provider_grant_id_seq', 1, false);
          public          postgres    false    239            '           0    0    oauth2_provider_idtoken_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.oauth2_provider_idtoken_id_seq', 1, false);
          public          postgres    false    243            (           0    0 #   oauth2_provider_refreshtoken_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.oauth2_provider_refreshtoken_id_seq', 1, false);
          public          postgres    false    241            )           0    0 #   peatlandcovers_peatlandcover_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.peatlandcovers_peatlandcover_id_seq', 16, true);
          public          postgres    false    229            *           0    0 #   peatlandfields_peatlandfield_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.peatlandfields_peatlandfield_id_seq', 52, true);
          public          postgres    false    245            ?           2606    25181    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    216            ?           2606    25111 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    218    218            ?           2606    25077 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    218            ?           2606    25068    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    216            ?           2606    25102 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    214    214            ?           2606    25061 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    214            ?           2606    25093 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    222            ?           2606    25126 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    222    222            ?           2606    25084    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    220            ?           2606    25100 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    224            ?           2606    25140 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    224    224            ?           2606    25176     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    220            ?           2606    25162 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    226            ?           2606    25054 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    212    212            ?           2606    25052 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    212            ?           2606    25045 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    210            2           2606    25427 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    247            ?           2606    25224 .   fcm_django_fcmdevice fcm_django_fcmdevice_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.fcm_django_fcmdevice
    ADD CONSTRAINT fcm_django_fcmdevice_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.fcm_django_fcmdevice DROP CONSTRAINT fcm_django_fcmdevice_pkey;
       public            postgres    false    227                       2606    25257 ,   kbdis_droughtfactor kbdis_droughtfactor_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.kbdis_droughtfactor
    ADD CONSTRAINT kbdis_droughtfactor_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.kbdis_droughtfactor DROP CONSTRAINT kbdis_droughtfactor_pkey;
       public            postgres    false    234                       2606    25250 *   kbdis_droughtindex kbdis_droughtindex_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.kbdis_droughtindex
    ADD CONSTRAINT kbdis_droughtindex_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.kbdis_droughtindex DROP CONSTRAINT kbdis_droughtindex_pkey;
       public            postgres    false    232                       2606    25388 G   oauth2_provider_accesstoken oauth2_provider_accesstoken_id_token_id_key 
   CONSTRAINT     ?   ALTER TABLE ONLY public.oauth2_provider_accesstoken
    ADD CONSTRAINT oauth2_provider_accesstoken_id_token_id_key UNIQUE (id_token_id);
 q   ALTER TABLE ONLY public.oauth2_provider_accesstoken DROP CONSTRAINT oauth2_provider_accesstoken_id_token_id_key;
       public            postgres    false    238                       2606    25289 <   oauth2_provider_accesstoken oauth2_provider_accesstoken_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.oauth2_provider_accesstoken
    ADD CONSTRAINT oauth2_provider_accesstoken_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.oauth2_provider_accesstoken DROP CONSTRAINT oauth2_provider_accesstoken_pkey;
       public            postgres    false    238                       2606    25313 S   oauth2_provider_accesstoken oauth2_provider_accesstoken_source_refresh_token_id_key 
   CONSTRAINT     ?   ALTER TABLE ONLY public.oauth2_provider_accesstoken
    ADD CONSTRAINT oauth2_provider_accesstoken_source_refresh_token_id_key UNIQUE (source_refresh_token_id);
 }   ALTER TABLE ONLY public.oauth2_provider_accesstoken DROP CONSTRAINT oauth2_provider_accesstoken_source_refresh_token_id_key;
       public            postgres    false    238                       2606    25291 A   oauth2_provider_accesstoken oauth2_provider_accesstoken_token_key 
   CONSTRAINT     }   ALTER TABLE ONLY public.oauth2_provider_accesstoken
    ADD CONSTRAINT oauth2_provider_accesstoken_token_key UNIQUE (token);
 k   ALTER TABLE ONLY public.oauth2_provider_accesstoken DROP CONSTRAINT oauth2_provider_accesstoken_token_key;
       public            postgres    false    238                       2606    25280 E   oauth2_provider_application oauth2_provider_application_client_id_key 
   CONSTRAINT     ?   ALTER TABLE ONLY public.oauth2_provider_application
    ADD CONSTRAINT oauth2_provider_application_client_id_key UNIQUE (client_id);
 o   ALTER TABLE ONLY public.oauth2_provider_application DROP CONSTRAINT oauth2_provider_application_client_id_key;
       public            postgres    false    236                       2606    25278 <   oauth2_provider_application oauth2_provider_application_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.oauth2_provider_application
    ADD CONSTRAINT oauth2_provider_application_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.oauth2_provider_application DROP CONSTRAINT oauth2_provider_application_pkey;
       public            postgres    false    236                       2606    25302 4   oauth2_provider_grant oauth2_provider_grant_code_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.oauth2_provider_grant
    ADD CONSTRAINT oauth2_provider_grant_code_key UNIQUE (code);
 ^   ALTER TABLE ONLY public.oauth2_provider_grant DROP CONSTRAINT oauth2_provider_grant_code_key;
       public            postgres    false    240                       2606    25300 0   oauth2_provider_grant oauth2_provider_grant_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.oauth2_provider_grant
    ADD CONSTRAINT oauth2_provider_grant_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.oauth2_provider_grant DROP CONSTRAINT oauth2_provider_grant_pkey;
       public            postgres    false    240            )           2606    25386 7   oauth2_provider_idtoken oauth2_provider_idtoken_jti_key 
   CONSTRAINT     q   ALTER TABLE ONLY public.oauth2_provider_idtoken
    ADD CONSTRAINT oauth2_provider_idtoken_jti_key UNIQUE (jti);
 a   ALTER TABLE ONLY public.oauth2_provider_idtoken DROP CONSTRAINT oauth2_provider_idtoken_jti_key;
       public            postgres    false    244            +           2606    25384 4   oauth2_provider_idtoken oauth2_provider_idtoken_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.oauth2_provider_idtoken
    ADD CONSTRAINT oauth2_provider_idtoken_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.oauth2_provider_idtoken DROP CONSTRAINT oauth2_provider_idtoken_pkey;
       public            postgres    false    244                        2606    25311 M   oauth2_provider_refreshtoken oauth2_provider_refreshtoken_access_token_id_key 
   CONSTRAINT     ?   ALTER TABLE ONLY public.oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth2_provider_refreshtoken_access_token_id_key UNIQUE (access_token_id);
 w   ALTER TABLE ONLY public.oauth2_provider_refreshtoken DROP CONSTRAINT oauth2_provider_refreshtoken_access_token_id_key;
       public            postgres    false    242            #           2606    25309 >   oauth2_provider_refreshtoken oauth2_provider_refreshtoken_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth2_provider_refreshtoken_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.oauth2_provider_refreshtoken DROP CONSTRAINT oauth2_provider_refreshtoken_pkey;
       public            postgres    false    242            %           2606    25355 U   oauth2_provider_refreshtoken oauth2_provider_refreshtoken_token_revoked_af8a5134_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth2_provider_refreshtoken_token_revoked_af8a5134_uniq UNIQUE (token, revoked);
    ALTER TABLE ONLY public.oauth2_provider_refreshtoken DROP CONSTRAINT oauth2_provider_refreshtoken_token_revoked_af8a5134_uniq;
       public            postgres    false    242    242            ?           2606    25243 >   peatlandcovers_peatlandcover peatlandcovers_peatlandcover_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.peatlandcovers_peatlandcover
    ADD CONSTRAINT peatlandcovers_peatlandcover_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.peatlandcovers_peatlandcover DROP CONSTRAINT peatlandcovers_peatlandcover_pkey;
       public            postgres    false    230            /           2606    25414 >   peatlandfields_peatlandfield peatlandfields_peatlandfield_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.peatlandfields_peatlandfield
    ADD CONSTRAINT peatlandfields_peatlandfield_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.peatlandfields_peatlandfield DROP CONSTRAINT peatlandfields_peatlandfield_pkey;
       public            postgres    false    246            ?           1259    25182    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    216            ?           1259    25122 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    218            ?           1259    25123 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    218            ?           1259    25108 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    214            ?           1259    25138 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    222            ?           1259    25137 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    222            ?           1259    25152 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     ?   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    224            ?           1259    25151 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    224            ?           1259    25177     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    220            ?           1259    25173 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    226            ?           1259    25174 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    226            0           1259    25429 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    247            3           1259    25428 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    247            ?           1259    25208 '   fcm_django_fcmdevice_device_id_a9406c36    INDEX     m   CREATE INDEX fcm_django_fcmdevice_device_id_a9406c36 ON public.fcm_django_fcmdevice USING btree (device_id);
 ;   DROP INDEX public.fcm_django_fcmdevice_device_id_a9406c36;
       public            postgres    false    227            ?           1259    25198 %   fcm_django_fcmdevice_user_id_6cdfc0a2    INDEX     i   CREATE INDEX fcm_django_fcmdevice_user_id_6cdfc0a2 ON public.fcm_django_fcmdevice USING btree (user_id);
 9   DROP INDEX public.fcm_django_fcmdevice_user_id_6cdfc0a2;
       public            postgres    false    227                       1259    25269 .   kbdis_droughtfactor_peatland_cover_id_5b624d0d    INDEX     {   CREATE INDEX kbdis_droughtfactor_peatland_cover_id_5b624d0d ON public.kbdis_droughtfactor USING btree (peatland_cover_id);
 B   DROP INDEX public.kbdis_droughtfactor_peatland_cover_id_5b624d0d;
       public            postgres    false    234            ?           1259    25263 -   kbdis_droughtindex_peatland_cover_id_0a1c9cfa    INDEX     y   CREATE INDEX kbdis_droughtindex_peatland_cover_id_0a1c9cfa ON public.kbdis_droughtindex USING btree (peatland_cover_id);
 A   DROP INDEX public.kbdis_droughtindex_peatland_cover_id_0a1c9cfa;
       public            postgres    false    232                       1259    25339 3   oauth2_provider_accesstoken_application_id_b22886e1    INDEX     ?   CREATE INDEX oauth2_provider_accesstoken_application_id_b22886e1 ON public.oauth2_provider_accesstoken USING btree (application_id);
 G   DROP INDEX public.oauth2_provider_accesstoken_application_id_b22886e1;
       public            postgres    false    238                       1259    25338 /   oauth2_provider_accesstoken_token_8af090f8_like    INDEX     ?   CREATE INDEX oauth2_provider_accesstoken_token_8af090f8_like ON public.oauth2_provider_accesstoken USING btree (token varchar_pattern_ops);
 C   DROP INDEX public.oauth2_provider_accesstoken_token_8af090f8_like;
       public            postgres    false    238                       1259    25340 ,   oauth2_provider_accesstoken_user_id_6e4c9a65    INDEX     w   CREATE INDEX oauth2_provider_accesstoken_user_id_6e4c9a65 ON public.oauth2_provider_accesstoken USING btree (user_id);
 @   DROP INDEX public.oauth2_provider_accesstoken_user_id_6e4c9a65;
       public            postgres    false    238                       1259    25324 3   oauth2_provider_application_client_id_03f0cc84_like    INDEX     ?   CREATE INDEX oauth2_provider_application_client_id_03f0cc84_like ON public.oauth2_provider_application USING btree (client_id varchar_pattern_ops);
 G   DROP INDEX public.oauth2_provider_application_client_id_03f0cc84_like;
       public            postgres    false    236                       1259    25325 2   oauth2_provider_application_client_secret_53133678    INDEX     ?   CREATE INDEX oauth2_provider_application_client_secret_53133678 ON public.oauth2_provider_application USING btree (client_secret);
 F   DROP INDEX public.oauth2_provider_application_client_secret_53133678;
       public            postgres    false    236            	           1259    25326 7   oauth2_provider_application_client_secret_53133678_like    INDEX     ?   CREATE INDEX oauth2_provider_application_client_secret_53133678_like ON public.oauth2_provider_application USING btree (client_secret varchar_pattern_ops);
 K   DROP INDEX public.oauth2_provider_application_client_secret_53133678_like;
       public            postgres    false    236                       1259    25327 ,   oauth2_provider_application_user_id_79829054    INDEX     w   CREATE INDEX oauth2_provider_application_user_id_79829054 ON public.oauth2_provider_application USING btree (user_id);
 @   DROP INDEX public.oauth2_provider_application_user_id_79829054;
       public            postgres    false    236                       1259    25352 -   oauth2_provider_grant_application_id_81923564    INDEX     y   CREATE INDEX oauth2_provider_grant_application_id_81923564 ON public.oauth2_provider_grant USING btree (application_id);
 A   DROP INDEX public.oauth2_provider_grant_application_id_81923564;
       public            postgres    false    240                       1259    25351 (   oauth2_provider_grant_code_49ab4ddf_like    INDEX     ~   CREATE INDEX oauth2_provider_grant_code_49ab4ddf_like ON public.oauth2_provider_grant USING btree (code varchar_pattern_ops);
 <   DROP INDEX public.oauth2_provider_grant_code_49ab4ddf_like;
       public            postgres    false    240                       1259    25353 &   oauth2_provider_grant_user_id_e8f62af8    INDEX     k   CREATE INDEX oauth2_provider_grant_user_id_e8f62af8 ON public.oauth2_provider_grant USING btree (user_id);
 :   DROP INDEX public.oauth2_provider_grant_user_id_e8f62af8;
       public            postgres    false    240            '           1259    25406 /   oauth2_provider_idtoken_application_id_08c5ff4f    INDEX     }   CREATE INDEX oauth2_provider_idtoken_application_id_08c5ff4f ON public.oauth2_provider_idtoken USING btree (application_id);
 C   DROP INDEX public.oauth2_provider_idtoken_application_id_08c5ff4f;
       public            postgres    false    244            ,           1259    25407 (   oauth2_provider_idtoken_user_id_dd512b59    INDEX     o   CREATE INDEX oauth2_provider_idtoken_user_id_dd512b59 ON public.oauth2_provider_idtoken USING btree (user_id);
 <   DROP INDEX public.oauth2_provider_idtoken_user_id_dd512b59;
       public            postgres    false    244            !           1259    25371 4   oauth2_provider_refreshtoken_application_id_2d1c311b    INDEX     ?   CREATE INDEX oauth2_provider_refreshtoken_application_id_2d1c311b ON public.oauth2_provider_refreshtoken USING btree (application_id);
 H   DROP INDEX public.oauth2_provider_refreshtoken_application_id_2d1c311b;
       public            postgres    false    242            &           1259    25372 -   oauth2_provider_refreshtoken_user_id_da837fce    INDEX     y   CREATE INDEX oauth2_provider_refreshtoken_user_id_da837fce ON public.oauth2_provider_refreshtoken USING btree (user_id);
 A   DROP INDEX public.oauth2_provider_refreshtoken_user_id_da837fce;
       public            postgres    false    242            -           1259    25420 7   peatlandfields_peatlandfield_peatland_cover_id_693dabdd    INDEX     ?   CREATE INDEX peatlandfields_peatlandfield_peatland_cover_id_693dabdd ON public.peatlandfields_peatlandfield USING btree (peatland_cover_id);
 K   DROP INDEX public.peatlandfields_peatlandfield_peatland_cover_id_693dabdd;
       public            postgres    false    246            6           2606    25117 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    3288    218    214            5           2606    25112 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    3293    218    216            4           2606    25103 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    3283    214    212            8           2606    25132 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    3293    216    222            7           2606    25127 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    222    3301    220            :           2606    25146 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    3288    224    214            9           2606    25141 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    224    220    3301            ;           2606    25163 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    212    226    3283            <           2606    25168 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    226    3301    220            =           2606    25192 J   fcm_django_fcmdevice fcm_django_fcmdevice_user_id_6cdfc0a2_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fcm_django_fcmdevice
    ADD CONSTRAINT fcm_django_fcmdevice_user_id_6cdfc0a2_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.fcm_django_fcmdevice DROP CONSTRAINT fcm_django_fcmdevice_user_id_6cdfc0a2_fk_auth_user_id;
       public          postgres    false    220    227    3301            ?           2606    25264 O   kbdis_droughtfactor kbdis_droughtfactor_peatland_cover_id_5b624d0d_fk_peatlandc    FK CONSTRAINT     ?   ALTER TABLE ONLY public.kbdis_droughtfactor
    ADD CONSTRAINT kbdis_droughtfactor_peatland_cover_id_5b624d0d_fk_peatlandc FOREIGN KEY (peatland_cover_id) REFERENCES public.peatlandcovers_peatlandcover(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.kbdis_droughtfactor DROP CONSTRAINT kbdis_droughtfactor_peatland_cover_id_5b624d0d_fk_peatlandc;
       public          postgres    false    3326    234    230            >           2606    25258 M   kbdis_droughtindex kbdis_droughtindex_peatland_cover_id_0a1c9cfa_fk_peatlandc    FK CONSTRAINT     ?   ALTER TABLE ONLY public.kbdis_droughtindex
    ADD CONSTRAINT kbdis_droughtindex_peatland_cover_id_0a1c9cfa_fk_peatlandc FOREIGN KEY (peatland_cover_id) REFERENCES public.peatlandcovers_peatlandcover(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.kbdis_droughtindex DROP CONSTRAINT kbdis_droughtindex_peatland_cover_id_0a1c9cfa_fk_peatlandc;
       public          postgres    false    230    232    3326            B           2606    25328 U   oauth2_provider_accesstoken oauth2_provider_acce_application_id_b22886e1_fk_oauth2_pr    FK CONSTRAINT     ?   ALTER TABLE ONLY public.oauth2_provider_accesstoken
    ADD CONSTRAINT oauth2_provider_acce_application_id_b22886e1_fk_oauth2_pr FOREIGN KEY (application_id) REFERENCES public.oauth2_provider_application(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.oauth2_provider_accesstoken DROP CONSTRAINT oauth2_provider_acce_application_id_b22886e1_fk_oauth2_pr;
       public          postgres    false    3339    238    236            D           2606    25389 R   oauth2_provider_accesstoken oauth2_provider_acce_id_token_id_85db651b_fk_oauth2_pr    FK CONSTRAINT     ?   ALTER TABLE ONLY public.oauth2_provider_accesstoken
    ADD CONSTRAINT oauth2_provider_acce_id_token_id_85db651b_fk_oauth2_pr FOREIGN KEY (id_token_id) REFERENCES public.oauth2_provider_idtoken(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.oauth2_provider_accesstoken DROP CONSTRAINT oauth2_provider_acce_id_token_id_85db651b_fk_oauth2_pr;
       public          postgres    false    244    238    3371            A           2606    25314 [   oauth2_provider_accesstoken oauth2_provider_acce_source_refresh_token_e66fbc72_fk_oauth2_pr    FK CONSTRAINT     ?   ALTER TABLE ONLY public.oauth2_provider_accesstoken
    ADD CONSTRAINT oauth2_provider_acce_source_refresh_token_e66fbc72_fk_oauth2_pr FOREIGN KEY (source_refresh_token_id) REFERENCES public.oauth2_provider_refreshtoken(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.oauth2_provider_accesstoken DROP CONSTRAINT oauth2_provider_acce_source_refresh_token_e66fbc72_fk_oauth2_pr;
       public          postgres    false    242    3363    238            C           2606    25333 X   oauth2_provider_accesstoken oauth2_provider_accesstoken_user_id_6e4c9a65_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.oauth2_provider_accesstoken
    ADD CONSTRAINT oauth2_provider_accesstoken_user_id_6e4c9a65_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.oauth2_provider_accesstoken DROP CONSTRAINT oauth2_provider_accesstoken_user_id_6e4c9a65_fk_auth_user_id;
       public          postgres    false    238    3301    220            @           2606    25319 X   oauth2_provider_application oauth2_provider_application_user_id_79829054_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.oauth2_provider_application
    ADD CONSTRAINT oauth2_provider_application_user_id_79829054_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.oauth2_provider_application DROP CONSTRAINT oauth2_provider_application_user_id_79829054_fk_auth_user_id;
       public          postgres    false    220    3301    236            E           2606    25341 O   oauth2_provider_grant oauth2_provider_gran_application_id_81923564_fk_oauth2_pr    FK CONSTRAINT     ?   ALTER TABLE ONLY public.oauth2_provider_grant
    ADD CONSTRAINT oauth2_provider_gran_application_id_81923564_fk_oauth2_pr FOREIGN KEY (application_id) REFERENCES public.oauth2_provider_application(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.oauth2_provider_grant DROP CONSTRAINT oauth2_provider_gran_application_id_81923564_fk_oauth2_pr;
       public          postgres    false    3339    240    236            F           2606    25346 L   oauth2_provider_grant oauth2_provider_grant_user_id_e8f62af8_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.oauth2_provider_grant
    ADD CONSTRAINT oauth2_provider_grant_user_id_e8f62af8_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.oauth2_provider_grant DROP CONSTRAINT oauth2_provider_grant_user_id_e8f62af8_fk_auth_user_id;
       public          postgres    false    240    220    3301            J           2606    25396 Q   oauth2_provider_idtoken oauth2_provider_idto_application_id_08c5ff4f_fk_oauth2_pr    FK CONSTRAINT     ?   ALTER TABLE ONLY public.oauth2_provider_idtoken
    ADD CONSTRAINT oauth2_provider_idto_application_id_08c5ff4f_fk_oauth2_pr FOREIGN KEY (application_id) REFERENCES public.oauth2_provider_application(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.oauth2_provider_idtoken DROP CONSTRAINT oauth2_provider_idto_application_id_08c5ff4f_fk_oauth2_pr;
       public          postgres    false    236    3339    244            K           2606    25401 P   oauth2_provider_idtoken oauth2_provider_idtoken_user_id_dd512b59_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.oauth2_provider_idtoken
    ADD CONSTRAINT oauth2_provider_idtoken_user_id_dd512b59_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.oauth2_provider_idtoken DROP CONSTRAINT oauth2_provider_idtoken_user_id_dd512b59_fk_auth_user_id;
       public          postgres    false    220    3301    244            G           2606    25356 W   oauth2_provider_refreshtoken oauth2_provider_refr_access_token_id_775e84e8_fk_oauth2_pr    FK CONSTRAINT     ?   ALTER TABLE ONLY public.oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth2_provider_refr_access_token_id_775e84e8_fk_oauth2_pr FOREIGN KEY (access_token_id) REFERENCES public.oauth2_provider_accesstoken(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.oauth2_provider_refreshtoken DROP CONSTRAINT oauth2_provider_refr_access_token_id_775e84e8_fk_oauth2_pr;
       public          postgres    false    3345    242    238            H           2606    25361 V   oauth2_provider_refreshtoken oauth2_provider_refr_application_id_2d1c311b_fk_oauth2_pr    FK CONSTRAINT     ?   ALTER TABLE ONLY public.oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth2_provider_refr_application_id_2d1c311b_fk_oauth2_pr FOREIGN KEY (application_id) REFERENCES public.oauth2_provider_application(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.oauth2_provider_refreshtoken DROP CONSTRAINT oauth2_provider_refr_application_id_2d1c311b_fk_oauth2_pr;
       public          postgres    false    242    236    3339            I           2606    25366 Z   oauth2_provider_refreshtoken oauth2_provider_refreshtoken_user_id_da837fce_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth2_provider_refreshtoken_user_id_da837fce_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.oauth2_provider_refreshtoken DROP CONSTRAINT oauth2_provider_refreshtoken_user_id_da837fce_fk_auth_user_id;
       public          postgres    false    3301    220    242            L           2606    25415 Y   peatlandfields_peatlandfield peatlandfields_peatl_peatland_cover_id_693dabdd_fk_peatlandc    FK CONSTRAINT     ?   ALTER TABLE ONLY public.peatlandfields_peatlandfield
    ADD CONSTRAINT peatlandfields_peatl_peatland_cover_id_693dabdd_fk_peatlandc FOREIGN KEY (peatland_cover_id) REFERENCES public.peatlandcovers_peatlandcover(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.peatlandfields_peatlandfield DROP CONSTRAINT peatlandfields_peatl_peatland_cover_id_693dabdd_fk_peatlandc;
       public          postgres    false    246    230    3326            ?      x?????? ? ?      ?      x?????? ? ?      ?   ?  x?m?M??0F??)8???_?uK???4B?$hҀ?????r??g?W?+?/??{3dM?e????a???3?????nmNH{m??*?,???/???%?????Y??f?????????l?? d;???,?أ(I??;E??<~M? A???M?m??ň?N?:?䢲d??E4???ٔ$𼴮???*o?J?? o?Z??e?:,???8,?S˖?ɛ????Xw?";????i??~???DsG?.?.Z?}x?5	?????Þ??.?EL?u??*"rқi??m?<?Y?????#?v??yG?-WGa?TN}Ӷ??2???9e*Q???9k???7iͫp??`??Be?s⬮׶(1?a=f??
???UBj?? pViY3????W?]?)?*\d]M³?@n?V??RE'i u?%=}???}?w?@~4???i?E#?2?1ҋ???????????ƅƹ?[B??d?C?fG?? J?
??t?_???d???ƅ??f+P³2?@???????/?	?M???q?!mU??A:p???z5?4?[S??!-z??A9?f?5C??{댫?S#T?h+?d??9?	R?6ŏ?T?\?-?.???;??0	m???$v?&????$?i7	7?/&?-0Ih???Z?????      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?   ?   x?e?Kn?0D??a?????K?@iY?-	$m4???E?f??-H????/?????uPY???J???D)c??ZFe?3??m??QY??????߀?P??V)S"???)x[?۞?0?V???}G??l?; ?
k?z??x??@?+}??????7J
4?;K???i??>Xt??Q?z??Mܓn+????Ģۊ/??????      ?     x????r?0E??Wt?I? ????pX?q??UI?$_??%ץ??BK8..@AU??e??\1???>.ѷ2?g&??~??????(???'??qy?!??+?t? Dh?m
{?v8P?ӗ?B7|G??o?2CJ?s?rg??Aq??Kz?????߇X?E??s>????????Kw\??PFɅH(???ηK???.?sJ)Ż??6?z???0k6???3]B?c{?"??b7????KNg??<???Ɛ????K?>ReǶ?t? '?Q????Mެ?K?݀?3d??>??????e????0M???0??p???hLe?p???=??ƵY 6??O??P?P?Q??vB??8>?Q!??8?D?????u???hy?ds3?eQoqz?*#?$?????5?|?/?4Wk??U ?+?????????@ZQ??Ȯ|ch???S???C?B?a?&6?Qv???\??!/?ȥ??R?\K?Wuf ????⊡w?΀?ŰB??!?悁( +?B>G?j???ѡ??A?;??L?Ԫ???????MM+{z???B?^?0???M|$F????h?t???}?}>ݼ??X?*???y?8??4W???#6T?ݷ[&غ9????HO*????e+K?m2E??=V0c???y	$v??_b@??i&y?$%???X?c????A??R'w?qlc??WB??t?ϡ??R?҉l׾???????+?ԕAR?~2??}??m??k???pZ???y67??????_?ֵ$      ?   N  x???I??Z?q?_q?/?s?#??Vi???ҷ????RU?7ݳoe????tS?PI???gG??Ӡ??5~l#q鬬?d?T%??HY??BK_?I?Y?b???)j&?X??+??V?I[?*? ??*??w??ů??H?I?=?(?l??-?g??c	?.????
h??,!???b??h????{Nj??,????ۀ?`ߐd ??hK`$B????Bd?E( 9%E??ny?u7!?=L??0k?U?'k?????/ǘ??[L?i??x??r??'?)?<?~#??B5L]?^???\?;|??I3???4???j???????????{??t??k?ˈC? ?hp?ĉ???_~A??~ x[?qЦ??????02????3????p}T?)?t???j???a
?t?g,??s0v?????#1?_]Ϻ?F.??Y?´A?f?????*$????????????B??pFnա??o?p19? ?O?D?Yx?+/?W??t?^p[????x?2h4????oH0?d|K? ?ԇ???e?.s?覅nS???1NS??G?Þյ??5??9?ý웇??=l_F???B?䳗Ph>??-;? T;???I	?)\2sru`????1y????s?V>?#g?|?v?????8? 5?
*?z???B??&?zYW?uܿa\н܂?>y??"?	ӧ??3?n?$K6v???O
??+?z?+/@??l???wu??j????$?????92"??o?(,?8???bY'?w?????F0??C4?>?,Zԥ??4?Ch%?Q?u?jV93/P?[?5???Q6v?3?f9?|??dscC?ߤ??f
?0z?Y???p???p1???F3??_???b???y}?*???]j?_-L?g]+?4{!?5????~M?<????*?2?BLf?????i???7??C?/?e1Wŀ?k??+G/?????']??ݪN?????ͳ??TK9?????????6l?`?i0<????^g//???s?Ͳ?e?bS???E???KF?I.I????
?:?0܈,??u????????k{?!??Q4????????O?I؏      ?      x?????? ? ?      ?   Z   x?M??? k??>
??m?%??"?@?⚿??0L㘮&,???w`??I?vƂ??Y0*?S???p'5?C???'?????k?/???      ?   a   x?M???0?ji
?F?{????;???Q,ؐ?&??4F??0?(?Gb??A?&?t??S?!??~;|m??W?(???????O؈*??.???? ?b?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?   I   x?34???L?KWp?KO?N9??
?????)@.???????)[YXꙛZYhXp??q??qqq ???      ?   7   x?35?4?46?3?4202?50"$????????????????????W? *;
     