PGDMP     .    (                z            Virgin Active Italia    15.1    15.1 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16746    Virgin Active Italia    DATABASE     �   CREATE DATABASE "Virgin Active Italia" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Italian_Italy.1252';
 &   DROP DATABASE "Virgin Active Italia";
                postgres    false            t           1247    16810 
   percentage    DOMAIN     �   CREATE DOMAIN public.percentage AS numeric
	CONSTRAINT percentage_check CHECK (((VALUE >= (0)::numeric) AND (VALUE <= (100)::numeric)));
    DROP DOMAIN public.percentage;
       public          postgres    false            �            1259    16885    abbigliamento    TABLE     �   CREATE TABLE public.abbigliamento (
    idabbigliamento integer NOT NULL,
    nome character varying(15) NOT NULL,
    prezzo numeric(6,2) NOT NULL,
    store integer,
    produttore character(11),
    datafornitura date NOT NULL
);
 !   DROP TABLE public.abbigliamento;
       public         heap    postgres    false            �            1259    16825    abbonamento    TABLE     �   CREATE TABLE public.abbonamento (
    duratamesi integer NOT NULL,
    opzionecorsi boolean NOT NULL,
    prezzo numeric(6,2)
);
    DROP TABLE public.abbonamento;
       public         heap    postgres    false            �            1259    16901    alimento    TABLE     �   CREATE TABLE public.alimento (
    idalimento integer NOT NULL,
    nome character varying(15) NOT NULL,
    prezzo numeric(6,2) NOT NULL,
    store integer,
    produttore character(11),
    datafornitura date NOT NULL
);
    DROP TABLE public.alimento;
       public         heap    postgres    false            �            1259    17099    allenamentoattuale    TABLE     i   CREATE TABLE public.allenamentoattuale (
    idatleta integer NOT NULL,
    idlibera integer NOT NULL
);
 &   DROP TABLE public.allenamentoattuale;
       public         heap    postgres    false            �            1259    17114    allenamentopassato    TABLE     i   CREATE TABLE public.allenamentopassato (
    idatleta integer NOT NULL,
    idlibera integer NOT NULL
);
 &   DROP TABLE public.allenamentopassato;
       public         heap    postgres    false            �            1259    16812    atleta    TABLE     A  CREATE TABLE public.atleta (
    idatleta integer NOT NULL,
    nome character varying(15) NOT NULL,
    cognome character varying(15) NOT NULL,
    datadinascita date NOT NULL,
    altezza integer,
    peso integer,
    massamagra public.percentage,
    massagrassa public.percentage,
    istruttore integer NOT NULL
);
    DROP TABLE public.atleta;
       public         heap    postgres    false    884    884            �            1259    16917    attrezzo    TABLE     �   CREATE TABLE public.attrezzo (
    idattrezzo integer NOT NULL,
    nome character varying(15) NOT NULL,
    sala integer,
    produttore character(11),
    datafornitura date NOT NULL
);
    DROP TABLE public.attrezzo;
       public         heap    postgres    false            �            1259    16830    corso    TABLE     �   CREATE TABLE public.corso (
    idcorso integer NOT NULL,
    tipo character varying,
    data date,
    orainizio time without time zone,
    durataore numeric(2,1)
);
    DROP TABLE public.corso;
       public         heap    postgres    false            �            1259    17129    corsoattuale    TABLE     b   CREATE TABLE public.corsoattuale (
    idatleta integer NOT NULL,
    idcorso integer NOT NULL
);
     DROP TABLE public.corsoattuale;
       public         heap    postgres    false            �            1259    17144    corsopassato    TABLE     b   CREATE TABLE public.corsopassato (
    idatleta integer NOT NULL,
    idcorso integer NOT NULL
);
     DROP TABLE public.corsopassato;
       public         heap    postgres    false            �            1259    16782 	   direttore    TABLE     R  CREATE TABLE public.direttore (
    iddirettore integer NOT NULL,
    nome character varying(15) NOT NULL,
    cognome character varying(15) NOT NULL,
    datanascita date NOT NULL,
    stipendio numeric(6,2),
    cittasede character varying,
    viasede character varying,
    numcivicosede character varying,
    dataassunzione date
);
    DROP TABLE public.direttore;
       public         heap    postgres    false            �            1259    16766    idabbigliamentoseq    SEQUENCE     {   CREATE SEQUENCE public.idabbigliamentoseq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.idabbigliamentoseq;
       public          postgres    false    236            �           0    0    idabbigliamentoseq    SEQUENCE OWNED BY     X   ALTER SEQUENCE public.idabbigliamentoseq OWNED BY public.abbigliamento.idabbigliamento;
          public          postgres    false    222            �            1259    16767    idalimentoseq    SEQUENCE     v   CREATE SEQUENCE public.idalimentoseq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.idalimentoseq;
       public          postgres    false    237            �           0    0    idalimentoseq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.idalimentoseq OWNED BY public.alimento.idalimento;
          public          postgres    false    223            �            1259    16808    idatletaseq    SEQUENCE     t   CREATE SEQUENCE public.idatletaseq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.idatletaseq;
       public          postgres    false    229            �           0    0    idatletaseq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.idatletaseq OWNED BY public.atleta.idatleta;
          public          postgres    false    228            �            1259    16768    idattrezzoseq    SEQUENCE     v   CREATE SEQUENCE public.idattrezzoseq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.idattrezzoseq;
       public          postgres    false    238            �           0    0    idattrezzoseq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.idattrezzoseq OWNED BY public.attrezzo.idattrezzo;
          public          postgres    false    224            �            1259    16762 
   idcorsoseq    SEQUENCE     s   CREATE SEQUENCE public.idcorsoseq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.idcorsoseq;
       public          postgres    false    231            �           0    0 
   idcorsoseq    SEQUENCE OWNED BY     @   ALTER SEQUENCE public.idcorsoseq OWNED BY public.corso.idcorso;
          public          postgres    false    218            �            1259    16760    iddirettoreseq    SEQUENCE     w   CREATE SEQUENCE public.iddirettoreseq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.iddirettoreseq;
       public          postgres    false    226            �           0    0    iddirettoreseq    SEQUENCE OWNED BY     L   ALTER SEQUENCE public.iddirettoreseq OWNED BY public.direttore.iddirettore;
          public          postgres    false    216            �            1259    16795    inserviente    TABLE     V  CREATE TABLE public.inserviente (
    idinserviente integer NOT NULL,
    nome character varying(15) NOT NULL,
    cognome character varying(15) NOT NULL,
    datanascita date NOT NULL,
    stipendio numeric(6,2),
    cittasede character varying,
    viasede character varying,
    numcivicosede character varying,
    dataassunzione date
);
    DROP TABLE public.inserviente;
       public         heap    postgres    false            �            1259    16761    idinservienteseq    SEQUENCE     y   CREATE SEQUENCE public.idinservienteseq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.idinservienteseq;
       public          postgres    false    227            �           0    0    idinservienteseq    SEQUENCE OWNED BY     R   ALTER SEQUENCE public.idinservienteseq OWNED BY public.inserviente.idinserviente;
          public          postgres    false    217            �            1259    16769 
   istruttore    TABLE     T  CREATE TABLE public.istruttore (
    idistruttore integer NOT NULL,
    nome character varying(15) NOT NULL,
    cognome character varying(15) NOT NULL,
    datanascita date NOT NULL,
    stipendio numeric(6,2),
    cittasede character varying,
    viasede character varying,
    numcivicosede character varying,
    dataassunzione date
);
    DROP TABLE public.istruttore;
       public         heap    postgres    false            �            1259    16759    idistruttoreseq    SEQUENCE     x   CREATE SEQUENCE public.idistruttoreseq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.idistruttoreseq;
       public          postgres    false    225            �           0    0    idistruttoreseq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.idistruttoreseq OWNED BY public.istruttore.idistruttore;
          public          postgres    false    215            �            1259    16838    libera    TABLE     �   CREATE TABLE public.libera (
    idlibera integer NOT NULL,
    tipo character varying,
    data date,
    orainizio time without time zone,
    orafine time without time zone
);
    DROP TABLE public.libera;
       public         heap    postgres    false            �            1259    16763    idliberaseq    SEQUENCE     t   CREATE SEQUENCE public.idliberaseq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.idliberaseq;
       public          postgres    false    232            �           0    0    idliberaseq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.idliberaseq OWNED BY public.libera.idlibera;
          public          postgres    false    219            �            1259    16846    sala    TABLE     �   CREATE TABLE public.sala (
    idsala integer NOT NULL,
    cittasede character varying,
    viasede character varying,
    numcivicosede character varying
);
    DROP TABLE public.sala;
       public         heap    postgres    false            �            1259    16764 	   idsalaseq    SEQUENCE     r   CREATE SEQUENCE public.idsalaseq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
     DROP SEQUENCE public.idsalaseq;
       public          postgres    false    233            �           0    0 	   idsalaseq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.idsalaseq OWNED BY public.sala.idsala;
          public          postgres    false    220            �            1259    16872    store    TABLE     �   CREATE TABLE public.store (
    idstore integer NOT NULL,
    cittasede character varying,
    viasede character varying,
    numcivicosede character varying
);
    DROP TABLE public.store;
       public         heap    postgres    false            �            1259    16765 
   idstoreseq    SEQUENCE     s   CREATE SEQUENCE public.idstoreseq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.idstoreseq;
       public          postgres    false    235            �           0    0 
   idstoreseq    SEQUENCE OWNED BY     @   ALTER SEQUENCE public.idstoreseq OWNED BY public.store.idstore;
          public          postgres    false    221            �            1259    17159    insegnamentoattuale    TABLE     m   CREATE TABLE public.insegnamentoattuale (
    idistruttore integer NOT NULL,
    idcorso integer NOT NULL
);
 '   DROP TABLE public.insegnamentoattuale;
       public         heap    postgres    false            �            1259    17174    insegnamentopassato    TABLE     m   CREATE TABLE public.insegnamentopassato (
    idistruttore integer NOT NULL,
    idcorso integer NOT NULL
);
 '   DROP TABLE public.insegnamentopassato;
       public         heap    postgres    false            �            1259    16934 
   iscrizione    TABLE     �   CREATE TABLE public.iscrizione (
    idatleta integer NOT NULL,
    duratamesi integer,
    opzionecorsi boolean,
    dataiscrizione date
);
    DROP TABLE public.iscrizione;
       public         heap    postgres    false            �            1259    16859 
   produttore    TABLE       CREATE TABLE public.produttore (
    partitaiva character(11) NOT NULL,
    citta character varying NOT NULL,
    via character varying NOT NULL,
    numerocivico character(3) NOT NULL,
    nome character varying NOT NULL,
    telefono character varying(15) NOT NULL
);
    DROP TABLE public.produttore;
       public         heap    postgres    false            �            1259    16747    sede    TABLE     �   CREATE TABLE public.sede (
    citta character varying NOT NULL,
    via character varying NOT NULL,
    numerocivico character(3) NOT NULL,
    telefono character varying(15) NOT NULL
);
    DROP TABLE public.sede;
       public         heap    postgres    false            �            1259    17219    svolgimentocorsoattuale    TABLE     k   CREATE TABLE public.svolgimentocorsoattuale (
    idcorso integer NOT NULL,
    idsala integer NOT NULL
);
 +   DROP TABLE public.svolgimentocorsoattuale;
       public         heap    postgres    false            �            1259    17234    svolgimentocorsopassato    TABLE     k   CREATE TABLE public.svolgimentocorsopassato (
    idcorso integer NOT NULL,
    idsala integer NOT NULL
);
 +   DROP TABLE public.svolgimentocorsopassato;
       public         heap    postgres    false            �            1259    17189    svolgimentoliberaattuale    TABLE     m   CREATE TABLE public.svolgimentoliberaattuale (
    idlibera integer NOT NULL,
    idsala integer NOT NULL
);
 ,   DROP TABLE public.svolgimentoliberaattuale;
       public         heap    postgres    false            �            1259    17204    svolgimentoliberapassato    TABLE     m   CREATE TABLE public.svolgimentoliberapassato (
    idlibera integer NOT NULL,
    idsala integer NOT NULL
);
 ,   DROP TABLE public.svolgimentoliberapassato;
       public         heap    postgres    false            �           2604    16888    abbigliamento idabbigliamento    DEFAULT        ALTER TABLE ONLY public.abbigliamento ALTER COLUMN idabbigliamento SET DEFAULT nextval('public.idabbigliamentoseq'::regclass);
 L   ALTER TABLE public.abbigliamento ALTER COLUMN idabbigliamento DROP DEFAULT;
       public          postgres    false    222    236    236            �           2604    16904    alimento idalimento    DEFAULT     p   ALTER TABLE ONLY public.alimento ALTER COLUMN idalimento SET DEFAULT nextval('public.idalimentoseq'::regclass);
 B   ALTER TABLE public.alimento ALTER COLUMN idalimento DROP DEFAULT;
       public          postgres    false    223    237    237            �           2604    16815    atleta idatleta    DEFAULT     j   ALTER TABLE ONLY public.atleta ALTER COLUMN idatleta SET DEFAULT nextval('public.idatletaseq'::regclass);
 >   ALTER TABLE public.atleta ALTER COLUMN idatleta DROP DEFAULT;
       public          postgres    false    228    229    229            �           2604    16920    attrezzo idattrezzo    DEFAULT     p   ALTER TABLE ONLY public.attrezzo ALTER COLUMN idattrezzo SET DEFAULT nextval('public.idattrezzoseq'::regclass);
 B   ALTER TABLE public.attrezzo ALTER COLUMN idattrezzo DROP DEFAULT;
       public          postgres    false    238    224    238            �           2604    16833    corso idcorso    DEFAULT     g   ALTER TABLE ONLY public.corso ALTER COLUMN idcorso SET DEFAULT nextval('public.idcorsoseq'::regclass);
 <   ALTER TABLE public.corso ALTER COLUMN idcorso DROP DEFAULT;
       public          postgres    false    218    231    231            �           2604    16785    direttore iddirettore    DEFAULT     s   ALTER TABLE ONLY public.direttore ALTER COLUMN iddirettore SET DEFAULT nextval('public.iddirettoreseq'::regclass);
 D   ALTER TABLE public.direttore ALTER COLUMN iddirettore DROP DEFAULT;
       public          postgres    false    226    216    226            �           2604    16798    inserviente idinserviente    DEFAULT     y   ALTER TABLE ONLY public.inserviente ALTER COLUMN idinserviente SET DEFAULT nextval('public.idinservienteseq'::regclass);
 H   ALTER TABLE public.inserviente ALTER COLUMN idinserviente DROP DEFAULT;
       public          postgres    false    227    217    227            �           2604    16772    istruttore idistruttore    DEFAULT     v   ALTER TABLE ONLY public.istruttore ALTER COLUMN idistruttore SET DEFAULT nextval('public.idistruttoreseq'::regclass);
 F   ALTER TABLE public.istruttore ALTER COLUMN idistruttore DROP DEFAULT;
       public          postgres    false    225    215    225            �           2604    16841    libera idlibera    DEFAULT     j   ALTER TABLE ONLY public.libera ALTER COLUMN idlibera SET DEFAULT nextval('public.idliberaseq'::regclass);
 >   ALTER TABLE public.libera ALTER COLUMN idlibera DROP DEFAULT;
       public          postgres    false    232    219    232            �           2604    16849    sala idsala    DEFAULT     d   ALTER TABLE ONLY public.sala ALTER COLUMN idsala SET DEFAULT nextval('public.idsalaseq'::regclass);
 :   ALTER TABLE public.sala ALTER COLUMN idsala DROP DEFAULT;
       public          postgres    false    220    233    233            �           2604    16875    store idstore    DEFAULT     g   ALTER TABLE ONLY public.store ALTER COLUMN idstore SET DEFAULT nextval('public.idstoreseq'::regclass);
 <   ALTER TABLE public.store ALTER COLUMN idstore DROP DEFAULT;
       public          postgres    false    235    221    235            �          0    16885    abbigliamento 
   TABLE DATA           h   COPY public.abbigliamento (idabbigliamento, nome, prezzo, store, produttore, datafornitura) FROM stdin;
    public          postgres    false    236   �       �          0    16825    abbonamento 
   TABLE DATA           G   COPY public.abbonamento (duratamesi, opzionecorsi, prezzo) FROM stdin;
    public          postgres    false    230   ��       �          0    16901    alimento 
   TABLE DATA           ^   COPY public.alimento (idalimento, nome, prezzo, store, produttore, datafornitura) FROM stdin;
    public          postgres    false    237   "�       �          0    17099    allenamentoattuale 
   TABLE DATA           @   COPY public.allenamentoattuale (idatleta, idlibera) FROM stdin;
    public          postgres    false    240   ��       �          0    17114    allenamentopassato 
   TABLE DATA           @   COPY public.allenamentopassato (idatleta, idlibera) FROM stdin;
    public          postgres    false    241   ��       �          0    16812    atleta 
   TABLE DATA           |   COPY public.atleta (idatleta, nome, cognome, datadinascita, altezza, peso, massamagra, massagrassa, istruttore) FROM stdin;
    public          postgres    false    229   ��       �          0    16917    attrezzo 
   TABLE DATA           U   COPY public.attrezzo (idattrezzo, nome, sala, produttore, datafornitura) FROM stdin;
    public          postgres    false    238   ��       �          0    16830    corso 
   TABLE DATA           J   COPY public.corso (idcorso, tipo, data, orainizio, durataore) FROM stdin;
    public          postgres    false    231   $�       �          0    17129    corsoattuale 
   TABLE DATA           9   COPY public.corsoattuale (idatleta, idcorso) FROM stdin;
    public          postgres    false    242   ��       �          0    17144    corsopassato 
   TABLE DATA           9   COPY public.corsopassato (idatleta, idcorso) FROM stdin;
    public          postgres    false    243   �       �          0    16782 	   direttore 
   TABLE DATA           �   COPY public.direttore (iddirettore, nome, cognome, datanascita, stipendio, cittasede, viasede, numcivicosede, dataassunzione) FROM stdin;
    public          postgres    false    226   3�       �          0    17159    insegnamentoattuale 
   TABLE DATA           D   COPY public.insegnamentoattuale (idistruttore, idcorso) FROM stdin;
    public          postgres    false    244   	�       �          0    17174    insegnamentopassato 
   TABLE DATA           D   COPY public.insegnamentopassato (idistruttore, idcorso) FROM stdin;
    public          postgres    false    245   &�       �          0    16795    inserviente 
   TABLE DATA           �   COPY public.inserviente (idinserviente, nome, cognome, datanascita, stipendio, cittasede, viasede, numcivicosede, dataassunzione) FROM stdin;
    public          postgres    false    227   H�       �          0    16934 
   iscrizione 
   TABLE DATA           X   COPY public.iscrizione (idatleta, duratamesi, opzionecorsi, dataiscrizione) FROM stdin;
    public          postgres    false    239   ��       �          0    16769 
   istruttore 
   TABLE DATA           �   COPY public.istruttore (idistruttore, nome, cognome, datanascita, stipendio, cittasede, viasede, numcivicosede, dataassunzione) FROM stdin;
    public          postgres    false    225   .�       �          0    16838    libera 
   TABLE DATA           J   COPY public.libera (idlibera, tipo, data, orainizio, orafine) FROM stdin;
    public          postgres    false    232   ��       �          0    16859 
   produttore 
   TABLE DATA           Z   COPY public.produttore (partitaiva, citta, via, numerocivico, nome, telefono) FROM stdin;
    public          postgres    false    234   �       �          0    16846    sala 
   TABLE DATA           I   COPY public.sala (idsala, cittasede, viasede, numcivicosede) FROM stdin;
    public          postgres    false    233   ��       �          0    16747    sede 
   TABLE DATA           B   COPY public.sede (citta, via, numerocivico, telefono) FROM stdin;
    public          postgres    false    214   Q�       �          0    16872    store 
   TABLE DATA           K   COPY public.store (idstore, cittasede, viasede, numcivicosede) FROM stdin;
    public          postgres    false    235   ��       �          0    17219    svolgimentocorsoattuale 
   TABLE DATA           B   COPY public.svolgimentocorsoattuale (idcorso, idsala) FROM stdin;
    public          postgres    false    248   ��       �          0    17234    svolgimentocorsopassato 
   TABLE DATA           B   COPY public.svolgimentocorsopassato (idcorso, idsala) FROM stdin;
    public          postgres    false    249   ��       �          0    17189    svolgimentoliberaattuale 
   TABLE DATA           D   COPY public.svolgimentoliberaattuale (idlibera, idsala) FROM stdin;
    public          postgres    false    246   �       �          0    17204    svolgimentoliberapassato 
   TABLE DATA           D   COPY public.svolgimentoliberapassato (idlibera, idsala) FROM stdin;
    public          postgres    false    247   =�       �           0    0    idabbigliamentoseq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.idabbigliamentoseq', 2, true);
          public          postgres    false    222            �           0    0    idalimentoseq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.idalimentoseq', 1, true);
          public          postgres    false    223            �           0    0    idatletaseq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.idatletaseq', 27, true);
          public          postgres    false    228            �           0    0    idattrezzoseq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.idattrezzoseq', 1, true);
          public          postgres    false    224            �           0    0 
   idcorsoseq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.idcorsoseq', 57, true);
          public          postgres    false    218            �           0    0    iddirettoreseq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.iddirettoreseq', 4, true);
          public          postgres    false    216            �           0    0    idinservienteseq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.idinservienteseq', 1, true);
          public          postgres    false    217            �           0    0    idistruttoreseq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.idistruttoreseq', 3, true);
          public          postgres    false    215            �           0    0    idliberaseq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.idliberaseq', 1, true);
          public          postgres    false    219            �           0    0 	   idsalaseq    SEQUENCE SET     8   SELECT pg_catalog.setval('public.idsalaseq', 12, true);
          public          postgres    false    220            �           0    0 
   idstoreseq    SEQUENCE SET     8   SELECT pg_catalog.setval('public.idstoreseq', 3, true);
          public          postgres    false    221            �           2606    16890     abbigliamento abbigliamento_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.abbigliamento
    ADD CONSTRAINT abbigliamento_pkey PRIMARY KEY (idabbigliamento);
 J   ALTER TABLE ONLY public.abbigliamento DROP CONSTRAINT abbigliamento_pkey;
       public            postgres    false    236            �           2606    16829    abbonamento abbonamento_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.abbonamento
    ADD CONSTRAINT abbonamento_pkey PRIMARY KEY (duratamesi, opzionecorsi);
 F   ALTER TABLE ONLY public.abbonamento DROP CONSTRAINT abbonamento_pkey;
       public            postgres    false    230    230            �           2606    16906    alimento alimento_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.alimento
    ADD CONSTRAINT alimento_pkey PRIMARY KEY (idalimento);
 @   ALTER TABLE ONLY public.alimento DROP CONSTRAINT alimento_pkey;
       public            postgres    false    237            �           2606    17103 *   allenamentoattuale allenamentoattuale_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.allenamentoattuale
    ADD CONSTRAINT allenamentoattuale_pkey PRIMARY KEY (idlibera);
 T   ALTER TABLE ONLY public.allenamentoattuale DROP CONSTRAINT allenamentoattuale_pkey;
       public            postgres    false    240            �           2606    17118 *   allenamentopassato allenamentopassato_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.allenamentopassato
    ADD CONSTRAINT allenamentopassato_pkey PRIMARY KEY (idlibera);
 T   ALTER TABLE ONLY public.allenamentopassato DROP CONSTRAINT allenamentopassato_pkey;
       public            postgres    false    241            �           2606    16819    atleta atleta_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.atleta
    ADD CONSTRAINT atleta_pkey PRIMARY KEY (idatleta);
 <   ALTER TABLE ONLY public.atleta DROP CONSTRAINT atleta_pkey;
       public            postgres    false    229            �           2606    16922    attrezzo attrezzo_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.attrezzo
    ADD CONSTRAINT attrezzo_pkey PRIMARY KEY (idattrezzo);
 @   ALTER TABLE ONLY public.attrezzo DROP CONSTRAINT attrezzo_pkey;
       public            postgres    false    238            �           2606    16837    corso corso_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.corso
    ADD CONSTRAINT corso_pkey PRIMARY KEY (idcorso);
 :   ALTER TABLE ONLY public.corso DROP CONSTRAINT corso_pkey;
       public            postgres    false    231                       2606    17133    corsoattuale corsoattuale_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.corsoattuale
    ADD CONSTRAINT corsoattuale_pkey PRIMARY KEY (idatleta, idcorso);
 H   ALTER TABLE ONLY public.corsoattuale DROP CONSTRAINT corsoattuale_pkey;
       public            postgres    false    242    242                       2606    17148    corsopassato corsopassato_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.corsopassato
    ADD CONSTRAINT corsopassato_pkey PRIMARY KEY (idatleta, idcorso);
 H   ALTER TABLE ONLY public.corsopassato DROP CONSTRAINT corsopassato_pkey;
       public            postgres    false    243    243            �           2606    16789    direttore direttore_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.direttore
    ADD CONSTRAINT direttore_pkey PRIMARY KEY (iddirettore);
 B   ALTER TABLE ONLY public.direttore DROP CONSTRAINT direttore_pkey;
       public            postgres    false    226                       2606    17163 ,   insegnamentoattuale insegnamentoattuale_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.insegnamentoattuale
    ADD CONSTRAINT insegnamentoattuale_pkey PRIMARY KEY (idcorso);
 V   ALTER TABLE ONLY public.insegnamentoattuale DROP CONSTRAINT insegnamentoattuale_pkey;
       public            postgres    false    244                       2606    17178 ,   insegnamentopassato insegnamentopassato_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.insegnamentopassato
    ADD CONSTRAINT insegnamentopassato_pkey PRIMARY KEY (idcorso);
 V   ALTER TABLE ONLY public.insegnamentopassato DROP CONSTRAINT insegnamentopassato_pkey;
       public            postgres    false    245            �           2606    16802    inserviente inserviente_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.inserviente
    ADD CONSTRAINT inserviente_pkey PRIMARY KEY (idinserviente);
 F   ALTER TABLE ONLY public.inserviente DROP CONSTRAINT inserviente_pkey;
       public            postgres    false    227            �           2606    16938    iscrizione iscrizione_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.iscrizione
    ADD CONSTRAINT iscrizione_pkey PRIMARY KEY (idatleta);
 D   ALTER TABLE ONLY public.iscrizione DROP CONSTRAINT iscrizione_pkey;
       public            postgres    false    239            �           2606    16776    istruttore istruttore_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.istruttore
    ADD CONSTRAINT istruttore_pkey PRIMARY KEY (idistruttore);
 D   ALTER TABLE ONLY public.istruttore DROP CONSTRAINT istruttore_pkey;
       public            postgres    false    225            �           2606    16845    libera libera_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.libera
    ADD CONSTRAINT libera_pkey PRIMARY KEY (idlibera);
 <   ALTER TABLE ONLY public.libera DROP CONSTRAINT libera_pkey;
       public            postgres    false    232            �           2606    16865    produttore produttore_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.produttore
    ADD CONSTRAINT produttore_pkey PRIMARY KEY (partitaiva);
 D   ALTER TABLE ONLY public.produttore DROP CONSTRAINT produttore_pkey;
       public            postgres    false    234            �           2606    16853    sala sala_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.sala
    ADD CONSTRAINT sala_pkey PRIMARY KEY (idsala);
 8   ALTER TABLE ONLY public.sala DROP CONSTRAINT sala_pkey;
       public            postgres    false    233            �           2606    16753    sede sede_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.sede
    ADD CONSTRAINT sede_pkey PRIMARY KEY (citta, via, numerocivico);
 8   ALTER TABLE ONLY public.sede DROP CONSTRAINT sede_pkey;
       public            postgres    false    214    214    214            �           2606    16879    store store_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.store
    ADD CONSTRAINT store_pkey PRIMARY KEY (idstore);
 :   ALTER TABLE ONLY public.store DROP CONSTRAINT store_pkey;
       public            postgres    false    235                       2606    17223 4   svolgimentocorsoattuale svolgimentocorsoattuale_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.svolgimentocorsoattuale
    ADD CONSTRAINT svolgimentocorsoattuale_pkey PRIMARY KEY (idcorso);
 ^   ALTER TABLE ONLY public.svolgimentocorsoattuale DROP CONSTRAINT svolgimentocorsoattuale_pkey;
       public            postgres    false    248                       2606    17238 4   svolgimentocorsopassato svolgimentocorsopassato_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.svolgimentocorsopassato
    ADD CONSTRAINT svolgimentocorsopassato_pkey PRIMARY KEY (idcorso);
 ^   ALTER TABLE ONLY public.svolgimentocorsopassato DROP CONSTRAINT svolgimentocorsopassato_pkey;
       public            postgres    false    249            	           2606    17193 6   svolgimentoliberaattuale svolgimentoliberaattuale_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.svolgimentoliberaattuale
    ADD CONSTRAINT svolgimentoliberaattuale_pkey PRIMARY KEY (idlibera);
 `   ALTER TABLE ONLY public.svolgimentoliberaattuale DROP CONSTRAINT svolgimentoliberaattuale_pkey;
       public            postgres    false    246                       2606    17208 6   svolgimentoliberapassato svolgimentoliberapassato_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.svolgimentoliberapassato
    ADD CONSTRAINT svolgimentoliberapassato_pkey PRIMARY KEY (idlibera);
 `   ALTER TABLE ONLY public.svolgimentoliberapassato DROP CONSTRAINT svolgimentoliberapassato_pkey;
       public            postgres    false    247                       2606    16896 +   abbigliamento abbigliamento_produttore_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.abbigliamento
    ADD CONSTRAINT abbigliamento_produttore_fkey FOREIGN KEY (produttore) REFERENCES public.produttore(partitaiva) ON UPDATE CASCADE ON DELETE SET NULL;
 U   ALTER TABLE ONLY public.abbigliamento DROP CONSTRAINT abbigliamento_produttore_fkey;
       public          postgres    false    236    234    3313                       2606    16891 &   abbigliamento abbigliamento_store_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.abbigliamento
    ADD CONSTRAINT abbigliamento_store_fkey FOREIGN KEY (store) REFERENCES public.store(idstore);
 P   ALTER TABLE ONLY public.abbigliamento DROP CONSTRAINT abbigliamento_store_fkey;
       public          postgres    false    235    236    3315                       2606    16912 !   alimento alimento_produttore_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.alimento
    ADD CONSTRAINT alimento_produttore_fkey FOREIGN KEY (produttore) REFERENCES public.produttore(partitaiva) ON UPDATE CASCADE ON DELETE SET NULL;
 K   ALTER TABLE ONLY public.alimento DROP CONSTRAINT alimento_produttore_fkey;
       public          postgres    false    3313    237    234                       2606    16907    alimento alimento_store_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY public.alimento
    ADD CONSTRAINT alimento_store_fkey FOREIGN KEY (store) REFERENCES public.store(idstore);
 F   ALTER TABLE ONLY public.alimento DROP CONSTRAINT alimento_store_fkey;
       public          postgres    false    3315    235    237                       2606    17104 3   allenamentoattuale allenamentoattuale_idatleta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.allenamentoattuale
    ADD CONSTRAINT allenamentoattuale_idatleta_fkey FOREIGN KEY (idatleta) REFERENCES public.atleta(idatleta);
 ]   ALTER TABLE ONLY public.allenamentoattuale DROP CONSTRAINT allenamentoattuale_idatleta_fkey;
       public          postgres    false    240    229    3303                       2606    17109 3   allenamentoattuale allenamentoattuale_idlibera_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.allenamentoattuale
    ADD CONSTRAINT allenamentoattuale_idlibera_fkey FOREIGN KEY (idlibera) REFERENCES public.libera(idlibera);
 ]   ALTER TABLE ONLY public.allenamentoattuale DROP CONSTRAINT allenamentoattuale_idlibera_fkey;
       public          postgres    false    232    240    3309                        2606    17119 3   allenamentopassato allenamentopassato_idatleta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.allenamentopassato
    ADD CONSTRAINT allenamentopassato_idatleta_fkey FOREIGN KEY (idatleta) REFERENCES public.atleta(idatleta);
 ]   ALTER TABLE ONLY public.allenamentopassato DROP CONSTRAINT allenamentopassato_idatleta_fkey;
       public          postgres    false    229    241    3303            !           2606    17124 3   allenamentopassato allenamentopassato_idlibera_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.allenamentopassato
    ADD CONSTRAINT allenamentopassato_idlibera_fkey FOREIGN KEY (idlibera) REFERENCES public.libera(idlibera);
 ]   ALTER TABLE ONLY public.allenamentopassato DROP CONSTRAINT allenamentopassato_idlibera_fkey;
       public          postgres    false    241    3309    232                       2606    16820    atleta atleta_istruttore_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.atleta
    ADD CONSTRAINT atleta_istruttore_fkey FOREIGN KEY (istruttore) REFERENCES public.istruttore(idistruttore) ON UPDATE CASCADE ON DELETE SET NULL;
 G   ALTER TABLE ONLY public.atleta DROP CONSTRAINT atleta_istruttore_fkey;
       public          postgres    false    225    229    3297                       2606    16928 !   attrezzo attrezzo_produttore_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.attrezzo
    ADD CONSTRAINT attrezzo_produttore_fkey FOREIGN KEY (produttore) REFERENCES public.produttore(partitaiva) ON UPDATE CASCADE ON DELETE SET NULL;
 K   ALTER TABLE ONLY public.attrezzo DROP CONSTRAINT attrezzo_produttore_fkey;
       public          postgres    false    238    3313    234                       2606    16923    attrezzo attrezzo_sala_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY public.attrezzo
    ADD CONSTRAINT attrezzo_sala_fkey FOREIGN KEY (sala) REFERENCES public.sala(idsala);
 E   ALTER TABLE ONLY public.attrezzo DROP CONSTRAINT attrezzo_sala_fkey;
       public          postgres    false    238    3311    233            "           2606    17134 '   corsoattuale corsoattuale_idatleta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.corsoattuale
    ADD CONSTRAINT corsoattuale_idatleta_fkey FOREIGN KEY (idatleta) REFERENCES public.atleta(idatleta);
 Q   ALTER TABLE ONLY public.corsoattuale DROP CONSTRAINT corsoattuale_idatleta_fkey;
       public          postgres    false    242    3303    229            #           2606    17139 &   corsoattuale corsoattuale_idcorso_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.corsoattuale
    ADD CONSTRAINT corsoattuale_idcorso_fkey FOREIGN KEY (idcorso) REFERENCES public.corso(idcorso);
 P   ALTER TABLE ONLY public.corsoattuale DROP CONSTRAINT corsoattuale_idcorso_fkey;
       public          postgres    false    242    231    3307            $           2606    17149 '   corsopassato corsopassato_idatleta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.corsopassato
    ADD CONSTRAINT corsopassato_idatleta_fkey FOREIGN KEY (idatleta) REFERENCES public.atleta(idatleta);
 Q   ALTER TABLE ONLY public.corsopassato DROP CONSTRAINT corsopassato_idatleta_fkey;
       public          postgres    false    3303    229    243            %           2606    17154 &   corsopassato corsopassato_idcorso_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.corsopassato
    ADD CONSTRAINT corsopassato_idcorso_fkey FOREIGN KEY (idcorso) REFERENCES public.corso(idcorso);
 P   ALTER TABLE ONLY public.corsopassato DROP CONSTRAINT corsopassato_idcorso_fkey;
       public          postgres    false    231    243    3307                       2606    16790 8   direttore direttore_cittasede_viasede_numcivicosede_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.direttore
    ADD CONSTRAINT direttore_cittasede_viasede_numcivicosede_fkey FOREIGN KEY (cittasede, viasede, numcivicosede) REFERENCES public.sede(citta, via, numerocivico) ON UPDATE CASCADE ON DELETE SET NULL;
 b   ALTER TABLE ONLY public.direttore DROP CONSTRAINT direttore_cittasede_viasede_numcivicosede_fkey;
       public          postgres    false    226    226    3295    214    214    214    226            &           2606    17169 4   insegnamentoattuale insegnamentoattuale_idcorso_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.insegnamentoattuale
    ADD CONSTRAINT insegnamentoattuale_idcorso_fkey FOREIGN KEY (idcorso) REFERENCES public.corso(idcorso);
 ^   ALTER TABLE ONLY public.insegnamentoattuale DROP CONSTRAINT insegnamentoattuale_idcorso_fkey;
       public          postgres    false    3307    231    244            '           2606    17164 9   insegnamentoattuale insegnamentoattuale_idistruttore_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.insegnamentoattuale
    ADD CONSTRAINT insegnamentoattuale_idistruttore_fkey FOREIGN KEY (idistruttore) REFERENCES public.istruttore(idistruttore);
 c   ALTER TABLE ONLY public.insegnamentoattuale DROP CONSTRAINT insegnamentoattuale_idistruttore_fkey;
       public          postgres    false    244    225    3297            (           2606    17184 4   insegnamentopassato insegnamentopassato_idcorso_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.insegnamentopassato
    ADD CONSTRAINT insegnamentopassato_idcorso_fkey FOREIGN KEY (idcorso) REFERENCES public.corso(idcorso);
 ^   ALTER TABLE ONLY public.insegnamentopassato DROP CONSTRAINT insegnamentopassato_idcorso_fkey;
       public          postgres    false    3307    231    245            )           2606    17179 9   insegnamentopassato insegnamentopassato_idistruttore_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.insegnamentopassato
    ADD CONSTRAINT insegnamentopassato_idistruttore_fkey FOREIGN KEY (idistruttore) REFERENCES public.istruttore(idistruttore);
 c   ALTER TABLE ONLY public.insegnamentopassato DROP CONSTRAINT insegnamentopassato_idistruttore_fkey;
       public          postgres    false    3297    245    225                       2606    16803 <   inserviente inserviente_cittasede_viasede_numcivicosede_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.inserviente
    ADD CONSTRAINT inserviente_cittasede_viasede_numcivicosede_fkey FOREIGN KEY (cittasede, viasede, numcivicosede) REFERENCES public.sede(citta, via, numerocivico) ON UPDATE CASCADE ON DELETE SET NULL;
 f   ALTER TABLE ONLY public.inserviente DROP CONSTRAINT inserviente_cittasede_viasede_numcivicosede_fkey;
       public          postgres    false    214    227    227    227    3295    214    214                       2606    16944 2   iscrizione iscrizione_duratamesi_opzionecorsi_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.iscrizione
    ADD CONSTRAINT iscrizione_duratamesi_opzionecorsi_fkey FOREIGN KEY (duratamesi, opzionecorsi) REFERENCES public.abbonamento(duratamesi, opzionecorsi) ON UPDATE CASCADE ON DELETE SET NULL;
 \   ALTER TABLE ONLY public.iscrizione DROP CONSTRAINT iscrizione_duratamesi_opzionecorsi_fkey;
       public          postgres    false    239    3305    230    230    239                       2606    16939 #   iscrizione iscrizione_idatleta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.iscrizione
    ADD CONSTRAINT iscrizione_idatleta_fkey FOREIGN KEY (idatleta) REFERENCES public.atleta(idatleta);
 M   ALTER TABLE ONLY public.iscrizione DROP CONSTRAINT iscrizione_idatleta_fkey;
       public          postgres    false    239    229    3303                       2606    16777 :   istruttore istruttore_cittasede_viasede_numcivicosede_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.istruttore
    ADD CONSTRAINT istruttore_cittasede_viasede_numcivicosede_fkey FOREIGN KEY (cittasede, viasede, numcivicosede) REFERENCES public.sede(citta, via, numerocivico) ON UPDATE CASCADE ON DELETE SET NULL;
 d   ALTER TABLE ONLY public.istruttore DROP CONSTRAINT istruttore_cittasede_viasede_numcivicosede_fkey;
       public          postgres    false    225    214    214    214    3295    225    225                       2606    16854 .   sala sala_cittasede_viasede_numcivicosede_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sala
    ADD CONSTRAINT sala_cittasede_viasede_numcivicosede_fkey FOREIGN KEY (cittasede, viasede, numcivicosede) REFERENCES public.sede(citta, via, numerocivico) ON UPDATE CASCADE ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.sala DROP CONSTRAINT sala_cittasede_viasede_numcivicosede_fkey;
       public          postgres    false    3295    233    233    233    214    214    214                       2606    16880 0   store store_cittasede_viasede_numcivicosede_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.store
    ADD CONSTRAINT store_cittasede_viasede_numcivicosede_fkey FOREIGN KEY (cittasede, viasede, numcivicosede) REFERENCES public.sede(citta, via, numerocivico);
 Z   ALTER TABLE ONLY public.store DROP CONSTRAINT store_cittasede_viasede_numcivicosede_fkey;
       public          postgres    false    214    235    235    235    3295    214    214            .           2606    17224 <   svolgimentocorsoattuale svolgimentocorsoattuale_idcorso_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.svolgimentocorsoattuale
    ADD CONSTRAINT svolgimentocorsoattuale_idcorso_fkey FOREIGN KEY (idcorso) REFERENCES public.corso(idcorso);
 f   ALTER TABLE ONLY public.svolgimentocorsoattuale DROP CONSTRAINT svolgimentocorsoattuale_idcorso_fkey;
       public          postgres    false    231    3307    248            /           2606    17229 ;   svolgimentocorsoattuale svolgimentocorsoattuale_idsala_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.svolgimentocorsoattuale
    ADD CONSTRAINT svolgimentocorsoattuale_idsala_fkey FOREIGN KEY (idsala) REFERENCES public.sala(idsala);
 e   ALTER TABLE ONLY public.svolgimentocorsoattuale DROP CONSTRAINT svolgimentocorsoattuale_idsala_fkey;
       public          postgres    false    248    3311    233            0           2606    17239 <   svolgimentocorsopassato svolgimentocorsopassato_idcorso_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.svolgimentocorsopassato
    ADD CONSTRAINT svolgimentocorsopassato_idcorso_fkey FOREIGN KEY (idcorso) REFERENCES public.corso(idcorso);
 f   ALTER TABLE ONLY public.svolgimentocorsopassato DROP CONSTRAINT svolgimentocorsopassato_idcorso_fkey;
       public          postgres    false    3307    249    231            1           2606    17244 ;   svolgimentocorsopassato svolgimentocorsopassato_idsala_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.svolgimentocorsopassato
    ADD CONSTRAINT svolgimentocorsopassato_idsala_fkey FOREIGN KEY (idsala) REFERENCES public.sala(idsala);
 e   ALTER TABLE ONLY public.svolgimentocorsopassato DROP CONSTRAINT svolgimentocorsopassato_idsala_fkey;
       public          postgres    false    233    249    3311            *           2606    17194 ?   svolgimentoliberaattuale svolgimentoliberaattuale_idlibera_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.svolgimentoliberaattuale
    ADD CONSTRAINT svolgimentoliberaattuale_idlibera_fkey FOREIGN KEY (idlibera) REFERENCES public.libera(idlibera);
 i   ALTER TABLE ONLY public.svolgimentoliberaattuale DROP CONSTRAINT svolgimentoliberaattuale_idlibera_fkey;
       public          postgres    false    246    232    3309            +           2606    17199 =   svolgimentoliberaattuale svolgimentoliberaattuale_idsala_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.svolgimentoliberaattuale
    ADD CONSTRAINT svolgimentoliberaattuale_idsala_fkey FOREIGN KEY (idsala) REFERENCES public.sala(idsala);
 g   ALTER TABLE ONLY public.svolgimentoliberaattuale DROP CONSTRAINT svolgimentoliberaattuale_idsala_fkey;
       public          postgres    false    3311    246    233            ,           2606    17209 ?   svolgimentoliberapassato svolgimentoliberapassato_idlibera_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.svolgimentoliberapassato
    ADD CONSTRAINT svolgimentoliberapassato_idlibera_fkey FOREIGN KEY (idlibera) REFERENCES public.libera(idlibera);
 i   ALTER TABLE ONLY public.svolgimentoliberapassato DROP CONSTRAINT svolgimentoliberapassato_idlibera_fkey;
       public          postgres    false    3309    232    247            -           2606    17214 =   svolgimentoliberapassato svolgimentoliberapassato_idsala_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.svolgimentoliberapassato
    ADD CONSTRAINT svolgimentoliberapassato_idsala_fkey FOREIGN KEY (idsala) REFERENCES public.sala(idsala);
 g   ALTER TABLE ONLY public.svolgimentoliberapassato DROP CONSTRAINT svolgimentoliberapassato_idsala_fkey;
       public          postgres    false    247    233    3311            �   �   x���1�0���_Z�.I��*��8��"5P�T�?ꠤ��?��N�x���q*�P&�2�R���Ϊ�7��ڈ6�t5.��c�a�b\0�g���C���֖_k��w!���KW�x%�P�@��s�a.����]��e�^��g�����X�O������c���?      �   @   x�3�,�47�30�2�L�4���b�FPf���i��2����F@ac;���$F��� �	�      �   |   x���;
1 �zr����[�[�z ���H�B���Gp�k��j��gv�@Pr�����̖آ7��Yϣ�?�u�W�Q�e��>+}Qz��m���q ���@,>Ĕ˶5Y�tƘ�r�      �      x������ � �      �      x�3�4����� ]      �   �  x�m��N�0D���y����m\Z��ĉ�,Xa��I9��lӦQ$r�μ� <R��!�^]���SJJUH]�l$4��P(�S����Dm�tVc!M!��V�=9k���l
�n�ZT�=���X�	�4솹!�%ll��.1J�)k��,��³=�����Q����]7L�t8�Xyj��Ǯ�';�OB%���~��Si45Z�y"^�_l��X�렂mL.�Fxi?�p�S��ܝ:��#s��8��Ĩ�ю�O��8빧B�Y�a��yI�[Ǭ�R\���q�ڦ>�ż�e�@	��!�к�׿�����9.UN���y*\����-�(�à�>��x����������|'�R�8zC60��?��iz(Jƚ(K�?N�"�[1l�a%T\��N�����      �   �   x���1�  ��s
/PÇB���i��˗C$� ����7��CxP��n{���NMڎ涀�����B|���{���d�$��.5�Ɵ	���W����`��p'��%��=�J�L�{��_�U�      �   �   x�m���0���w����GI�x�l�T��	JB1��-`h�&s��7ӎ�p��9�hP�C�ʑ)���a�p�)~>zj�Z7<���' �8M��fj��6���tR�
H�w	���jVU�(��*T��h
 �)�4��&R�H�^ ���)&?��>��S��!^h�䌱/R�h�      �      x�3�45����� �]      �      x�3�45����� jY      �   �   x�uϱ
�@�9����\�U׶�RA:8u	z�{j;��u�T8?_�8�y�G��=\���RD�!B���]Z��''��fp-5�j�T��!�~��@��>�bcj8Dh�?N�:��#���k���Jf1��A�m�5>�I�~V-���t�ۚ�.���3��s\��zS3xamM�
�ud	�mg���J{      �      x������ � �      �      x�3�45����� jY      �   P   x�3��I,-J��/.��4����54�5��4400�30�H-*M�L��L�IUpN�+�/K�4�420�3�50����� �D      �   v   x�U���0C��.
D��g��3A�G�u���G�(��B�(���:�%P��@Nz44� �1����Al�� 	�ˑ�##����7���]���%�H�r�zpړ�������+      �   �   x����
�0�ϓ���dW+��B���"A��z�ӻ������o	G�^e�q ��R28�a�CYoC����%NYJjvi��C@�2�c�i֦��@C�?��fP��d�]�Vx9]��1�����"��?�U��6_A���:瞢�9      �   6   x�3�H-��4202�54�52�44�2��24�320��0�44�20 "�=... �N	*      �   �   x�E��n�0@��W�N�&9�
8�Cډ�Y�aQ)tH���!��e��=�6�i��
^d�a'�p��ĸ�)1hD�a�=팢'��a��T��嚱�[�.`*�N��d~@��*x�6�hzx��a�UAB7��WX:������=����#�&�j�*��벦��Qڨ@����χ�n:�2�%�}�<���s��s:8uX(�~�G�      �   G   x�34�H-*M�L��L�IUpN�+�/K�4�2�)c�S���)N3�2�8e,p�X�14�-�ۯ1z\\\ z[�      �   +  x�U��n� �gx
�n�1`̘�j�&���S���\$�U����a��*�X����|�M�[��E�ӌw`RV[cT���O�/��8�c`�&�X���Z��>U��v�!F�G�W
�ۄn�k,2̸��H�����5͊i�j�:�ǈSZ�.�(�����v�:GW�|�`�P��F���uR[����KZ�s
�C~��L���V��r�sH��|��zbM�$�Jگ�1D n�, �amiP�r�F�_��e�u����=l���J�����gG�s���VvJ�ᗊs�
�|�      �   @   x�3�H-*M�L��L�IUpN�+�/K�4�2����I����L��JTpR�f\�85��qqq �f      �      x������ � �      �      x�35�44������ 
��      �      x�3�4����� d      �      x�3�4����� d     