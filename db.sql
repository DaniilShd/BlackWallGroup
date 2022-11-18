PGDMP         ;    	        
    z            TestTransaction    15.0    15.0     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16399    TestTransaction    DATABASE     �   CREATE DATABASE "TestTransaction" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
 !   DROP DATABASE "TestTransaction";
                postgres    false            �           0    0    DATABASE "TestTransaction"    COMMENT     U   COMMENT ON DATABASE "TestTransaction" IS 'Для тестового задания';
                   postgres    false    3246            �            1259    16408    clients    TABLE     S   CREATE TABLE public.clients (
    id integer NOT NULL,
    bank_account integer
);
    DROP TABLE public.clients;
       public         heap    postgres    false            �            1259    16407    clients_id_seq    SEQUENCE     �   ALTER TABLE public.clients ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.clients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    215            �            1259    16414    transactions    TABLE     �   CREATE TABLE public.transactions (
    id_transaction integer NOT NULL,
    type_transaction character varying,
    amount integer,
    "check" boolean DEFAULT false NOT NULL,
    client_id integer
);
     DROP TABLE public.transactions;
       public         heap    postgres    false            �            1259    16413    transactions_id_transaction_seq    SEQUENCE     �   ALTER TABLE public.transactions ALTER COLUMN id_transaction ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.transactions_id_transaction_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    217            �          0    16408    clients 
   TABLE DATA           3   COPY public.clients (id, bank_account) FROM stdin;
    public          postgres    false    215          �          0    16414    transactions 
   TABLE DATA           d   COPY public.transactions (id_transaction, type_transaction, amount, "check", client_id) FROM stdin;
    public          postgres    false    217   =       �           0    0    clients_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.clients_id_seq', 7, true);
          public          postgres    false    214            �           0    0    transactions_id_transaction_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.transactions_id_transaction_seq', 40, true);
          public          postgres    false    216                       2606    16412    clients clients_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.clients DROP CONSTRAINT clients_pkey;
       public            postgres    false    215                       2606    16420    transactions transactions_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (id_transaction);
 H   ALTER TABLE ONLY public.transactions DROP CONSTRAINT transactions_pkey;
       public            postgres    false    217                       2606    16421    transactions clients_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT clients_fkey FOREIGN KEY (client_id) REFERENCES public.clients(id) NOT VALID;
 C   ALTER TABLE ONLY public.transactions DROP CONSTRAINT clients_fkey;
       public          postgres    false    217    3091    215            �   +   x�3�42�2�4�2b3 6�44�2�452�22�b���� kpM      �   �   x�m��
�0����Ôdgm�]z)��b_�95����&��˼��~ɐ��R���$��ޯm>�w3t�;6��L�i�/M-�3W�L�&g�a�bX��O�8P��\�׃����z��a�c�m6u�{_U�����     