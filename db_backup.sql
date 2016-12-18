--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.5
-- Dumped by pg_dump version 9.5.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE ar_internal_metadata OWNER TO "user";

--
-- Name: categories; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE categories (
    id integer NOT NULL,
    name character varying,
    url character varying,
    parent_id integer,
    lft integer NOT NULL,
    rgt integer NOT NULL
);


ALTER TABLE categories OWNER TO "user";

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE categories_id_seq OWNER TO "user";

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE categories_id_seq OWNED BY categories.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE products (
    id integer NOT NULL,
    name character varying,
    url character varying,
    price character varying,
    sku character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE products OWNER TO "user";

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE products_id_seq OWNER TO "user";

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE products_id_seq OWNED BY products.id;


--
-- Name: relations; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE relations (
    id integer NOT NULL,
    product_id integer,
    category_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE relations OWNER TO "user";

--
-- Name: relations_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE relations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE relations_id_seq OWNER TO "user";

--
-- Name: relations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE relations_id_seq OWNED BY relations.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO "user";

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY categories ALTER COLUMN id SET DEFAULT nextval('categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY products ALTER COLUMN id SET DEFAULT nextval('products_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY relations ALTER COLUMN id SET DEFAULT nextval('relations_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: user
--

COPY ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2016-12-15 20:18:27.693212	2016-12-15 20:18:27.693212
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: user
--

COPY categories (id, name, url, parent_id, lft, rgt) FROM stdin;
1889	Sale/Promotion	https://www.tvdirect.tv/sale-promotion	\N	1	2
1892	Vitamins & Minerals	https://www.tvdirect.tv/health/food-supplement/vitamins-minerals	1891	5	6
1891	Food Supplement	https://www.tvdirect.tv/health/food-supplement	1890	4	9
1893	Food & Drink	https://www.tvdirect.tv/health/food-supplement/food-drink	1891	7	8
1894	Sexual Well-Being	https://www.tvdirect.tv/health/sexual-well-being	1890	10	11
1896	Body Massagers	https://www.tvdirect.tv/health/massagers/body-massagers	1895	13	14
1897	Massage Chairs	https://www.tvdirect.tv/health/massagers/massager-chairs	1895	15	16
1895	Massagers	https://www.tvdirect.tv/health/massagers	1890	12	19
1898	Support Cushion	https://www.tvdirect.tv/health/massagers/support-cushion	1895	17	18
1900	Sanitary Hygiene	https://www.tvdirect.tv/health/health-equipment/0	1899	21	22
1901	Mobility Aids	https://www.tvdirect.tv/health/health-equipment/mobility-aids	1899	23	24
1902	Ergonomic Chair	https://www.tvdirect.tv/health/health-equipment/ergonomic-chair	1899	25	26
1899	Health Equipment	https://www.tvdirect.tv/health/health-equipment	1890	20	29
1903	Health shoes	https://www.tvdirect.tv/health/health-equipment/health-shoes	1899	27	28
1890	HEALTH	https://www.tvdirect.tv/health	\N	3	34
1904	Personal Care	https://www.tvdirect.tv/health/personal-care	1890	30	33
1905	ADULT DIAPERS	https://www.tvdirect.tv/health/personal-care/adult-diapers	1904	31	32
1908	Leggings	https://www.tvdirect.tv/fashion-beauty/clothes/leggings	1907	37	38
1909	Lingerie/Underwear	https://www.tvdirect.tv/fashion-beauty/clothes/lingerie-underwear	1907	39	40
1907	Clothes	https://www.tvdirect.tv/fashion-beauty/clothes	1906	36	43
1910	Body Shaper	https://www.tvdirect.tv/fashion-beauty/clothes/body-shaper	1907	41	42
1911	Bags	https://www.tvdirect.tv/fashion-beauty/bags	1906	44	45
1913	Men Watches	https://www.tvdirect.tv/fashion-beauty/watches/men-watches	1912	47	48
1912	Watches	https://www.tvdirect.tv/fashion-beauty/watches	1906	46	51
1914	Women Watches	https://www.tvdirect.tv/fashion-beauty/watches/women-watches	1912	49	50
1916	Ring	https://www.tvdirect.tv/fashion-beauty/jewelry/ring	1915	53	54
1917	Necklace / Bracelet	https://www.tvdirect.tv/fashion-beauty/jewelry/necklace	1915	55	56
1915	Jewelry	https://www.tvdirect.tv/fashion-beauty/jewelry	1906	52	59
1918	Earrings	https://www.tvdirect.tv/fashion-beauty/jewelry/earrings	1915	57	58
1919	Eyewear	https://www.tvdirect.tv/fashion-beauty/eyewear	1906	60	63
1920	Sunglasses	https://www.tvdirect.tv/fashion-beauty/eyewear/sunglasses	1919	61	62
1922	Facial Care	https://www.tvdirect.tv/fashion-beauty/beauty/facial-care	1921	65	66
1923	Hair Care	https://www.tvdirect.tv/fashion-beauty/beauty/hair-care	1921	67	68
1924	Skin Care	https://www.tvdirect.tv/fashion-beauty/beauty/skin-care	1921	69	70
1925	Personal Care	https://www.tvdirect.tv/fashion-beauty/beauty/personal-care	1921	71	72
1926	Cosmetic	https://www.tvdirect.tv/fashion-beauty/beauty/cosmetic	1921	73	74
1927	Slimming Products	https://www.tvdirect.tv/fashion-beauty/beauty/slimming-products	1921	75	76
1928	Skin Supplements	https://www.tvdirect.tv/fashion-beauty/beauty/skin-supplements	1921	77	78
1906	FASHION & BEAUTY	https://www.tvdirect.tv/fashion-beauty	\N	35	82
1921	Beauty	https://www.tvdirect.tv/fashion-beauty/beauty	1906	64	81
1929	Perfume	https://www.tvdirect.tv/fashion-beauty/beauty/perfume	1921	79	80
1932	Treadmills	https://www.tvdirect.tv/fitness-sport/devices/treadmills	1931	85	86
1933	Ellipticals	https://www.tvdirect.tv/fitness-sport/devices/ellipticals	1931	87	88
1934	Bikes	https://www.tvdirect.tv/fitness-sport/devices/bikes	1931	89	90
1935	Cardio	https://www.tvdirect.tv/fitness-sport/devices/cardio	1931	91	92
1936	Body Vibration Machine	https://www.tvdirect.tv/fitness-sport/devices/body-vibration-machine	1931	93	94
1937	Dumbbell	https://www.tvdirect.tv/fitness-sport/devices/dumbbell	1931	95	96
1931	Devices	https://www.tvdirect.tv/fitness-sport/devices	1930	84	99
1938	Gym	https://www.tvdirect.tv/fitness-sport/devices/gym	1931	97	98
1940	Body Training	https://www.tvdirect.tv/fitness-sport/strength-training-equipment/body-training	1939	101	102
1941	Abnominal	https://www.tvdirect.tv/fitness-sport/strength-training-equipment/abnominal	1939	103	104
1942	Arm	https://www.tvdirect.tv/fitness-sport/strength-training-equipment/arm	1939	105	106
1943	Back	https://www.tvdirect.tv/fitness-sport/strength-training-equipment/back	1939	107	108
1939	Strength Training Equipment	https://www.tvdirect.tv/fitness-sport/strength-training-equipment	1930	100	111
1944	Leg	https://www.tvdirect.tv/fitness-sport/strength-training-equipment/leg	1939	109	110
1945	Sport Equipment	https://www.tvdirect.tv/fitness-sport/sport-equipment	1930	112	115
1946	Yoga	https://www.tvdirect.tv/fitness-sport/sport-equipment/yoga	1945	113	114
1947	Clothes	https://www.tvdirect.tv/fitness-sport/clothes	1930	116	119
1948	Body Shaper	https://www.tvdirect.tv/fitness-sport/clothes/body-shaper	1947	117	118
1950	Whey Protein	https://www.tvdirect.tv/fitness-sport/supplement/whey-protein	1949	121	122
1949	Supplement	https://www.tvdirect.tv/fitness-sport/supplement	1930	120	125
1930	FITNESS & SPORT	https://www.tvdirect.tv/fitness-sport	\N	83	128
2014	Car Vacuum Cleaner	https://www.tvdirect.tv/lifestyle/automotive/car-vacuum-cleaner	2013	249	250
2012	LIFESTYLE	https://www.tvdirect.tv/lifestyle	\N	247	276
1951	Weight Loss	https://www.tvdirect.tv/fitness-sport/supplement/weight-loss	1949	123	124
1952	SPORT ACCESSORIES	https://www.tvdirect.tv/fitness-sport/sport-accessories	1930	126	127
1955	Bedlinens	https://www.tvdirect.tv/home-living/bedroom/bedlinens	1954	131	132
1956	Mattress	https://www.tvdirect.tv/home-living/bedroom/mattress	1954	133	134
1954	Bedroom	https://www.tvdirect.tv/home-living/bedroom	1953	130	137
1957	Bedding Accessories	https://www.tvdirect.tv/home-living/bedroom/bedding-accessories	1954	135	136
1959	Frying Pan	https://www.tvdirect.tv/home-living/kitchen/pan	1958	139	140
1960	Pot	https://www.tvdirect.tv/home-living/kitchen/pot	1958	141	142
1961	Cooking Equipment	https://www.tvdirect.tv/home-living/kitchen/cooking-equipment	1958	143	144
1962	Kitchen Storage	https://www.tvdirect.tv/home-living/kitchen/kitchen-storage	1958	145	146
1958	Kitchen	https://www.tvdirect.tv/home-living/kitchen	1953	138	149
1963	Kitchenwares/Utensils	https://www.tvdirect.tv/home-living/kitchen/kitchenwares-utensils	1958	147	148
1965	Table	https://www.tvdirect.tv/home-living/furniture-decor/table	1964	151	152
1966	Chair	https://www.tvdirect.tv/home-living/furniture-decor/chair	1964	153	154
1967	Sofa	https://www.tvdirect.tv/home-living/furniture-decor/sofa	1964	155	156
1968	Working Chair	https://www.tvdirect.tv/home-living/furniture-decor/working-chair	1964	157	158
1969	Cushion	https://www.tvdirect.tv/home-living/furniture-decor/cushion	1964	159	160
1964	Furniture & Décor	https://www.tvdirect.tv/home-living/furniture-decor	1953	150	163
1970	Décor	https://www.tvdirect.tv/home-living/furniture-decor/decor	1964	161	162
1971	Tools & Hardwares	https://www.tvdirect.tv/home-living/tools-hardwares	1953	164	167
1972	Home Improvement	https://www.tvdirect.tv/home-living/tools-hardwares/home-improvement	1971	165	166
1974	Pest Control	https://www.tvdirect.tv/home-living/home-cleaning/pest-control	1973	169	170
1973	Home Cleaning	https://www.tvdirect.tv/home-living/home-cleaning	1953	168	173
1975	Cleaning Tools	https://www.tvdirect.tv/home-living/home-cleaning/cleaning-tools	1973	171	172
1976	Outdoor & Garden	https://www.tvdirect.tv/home-living/gardening	1953	174	175
1953	Home & Living	https://www.tvdirect.tv/home-living	\N	129	180
1977	HOUSEKEEPING & LAUNDRY	https://www.tvdirect.tv/home-living/housekeeping-laundry	1953	176	179
1978	LAUNDRY ACESSORIES	https://www.tvdirect.tv/home-living/housekeeping-laundry/laundry-acessories	1977	177	178
1981	Air Purifier	https://www.tvdirect.tv/electrical/home-appliances/air-purifier	1980	183	184
1982	Fan	https://www.tvdirect.tv/electrical/home-appliances/fan	1980	185	186
1983	Spa	https://www.tvdirect.tv/electrical/home-appliances/spa	1980	187	188
1984	Iron	https://www.tvdirect.tv/electrical/home-appliances/iron	1980	189	190
1985	Vacuum	https://www.tvdirect.tv/electrical/home-appliances/vacuum	1980	191	192
1980	Home Appliances	https://www.tvdirect.tv/electrical/home-appliances	1979	182	195
1986	Water Heater	https://www.tvdirect.tv/electrical/home-appliances/water-heater	1980	193	194
1988	TV	https://www.tvdirect.tv/electrical/home-entertainment/tv	1987	197	198
1989	Music Player	https://www.tvdirect.tv/electrical/home-entertainment/music-player	1987	199	200
1990	Home Threatre	https://www.tvdirect.tv/electrical/home-entertainment/home-threatre	1987	201	202
1987	Home Entertainment	https://www.tvdirect.tv/electrical/home-entertainment	1979	196	205
1991	Speaker	https://www.tvdirect.tv/electrical/home-entertainment/speker	1987	203	204
1993	Stove	https://www.tvdirect.tv/electrical/kitchen-appliances/stove	1992	207	208
1994	Oven/Microwave	https://www.tvdirect.tv/electrical/kitchen-appliances/oven-microwave	1992	209	210
1995	Blender/Juicer	https://www.tvdirect.tv/electrical/kitchen-appliances/blender-juicer	1992	211	212
1996	Coffee Maker	https://www.tvdirect.tv/electrical/kitchen-appliances/coffee-maker	1992	213	214
1997	Sandwich Maker	https://www.tvdirect.tv/electrical/kitchen-appliances/sandwich-maker	1992	215	216
1998	Drink Maker	https://www.tvdirect.tv/electrical/kitchen-appliances/drink-maker	1992	217	218
1999	Toaster	https://www.tvdirect.tv/electrical/kitchen-appliances/toaster	1992	219	220
2000	Kettle	https://www.tvdirect.tv/electrical/kitchen-appliances/kettle	1992	221	222
2001	Electric Frying Pan	https://www.tvdirect.tv/electrical/kitchen-appliances/electric-frying-pan	1992	223	224
2002	Ice Cream Maker	https://www.tvdirect.tv/electrical/kitchen-appliances/ice-cream-maker	1992	225	226
2003	Stew cooker	https://www.tvdirect.tv/electrical/kitchen-appliances/stew-cooker	1992	227	228
2004	Mixer	https://www.tvdirect.tv/electrical/kitchen-appliances/mixer	1992	229	230
2005	Ice Maker	https://www.tvdirect.tv/electrical/kitchen-appliances/ice-maker	1992	231	232
2006	Yogert Maker	https://www.tvdirect.tv/electrical/kitchen-appliances/yogert-maker	1992	233	234
1979	ELECTRICAL	https://www.tvdirect.tv/electrical	\N	181	238
1992	Kitchen Appliances	https://www.tvdirect.tv/electrical/kitchen-appliances	1979	206	237
2007	Popcorn Maker	https://www.tvdirect.tv/electrical/kitchen-appliances/popcorn-maker-2687	1992	235	236
2009	Mobile	https://www.tvdirect.tv/it-gadget/mobile	2008	240	241
2010	Case & Accessories	https://www.tvdirect.tv/it-gadget/case-accessories	2008	242	243
2008	IT & GADGET	https://www.tvdirect.tv/it-gadget	\N	239	246
2011	Gadget	https://www.tvdirect.tv/it-gadget/gadget	2008	244	245
2015	Engine Treatment	https://www.tvdirect.tv/lifestyle/automotive/engine-treatment	2013	251	252
2016	Car Care Equipment	https://www.tvdirect.tv/lifestyle/automotive/car-care-equipment	2013	253	254
2017	Tools & Accessories	https://www.tvdirect.tv/lifestyle/automotive/tools-accessories	2013	255	256
2018	Car Cleaner	https://www.tvdirect.tv/lifestyle/automotive/car-cleaner	2013	257	258
2013	Automotive	https://www.tvdirect.tv/lifestyle/automotive	2012	248	261
2019	Motor Mobility	https://www.tvdirect.tv/lifestyle/automotive/motor-mobility	2013	259	260
2021	Portable Toilet	https://www.tvdirect.tv/lifestyle/travel/portable-toilet	2020	263	264
2022	Travel Accessories	https://www.tvdirect.tv/lifestyle/travel/travel-accessories	2020	265	266
2020	Travel	https://www.tvdirect.tv/lifestyle/travel	2012	262	269
2023	Adventure	https://www.tvdirect.tv/lifestyle/travel/adventure	2020	267	268
2024	Media	https://www.tvdirect.tv/lifestyle/media	2012	270	273
2025	Ebooks	https://www.tvdirect.tv/lifestyle/media/ebooks	2024	271	272
2026	Collectables	https://www.tvdirect.tv/lifestyle/collectables	2012	274	275
2029	Sport & Outdoor Activities	https://www.tvdirect.tv/mom-baby/toys-gear/sport-outdoor-activities	2028	279	280
2028	Toys & Gear	https://www.tvdirect.tv/mom-baby/toys-gear	2027	278	283
2030	Gear	https://www.tvdirect.tv/mom-baby/toys-gear/gear	2028	281	282
2027	MOM & BABY	https://www.tvdirect.tv/mom-baby	\N	277	286
2031	Maternity	https://www.tvdirect.tv/mom-baby/maternity	2027	284	285
2032	Price Less Than 1000 baht	https://www.tvdirect.tv/price-less-than-699-baht	\N	287	288
2033	installment	https://www.tvdirect.tv/installment-74	\N	289	290
\.


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('categories_id_seq', 2033, true);


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: user
--

COPY products (id, name, url, price, sku, created_at, updated_at) FROM stdin;
5736	KONION AIR COOLER พัดลมไอเย็น ขนาด 11 ลิตร รุ่น GF-3002	https://www.tvdirect.tv/konion-air-cooler-11-gf-3002	1990	0112300208434	2016-12-18 16:46:04.370163	2016-12-18 16:46:04.370163
5737	KONION AIR FRYER หม้อทอดไร้น้ำมัน 2 ลิตร สีดำ	https://www.tvdirect.tv/konion-air-fryer-2	3990	0112300208380	2016-12-18 16:46:05.676895	2016-12-18 16:46:05.676895
5738	KONION RICE COOKER หม้อหุงข้าวดิจิตอล GR-1183 สีขาว	https://www.tvdirect.tv/konion-rice-cooker-gr-1183	1990	0112300208397	2016-12-18 16:46:06.83734	2016-12-18 16:46:06.83734
5739	KONION WASHING MACHINE เครื่องซักผ้า 11 KG รุ่น XPB110-333SUV สีขาว	https://www.tvdirect.tv/konion-washing-machine-11-kg-xpb110-333suv	4590	0112300208410	2016-12-18 16:46:08.179927	2016-12-18 16:46:08.179927
5740	KONION WASHING MACHINE เครื่องซักผ้า 13 KG รุ่น XPB113-355SUV  สีขาว	https://www.tvdirect.tv/konion-washing-machine-13-kg-xpb113-355suv	5590	0112300208427	2016-12-18 16:46:09.004647	2016-12-18 16:46:09.004647
5741	KONION WASHING MACHINE เครื่องซักผ้า 9 KG รุ่น XPB90-344SUV สีขาว	https://www.tvdirect.tv/konion-washing-machine-9-kg-xpb90-344suv	3590	0112300208403	2016-12-18 16:46:09.803888	2016-12-18 16:46:09.803888
5742	KONION เครื่องซักผ้า MINI ฝาบน 3.0 KG สีน้ำเงิน	https://www.tvdirect.tv/konion-mini-3-0-kg-3308	1990	0112300208359	2016-12-18 16:46:10.702902	2016-12-18 16:46:10.702902
5743	KONION เครื่องซักผ้า MINI ฝาบน 3.0 KG สีม่วง	https://www.tvdirect.tv/konion-mini-3-0-kg	1990	0112300208342	2016-12-18 16:46:11.5173	2016-12-18 16:46:11.5173
5744	KONION เครื่องซักผ้า MINI ฝาบน 3.5 KG สีชมพู	https://www.tvdirect.tv/konion-mini-3-5-kg-pink	2290	0112300208373	2016-12-18 16:46:12.316813	2016-12-18 16:46:12.316813
5745	KONION เครื่องซักผ้า MINI ฝาบน 3.5 KG สีเขียว	https://www.tvdirect.tv/konion-mini-3-5-kg-green	2290	0112300208366	2016-12-18 16:46:13.166768	2016-12-18 16:46:13.166768
5746	ORBIT AIR FRYER หม้อทอดไร้น้ำมัน CICADA 3.2 ลิตร	https://www.tvdirect.tv/orbit-air-fryer-cicada-3-2	4950	0112400224473	2016-12-18 16:46:13.986901	2016-12-18 16:46:13.986901
5747	ORBIT BLENDER เครื่องปั่น รุ่น BL-949M	https://www.tvdirect.tv/orbit-blender-bl-949m	1300	0112400224480	2016-12-18 16:46:14.787473	2016-12-18 16:46:14.787473
5748	ORBIT SANDWICH MAKER เครื่องทำแซนด์วิช รุ่น TAKARA	https://www.tvdirect.tv/orbit-sandwich-maker-takara	850	0112400224497	2016-12-18 16:46:15.696386	2016-12-18 16:46:15.696386
5749	Orbit กาต้มน้ำไฟฟ้า รุ่น KET-8015	https://www.tvdirect.tv/orbit-ket-8015	700	0112400222028	2016-12-18 16:46:16.51898	2016-12-18 16:46:16.51898
5750	Orbit เครื่องชงกาแฟ รุ่น CM-3021	https://www.tvdirect.tv/orbit-cm-3021	850	0112400222035	2016-12-18 16:46:17.283955	2016-12-18 16:46:17.283955
5751	Orbit เครื่องบดสับอาหาร รุ่น EASY CHOP II	https://www.tvdirect.tv/orbit-easy-chop-ii	1500	0112400222066	2016-12-18 16:46:18.095215	2016-12-18 16:46:18.095215
5752	Orbit เครื่องปั่น รุ่น BL-990M	https://www.tvdirect.tv/orbit-bl-990m	1500	0112400222080	2016-12-18 16:46:18.887541	2016-12-18 16:46:18.887541
5753	Orbit เครื่องปิ้งขนมปัง รุ่น Titus	https://www.tvdirect.tv/orbit-titus	700	0112400222059	2016-12-18 16:46:19.701204	2016-12-18 16:46:19.701204
5754	Orbit เครื่องสกัดน้ำผลไม้ รุ่น COLOMBIA	https://www.tvdirect.tv/orbit-coloumbia	2500	0112400222073	2016-12-18 16:46:20.464199	2016-12-18 16:46:20.464199
5755	Orbit เครื่องอบ พร้อมปิ้งย่าง รุ่น NEO	https://www.tvdirect.tv/orbit-neo	3500	0112400222097	2016-12-18 16:46:21.255585	2016-12-18 16:46:21.255585
5756	 hotpot เป็น set ราคาถูก	https://www.tvdirect.tv/hotpot-set	990	hotpot	2016-12-18 16:46:22.785696	2016-12-18 16:46:22.785696
5757	 Master knife แถมฟรี knife Block	https://www.tvdirect.tv/master-knife-knife-block	1290	Masterknife	2016-12-18 16:46:23.663888	2016-12-18 16:46:23.663888
5758	2 SYSTEM SPIN MOP ม็อบหมุนสองระบบ	https://www.tvdirect.tv/2-system-spin-mop	990	0122300601616	2016-12-18 16:46:24.442025	2016-12-18 16:46:24.442025
5759	ACCORD AC 24-60HP พัดลมอุตสาหกรรม 24 นิ้ว	https://www.tvdirect.tv/accord-ac-24-60hp-24	2870	0112300207756	2016-12-18 16:46:25.797673	2016-12-18 16:46:25.797673
5760	ACCORD AC-1383 เครื่องดูดฝุ่น/ดูดน้ำ/เป่าลมสแตนเลส	https://www.tvdirect.tv/accord-ac-1383	5625	0112300207787	2016-12-18 16:46:26.628383	2016-12-18 16:46:26.628383
5761	ACCORD AC-1661 BLUE พัดลมตั้งโต๊ะ 16 นิ้ว ฟ้า	https://www.tvdirect.tv/accord-ac-1661-blue-16	600	0112300207642	2016-12-18 16:46:27.411168	2016-12-18 16:46:27.411168
5762	ACCORD AC-1661 GREEN พัดลมตั้งโต๊ะ 16 นิ้ว เขียว	https://www.tvdirect.tv/accord-ac-1661-green-16	600	0112300207659	2016-12-18 16:46:28.277193	2016-12-18 16:46:28.277193
5763	ACCORD AC-1661 RED พัดลมตั้งโต๊ะ 16 นิ้ว แดง	https://www.tvdirect.tv/accord-ac-1661-red-16	600	0112300207635	2016-12-18 16:46:29.069481	2016-12-18 16:46:29.069481
5764	ACCORD AC-18 HCT BLUE พัดลมอุตสาหกรรม 18 นิ้ว ฟ้า	https://www.tvdirect.tv/accord-ac-18-hct-blue-18	1190	0112300207732	2016-12-18 16:46:29.796232	2016-12-18 16:46:29.796232
5765	ACCORD AC-18 HCT GREEN พัดลมอุตสาหกรรม 18 นิ้ว	https://www.tvdirect.tv/accord-ac-18-hct-green-18	1190	0112300207749	2016-12-18 16:46:30.635446	2016-12-18 16:46:30.635446
5766	ACCORD AC-1881 GREEN พัดลมตั้งโต๊ะ 18 นิ้ว เขียว	https://www.tvdirect.tv/accord-ac-1881-green-18	790	0112300207718	2016-12-18 16:46:31.419281	2016-12-18 16:46:31.419281
5767	ACCORD AC-1881 ORANGE พัดลมตั้งโต๊ะ 18 นิ้ว ส้ม	https://www.tvdirect.tv/accord-ac-1881-orange-18	790	0112300207725	2016-12-18 16:46:32.181133	2016-12-18 16:46:32.181133
5768	ACCORD AC-25S กระติกน้ำร้อนไฟฟ้า	https://www.tvdirect.tv/accord-ac-25s	690	0112400223634	2016-12-18 16:46:32.88846	2016-12-18 16:46:32.88846
5769	ACCORD AC-4411 เครื่องคั้นแยกกาก	https://www.tvdirect.tv/accord-ac-4411	780	0112400223603	2016-12-18 16:46:33.706451	2016-12-18 16:46:33.706451
5770	ACCORD AC-4422 เครื่องคั้นแยกกาก	https://www.tvdirect.tv/accord-ac-4422	1500	0112400223610	2016-12-18 16:46:34.502079	2016-12-18 16:46:34.502079
5771	ACCORD AC-523 หม้ออบไอร้อน	https://www.tvdirect.tv/accord-ac-523	2000	0112400223627	2016-12-18 16:46:35.285245	2016-12-18 16:46:35.285245
5772	ACCORD AC-525 เครื่องดูดฝุ่น/ดูดน้ำ/เป่าลม 30 ลิตร	https://www.tvdirect.tv/accord-ac-525-30	2250	0112300207763	2016-12-18 16:46:36.043443	2016-12-18 16:46:36.043443
5773	ACCORD AC-626 เครื่องดูดฝุ่น/ดูดน้ำ/เป่าลม สแตนเลส	https://www.tvdirect.tv/accord-ac-626	3125	0112300207770	2016-12-18 16:46:36.862273	2016-12-18 16:46:36.862273
5774	ACCORD AC-999 เตาแก๊สอินฟาเรด	https://www.tvdirect.tv/accord-ac-999	1180	0112400223599	2016-12-18 16:46:37.643967	2016-12-18 16:46:37.643967
5775	ACCORD DESIGN GREEN พัดลมตั้งพื้น 16 นิ้ว เขียว	https://www.tvdirect.tv/accord-design-green-16	930	0112300207680	2016-12-18 16:46:38.422331	2016-12-18 16:46:38.422331
5776	ACCORD DESIGN ORANGE พัดลมตั้งพื้น 16 นิ้ว ส้ม	https://www.tvdirect.tv/accord-design-orange-16	930	0112300207666	2016-12-18 16:46:39.856661	2016-12-18 16:46:39.856661
5777	ACCORD DESIGN PURPLE พัดลมตั้งพื้น 16 นิ้ว ม่วง	https://www.tvdirect.tv/accord-design-purple-16	930	0112300207673	2016-12-18 16:46:40.64644	2016-12-18 16:46:40.64644
5778	ACCORD DT-78 TURBO GREEN พัดลม 7 นิ้ว เขียว	https://www.tvdirect.tv/accord-dt-78-turbo-green-7	220	0112300207604	2016-12-18 16:46:41.390181	2016-12-18 16:46:41.390181
5779	ACCORD DT-78 TURBO PINK พัดลม 7 นิ้ว ชมพู	https://www.tvdirect.tv/accord-dt-78-turbo-pink-7	220	0112300207576	2016-12-18 16:46:42.216954	2016-12-18 16:46:42.216954
5780	ACCORD DT-78 TURBO PURPLE พัดลม 7 นิ้ว ม่วง	https://www.tvdirect.tv/accord-dt-78-turbo-purple-7	220	0112300207590	2016-12-18 16:46:43.013664	2016-12-18 16:46:43.013664
5781	ACCORD DT-78 TURBO YELLOW พัดลม 7 นิ้ว เหลือง	https://www.tvdirect.tv/accord-dt-78-turbo-yellow-7	220	0112300207583	2016-12-18 16:46:43.716797	2016-12-18 16:46:43.716797
5782	ACCORD JET-10 BLUE พัดลมตั้งโต๊ะ 10 นิ้ว ฟ้า	https://www.tvdirect.tv/accord-jet-10-blue-10	270	0112300207611	2016-12-18 16:46:44.467295	2016-12-18 16:46:44.467295
5783	ACCORD JET-10 PINK พัดลมตั้งโต๊ะ 10 นิ้ว ชมพู	https://www.tvdirect.tv/accord-jet-10-pink-10	270	0112300207628	2016-12-18 16:46:45.291987	2016-12-18 16:46:45.291987
5784	ACCORD JYRO AIR AC-929 พัดลมตั้งโต๊ะ	https://www.tvdirect.tv/accord-jyro-air-ac-929	1270	0112300207697	2016-12-18 16:46:46.085863	2016-12-18 16:46:46.085863
5785	Airmax Pillow แอร์แม็กซ์ หมอนเพื่อสุขภาพ 	https://www.tvdirect.tv/airmax-pillow	1990	0121200300445	2016-12-18 16:46:46.832213	2016-12-18 16:46:46.832213
5786	ANITECH HEAVY DUTY POWER 4WAY 5M รางปลั๊กไฟ H804	https://www.tvdirect.tv/anitech-heavy-duty-power-4way-5m-h804	420	0112500203338	2016-12-18 16:46:47.784086	2016-12-18 16:46:47.784086
5787	ANITECH HEAVY DUTY POWER 5WAY 5M รางปลั๊กไฟ H805	https://www.tvdirect.tv/anitech-heavy-duty-power-5way-5m-h805	440	0112500203345	2016-12-18 16:46:48.67723	2016-12-18 16:46:48.67723
5788	ANITECH PLUG 3WAY 3M 2USB BLUE รางปลั๊กไฟสีน้ำเงิน H523	https://www.tvdirect.tv/anitech-plug-3way-3m-2usb-h523-blue	369	0112500203246	2016-12-18 16:46:49.468988	2016-12-18 16:46:49.468988
5789	ANITECH PLUG 3WAY 3M 2USB GREEN รางปลั๊กไฟสีเขียว H523	https://www.tvdirect.tv/anitech-plug-3way-3m-2usb-h523-green	369	0112500203239	2016-12-18 16:46:50.243893	2016-12-18 16:46:50.243893
5790	ANITECH PLUG 4WAY 3M 2USB BLUE รางปลั๊กไฟสีฟ้า H564	https://www.tvdirect.tv/anitech-plug-4way-3m-2usb-h564-blue	499	0112500203291	2016-12-18 16:46:51.01488	2016-12-18 16:46:51.01488
5791	ANITECH PLUG 4WAY 3M 2USB BROWN รางปลั๊กไฟสีน้ำตาล H564	https://www.tvdirect.tv/anitech-plug-4way-3m-2usb-h564-brown	499	0112500203284	2016-12-18 16:46:51.873281	2016-12-18 16:46:51.873281
5792	ANITECH PLUG 4WAY 3M 2USB GREY รางปลั๊กไฟสีเทา H564	https://www.tvdirect.tv/anitech-plug-4way-3m-2usb-h564-grey	499	0112500203277	2016-12-18 16:46:52.632839	2016-12-18 16:46:52.632839
5793	ANITECH PLUG 4WAY 3M 2USB PINK รางปลั๊กไฟสีชมพู H564	https://www.tvdirect.tv/anitech-plug-4way-3m-2usb-h564-pink	499	0112500203260	2016-12-18 16:46:53.418005	2016-12-18 16:46:53.418005
5794	ANITECH PLUG 4WAYS 3M 2USB BLACK รางปลั๊กไฟสีดำ H584	https://www.tvdirect.tv/anitech-plug-4ways-3m-2usb-h584-black	450	0112500203307	2016-12-18 16:46:54.18559	2016-12-18 16:46:54.18559
5795	ANITECH PLUG 4WAYS 3M 2USB WHITE รางปลั๊กไฟสีขาว H584	https://www.tvdirect.tv/anitech-plug-4ways-3m-2usb-h584-white	450	0112500203314	2016-12-18 16:46:54.996239	2016-12-18 16:46:54.996239
5796	ANITECH PLUG BLUE ปลั๊กไฟแบบพกพา สีฟ้า H113	https://www.tvdirect.tv/anitech-plug-h113-blue	330	0112500203116	2016-12-18 16:46:56.556701	2016-12-18 16:46:56.556701
5797	ANITECH PLUG GREY ปลั๊กไฟแบบพกพา สีเทา H113	https://www.tvdirect.tv/anitech-plug-h113-grey	330	0112500203093	2016-12-18 16:46:57.331494	2016-12-18 16:46:57.331494
5798	ANITECH PLUG PINK ปลั๊กไฟแบบพกพา สีชมพู H113	https://www.tvdirect.tv/anitech-plug-h113-pink	330	0112500203109	2016-12-18 16:46:58.172696	2016-12-18 16:46:58.172696
5799	ANITECH PLUG UNIVERSAL BLACK ปลั๊ก สีดำ H114	https://www.tvdirect.tv/anitech-plug-universal-h114-black	435	0112500203123	2016-12-18 16:46:59.010199	2016-12-18 16:46:59.010199
5800	ANITECH PLUG UNIVERSAL WHITE ปลั๊ก สีขาว H114	https://www.tvdirect.tv/anitech-plug-universal-h114-white	435	0112500203130	2016-12-18 16:46:59.92298	2016-12-18 16:46:59.92298
5801	ANITECH PLUG ปลั๊กพ่วงแบบพกพา H102	https://www.tvdirect.tv/anitech-plug-h102	389	0112500203086	2016-12-18 16:47:00.844733	2016-12-18 16:47:00.844733
5802	ANITECH POWER STRIP 4 WAYS 5M รางปลั๊กไฟ H404	https://www.tvdirect.tv/anitech-power-strip-4-ways-5m-h404	379	0112500203161	2016-12-18 16:47:01.684101	2016-12-18 16:47:01.684101
5803	ANITECH POWER STRIP 4WAY 3M 2USB รางปลั๊กไฟ H524	https://www.tvdirect.tv/anitech-power-strip-4way-3m-2usb-h524	380	0112500203253	2016-12-18 16:47:02.48069	2016-12-18 16:47:02.48069
5804	ANITECH POWER STRIP 4WAY3M BLUE รางปลั๊กไฟสีฟ้า H304	https://www.tvdirect.tv/anitech-power-strip-4way3m-h304-blue	280	0112500203185	2016-12-18 16:47:03.249725	2016-12-18 16:47:03.249725
5805	ANITECH POWER STRIP 4WAY3M BROWN รางปลั๊กไฟสีน้ำตาล H304	https://www.tvdirect.tv/anitech-power-strip-4way3m-h304-brown	280	0112500203192	2016-12-18 16:47:04.106848	2016-12-18 16:47:04.106848
5806	ANITECH POWER STRIP 4WAY3M GREEN รางปลั๊กไฟสีเขียว H304	https://www.tvdirect.tv/anitech-power-strip-4way3m-h304-green	280	0112500203178	2016-12-18 16:47:04.984495	2016-12-18 16:47:04.984495
5807	ANITECH POWER STRIP 4WAY3M PINK รางปลั๊กไฟสีชมพู H304	https://www.tvdirect.tv/anitech-power-strip-4way3m-h304-pink	280	0112500203208	2016-12-18 16:47:05.766129	2016-12-18 16:47:05.766129
5808	ANITECH POWER STRIP 4WAY3M WHITE รางปลั๊กไฟสีขาว H304	https://www.tvdirect.tv/anitech-power-strip-4way3m-h304-white	280	0112500203215	2016-12-18 16:47:06.619359	2016-12-18 16:47:06.619359
5809	ANITECH POWER STRIP 6 WAYS 3M รางปลั๊กไฟ H306	https://www.tvdirect.tv/anitech-power-strip-6-ways-3m-h306	330	0112500203154	2016-12-18 16:47:07.345985	2016-12-18 16:47:07.345985
5810	ANITECH POWER STRIP 6 WAYS 5M รางปลั๊กไฟ H406	https://www.tvdirect.tv/anitech-power-strip-6-ways-5m-h406	399	0112500203222	2016-12-18 16:47:08.138265	2016-12-18 16:47:08.138265
5811	ANITECH POWER STRIP 6WAY 3M 2USB รางปลั๊กไฟ H596	https://www.tvdirect.tv/anitech-power-strip-6way-3m-2usb-h596	540	0112500203321	2016-12-18 16:47:09.098883	2016-12-18 16:47:09.098883
5812	AS ตู้เพลงแม่ไม้เพลงไทย รุ่น S-1	https://www.tvdirect.tv/s-1	1990	0111200301412	2016-12-18 16:47:09.986123	2016-12-18 16:47:09.986123
5813	AS ลูกทุ่งฮิต 1,000 ล้าน เครื่องเล่นเพลงแบบพกพา รุ่น AS-F1	https://www.tvdirect.tv/1-000-as-f1-1300-1976	1690	0111200301463	2016-12-18 16:47:10.816937	2016-12-18 16:47:10.816937
5814	AS วิทยุธรรมะ เครื่องเล่นเพลงแบบพกพา รุ่น AS-F5	https://www.tvdirect.tv/as-f5	2490	0111200301399	2016-12-18 16:47:11.598202	2016-12-18 16:47:11.598202
6116	Smart Home เตาบาร์บีคิว BBQ	https://www.tvdirect.tv/smart-home-bbq	630	0112400221458	2016-12-18 16:51:51.272657	2016-12-18 16:51:51.272657
5815	AS เพลงดังวันวาน เครื่องเล่นเพลงแบบพกพา รุ่น AS-F9	https://www.tvdirect.tv/dra-as-as-f9	1690	0111200301382	2016-12-18 16:47:12.362135	2016-12-18 16:47:12.362135
5816	ASTONISH STAIN REMOVER แอสโทนิชผลิตภัณฑ์ขจัดคราบสกปรก	https://www.tvdirect.tv/astonish-stain-remover	420	0112300208533	2016-12-18 16:47:13.880203	2016-12-18 16:47:13.880203
5817	Autobot หุ่นยนต์ดูดฝุ่น รุ่น MINI T270RC พร้อมแท่นชาร์จ สีชมพู	https://www.tvdirect.tv/autobot-mini-t270rc-pink	3900	0112300204061	2016-12-18 16:47:14.667696	2016-12-18 16:47:14.667696
5818	Autobot หุ่นยนต์ดูดฝุ่น รุ่น MINI T270RC พร้อมแท่นชาร์จ สีฟ้า	https://www.tvdirect.tv/autobot-mini-t270rc-blue	3900	0112300204054	2016-12-18 16:47:15.434811	2016-12-18 16:47:15.434811
5819	Automatic Small Combined Rice Milling Grey เครื่องสีข้าวจิ๋วไฮเทค สีเทา	https://www.tvdirect.tv/automatic-small-combined-rice-milling-grey	19000	0112300206669	2016-12-18 16:47:16.316615	2016-12-18 16:47:16.316615
5820	BackJoy SleepSound Kid หมอนสุขภาพ สำหรับเด็ก	https://www.tvdirect.tv/backjoy-sleepsound-kid	2590	0120800200032	2016-12-18 16:47:17.110523	2016-12-18 16:47:17.110523
5821	BackJoy SleepSound หมอนสุขภาพ แบบเฟิร์ม	https://www.tvdirect.tv/backjoy-sleepsound	5990	0120800200025	2016-12-18 16:47:17.92008	2016-12-18 16:47:17.92008
5822	Balance Mop รุ่น BM-01G	https://www.tvdirect.tv/balance-mop-bm-01g	690	0112300300473	2016-12-18 16:47:19.781876	2016-12-18 16:47:19.781876
5823	BALZANO AIR FRYER BLACK หม้อทอดไฟฟ้าระบบดิจิตอล สีดำ	https://www.tvdirect.tv/balzano-air-fryer-black	3990	0112400224510	2016-12-18 16:47:20.603674	2016-12-18 16:47:20.603674
5824	Bauer Kitchen Guard Red อุปกรณ์ปัองกันน้ำมันกระเด็นสีรุ้ง สีแดง	https://www.tvdirect.tv/bauer-kitchen-guard-red	390	0122400601554	2016-12-18 16:47:21.378717	2016-12-18 16:47:21.378717
5825	BIOSTEIN CLEANER ชุดเซทครีมขัดเอนกประสงค์ พร้อมฟองน้ำ 2 ชิ้น	https://www.tvdirect.tv/biostein-cleaner-2	1290	0112300207569	2016-12-18 16:47:22.191353	2016-12-18 16:47:22.191353
5826	BLACK&DECKER ELECTRIC MOWERS รถตัดหญ้าไฟฟ้า	https://www.tvdirect.tv/black-decker-electric-mowers	5590	0111100200938	2016-12-18 16:47:23.013164	2016-12-18 16:47:23.013164
5827	BLACK&DECKER VACUUM CLEANER เครื่องดูดฝุ่น 2IN1	https://www.tvdirect.tv/black-decker-vacuum-cleaner-2in1	1390	0112300208663	2016-12-18 16:47:23.823366	2016-12-18 16:47:23.823366
5828	BLACK&DECKER ชุดไขควงอเนกประสงค์ รุ่น A7140-XJ	https://www.tvdirect.tv/black-decker-a7140-xj	259	0111100200945	2016-12-18 16:47:24.624296	2016-12-18 16:47:24.624296
5829	BLACK&DECKER เครื่องฉีดน้ำแรงดันสูงและไขควงไฟฟ้า	https://www.tvdirect.tv/black-decker	2990	0111100200891	2016-12-18 16:47:25.56008	2016-12-18 16:47:25.56008
5830	BLACK&DECKER เครื่องดูดฝุ่นแบบ 2 IN 1 รุ่น FV600	https://www.tvdirect.tv/black-decker-2-in-1-fv600	1990	0112300208670	2016-12-18 16:47:28.272474	2016-12-18 16:47:28.272474
5831	BLACK&DECKER เครื่องตัดเล็มพุ่มไม้ รุ่น GSL700	https://www.tvdirect.tv/black-decker-gsl700	2790	0111100200914	2016-12-18 16:47:29.416537	2016-12-18 16:47:29.416537
5832	BLACK&DECKER โต๊ะช่างอเนกประสงค์ รุ่น WM225	https://www.tvdirect.tv/black-decker-wm225	2990	0111100200907	2016-12-18 16:47:30.605488	2016-12-18 16:47:30.605488
5833	BWT BARRIER CARTRIDGE FILTERS ตลับไส้กรอง รุ่น STANDARD	https://www.tvdirect.tv/bwt-barrier-cartridge-filters-standard	350	0112300208649	2016-12-18 16:47:31.812681	2016-12-18 16:47:31.812681
5834	BWT BARRIER CARTRIDGE FILTERS ตลับไส้กรอง รุ่น ULTRA	https://www.tvdirect.tv/bwt-barrier-cartridge-filters-ultra	900	0112300208656	2016-12-18 16:47:33.022108	2016-12-18 16:47:33.022108
5835	BWT BARRIER WATER FILTER PITCHER BLACK เหยือกกรองน้ำพร้อมไส้กรอง รุ่นGRAND NEO สีดำ	https://www.tvdirect.tv/bwt-barrier-water-filter-pitcher-black-grand-neo	999	0112300208632	2016-12-18 16:47:34.21456	2016-12-18 16:47:34.21456
5836	BWT BARRIER WATER FILTER PITCHER BLACK เหยือกกรองน้ำพร้อมไส้กรอง รุ่นSMART สีดำ	https://www.tvdirect.tv/bwt-barrier-water-filter-pitcher-black-smart	1200	0112300208595	2016-12-18 16:47:35.736985	2016-12-18 16:47:35.736985
5837	BWT BARRIER WATER FILTER PITCHER BLUE เหยือกกรองน้ำพร้อมไส้กรอง รุ่นGRANDNEO สีน้ำเงิน	https://www.tvdirect.tv/bwt-barrier-water-filter-pitcher-blue-grandneo	999	0112300208625	2016-12-18 16:47:36.573654	2016-12-18 16:47:36.573654
5838	BWT BARRIER WATER FILTER PITCHER BLUE เหยือกกรองน้ำพร้อมไส้กรอง รุ่นSTYLE สีน้ำเงิน	https://www.tvdirect.tv/bwt-barrier-water-filter-pitcher-blue-style	959	0112300208571	2016-12-18 16:47:37.385499	2016-12-18 16:47:37.385499
5839	BWT BARRIER WATER FILTER PITCHER GREEN เหยือกกรองน้ำพร้อมไส้กรอง รุ่น STYLE สีเขียว	https://www.tvdirect.tv/bwt-barrier-water-filter-pitcher-green-style	959	0112300208557	2016-12-18 16:47:38.183852	2016-12-18 16:47:38.183852
5840	BWT BARRIER WATER FILTER PITCHER GREEN เหยือกกรองน้ำพร้อมไส้กรอง รุ่นSMART สีเขียว	https://www.tvdirect.tv/bwt-barrier-water-filter-pitcher-green-smart	1200	0112300208601	2016-12-18 16:47:38.946788	2016-12-18 16:47:38.946788
5841	BWT BARRIER WATER FILTER PITCHER ORANGE เหยือกกรองน้ำพร้อมไส้กรอง รุ่นSTYLE สีส้ม	https://www.tvdirect.tv/bwt-barrier-water-filter-pitcher-orange-style	959	0112300208564	2016-12-18 16:47:39.707262	2016-12-18 16:47:39.707262
5842	BWT BARRIER WATER FILTER PITCHER RED เหยือกกรองน้ำพร้อมไส้กรอง รุ่นGRAND NEO สีแดง	https://www.tvdirect.tv/bwt-barrier-water-filter-pitcher-red-grand-neo	999	0112300208618	2016-12-18 16:47:40.540229	2016-12-18 16:47:40.540229
5843	BWT Penguin 2.7L Mineral Water Jug Plus 1 Cartridg เหยือกกรองน้ำ 2.7ลิตร	https://www.tvdirect.tv/bwt-penguin-2-7l-mineral-water-jug-plus-1-cartridg-2-7	1650	BWTPenguin	2016-12-18 16:47:41.846875	2016-12-18 16:47:41.846875
5844	Camarcio เครื่องกำจัดไรฝุ่น VACUV 500 W-Green	https://www.tvdirect.tv/camarcio-vacuv-500-w-green	3990	0112300206874	2016-12-18 16:47:42.652302	2016-12-18 16:47:42.652302
5845	Camarcio เครื่องกำจัดไรฝุ่น VACUV 500 W-White	https://www.tvdirect.tv/camarcio-vacuv-500-w-whiee	3990	0112300206867	2016-12-18 16:47:43.411225	2016-12-18 16:47:43.411225
5846	Camarcio เครื่องทำน้ำอุ่น MNB 7000 G	https://www.tvdirect.tv/camarcio-mnb-7000-g	7990	0112300206850	2016-12-18 16:47:44.178666	2016-12-18 16:47:44.178666
5847	Camarcio เครื่องทำน้ำอุ่น MNT 4500 W	https://www.tvdirect.tv/camarcio-mnt-4500-w	3690	0112300206843	2016-12-18 16:47:44.949687	2016-12-18 16:47:44.949687
5848	Camarcioเครื่องกำจัดไรฝุ่นVACUV 500 W-Pink	https://www.tvdirect.tv/camarcio-vacuv-500-w-pink	3990	0112300206881	2016-12-18 16:47:45.822018	2016-12-18 16:47:45.822018
5849	CASIKO เครื่องทำขนมไข่ CK-5002	https://www.tvdirect.tv/casiko-ck-5002-2460	639	0112400223755	2016-12-18 16:47:46.672125	2016-12-18 16:47:46.672125
5850	CASIKO เครื่องทำขนมไทยากิรูปปลา CK-5009	https://www.tvdirect.tv/casiko-ck-5009	950	0112400223724	2016-12-18 16:47:47.463912	2016-12-18 16:47:47.463912
5851	CASIKO เครื่องทำคัพเค้ก CK-5006	https://www.tvdirect.tv/casiko-ck-5006	950	0112400223748	2016-12-18 16:47:48.235877	2016-12-18 16:47:48.235877
5852	CASIKO เครื่องทำวาฟเฟิลไส้กรอก CK-5008	https://www.tvdirect.tv/casiko-ck-5008	950	0112400223717	2016-12-18 16:47:49.007205	2016-12-18 16:47:49.007205
5853	CASIKO ไดร์เป่าผม CK-3210	https://www.tvdirect.tv/casiko-ck-3210	690	0110700209484	2016-12-18 16:47:49.783739	2016-12-18 16:47:49.783739
5854	Ceramicore Set 3 Sartenes Ceramica กระทะเซรามิก 3 ชิ้น	https://www.tvdirect.tv/ceramicore-set-3-sartenes-ceramica-3	2990	0122400600762	2016-12-18 16:47:50.652378	2016-12-18 16:47:50.652378
5855	Chandee wire shelving ชั้นวางอเนกประสงค์ชั้นดี WR90-1 EP แถมฟรี ราวคู่ชั้นดีรุ่น 952E สีเทา 	https://www.tvdirect.tv/chandee-wire-shelving-wr90-1-ep-952e	2900	WR901EP	2016-12-18 16:47:51.458402	2016-12-18 16:47:51.458402
5856	CHEFRUN PAN SET5 ชุดกระทะเชฟรัน	https://www.tvdirect.tv/chefrun-pan-set5	1990	0122400500147	2016-12-18 16:47:52.921873	2016-12-18 16:47:52.921873
5857	Clip Pac Organic 18 PCS S18-18 ชุดกล่องถนอมอาหารออแกนิค 18 ชิ้น	https://www.tvdirect.tv/clip-pac-organic-18-pcs-s18-18-18	1290	0112400301042	2016-12-18 16:47:53.656981	2016-12-18 16:47:53.656981
5858	COOCAN CHOCOLATE PAN SET 8 PCS ชุดเครื่องครัว 8 ชิ้น	https://www.tvdirect.tv/coocan-chocolate-pan-set-8-pcs-8	2390	0112400224411	2016-12-18 16:47:54.41945	2016-12-18 16:47:54.41945
5859	COPPERCHEF กระทะเคลือบผงเซรามิก เซ็ท 5 ชิ้น	https://www.tvdirect.tv/copper-chef-set-of-5-pcs-5	1990	0122400601514	2016-12-18 16:47:55.206965	2016-12-18 16:47:55.206965
5860	Crane Humidifier เครื่องทำความชื้น TRAVEL	https://www.tvdirect.tv/humidifiers-travel	1490	0122300601715	2016-12-18 16:47:55.9795	2016-12-18 16:47:55.9795
5861	DAHLE Document shredder เครื่องทำลายเอกสารขนาดเล็ก 22016	https://www.tvdirect.tv/dahle-document-shredder-22016	1500	0113000200438	2016-12-18 16:47:56.777929	2016-12-18 16:47:56.777929
5862	DR.ATO FABRIC SOFTENER 1800 ML.น้ำยาปรับผ้านุ่ม 1800 มล.	https://www.tvdirect.tv/dr-ato-fabric-softener-1800-ml-1800	520	0112600200596	2016-12-18 16:47:57.543247	2016-12-18 16:47:57.543247
5863	DR.ATO LAUNDRY DETERGENT 1800 ML น้ำยาซักผ้า 1800 มล.	https://www.tvdirect.tv/dr-ato-laundry-detergent-1800-ml-1800	550	0112600200589	2016-12-18 16:47:58.324876	2016-12-18 16:47:58.324876
5864	DREAMLEAF ANTPAD BLACK แผ่นรองกันมด สีดำ	https://www.tvdirect.tv/dreamleaf-antpad-black	250	0112300208458	2016-12-18 16:47:59.070583	2016-12-18 16:47:59.070583
5865	DREAMLEAF ANTPAD BLUE แผ่นรองกันมด สีฟ้า	https://www.tvdirect.tv/dreamleaf-antpad-blue	250	0112300208465	2016-12-18 16:47:59.793925	2016-12-18 16:47:59.793925
5866	DREAMLEAF ANTPAD PINK แผ่นรองกันมด สีชมพู	https://www.tvdirect.tv/dreamleaf-antpad-pink	250	0112300208489	2016-12-18 16:48:00.657461	2016-12-18 16:48:00.657461
5867	DREAMLEAF ANTPAD YELLOW แผ่นรองกันมด สีเหลือง	https://www.tvdirect.tv/dreamleaf-antpad-yellow	250	0112300208472	2016-12-18 16:48:01.419227	2016-12-18 16:48:01.419227
5868	DUALSAW CS450 เลื่อยไฟฟ้าใบมีดคู่  แถมฟรี SNAP'N GRIPประแจอเนกประสงค์	https://www.tvdirect.tv/dualsaw-cs450	5990	DualsawSnap	2016-12-18 16:48:02.366658	2016-12-18 16:48:02.366658
5869	EASY BRUNCH อีซี่บรันช์ อุปกรณ์ทำอาหารสาระพัดเมนู	https://www.tvdirect.tv/easy-brunch	990	0122400500161	2016-12-18 16:48:03.106776	2016-12-18 16:48:03.106776
5870	Easy Express Cooker อุปกรณ์ประกอบอาหารขนาดเล็ก	https://www.tvdirect.tv/easy-express-cooker	590	0122400600892	2016-12-18 16:48:03.882099	2016-12-18 16:48:03.882099
5871	ECO Steam Extreme ม็อบระบบไอน้ำ	https://www.tvdirect.tv/eco-steam-extreme	1290	0121300300796	2016-12-18 16:48:04.660098	2016-12-18 16:48:04.660098
5872	ECOVACS CLEANING ROBOT หุ่นยนต์เช็ดกระจก	https://www.tvdirect.tv/ecovacs-cleaning-robot	20500	0112300208335	2016-12-18 16:48:05.538311	2016-12-18 16:48:05.538311
5873	Family เครื่องเล่นดีวีดีและลำโพง Family D-447 สีชมพู	https://www.tvdirect.tv/family-d-447-pink	990	0111200201279	2016-12-18 16:48:06.274295	2016-12-18 16:48:06.274295
5874	Family เครื่องเล่นดีวีดีและลำโพง Family D-447 สีฟ้า	https://www.tvdirect.tv/family-d-447-blue	990	0111200201293	2016-12-18 16:48:07.068664	2016-12-18 16:48:07.068664
5875	Family เครื่องเล่นดีวีดีและลำโพง Family D-447 สีม่วง	https://www.tvdirect.tv/family-d-447-purple	990	0111200201286	2016-12-18 16:48:07.860128	2016-12-18 16:48:07.860128
5876	Family เครื่องเล่นดีวีดีและลำโพง Family D-447 สีแดง	https://www.tvdirect.tv/family-d-447-red	990	0111200201309	2016-12-18 16:48:09.288582	2016-12-18 16:48:09.288582
5877	Flavor Stone Red กระทะเคลือบหินสีแดง	https://www.tvdirect.tv/flavor-stone-red	3990	0122400601240	2016-12-18 16:48:10.046238	2016-12-18 16:48:10.046238
5878	FLYMOP SPIN MOP AIRSHIP 1 ชุดถังปั่นไม้ม็อบสแตนเลส รุ่น AIRSHIP 1 สีแดง	https://www.tvdirect.tv/flymop-spin-mop-airship-1-airship-1	1290	0122300601777	2016-12-18 16:48:10.794344	2016-12-18 16:48:10.794344
5879	Fruit Factory Rainbow อุปกรณ์ตัดแต่งผลไม้ สีรุ้ง	https://www.tvdirect.tv/fruit-factory-rainbow	690	0122400601523	2016-12-18 16:48:11.543683	2016-12-18 16:48:11.543683
5880	GINI LUMBER CHAIR  2 free 1	https://www.tvdirect.tv/gini-chair-2-free-1	9980	GiniChair	2016-12-18 16:48:12.316539	2016-12-18 16:48:12.316539
5881	Gleener อุปกรณ์ตัดขุยผ้า	https://www.tvdirect.tv/gleener	1290	0122300601364	2016-12-18 16:48:13.092432	2016-12-18 16:48:13.092432
5882	Greenworks 24V Cordless Chain Saw เลื่อยไฟฟ้า+ชุดแบต	https://www.tvdirect.tv/greenworks-24v-cordless-chain-saw	8200	0112200200141	2016-12-18 16:48:13.851325	2016-12-18 16:48:13.851325
5883	Greenworks 24V Cordless Line Trimmer เครื่องเล็มหญ้าไร้สาย+ชุดแบต	https://www.tvdirect.tv/greenworks-24v-cordless-line-trimmer	6900	0112200200134	2016-12-18 16:48:14.604746	2016-12-18 16:48:14.604746
5884	Greenworks 24V Cordless Set เครื่องเล็มหญ้าไร้สาย+เลื่อยไฟฟ้า+ชุดแบต	https://www.tvdirect.tv/greenworks-24v-cordless-set	9900	0112200200127	2016-12-18 16:48:15.41004	2016-12-18 16:48:15.41004
5885	Grip X Pert Plus ประแจเอนกประสงค์เพิ่มพลัง 1 แถม 1	https://www.tvdirect.tv/grip-x-pert-plus-1-1	1490	GripXPertPlus	2016-12-18 16:48:16.410062	2016-12-18 16:48:16.410062
5886	HANABISHI Electric Grill BBQ เตาบาร์บีคิว HSG-5701	https://www.tvdirect.tv/hanabishi-electric-grill-bbq-hsg-5701	1590	0112400224282	2016-12-18 16:48:17.283487	2016-12-18 16:48:17.283487
5887	HANABISHI Electric Grill เตาปิ้งย่าง HSG-90T S1 สีดำ	https://www.tvdirect.tv/hanabishi-electric-grill-hsg-90t-s1	1790	0112400224329	2016-12-18 16:48:18.061827	2016-12-18 16:48:18.061827
5888	HANABISHI Electric Pans กระทะไฟฟ้า HEP-10 สีชมพู ลายดอกไม้	https://www.tvdirect.tv/hanabishi-electric-pans-hep-10	499	0112400223179	2016-12-18 16:48:18.920465	2016-12-18 16:48:18.920465
5889	HANABISHI Halogen Oven Cookers หม้ออบลมร้อน HCO-11A ขาว	https://www.tvdirect.tv/hanabishi-halogen-oven-cookers-hco-11a-white	1490	0112400224305	2016-12-18 16:48:19.748655	2016-12-18 16:48:19.748655
5890	HANABISHI Halogen Oven Cookers หม้ออบลมร้อน HCO-11A แดง	https://www.tvdirect.tv/hanabishi-halogen-oven-cookers-hco-11a-red	1490	0112400224299	2016-12-18 16:48:20.628335	2016-12-18 16:48:20.628335
5891	HANABISHI Stew Cooker หม้อตุ๋น HSC-235	https://www.tvdirect.tv/hanabishi-stew-cooker-hsc-235	599	0112400224312	2016-12-18 16:48:21.397979	2016-12-18 16:48:21.397979
5892	HANABISHI กระทะไฟฟ้า 16SG+เครื่องปั่น508G	https://www.tvdirect.tv/hanabishi-16sg-508g	1290	0112400222813	2016-12-18 16:48:22.207073	2016-12-18 16:48:22.207073
5893	HANABISHI พัดลม HFA-816D Blue - ฟ้า	https://www.tvdirect.tv/hanabishi-hfa-816d-blue	699	0112300207178	2016-12-18 16:48:23.025052	2016-12-18 16:48:23.025052
5894	HANABISHI พัดลม HFA-816D Orange - ส้ม	https://www.tvdirect.tv/hanabishi-hfa-816d-orange	699	0112300207185	2016-12-18 16:48:23.838274	2016-12-18 16:48:23.838274
5895	HANABISHI พัดลม HFA-816D Pink - ชมพู	https://www.tvdirect.tv/hanabishi-hfa-816d-pink	699	0112300207192	2016-12-18 16:48:24.677228	2016-12-18 16:48:24.677228
5896	HANABISHI พัดลม TF-1810 Green - เขียว	https://www.tvdirect.tv/hanabishi-tf-1810-green	1190	0112300207215	2016-12-18 16:48:26.167	2016-12-18 16:48:26.167
5897	HANABISHI พัดลม TF-1810 Pink - ชมพู	https://www.tvdirect.tv/hanabishi-tf-1810-pink	1190	0112300207208	2016-12-18 16:48:26.946422	2016-12-18 16:48:26.946422
5898	HANABISHI พัดลมอุตสาหกรรม WH-F600	https://www.tvdirect.tv/hanabishi-wh-f600	2430	0112300207222	2016-12-18 16:48:27.802914	2016-12-18 16:48:27.802914
5899	HANABISHI เตาอินฟาเรด HIF-238	https://www.tvdirect.tv/hanabishi-hif-238	1690	0112400222745	2016-12-18 16:48:28.595698	2016-12-18 16:48:28.595698
5900	HANABISHI เตาแก๊สหัวคู่ RY-145	https://www.tvdirect.tv/hanabishi-ry-145	759	0112400222769	2016-12-18 16:48:29.403117	2016-12-18 16:48:29.403117
5901	HANABISHI เตาแก๊สหัวเดี่ยว RY-144	https://www.tvdirect.tv/hanabishi-ry-144	499	0112400222752	2016-12-18 16:48:30.248164	2016-12-18 16:48:30.248164
5902	HAPPYCALL DOUBLE PAN DIAMOND JUMBO GRILL ชุดหม้อ&กระทะ 2 ด้านแฮปปี้คอล	https://www.tvdirect.tv/happycall-double-pan-diamond-jumbo-grill-2	2590	0112400224343	2016-12-18 16:48:31.134976	2016-12-18 16:48:31.134976
5903	Hara Chair Doctor 2 ฮาร่าแชร์ รุ่น ด็อกเตอร์ 2 สีดำ	https://www.tvdirect.tv/jsu-hara-chair-docotr-2-black	19800	0110900201053	2016-12-18 16:48:32.068748	2016-12-18 16:48:32.068748
5904	Hara Chair Neo Black ฮาร่าแชร์ รุ่นนีโอ สีดำ	https://www.tvdirect.tv/hara-chair-neo-black	9800	0112900400016	2016-12-18 16:48:32.857564	2016-12-18 16:48:32.857564
5905	Hara Chair Neo Grey ฮาร่าแชร์ รุ่นนีโอ สีเทา	https://www.tvdirect.tv/hara-chair-neo-grey	9800	0110900200926	2016-12-18 16:48:33.71155	2016-12-18 16:48:33.71155
5906	Hara Chair Neo Orange ฮาร่าแชร์ รุ่นนีโอ สีส้ม	https://www.tvdirect.tv/hara-chair-neo-orange	9800	0110900200919	2016-12-18 16:48:34.497533	2016-12-18 16:48:34.497533
5907	Hara Chair Nietzshce 2 ฮาร่าแชร์ รุ่น นิชเช่ 2 สีส้ม	https://www.tvdirect.tv/jsu-hara-chair-nietzsche-2-2-orange	19800	0110900201046	2016-12-18 16:48:35.336558	2016-12-18 16:48:35.336558
5908	Hara Chair Nietzshce 2 ฮาร่าแชร์ รุ่น นิชเช่ 2 สีเทา	https://www.tvdirect.tv/jsu-hara-chair-nietzsche-2-2-grey	19800	0110900201039	2016-12-18 16:48:36.170852	2016-12-18 16:48:36.170852
5909	HARA CHAIR รุ่น ZENON 2 สีส้ม	https://www.tvdirect.tv/hara-chair-zenon-2-orange	18800	0110900201220	2016-12-18 16:48:36.97023	2016-12-18 16:48:36.97023
5910	HARA CHAIR รุ่น ZENON 2 สีเทา	https://www.tvdirect.tv/hara-chair-zenon-2-grey	18800	0110900201213	2016-12-18 16:48:37.824704	2016-12-18 16:48:37.824704
5911	Healthy Drink Set  เซ็ตทำเครื่องดื่มเพื่อสุขภาพ	https://www.tvdirect.tv/healthy-drink-set	3990	HealthyDrinkSet  	2016-12-18 16:48:38.772333	2016-12-18 16:48:38.772333
5912	HH SOCIETY ESPRESSO MAKER BN-610+GRINDER เครื่องชงกาแฟ+เครื่องบดกาแฟ SY601-ดำ	https://www.tvdirect.tv/hh-society-espresso-maker-bn-610-grinder-sy601	1990	0112400223872	2016-12-18 16:48:39.638233	2016-12-18 16:48:39.638233
5913	HH SOCIETY Fruit squeezer extractor Red color เครื่องสกัดน้ำผัก-ผลไม้ HHS-S500 สีแดง	https://www.tvdirect.tv/hh-society-fruit-squeezer-extractor-red-color-hhs-s500	1290	0112400223865	2016-12-18 16:48:40.432341	2016-12-18 16:48:40.432341
5914	HH SOCIETY Fruit squeezer extractor Silver color เครื่องสกัดน้ำผัก-ผลไม้ HHS-S500 สีเงิน	https://www.tvdirect.tv/hh-society-fruit-squeezer-extractor-silver-color-hhs-s500	1290	0112400223858	2016-12-18 16:48:41.252288	2016-12-18 16:48:41.252288
5915	HH SOCIETY Security Camera กล้องวงจรปิด CCTV รุ่น E-CH7004-4 สีดำ	https://www.tvdirect.tv/hh-society-security-camera-cctv-e-ch7004-4	4990	0112500203604	2016-12-18 16:48:42.093107	2016-12-18 16:48:42.093107
5916	HOMEPOWER LAUNDRY AIRER ราวตากผ้าปรับได้ 4 ระดับ	https://www.tvdirect.tv/homepower-laundry-airer-4	1390	0112300208526	2016-12-18 16:48:43.530198	2016-12-18 16:48:43.530198
5917	HOMETOPS IRONING MACHINE เตารีดไอน้ำพกพา รุ่น G-681S	https://www.tvdirect.tv/hometops-ironing-machine-g-681s	1750	0112300208519	2016-12-18 16:48:44.328286	2016-12-18 16:48:44.328286
5918	HOMETOPS IRONING MACHINE เตารีดไอน้ำแบบมือถือ รุ่น LS-519	https://www.tvdirect.tv/hometops-ironing-machine-ls-519	1050	0112300208496	2016-12-18 16:48:45.128526	2016-12-18 16:48:45.128526
5919	HOMETOPS STREAM IRON เตารีดไอน้ำอเนกประสงค์ รุ่น G-665	https://www.tvdirect.tv/hometops-stream-iron-g-665	2450	0112300208502	2016-12-18 16:48:46.125802	2016-12-18 16:48:46.125802
5920	HUN HUN เตียงนอนเด็ก พร้อมชุดเครื่องนอน	https://www.tvdirect.tv/hun-hun	5900	0112600200176	2016-12-18 16:48:46.986749	2016-12-18 16:48:46.986749
5921	Hun Hun เตียงไม้เด็ก ลายลิง ฟรีชุดเครื่องนอนและผ้าห่ม	https://www.tvdirect.tv/hun-hun-3073	5900	0112600200558	2016-12-18 16:48:47.753087	2016-12-18 16:48:47.753087
5922	Hun Hun เตียงไม้เด็ก ลายเด็ก ฟรีชุดเครื่องนอนและผ้าห่ม	https://www.tvdirect.tv/hun-hun-3072	5900	0112600200541	2016-12-18 16:48:48.56629	2016-12-18 16:48:48.56629
5923	In-House Suki & BBQ Pots SK-3003 (Red) หม้อสุกี้ BBQ 	https://www.tvdirect.tv/in-house-suki-bbq-pots-sk-3003-red-bbq	1190	0112400224077	2016-12-18 16:48:49.336948	2016-12-18 16:48:49.336948
5924	In-House Toaster TL-125 (Blue) เครื่องปิ้งขนมปังสีฟ้า TL-125	https://www.tvdirect.tv/in-house-toaster-tl-125-blue-tl-125	399	0112400224046	2016-12-18 16:48:50.110553	2016-12-18 16:48:50.110553
5925	In-House Toaster TL-127 (White) เครื่องปิ้งขนมปังสีขาว TL-127	https://www.tvdirect.tv/in-house-toaster-tl-127-white-tl-127	399	0112400224039	2016-12-18 16:48:52.887577	2016-12-18 16:48:52.887577
5926	Insta Barrier ผ้าม่านกันยุงและแมลง	https://www.tvdirect.tv/insta-barrier-1-1	990	0122300601388	2016-12-18 16:48:54.084836	2016-12-18 16:48:54.084836
5927	INTEX Air mattress King Blue ที่นอนคิงส์-หมอน 2 ใบ-ที่สูบ สีน้ำเงิน	https://www.tvdirect.tv/intex-air-mattress-king-blue-2	1635	0110800201924	2016-12-18 16:48:55.242361	2016-12-18 16:48:55.242361
5928	INTEX Air mattress Queen 5 Ft Green ที่นอนคู่ควีนที่สูบในตัว-หมอน 1 ใบ สีเขียว	https://www.tvdirect.tv/intex-air-mattress-queen-5-ft-green-1	1399	0110800201955	2016-12-18 16:48:56.383985	2016-12-18 16:48:56.383985
5929	INTEX Air mattress Queen Blue ที่นอนคู่ควีน-หมอน 2 ใบ-ที่สูบ สีน้ำเงิน	https://www.tvdirect.tv/intex-air-mattress-queen-blue-2	1220	0110800201917	2016-12-18 16:48:57.538757	2016-12-18 16:48:57.538757
5930	INTEX Air mattress Single 3.5 Ft Green ที่นอนเดี่ยวที่สูบในตัว-หมอน1 ใบ สีเขียว	https://www.tvdirect.tv/intex-air-mattress-single-3-5-ft-green-1	899	0110800201948	2016-12-18 16:48:58.444731	2016-12-18 16:48:58.444731
5931	INTEX Air mattress Single Blue ที่นอนเดี่ยว-หมอน-ที่สูบ สีน้ำเงิน	https://www.tvdirect.tv/intex-air-mattress-single-blue	840	0110800201900	2016-12-18 16:48:59.242119	2016-12-18 16:48:59.242119
5932	INTEX Inflatable chairs green เก้าอี้PULL-OUT-ที่สูบลม สีเขียวแก่	https://www.tvdirect.tv/intex-inflatable-chairs-green-pull-out	1639	0110900202319	2016-12-18 16:49:00.050181	2016-12-18 16:49:00.050181
5933	INTEX Mode Chai  เก้าอี้เป่าลม-ที่สูบลม 	https://www.tvdirect.tv/intex-mode-chai	699	INTEXMode	2016-12-18 16:49:01.261017	2016-12-18 16:49:01.261017
5934	INTEX Ultra Lounge Chair Black เก้าอี้เมก้าเล้าจน์-ที่สูบลม สีดำ	https://www.tvdirect.tv/intex-ultra-lounge-chair-black	1445	0110900202333	2016-12-18 16:49:02.173037	2016-12-18 16:49:02.173037
5935	INTEX Ultra Lounge Chair Gray-Black เก้าอี้-ที่วางเท้า-ที่สูบลม สีเทาดำ	https://www.tvdirect.tv/intex-ultra-lounge-chair-gray-black	1095	0110900202326	2016-12-18 16:49:03.02573	2016-12-18 16:49:03.02573
5936	JML Ceracraft Lid 28 cm.	https://www.tvdirect.tv/ceracraft-lid-28-cm	499	0112400300168	2016-12-18 16:49:04.603757	2016-12-18 16:49:04.603757
5937	JML CERACRAFT PAN-RETAIL RED SIZE 28 CM.	https://www.tvdirect.tv/jml-ceracraft-pan-retail-red-size-28-cm	1299	0112400300144	2016-12-18 16:49:05.468322	2016-12-18 16:49:05.468322
5938	JML DOKTOR POWER MAGIC ERASER ฟองน้ำทำความสะอาด อเนกประสงค์	https://www.tvdirect.tv/jml-doktor-power-magic-eraser	249	0112300300534	2016-12-18 16:49:06.306722	2016-12-18 16:49:06.306722
5939	Klean Machine High pressure water 70 Bar Blue-Black เครื่องฉีดน้ำแรงดันสูง ขนาด 70 บาร์ สีน้ำเงินดำ	https://www.tvdirect.tv/klean-machine-high-pressure-water-70-bar-blue-black-70	3690	0112200200200	2016-12-18 16:49:07.077055	2016-12-18 16:49:07.077055
5940	Klean Machine High pressure water 90 Bar Blue-Black เครื่องฉีดน้ำแรงดันสูง ขนาด 90 บาร์ สีน้ำเงินดำ	https://www.tvdirect.tv/klean-machine-high-pressure-water-90-bar-blue-black-90	4190	0112200200217	2016-12-18 16:49:07.784084	2016-12-18 16:49:07.784084
5941	KOKINOOR ชุดหม้อเคลือบ HSP01+HSP02+HSP03+HSW04	https://www.tvdirect.tv/kokinoor-hsp01-hsp02-hsp03-hsw04	2990	0112400222677	2016-12-18 16:49:08.595138	2016-12-18 16:49:08.595138
5942	KOKINOOR หม้อนึ่งสแตนเลส 26ซม. HPT212	https://www.tvdirect.tv/kokinoor-26-hpt212	1290	0112400223162	2016-12-18 16:49:09.387015	2016-12-18 16:49:09.387015
5943	KUVINGS MINCER หัวทำสมู๊ทตี้และเครื่องบดอาหาร	https://www.tvdirect.tv/kuvings-mincer	1200	0112400224541	2016-12-18 16:49:10.304485	2016-12-18 16:49:10.304485
5944	KUVINGS SILENT JUICER เครื่องสกัดน้ำผลไม้ NS-150CBM2	https://www.tvdirect.tv/kuvings-silent-juicer-ns-150cbm2	9900	0112400224565	2016-12-18 16:49:11.092908	2016-12-18 16:49:11.092908
5945	KUVINGS WHOLE SLOW JUICER เครื่องสกัดน้ำผลไม้ รุ่น B6000W	https://www.tvdirect.tv/kuvings-whole-slow-juicer-b6000w	12900	0112400224558	2016-12-18 16:49:12.004111	2016-12-18 16:49:12.004111
5946	LA ANTAR POT SET 9 Pcs ชุดหม้อสแตนเลส 9ชิ้น	https://www.tvdirect.tv/la-antar-pot-set-9-pcs-9	2490	0112300208748	2016-12-18 16:49:13.487836	2016-12-18 16:49:13.487836
5947	LACOR AIR DRIED FRUITS เครื่องทำผลไม้อบแห้ง	https://www.tvdirect.tv/lacor-air-dried-fruits	3000	0112400224145	2016-12-18 16:49:14.296513	2016-12-18 16:49:14.296513
5948	LACOR COFFEE MACHINE TEMPO เครื่องชงกาแฟ	https://www.tvdirect.tv/lacor-coffee-machine-tempo	2200	0112400224176	2016-12-18 16:49:15.093577	2016-12-18 16:49:15.093577
5949	LACOR FILTER COFFEE MACHINE 1.80 L เครื่องชงกาแฟ 1.80 ลิตร	https://www.tvdirect.tv/lacor-filter-coffee-machine-1-80-l-1-80	2950	0112400224183	2016-12-18 16:49:15.89024	2016-12-18 16:49:15.89024
5950	LACOR FOOD STEAMER เครื่องอบอาหาร	https://www.tvdirect.tv/lacor-food-steamer	3500	0112400224152	2016-12-18 16:49:16.675911	2016-12-18 16:49:16.675911
5951	LACOR FRUIT PROCESSOR เครื่องคั้นน้ำผักผลไม้	https://www.tvdirect.tv/lacor-fruit-processor	8500	0112400224190	2016-12-18 16:49:17.48692	2016-12-18 16:49:17.48692
5952	LACOR HAND MIXER แกนปั่นอเนกประสงค์	https://www.tvdirect.tv/lacor-hand-mixer	4250	0112400224398	2016-12-18 16:49:18.277132	2016-12-18 16:49:18.277132
5953	LACOR HOME MEAT SLICER เครื่องสไลด์เนื้อ	https://www.tvdirect.tv/lacor-home-meat-slicer	4600	0112400224138	2016-12-18 16:49:19.083599	2016-12-18 16:49:19.083599
5954	LACOR MEAT GRINDER JS-69068 เครื่องบดเนื้อ	https://www.tvdirect.tv/lacor-meat-grinder-js-69068	9650	0112400224121	2016-12-18 16:49:19.883115	2016-12-18 16:49:19.883115
5955	LACOR MULTI BLENDER 8 Function เครื่องปั่นอเนกประสงค์ 8 รูปแบบ	https://www.tvdirect.tv/lacor-multi-blender-8-function-8	7450	0112400224220	2016-12-18 16:49:20.686742	2016-12-18 16:49:20.686742
5956	LACOR MULTI COOKER เครื่องทอด อเนกประสงค์	https://www.tvdirect.tv/lacor-multi-cooker	4700	0112400224213	2016-12-18 16:49:21.511153	2016-12-18 16:49:21.511153
5957	LACOR PRESSURE COOKER 4 LTS หม้อแรงดัน 4ลิตร	https://www.tvdirect.tv/lacor-pressure-cooker-4-lts-4	3750	0112400224367	2016-12-18 16:49:22.33072	2016-12-18 16:49:22.33072
5958	LACOR PRESSURE COOKER 6 LTS หม้อแรงดัน 6ลิตร	https://www.tvdirect.tv/lacor-pressure-cooker-6-lts-6	4150	0112400224374	2016-12-18 16:49:23.127341	2016-12-18 16:49:23.127341
5959	LACOR PRESSURE COOKER 8 LTS หม้อแรงดัน 8ลิตร	https://www.tvdirect.tv/lacor-pressure-cooker-8-lts-8	4500	0112400224381	2016-12-18 16:49:23.951164	2016-12-18 16:49:23.951164
5960	LACOR SQUEZEER W-LEVER เครื่องคั้นน้ำส้ม	https://www.tvdirect.tv/lacor-squezeer-w-lever	2650	0112400224206	2016-12-18 16:49:24.792186	2016-12-18 16:49:24.792186
5961	LACOR TEMPPO WATER KETTLE 1500W กาต้มน้ำไฟฟ้า	https://www.tvdirect.tv/lacor-temppo-water-kettle-1500w	2250	0112400224169	2016-12-18 16:49:25.662422	2016-12-18 16:49:25.662422
5962	Latex Topper ที่นอนเสริม ขนาด 3.5 ฟุต	https://www.tvdirect.tv/latex-topper-3-5	9900	0110800201368	2016-12-18 16:49:26.460819	2016-12-18 16:49:26.460819
5963	Latex Topper ที่นอนเสริม ขนาด 5 ฟุต	https://www.tvdirect.tv/latex-topper-5	13900	0110800201375	2016-12-18 16:49:27.257635	2016-12-18 16:49:27.257635
5964	Latex Topper ที่นอนเสริม ขนาด 6 ฟุต	https://www.tvdirect.tv/latex-topper-6	14900	0110800201382	2016-12-18 16:49:28.138601	2016-12-18 16:49:28.138601
5965	LOCK&LOCK HAPPY SET 6 ชิ้น	https://www.tvdirect.tv/lock-lock-happy-set-6	1250	0112400223322	2016-12-18 16:49:28.914095	2016-12-18 16:49:28.914095
5966	LOCK&LOCK HEALTHY CHIC 5 ชิ้น	https://www.tvdirect.tv/lock-lock-healthy-chic-5	900	0111000200793	2016-12-18 16:49:30.49699	2016-12-18 16:49:30.49699
5967	LOCK&LOCK HOME PARTY 7 ชิ้น	https://www.tvdirect.tv/lock-lock-home-party-7	1665	0112400223346	2016-12-18 16:49:31.411991	2016-12-18 16:49:31.411991
5968	LOCK&LOCK NEO LIVING 7 ชิ้น	https://www.tvdirect.tv/lock-lock-neo-living-7	1035	0112400223339	2016-12-18 16:49:32.215104	2016-12-18 16:49:32.215104
5969	MAGIC MOP ชุดถังม็อบหลายฟังก์ชั่น	https://www.tvdirect.tv/magic-mop	1290	0122300601766	2016-12-18 16:49:34.084479	2016-12-18 16:49:34.084479
5970	MASTERKOOL พัดลมไอเย็น cool top EVAP 05 BLUE -ฟ้า	https://www.tvdirect.tv/masterkool-cool-top-evap-05-blue	1990	0112300207338	2016-12-18 16:49:34.908597	2016-12-18 16:49:34.908597
5971	MASTERKOOL พัดลมไอเย็น cool top EVAP 05 GREY-เทา	https://www.tvdirect.tv/masterkool-cool-top-evap-05-grey	1990	0112300207345	2016-12-18 16:49:35.654975	2016-12-18 16:49:35.654975
5972	MASTERKOOLพัดลมไอเย็น MIK-07EC GREEN สีเขียว	https://www.tvdirect.tv/masterkool-mik-07ec-green	2990	0112300207369	2016-12-18 16:49:36.427735	2016-12-18 16:49:36.427735
5973	MASTERKOOLพัดลมไอเย็น MIK-07EC RED สีแดง	https://www.tvdirect.tv/masterkool-mik-07ec-red	2990	0112300207352	2016-12-18 16:49:37.212963	2016-12-18 16:49:37.212963
5974	MASTERKOOLพัดลมไอเย็น MIK-07EX PURPLE สีม่วง	https://www.tvdirect.tv/masterkool-mik-07ex-purple	3199	0112300207376	2016-12-18 16:49:38.04628	2016-12-18 16:49:38.04628
5975	MASTERKOOLพัดลมไอเย็น MIK-07EX YELLOW สีเหลือง	https://www.tvdirect.tv/masterkool-mik-07ex-yellow	3199	0112300207383	2016-12-18 16:49:38.906283	2016-12-18 16:49:38.906283
5976	Medisana Air Purifier เครื่องกรองอากาศ 3 ระบบ	https://www.tvdirect.tv/medisana-air-purifier-3	4499	0111600208612	2016-12-18 16:49:39.668367	2016-12-18 16:49:39.668367
5977	Miracle Hot grill กระทะร้อนปิ้งย่าง	https://www.tvdirect.tv/miracle-hot-grill	1490	0122400601318	2016-12-18 16:49:40.469373	2016-12-18 16:49:40.469373
5978	Miracle Icezy Snowy เครื่องทำน้ำแข็งเกล็ดหิมะ	https://www.tvdirect.tv/miracle-icezy-snowy	1490	0122400601301	2016-12-18 16:49:41.301248	2016-12-18 16:49:41.301248
5979	MODERN FURNITURE Drawers 4floor ตู้ลิ้นชัก 4 ชั้น ลายBLUE SKY	https://www.tvdirect.tv/modern-furniture-drawers-4floor-4-blue-sky	1790	0110900201589	2016-12-18 16:49:42.121881	2016-12-18 16:49:42.121881
5980	MODERN FURNITURE Drawers 4floor ตู้ลิ้นชัก 4 ชั้น ลายCUTE BEARRY	https://www.tvdirect.tv/modern-furniture-drawers-4floor-4-cute-bearry	1790	0110900201572	2016-12-18 16:49:42.894163	2016-12-18 16:49:42.894163
5981	MODERN FURNITURE Drawers 4floor ตู้ลิ้นชัก 4 ชั้น ลายสานรัก	https://www.tvdirect.tv/modern-furniture-drawers-4floor-4	1090	0110900201558	2016-12-18 16:49:43.712357	2016-12-18 16:49:43.712357
5982	MODERN FURNITURE Drawers 4floor ตู้ลิ้นชัก 4 ชั้น ลายสาวน้อย	https://www.tvdirect.tv/modern-furniture-drawers-4floor-5	1090	0110900201565	2016-12-18 16:49:44.52458	2016-12-18 16:49:44.52458
5983	MOSQ ECO TRAP BM920Lบอดี้การ์ดดังยุงรุ่นLED60ตร.ม. คู่  MOSQ ECO TRAP BM921L	https://www.tvdirect.tv/mosq-eco-trap-bm920l-led60-mosq-eco-trap-bm921l	1990	MosqEcoTrapBM920	2016-12-18 16:49:45.437034	2016-12-18 16:49:45.437034
5984	MOSQ ECO TRAP GM916 บอดี้การ์ดดักยุงรุ่น 30 ตร.ม. 	https://www.tvdirect.tv/mosq-eco-trap-gm916-30-gm912-pmt-mm0007126	590	0122300400035	2016-12-18 16:49:46.278285	2016-12-18 16:49:46.278285
5985	Music Box หมอลำยอดฮิต รวมมิตรอีสาน รุ่น AS-A2	https://www.tvdirect.tv/music-box-as-a2	1690	0111200301450	2016-12-18 16:49:47.127029	2016-12-18 16:49:47.127029
5986	Music Box อมตะเพชรแท้ ลูกทุ่งซุปเปอร์ฮิต รุ่น AS-A1	https://www.tvdirect.tv/music-box-as-a1	1690	0111200301443	2016-12-18 16:49:48.665984	2016-12-18 16:49:48.665984
5987	My Home Conventional rice cooker 1.8 L A-705 หม้อหุงข้าวอุ่นทิพย์ 1.8 ลิตร	https://www.tvdirect.tv/my-home-conventional-rice-cooker-1-8-l-a-705-1-8	489	0112400224053	2016-12-18 16:49:49.446592	2016-12-18 16:49:49.446592
5988	My Home Electric Grills XH-4425 เตาปิ้งย่างบาร์บีคิว	https://www.tvdirect.tv/my-home-electric-grills-xh-4425	1290	0112400224008	2016-12-18 16:49:50.249634	2016-12-18 16:49:50.249634
5989	My Home Electric Kettles 1.5 L KT-1502 (Blue) กาต้มน้ำร้อนไฟฟ้า 1.5 ลิตร สีฟ้า	https://www.tvdirect.tv/my-home-electric-kettles-1-5-l-kt-1502-blue-1-5	399	0112400224022	2016-12-18 16:49:51.092836	2016-12-18 16:49:51.092836
5990	My Home Hair dryers HD-1001 ไดร์เป่าผมรุ่น HD-1001	https://www.tvdirect.tv/my-home-hair-dryers-hd-1001-hd-1001	259	0110700209624	2016-12-18 16:49:51.896828	2016-12-18 16:49:51.896828
5991	My Home Suki pots SK-3003 CBR หม้อสุกี้ไฟฟ้าพร้อมซึ้ง	https://www.tvdirect.tv/my-home-suki-pots-sk-3003-cbr	699	0112400224015	2016-12-18 16:49:52.710122	2016-12-18 16:49:52.710122
5992	My Home Thermo Pots 2.5 L JP-2532 กระติกน้ำร้อน 2.5 ลิตร JP-2532	https://www.tvdirect.tv/my-home-thermo-pots-2-5-l-jp-2532-2-5-jp-2532	449	0112400224060	2016-12-18 16:49:53.733919	2016-12-18 16:49:53.733919
5993	My T Driver ไขควงจอมพลัง	https://www.tvdirect.tv/my-t-driver	490	0121100600218	2016-12-18 16:49:54.585049	2016-12-18 16:49:54.585049
5994	NEO GRILL เตาปิ้งย่างอเนกประสงค์อินฟราเรด	https://www.tvdirect.tv/neo-grill	2990	0112400223414	2016-12-18 16:49:55.37358	2016-12-18 16:49:55.37358
5995	NT FURNITURE ชุดโต๊ะปิกนิคทูโทน เหลี่ยม สีฟ้า-ขาว	https://www.tvdirect.tv/nt-furniture-bluewhite	1990	0110900201671	2016-12-18 16:49:56.167052	2016-12-18 16:49:56.167052
5996	NT FURNITURE ชุดโต๊ะปิกนิคทูโทน เหลี่ยม สีเขียว-ขาว	https://www.tvdirect.tv/nt-furniture-greenwhite	1990	0110900201664	2016-12-18 16:49:57.006537	2016-12-18 16:49:57.006537
5997	NT FURNITURE หิ้งพระมิ่งมงคล 12x18 สีขาว	https://www.tvdirect.tv/nt-furniture-12x18	890	0113700203654	2016-12-18 16:49:57.856764	2016-12-18 16:49:57.856764
5998	NT FURNITURE หิ้งพระมิ่งมงคล 12x18 สีโอ๊ค	https://www.tvdirect.tv/nt-furniture-12x18-3261	890	0113700203661	2016-12-18 16:49:58.59742	2016-12-18 16:49:58.59742
5999	NT FURNITURE หิ้งพระวิมานแบบตั้งโต๊ะ -สีขาว	https://www.tvdirect.tv/nt-furniture	890	0113700203630	2016-12-18 16:49:59.364841	2016-12-18 16:49:59.364841
6000	NT FURNITURE โต๊ะพับ NT16 สีฟ้า	https://www.tvdirect.tv/nt-furniture-nt16-blue	690	0110900201640	2016-12-18 16:50:00.143992	2016-12-18 16:50:00.143992
6001	NT FURNITURE โต๊ะพับ NT16 สีส้ม	https://www.tvdirect.tv/nt-furniture-nt16-orange	690	0110900201657	2016-12-18 16:50:00.930199	2016-12-18 16:50:00.930199
6002	NT FURNITURE โต๊ะลิ้นชัก The Twin สีขาว	https://www.tvdirect.tv/nt-furniture-the-twin-white	1290	0110900201633	2016-12-18 16:50:01.820007	2016-12-18 16:50:01.820007
6003	NT FURNITURE โต๊ะลิ้นชัก The Twin สีดำ	https://www.tvdirect.tv/nt-furniture-the-twin-black	1290	0110900201626	2016-12-18 16:50:02.79782	2016-12-18 16:50:02.79782
6004	ODII GRAB-IT GADGET อุปกรณ์ช่วยหยิบจับสิ่งของ	https://www.tvdirect.tv/odii-grab-it-gadget	990	0122300601746	2016-12-18 16:50:03.704563	2016-12-18 16:50:03.704563
6005	PDM MATTO KATVE SIZE L เสื่อลาย KATVE สีขาว-ดำ ขนาด L	https://www.tvdirect.tv/pdm-matto-katve-size-l-katve-l	2990	0110900201701	2016-12-18 16:50:05.519671	2016-12-18 16:50:05.519671
6006	PDM MATTO KATVE SIZE M เสื่อลาย KATVE สีขาว-ดำ ขนาด M	https://www.tvdirect.tv/pdm-matto-katve-size-m-katve-m	2490	0110900201695	2016-12-18 16:50:06.439063	2016-12-18 16:50:06.439063
6007	PDM MATTO KATVE SIZE S เสื่อลาย KATVE สีขาว-ดำ ขนาด S	https://www.tvdirect.tv/pdm-matto-katve-size-s-katve-s	1690	0110900201688	2016-12-18 16:50:07.363641	2016-12-18 16:50:07.363641
6008	PERSONAL COFFEE MAKER เครืองชงกาแฟ รุ่น JC-A3B สีชมพู	https://www.tvdirect.tv/personal-coffee-maker-jc-a3b-pink	1490	0122400500123	2016-12-18 16:50:08.199048	2016-12-18 16:50:08.199048
6009	PERSONAL COFFEE MAKER เครื่องชงกาแฟ  รุ่น JC-A3B สีน้ำเงิน	https://www.tvdirect.tv/personal-coffee-maker-jc-a3b-blue	1490	0122400500130	2016-12-18 16:50:09.106214	2016-12-18 16:50:09.106214
6010	Pest Free Single Pack แถม MosQ 916	https://www.tvdirect.tv/pest-free-single-pack-mosq-916	1990	PestFreeSinglePack	2016-12-18 16:50:10.081622	2016-12-18 16:50:10.081622
6011	Pest Free Value Pack เครื่องไล่หนูและแมลงสาบ ซื้อ 1 แถม 1	https://www.tvdirect.tv/pest-free-buy-1-get-1	3190	0120800300114	2016-12-18 16:50:11.016472	2016-12-18 16:50:11.016472
6012	POPCORN MAKER เครื่องทำป๊อปคอร์น	https://www.tvdirect.tv/popcorn-maker-1937	1290	0122400601363	2016-12-18 16:50:11.953578	2016-12-18 16:50:11.953578
6013	Princess Multifunction Slide Black เครื่องเตรียมอาหาร ขูด สับ สไลซ์ สีดำ	https://www.tvdirect.tv/princess-multifunction-slide-black	2390	0112400225418	2016-12-18 16:50:12.771132	2016-12-18 16:50:12.771132
6014	Princess Slow Juicer Black เครื่องสกัดน้ำผักผลไม้ สีดำ	https://www.tvdirect.tv/princess-slow-juicer-black	4190	0112400225425	2016-12-18 16:50:13.649296	2016-12-18 16:50:13.649296
6015	PROPER PILLOW หมอนนอนสบาย	https://www.tvdirect.tv/proper-pillow	990	0120800600085	2016-12-18 16:50:14.446097	2016-12-18 16:50:14.446097
6016	Raindeer Umbrella ร่มพับ 3 ตอน	https://www.tvdirect.tv/raindeer-umbrella-3	199	RaindeerUmbrella	2016-12-18 16:50:16.103621	2016-12-18 16:50:16.103621
6017	Rapid Ramen Cooker ชามใส่ราเมน	https://www.tvdirect.tv/rapid-ramen-cooker	990	0122400601356	2016-12-18 16:50:16.94268	2016-12-18 16:50:16.94268
6018	REGIS STONE PANS (WOK+LID+WOK) กระทะเคลือบหินอ่อน 3 ชั้น พร้อมฝา ขนาด 28 cm	https://www.tvdirect.tv/regis-stone-pans-wok-lid-wok-3-28-cm	1990	0122400601448	2016-12-18 16:50:17.755228	2016-12-18 16:50:17.755228
6019	REGIS STONE PANS (WOK+PAN+LID) กระทะเคลือบหินอ่อน 3 ชั้น 28cm.	https://www.tvdirect.tv/regis-stone-pans-wok-pan-lid-3-28cm	1990	0122400601455	2016-12-18 16:50:20.969315	2016-12-18 16:50:20.969315
6020	REMINGTON HAIR BRUSH IRON อุปกรณ์จัดแต่งทรงผม รุ่น AS-7051	https://www.tvdirect.tv/remington-hair-brush-iron-as-7051	2950	0110700209860	2016-12-18 16:50:22.151413	2016-12-18 16:50:22.151413
6021	REMINGTON HAIR BRUSH IRON อุปกรณ์จัดแต่งทรงผม รุ่น AS-8090	https://www.tvdirect.tv/remington-hair-brush-iron-as-8090	3650	0110700209877	2016-12-18 16:50:23.489439	2016-12-18 16:50:23.489439
6022	REMINGTON HAIR BRUSH IRON โรลไฟฟ้า รุ่น EXPRESS SET 10 H-1022	https://www.tvdirect.tv/remington-hair-brush-iron-express-set-10-h-1022	2950	0110700209891	2016-12-18 16:50:24.707428	2016-12-18 16:50:24.707428
6023	REMINGTON HAIR DRYER ไดร์เป่าผม รุ่นEASY CORD D-5801	https://www.tvdirect.tv/remington-hair-dryer-easy-cord-d-5801	3200	0110700209990	2016-12-18 16:50:25.934895	2016-12-18 16:50:25.934895
6024	REMINGTON HAIR DRYER ไดร์เป่าผม รุ่นPOWER DRY 2000 D-3010	https://www.tvdirect.tv/remington-hair-dryer-power-dry-2000-d-3010	2050	0110700209969	2016-12-18 16:50:27.257328	2016-12-18 16:50:27.257328
6025	REMINGTON HAIR DRYER ไดร์เป่าผม รุ่นPRO 2100 DRYER D-5017	https://www.tvdirect.tv/remington-hair-dryer-pro-2100-dryer-d-5017	3900	0110700209976	2016-12-18 16:50:28.101287	2016-12-18 16:50:28.101287
6026	REMINGTON HAIR DRYER ไดร์เป่าผม รุ่นTRAVEL DRYER 1400 D-2400	https://www.tvdirect.tv/remington-hair-dryer-travel-dryer-1400-d-2400	1600	0110700209952	2016-12-18 16:50:28.946503	2016-12-18 16:50:28.946503
6027	REMINGTON HAIR DRYER ไดร์เป่าผม รุ่นYOUR STYLE D-5219	https://www.tvdirect.tv/remington-hair-dryer-your-style-d-5219	3450	0110700209983	2016-12-18 16:50:29.865938	2016-12-18 16:50:29.865938
6028	REMINGTON MACHINE CURLER เครื่องม้วนผม รุ่น PRO SOFT CURL CI-6325	https://www.tvdirect.tv/remington-machine-curler-pro-soft-curl-ci-6325	2400	0110700209884	2016-12-18 16:50:30.716963	2016-12-18 16:50:30.716963
6029	REMINGTON STRAIGHTENER เครื่องหนีบผม รุ่นCERAMIC SLIM S-1510	https://www.tvdirect.tv/remington-straightener-ceramic-slim-s-1510	1550	0110700209921	2016-12-18 16:50:31.60063	2016-12-18 16:50:31.60063
6030	REMINGTON STRAIGHTENER เครื่องหนีบผม รุ่นKERATIN THERAPY S-8590	https://www.tvdirect.tv/remington-straightener-keratin-therapy-s-8590	3500	0110700209945	2016-12-18 16:50:32.527625	2016-12-18 16:50:32.527625
6031	REMINGTON STRAIGHTENER เครื่องหนีบผม รุ่นPRO-ION STRAIGHT S-7710	https://www.tvdirect.tv/remington-straightener-pro-ion-straight-s-7710	3400	0110700209938	2016-12-18 16:50:33.367741	2016-12-18 16:50:33.367741
6032	REMINGTON โรลไฟฟ้า รุ่น Fast Curls KF-40E	https://www.tvdirect.tv/remington-fast-curls-kf-40e	3550	0110700209914	2016-12-18 16:50:34.269297	2016-12-18 16:50:34.269297
6033	REMINGTON โรลไฟฟ้า รุ่น Ionic Rollers KF-20I	https://www.tvdirect.tv/remington-ionic-rollers-kf-20i	3000	0110700209907	2016-12-18 16:50:35.148122	2016-12-18 16:50:35.148122
6034	RINNAI เตาแก๊สกระจก 2 หัว รุ่น RY-9002GD	https://www.tvdirect.tv/rinnai-2-ry-9002gd	2990	0112400223995	2016-12-18 16:50:35.993105	2016-12-18 16:50:35.993105
6035	ROCKET DEEPSTOCKPOT 22 CMหม้อต้มทรงสูง 22 ซม	https://www.tvdirect.tv/rocket-deepstockpot-22-cm-22	499	0112400224237	2016-12-18 16:50:36.831894	2016-12-18 16:50:36.831894
6036	ROCKET DEEPSTOCKPOT 26 CMหม้อต้มทรงสูง 26 ซม	https://www.tvdirect.tv/rocket-deepstockpot-26-cm-26	649	0112400224244	2016-12-18 16:50:38.318274	2016-12-18 16:50:38.318274
6037	ROCKET IMPRESSION ชุดเครื่องครัวอิมเพรสชั่น 4 ชิ้น	https://www.tvdirect.tv/rocket-impression-4	425	0112400223896	2016-12-18 16:50:39.069079	2016-12-18 16:50:39.069079
6038	ROCKET READY BOX ชุดกล่องอาหาร 12 ซม. 2 ชุด พร้อมกระเป๋า	https://www.tvdirect.tv/rocket-ready-box-12-2	215	0112400223889	2016-12-18 16:50:40.013837	2016-12-18 16:50:40.013837
6039	ROCKET STEW POT ชุดหม้อสตูว์ 3 ชุด 22,26,30 ซม.	https://www.tvdirect.tv/rocket-stew-pot-3-22-26-30	890	0112400223902	2016-12-18 16:50:40.83017	2016-12-18 16:50:40.83017
6040	ROCKET STOCK POT ชุดหม้อแขก 14-30 ซม จำนวน 10 ชิ้น	https://www.tvdirect.tv/rocket-stock-pot-14-30-10	1290	0112400223814	2016-12-18 16:50:41.678943	2016-12-18 16:50:41.678943
6041	Rollie Egg Master White เครื่องทำไข่ม้วน	https://www.tvdirect.tv/rollie-egg-master-white	1490	0122400601080	2016-12-18 16:50:42.602865	2016-12-18 16:50:42.602865
6042	Ronco Ready Grill เครื่องปิ้งย่างอเนกประสงค์	https://www.tvdirect.tv/ronco-ready-grill	1690	0122400601271	2016-12-18 16:50:43.365607	2016-12-18 16:50:43.365607
6043	Ronco Six Star มีดอเนกประสงค์ จำนวน 25 เล่ม	https://www.tvdirect.tv/ronco-six-star-25-knifes	1990	0122400601288	2016-12-18 16:50:44.171407	2016-12-18 16:50:44.171407
6044	Ronco Wonder Weave ผ้าใยไผ่ทำความสะอาด	https://www.tvdirect.tv/ronco-wonder-weave	590	0122300601562	2016-12-18 16:50:45.043273	2016-12-18 16:50:45.043273
6045	Rose Knife มีดสแตนเลสลายกุหลาบ	https://www.tvdirect.tv/rose-knife	390	0122300601258	2016-12-18 16:50:45.850907	2016-12-18 16:50:45.850907
6046	ROTO PEELมีดสไลด์ 3 IN 1	https://www.tvdirect.tv/roto-peel-3-in-1	249	0122400600618	2016-12-18 16:50:46.645226	2016-12-18 16:50:46.645226
6047	RRS GUEST POT Set 10 Piece ชุดหม้อแขก 10 ชิ้น	https://www.tvdirect.tv/rrs-guest-pot-set-10-piece-10	999	0112400223658	2016-12-18 16:50:47.538767	2016-12-18 16:50:47.538767
6048	RRS KOREA POT 18 cm หม้อเกาหลี 2 หู 18 ซม. 	https://www.tvdirect.tv/rrs-korea-pot-18-cm-2-18	299	0112400223672	2016-12-18 16:50:48.36542	2016-12-18 16:50:48.36542
6049	RRS MIXING BOWLS Set 3 Piece ชุดกะละมังชุด 3 ใบ	https://www.tvdirect.tv/rrs-mixing-bowls-set-3-piece-3	299	0112400223665	2016-12-18 16:50:49.195432	2016-12-18 16:50:49.195432
6050	RRS STAINLESS STEEL STEAMER 28 cm หม้อซึ้ง 28 ซม.	https://www.tvdirect.tv/rrs-stainless-steel-steamer-28-cm-28	369	0112400223689	2016-12-18 16:50:50.03883	2016-12-18 16:50:50.03883
6051	RRS STEAM FRYING PAN 21 cm ชุดหม้อ-ทอด-นึ่ง21 ซม	https://www.tvdirect.tv/rrs-steam-frying-pan-21-cm-21	429	0112400223696	2016-12-18 16:50:51.059155	2016-12-18 16:50:51.059155
6052	RRS STEW POT Set 6 Piece ชุดหม้อสตูว์ทรงสูง 6 ชิ้น	https://www.tvdirect.tv/rrs-stew-pot-set-6-piece-6	999	0112400223641	2016-12-18 16:50:51.928004	2016-12-18 16:50:51.928004
6053	Rubbermaid Reveal Spray Mop Gray-Red สเปรย์ม็อบ สีเทาแดง	https://www.tvdirect.tv/rubbermaid-reveal-spray-mop-gray-red	999	0112300208779	2016-12-18 16:50:52.728456	2016-12-18 16:50:52.728456
6054	RUSSELL HOBBS BLENDER เครื่องเตรียมอาหาร รุ่น 20240-56	https://www.tvdirect.tv/russell-hobbs-blender-20240-56	5950	0112400224442	2016-12-18 16:50:53.483935	2016-12-18 16:50:53.483935
6055	RUSSELL HOBBS DOUGH MIXER เครื่องตีแบบมือถือ รุ่น 18965-56	https://www.tvdirect.tv/russell-hobbs-dough-mixer-18965-56	2300	0112400224466	2016-12-18 16:50:54.291747	2016-12-18 16:50:54.291747
6056	RUSSELL HOBBS DOUGH MIXER เครื่องตีแป้งแบบขาตั้ง รุ่น 21200-56	https://www.tvdirect.tv/russell-hobbs-dough-mixer-21200-56	4350	0112400224459	2016-12-18 16:50:55.746664	2016-12-18 16:50:55.746664
6057	Russell Hobbs กาต้มน้ำไฟฟ้า รุ่น 19630-70	https://www.tvdirect.tv/russell-hobbs-19630-70	1300	0112400222103	2016-12-18 16:50:56.523767	2016-12-18 16:50:56.523767
6058	Russell Hobbs กาต้มน้ำไฟฟ้า รุ่น 20420-70	https://www.tvdirect.tv/russell-hobbs-20420-70	2000	0112400222110	2016-12-18 16:50:57.319193	2016-12-18 16:50:57.319193
6059	Russell Hobbs กาต้มน้ำไฟฟ้า รุ่น 21150-70	https://www.tvdirect.tv/russell-hobbs-21150-70	2500	0112400222127	2016-12-18 16:50:58.124269	2016-12-18 16:50:58.124269
6060	Russell Hobbs เครื่องชงกาแฟ รุ่น 19620-56	https://www.tvdirect.tv/russell-hobbs-19620-56	1500	0112400222141	2016-12-18 16:50:58.945369	2016-12-18 16:50:58.945369
6061	Russell Hobbs เครื่องชงกาแฟ รุ่น 20130-56	https://www.tvdirect.tv/russell-hobbs-20130-56	2400	0112400222158	2016-12-18 16:50:59.730969	2016-12-18 16:50:59.730969
6062	Russell Hobbs เครื่องทำแซนด์วิช รุ่น 17936-56	https://www.tvdirect.tv/russell-hobbs-17936-56	1100	0112400222264	2016-12-18 16:51:00.668747	2016-12-18 16:51:00.668747
6063	Russell Hobbs เครื่องบด สับอาหาร รุ่น 20320-56	https://www.tvdirect.tv/russell-hobbs-20320-56	1950	0112400222301	2016-12-18 16:51:01.531232	2016-12-18 16:51:01.531232
6064	Russell Hobbs เครื่องบดสับอาหาร รุ่น 19440-56	https://www.tvdirect.tv/russell-hobbs-19440-56	1100	0112400222257	2016-12-18 16:51:02.399281	2016-12-18 16:51:02.399281
6065	Russell Hobbs เครื่องปั่น Mix & Go รุ่น 21350-56	https://www.tvdirect.tv/russell-hobbs-mix-go-21350-56	1600	0112400222332	2016-12-18 16:51:03.285052	2016-12-18 16:51:03.285052
6066	Russell Hobbs เครื่องปั่น รุ่น 18996-56	https://www.tvdirect.tv/russell-hobbs-18996-56	3900	0112400222318	2016-12-18 16:51:04.136205	2016-12-18 16:51:04.136205
6067	Russell Hobbs เครื่องปั่น รุ่น 19450-56	https://www.tvdirect.tv/russell-hobbs-19450-56	2200	0112400222219	2016-12-18 16:51:04.955857	2016-12-18 16:51:04.955857
6068	RUSSELL HOBBS เครื่องปิ่งย่าง รุ่น COMPACT GRILL 18850-56	https://www.tvdirect.tv/russell-hobbs-compact-grill-18850-56	2300	0112400224435	2016-12-18 16:51:05.803557	2016-12-18 16:51:05.803557
6069	Russell Hobbs เครื่องปิ้งขนมปัง รุ่น 20700-56	https://www.tvdirect.tv/russell-hobbs-20700-56	1700	0112400222134	2016-12-18 16:51:06.636671	2016-12-18 16:51:06.636671
6070	Russell Hobbs เครื่องผสมอาหาร รุ่น 19460-56	https://www.tvdirect.tv/russell-hobbs-19460-56	3000	0112400222240	2016-12-18 16:51:07.467307	2016-12-18 16:51:07.467307
6071	Russell Hobbs เครื่องผสมอาหารมือถือ รุ่น 18960-56	https://www.tvdirect.tv/russell-hobbs-18960-56	1900	0112400222189	2016-12-18 16:51:08.28433	2016-12-18 16:51:08.28433
6072	Russell Hobbs เครื่องสกัดแยกกาก รุ่น 20366-56	https://www.tvdirect.tv/russell-hobbs-20366-56	4200	0112400222325	2016-12-18 16:51:09.153536	2016-12-18 16:51:09.153536
6073	Russell Hobbsเครื่องปั่นอาหารมือถือ 3 in 1 รุ่น 18980-56	https://www.tvdirect.tv/russell-hobbs-3-in-1-18980-56	2500	0112400222202	2016-12-18 16:51:09.971392	2016-12-18 16:51:09.971392
6074	Samsung Blu-ray Home Entertainment System	https://www.tvdirect.tv/fairtex-samsung-home-entertainment	8990	0114100300219	2016-12-18 16:51:10.774864	2016-12-18 16:51:10.774864
6075	Samsung LED Series 4 ขนาด 32 นิ้ว	https://www.tvdirect.tv/fairtex-samsung-led-32	8890	0114100300189	2016-12-18 16:51:11.543205	2016-12-18 16:51:11.543205
6076	SANKI ALUMINIUM 3 STEP LADDER บันไดโมเดิร์น 3 ขั้น แบบมีถาด สูง 3 ฟุต	https://www.tvdirect.tv/sanki-aluminium-3-step-ladder-3-3	1190	0112300208700	2016-12-18 16:51:13.018182	2016-12-18 16:51:13.018182
6117	SMART HOME เตารีดไอน้ำ PI-HA17	https://www.tvdirect.tv/smart-home-pi-ha17	450	0112300207291	2016-12-18 16:51:52.553874	2016-12-18 16:51:52.553874
6077	SANKI ALUMINIUM 5 STEP LADDER บันไดอลูมิเนียมแฟนซี 5 ขั้น สูง 5 ฟุต	https://www.tvdirect.tv/sanki-aluminium-5-step-ladder-5-5	1790	0112300208694	2016-12-18 16:51:13.822745	2016-12-18 16:51:13.822745
6078	SANKI CLOTHES RACK 100 CM ราวแขวนผ้าอลูมิเนียมยืดตรง 100 ซม	https://www.tvdirect.tv/sanki-clothes-rack-100-cm-100	590	0112300208687	2016-12-18 16:51:14.800156	2016-12-18 16:51:14.800156
6079	SEAGULL DELIGHT II ชุดกระทะนอนสติกดีไลท์ทู 2 ชิ้น	https://www.tvdirect.tv/seagull-delight-ii-2	399	0112400223513	2016-12-18 16:51:15.784402	2016-12-18 16:51:15.784402
6080	SEAGULL EASYPLUS2 ชุดเครื่องครัวอีซี่พลัสทู 3 ชิ้น	https://www.tvdirect.tv/seagull-easyplus2-3	499	0112400223537	2016-12-18 16:51:16.586986	2016-12-18 16:51:16.586986
6081	SEAGULL HAPPY ชุดกระทะแฮปปี้ 4 ชิ้น	https://www.tvdirect.tv/seagull-happy-4	499	0112400223520	2016-12-18 16:51:17.398654	2016-12-18 16:51:17.398654
6082	SEAGULL HARD ANODIZED กระทะจีนฮาร์ดอโนไดซ์ 36 ซม	https://www.tvdirect.tv/seagull-hard-anodized-36	879	0112400223575	2016-12-18 16:51:18.211225	2016-12-18 16:51:18.211225
6083	SEAGULL HEALTHY ชุดกระทะนอนสติกเฮลตี้ 2 ชิ้น	https://www.tvdirect.tv/seagull-healthy-2	399	0112400223492	2016-12-18 16:51:19.014791	2016-12-18 16:51:19.014791
6084	SEAGULL MIX II ชุดเครื่องครัวคิทเช่นมิกซ์ทู 5 ชิ้น	https://www.tvdirect.tv/seagull-mix-ii-5	990	0112400223544	2016-12-18 16:51:19.828681	2016-12-18 16:51:19.828681
6085	SEAGULL NEW COMBO ชุดเครื่องครัวนิวคอมโบ 7 ชิ้น	https://www.tvdirect.tv/seagull-new-combo-7	1090	0112400223568	2016-12-18 16:51:20.775914	2016-12-18 16:51:20.775914
6086	Seagull Picnic Gas Stove with Shabu Pot 24 cm ชุดเตาแก๊สปิกนิกพร้อมหม้อชาบู 24 ซม	https://www.tvdirect.tv/seagull-picnic-gas-stove-with-shabu-pot-24-cm-24	890	0112400225487	2016-12-18 16:51:21.63339	2016-12-18 16:51:21.63339
6087	SEAGULL SEASON ชุดเครื่องครัวนอนสติกซีซัน 3 ชิ้น	https://www.tvdirect.tv/seagull-season-3	590	0112400223485	2016-12-18 16:51:22.505577	2016-12-18 16:51:22.505577
6088	SEAGULL SET CLASSIC MIX 2 ชุดครัวคลาสสิค สีดำ	https://www.tvdirect.tv/seagull-set-classic-mix-2	1950	0112400224404	2016-12-18 16:51:23.233074	2016-12-18 16:51:23.233074
6089	SEAGULL SMART ชุดเครื่องครัวนอนสติกสมาร์ท 3 ชิ้น	https://www.tvdirect.tv/seagull-smart-3	590	0112400223506	2016-12-18 16:51:24.036265	2016-12-18 16:51:24.036265
6090	SEAGULL URBAN 1.5 L กระติกน้ำสูญญากาศเออเบิ้น 1.5 ลิตร	https://www.tvdirect.tv/seagull-urban-1-5-l-1-5	789	0112300208441	2016-12-18 16:51:24.921805	2016-12-18 16:51:24.921805
6091	SEAGULL URBAN กระติกน้ำสุญญากาศเออเบิ้น 1.2 ลิตร	https://www.tvdirect.tv/seagull-urban-1-2	729	0112400223582	2016-12-18 16:51:25.739	2016-12-18 16:51:25.739
6092	SHIMONO VACUUM เครื่องดูดฝุ่นแบบพกพา SVC-1017	https://www.tvdirect.tv/shimono-vacuum-svc-1017	2990	0112300208717	2016-12-18 16:51:26.554578	2016-12-18 16:51:26.554578
6093	Shogun Peeler อุปกรณ์ปอกเปลือกและสไลด์	https://www.tvdirect.tv/shogun-peeler	390	0122400601547	2016-12-18 16:51:27.529424	2016-12-18 16:51:27.529424
6094	SKG Panastar เครื่องปั่นแยกน้ำแยกกาก 4 in1	https://www.tvdirect.tv/skg-panastar-4-in1	1790	0112400222578	2016-12-18 16:51:28.32227	2016-12-18 16:51:28.32227
6095	SKG ลำโพงSUB WOOFER 2.1CH	https://www.tvdirect.tv/skg-sub-woofer-2-1ch	2990	0111200201460	2016-12-18 16:51:29.097734	2016-12-18 16:51:29.097734
6096	SKG หม้ออบลมร้อน Halogen 1,300 วัตต์	https://www.tvdirect.tv/skg-halogen-1-300	1190	0112400222639	2016-12-18 16:51:30.594516	2016-12-18 16:51:30.594516
6097	SKG เครื่องทำแฮมเบอร์เกอร์สีฟ้า	https://www.tvdirect.tv/skg-blue	890	0112400222646	2016-12-18 16:51:31.390676	2016-12-18 16:51:31.390676
6098	SKG เครื่องทำแฮมเบอร์เกอร์สีเขียว	https://www.tvdirect.tv/skg-green	890	0112400222653	2016-12-18 16:51:32.238211	2016-12-18 16:51:32.238211
6099	Smart Home Electric Grill Model เตาปิ้งย่างไฟฟ้า SM-BBQ02	https://www.tvdirect.tv/smarthome-electric-grill-model-sm-bbq02	1290	0112400223919	2016-12-18 16:51:33.063923	2016-12-18 16:51:33.063923
6100	Smart Home Electric Pans กระทะไฟฟ้าอเนกประสงค์	https://www.tvdirect.tv/smarthome-electric-pans	799	0112400223926	2016-12-18 16:51:33.890618	2016-12-18 16:51:33.890618
6101	Smart Home gas stove 1 Head เตาแก๊สหัวเดียว	https://www.tvdirect.tv/smart-home-gas-stove-1-head	790	0112400221465	2016-12-18 16:51:34.701508	2016-12-18 16:51:34.701508
6102	Smart Home Gas Stove 2 Head เตาแก๊สสองหัว	https://www.tvdirect.tv/smart-home-gas-stove-2-head	1520	0112400221472	2016-12-18 16:51:35.545239	2016-12-18 16:51:35.545239
6103	Smart Home Ice Maker เครื่องทำน้ำแข็งใส SM-ICE80	https://www.tvdirect.tv/smarthome-ice-maker-sm-ice80	890	0112400223933	2016-12-18 16:51:36.30932	2016-12-18 16:51:36.30932
6104	Smart Home Mini Washing Machine Col. Blue เครื่องซักผ้าขนาดเล็ก SM-MW01 สีฟ้า	https://www.tvdirect.tv/smarthome-mini-washing-machine-col-blue-sm-mw01	1990	0112300208144	2016-12-18 16:51:37.216587	2016-12-18 16:51:37.216587
6105	Smart Home Mini Washing Machine Col. Green เครื่องซักผ้าขนาดเล็ก SM-MW01 สีเขียว	https://www.tvdirect.tv/smarthome-mini-washing-machine-col-green-sm-mw01	1990	0112300208137	2016-12-18 16:51:38.131318	2016-12-18 16:51:38.131318
6106	SMART HOME กระทะไฟฟ้าอเนกประสงค์ NH-100A	https://www.tvdirect.tv/smart-home-nh-100a	980	0112400223094	2016-12-18 16:51:39.039412	2016-12-18 16:51:39.039412
6107	SMART HOME กาต้มน้ำ 1.8L CA-1002	https://www.tvdirect.tv/smart-home-1-8l-ca-1002	450	0112400223063	2016-12-18 16:51:39.860685	2016-12-18 16:51:39.860685
6108	SMART HOME กาต้มน้ำ 1.8L CA-1009	https://www.tvdirect.tv/smart-home-1-8l-ca-1009	360	0112400223056	2016-12-18 16:51:40.649974	2016-12-18 16:51:40.649974
6109	SMART HOME กาต้มน้ำอเนกประสงค์ 1.5L CA-1005	https://www.tvdirect.tv/smart-home-1-5l-ca-1005	450	0112400223070	2016-12-18 16:51:41.557286	2016-12-18 16:51:41.557286
6110	SMART HOME หม้อชาบู SP-2001	https://www.tvdirect.tv/smart-home-sp-2001	890	0112400223148	2016-12-18 16:51:42.373437	2016-12-18 16:51:42.373437
6111	SMART HOME หม้อหุงข้าว 1.8L SRC1802	https://www.tvdirect.tv/smart-home-1-8l-src1802	630	0112400223131	2016-12-18 16:51:43.244788	2016-12-18 16:51:43.244788
6112	SMART HOME หม้อหุงข้าว 1.8L SRC1803	https://www.tvdirect.tv/smart-home-1-8l-src1803	450	0112400223124	2016-12-18 16:51:44.127923	2016-12-18 16:51:44.127923
6113	Smart Home เครื่องดูดฝุ่น Bagless SM-VCBL01	https://www.tvdirect.tv/smart-home-bagless-sm-vcbl01	1590	0112300203408	2016-12-18 16:51:45.063782	2016-12-18 16:51:45.063782
6114	SMART HOME เครื่องปิ้งขนมปัง 2แผ่น SM-T02	https://www.tvdirect.tv/smart-home-2-sm-t02	315	0112400223087	2016-12-18 16:51:45.905608	2016-12-18 16:51:45.905608
6115	Smart Home เครื่องอบลมร้อน Halogen MV008	https://www.tvdirect.tv/smart-home-halogen-mv008	1250	0112400221441	2016-12-18 16:51:48.719844	2016-12-18 16:51:48.719844
6118	SMART HOME เตาแก๊สหัวคู๋แบบผสม SM-GA2H-02	https://www.tvdirect.tv/smart-home-sm-ga2h-02	1250	0112400223117	2016-12-18 16:51:53.900642	2016-12-18 16:51:53.900642
6119	SMART HOME เตาแก๊สหัวเดียวอินฟาเรด SM-GA1H-02	https://www.tvdirect.tv/smart-home-sm-ga1h-02	620	0112400223100	2016-12-18 16:51:54.783995	2016-12-18 16:51:54.783995
6120	Smart Nutri Drink Maker Glass 3 + Smart Timer 	https://www.tvdirect.tv/smart-nutri-drink-maker-glass-3-smart-timer	2990	SmartNutrDrinkMakerGlass3	2016-12-18 16:51:56.057243	2016-12-18 16:51:56.057243
6121	Smart Set ชุดตู้เสื้อผ้าอเนกประสงค์ 3 ชิ้น	https://www.tvdirect.tv/smart-set-3	1990	0112300207147	2016-12-18 16:51:57.050939	2016-12-18 16:51:57.050939
6122	Snap N Grip	https://www.tvdirect.tv/snapngrip	1290	SnapN Grip	2016-12-18 16:51:58.326833	2016-12-18 16:51:58.326833
6123	SOFA SHIELD KING SIZE ผ้าคลุมโซฟาสองด้าน 2 ชิ้น 	https://www.tvdirect.tv/shield-king-size-2	1490	ShieldKing	2016-12-18 16:51:59.153283	2016-12-18 16:51:59.153283
6124	SOKO พัดลมตั้งพื้น CK-9911	https://www.tvdirect.tv/soko-ck-9911	2400	0112300207877	2016-12-18 16:52:00.014629	2016-12-18 16:52:00.014629
6125	SOKO เครื่องคั้นน้ำแยกกาก SK-1185	https://www.tvdirect.tv/soko-sk-1185	990	0112400223700	2016-12-18 16:52:00.833657	2016-12-18 16:52:00.833657
6126	SOKO เครื่องตีไข่ CK-1188	https://www.tvdirect.tv/soko-ck-1188	1250	0112400223731	2016-12-18 16:52:01.724715	2016-12-18 16:52:01.724715
6127	SONAR Breakfast Set 2 in 1 กาต้มน้ำไฟฟ้าไร้สาย รุ่น EK-150S แถมเครื่องทำโดนัท	https://www.tvdirect.tv/sonar-breakfast-set-2-in-1-ek-150s	790	0112400224626	2016-12-18 16:52:02.760014	2016-12-18 16:52:02.760014
6128	SONAR BREAKFAST SET DM-007 + SM-W030 + ET-2S	https://www.tvdirect.tv/sonar-breakfast-set-dm-007-sm-w030-et-2s	1590	0112400223184	2016-12-18 16:52:03.559111	2016-12-18 16:52:03.559111
6129	SONAR BREAKFAST SET EK-181D + ET-2S	https://www.tvdirect.tv/sonar-breakfast-set-ek-181d-et-2s	799	0112400223423	2016-12-18 16:52:04.385775	2016-12-18 16:52:04.385775
6130	SONAR DVD PLAYER เครื่องเล่นDVD S-535และไมค์ลอยคู่WM-200	https://www.tvdirect.tv/sonar-dvd-player-dvd-s-535-wm-200	1450	0111200201590	2016-12-18 16:52:05.201048	2016-12-18 16:52:05.201048
6131	SONAR Healthy Set 2 กาต้มน้ำไฟฟ้า รุ่น JF-26P แถมเครื่องทำโดนัท	https://www.tvdirect.tv/sonar-healthy-set-2-jf-26p	2990	0112400224619	2016-12-18 16:52:06.02422	2016-12-18 16:52:06.02422
6132	SONAR Hot & Cold Water Dispenserเครื่องทำน้ำร้อน-น้ำเย็น รุ่น WD-CS205HC	https://www.tvdirect.tv/sonar-hot-cold-water-dispenser-wd-cs205hc	7490	0112300207956	2016-12-18 16:52:06.914521	2016-12-18 16:52:06.914521
6133	SONAR Hot & Cold Water Dispenserเครื่องทำน้ำร้อน-น้ำเย็น รุ่น WD-ES165HC	https://www.tvdirect.tv/sonar-hot-cold-water-dispenser-wd-es165hc	3590	0112300207949	2016-12-18 16:52:07.864701	2016-12-18 16:52:07.864701
6134	Sonar Portable Radio วิทยุ SP-202 สีดำแถมฟรี หูฟัง RV-600	https://www.tvdirect.tv/sonar-portable-radio-sp-202-rv-600-3499	990	0111200201569	2016-12-18 16:52:08.731207	2016-12-18 16:52:08.731207
6135	SONAR PORTABLE RADIO วิทยุ SP-202 สีเบจแถมฟรี หูฟัง RV-600	https://www.tvdirect.tv/sonar-portable-radio-sp-202-rv-600	990	0111200201552	2016-12-18 16:52:09.699694	2016-12-18 16:52:09.699694
6136	SONAR PORTABLE SPEAKERS วิทยุลำโพง DA-14 สีดำ แถมฟรี หูฟัง RV-600	https://www.tvdirect.tv/sonar-portable-speakers-da-14-rv-600-3497	790	0111200201583	2016-12-18 16:52:11.279692	2016-12-18 16:52:11.279692
6137	SONAR PORTABLE SPEAKERS วิทยุลำโพง DA-14 สีฟ้า แถมฟรี หูฟัง RV-600	https://www.tvdirect.tv/sonar-portable-speakers-da-14-rv-600	790	0111200201576	2016-12-18 16:52:12.118877	2016-12-18 16:52:12.118877
6138	SONAR กระทะไฟฟ้า 2 ชั้น SF-A22-เขียว	https://www.tvdirect.tv/sonar-2-sf-a22	810	0112400222943	2016-12-18 16:52:12.977345	2016-12-18 16:52:12.977345
6139	SONAR พัดลม SMARTWIND 12 นิ้ว EF-B184 -ชมพู	https://www.tvdirect.tv/sonar-smartwind-12-ef-b184-pink	590	0112300207417	2016-12-18 16:52:13.863919	2016-12-18 16:52:13.863919
6140	SONAR พัดลม SMARTWIND 12 นิ้ว EF-B184 -เขียว	https://www.tvdirect.tv/sonar-smartwind-12-ef-b184-green	590	0112300207424	2016-12-18 16:52:14.726948	2016-12-18 16:52:14.726948
6141	SONAR หม้อต้มอเนกประสงค์มินิ SR-C501	https://www.tvdirect.tv/sonar-sr-c501	790	0112400224107	2016-12-18 16:52:15.656072	2016-12-18 16:52:15.656072
6142	SONAR หม้อสุกี้อเนกประสงค์ 6in1 SR-D811	https://www.tvdirect.tv/sonar-6in1-sr-d811	699	0112400224084	2016-12-18 16:52:16.515012	2016-12-18 16:52:16.515012
6143	SONAR หม้ออบลมร้อน Halogen 7 ลิตร CV-307H	https://www.tvdirect.tv/sonar-halogen-7-cv-307h	990	0112400224091	2016-12-18 16:52:17.33261	2016-12-18 16:52:17.33261
6144	SONAR หม้ออบลมร้อนฮาโลเจน หม้อสแตนเลส CV-705	https://www.tvdirect.tv/sonar-cv-705	1340	0112400223025	2016-12-18 16:52:18.1131	2016-12-18 16:52:18.1131
6145	SONAR หม้ออบลมร้อนฮาโลเจน หม้อแก้ว CV-707H	https://www.tvdirect.tv/sonar-cv-707h	1250	0112400223032	2016-12-18 16:52:18.931268	2016-12-18 16:52:18.931268
6146	SONAR เครื่องทำเพรทเซล SM-P 002	https://www.tvdirect.tv/sonar-sm-p-002	790	0112400223191	2016-12-18 16:52:19.739356	2016-12-18 16:52:19.739356
6147	SONAR เครื่องทำโดนัท รุ่น DM-007 -ขาว	https://www.tvdirect.tv/sonar-dm-007-white	690	0112400222950	2016-12-18 16:52:20.551125	2016-12-18 16:52:20.551125
6148	SONAR เครื่องทำโดนัท รุ่น DM-007 -ดำ	https://www.tvdirect.tv/sonar-dm-007-black	620	0112400222967	2016-12-18 16:52:21.359804	2016-12-18 16:52:21.359804
6149	SONAR เครื่องทำโดนัท รุ่น DM-007 -แดง	https://www.tvdirect.tv/sonar-dm-007-red	620	0112400222974	2016-12-18 16:52:22.205868	2016-12-18 16:52:22.205868
6150	SONARกระติกน้ำร้อน 2.5 ลิตร รุ่น SP-T201	https://www.tvdirect.tv/sonar-2-5-sp-t201	599	0112400223430	2016-12-18 16:52:23.035965	2016-12-18 16:52:23.035965
6151	SONARพัดลม SMARTWIND 12 นิ้ว EF-B184 -ฟ้า	https://www.tvdirect.tv/sonar-smartwind-12-ef-b184-blue	590	0112300207400	2016-12-18 16:52:23.894599	2016-12-18 16:52:23.894599
6152	SONARหม้อสุกี้บาร์บีคิว SF-M41 -ฟ้า	https://www.tvdirect.tv/sonar-sf-m41	1290	0112400223454	2016-12-18 16:52:24.794356	2016-12-18 16:52:24.794356
6153	SONARเครื่องทำออมเล็ต รุ่น OM-023	https://www.tvdirect.tv/sonar-om-023	699	0112400223447	2016-12-18 16:52:25.601615	2016-12-18 16:52:25.601615
6154	Spin & Go Mop Head หัวม็อบสีเขียว 2 ชิ้น	https://www.tvdirect.tv/spin-go-mop-head-2	490	0121800306113	2016-12-18 16:52:26.451317	2016-12-18 16:52:26.451317
6155	SRITHAI ชุดกล่องถนอมอาหาร 6 ชิ้นพูล่าลิงกี้ PL1	https://www.tvdirect.tv/srithai-6-pl1	625	0112400223384	2016-12-18 16:52:27.318456	2016-12-18 16:52:27.318456
6156	SRITHAI ชุดกล่องถนอมอาหาร 6 ชิ้นพูล่าลิงกี้ PL2	https://www.tvdirect.tv/srithai-6-pl2	695	0112400223391	2016-12-18 16:52:28.850065	2016-12-18 16:52:28.850065
6157	SRITHAI ชุดกล่องถนอมอาหาร 8 ชิ้นพูล่าลิงกี้	https://www.tvdirect.tv/srithai-8	980	0112400223377	2016-12-18 16:52:29.665215	2016-12-18 16:52:29.665215
6158	SRITHAI ชุดช้อนส้อม 4 คู่ 8 ชิ้น ทรงแอสโทรเรีย	https://www.tvdirect.tv/srithai-4-8	767	0112400223407	2016-12-18 16:52:30.48666	2016-12-18 16:52:30.48666
6159	SRITHAI ชุดอาหาร 2 ที่ 17 ชิ้น ลายยำแซ่บ	https://www.tvdirect.tv/srithai-2-17	1390	0112400223285	2016-12-18 16:52:31.305354	2016-12-18 16:52:31.305354
6160	SRITHAI ชุดอาหาร 2 ที่ 9 ชิ้น ลายมิดไนท์โรส	https://www.tvdirect.tv/srithai-2-9	950	0112400223292	2016-12-18 16:52:32.11559	2016-12-18 16:52:32.11559
6161	SRITHAI ชุดอาหาร 4 ที่ 20 ชิ้น ลายฟลอร่าเลิฟ	https://www.tvdirect.tv/srithai-4-35	2200	0112400223278	2016-12-18 16:52:32.947022	2016-12-18 16:52:32.947022
6162	SRITHAI ชุดอาหาร 4 ที่ 20 ชิ้น ลายแซนดร้า	https://www.tvdirect.tv/srithai-4-34	2200	0112400223261	2016-12-18 16:52:33.772415	2016-12-18 16:52:33.772415
6163	SRITHAI ชุดอาหาร 4 ที่ 22 ชิ้น ลายบลูไลท์	https://www.tvdirect.tv/srithai-4-22	1800	0112400223216	2016-12-18 16:52:34.575214	2016-12-18 16:52:34.575214
6164	SRITHAI ชุดอาหาร 4 ที่ 22 ชิ้น ลายบอนนี่	https://www.tvdirect.tv/srithai-4-33	2000	0112400223254	2016-12-18 16:52:35.388677	2016-12-18 16:52:35.388677
6165	SRITHAI ชุดอาหาร 4 ที่ 26 ชิ้น ลาย การ์เด้นฮิว	https://www.tvdirect.tv/srithai-4-36	2575	0112400223353	2016-12-18 16:52:36.221296	2016-12-18 16:52:36.221296
6166	SRITHAI ชุดอาหาร 4 ที่ 30 ชิ้น ลายทับทิมทอง	https://www.tvdirect.tv/srithai-4-37	3200	0112400223360	2016-12-18 16:52:37.127351	2016-12-18 16:52:37.127351
6167	SRITHAI ชุดอาหาร 4 ที่ 30 ชิ้น ลายบลูมมิ่งบลู	https://www.tvdirect.tv/srithai-4-30	3075	0112400223223	2016-12-18 16:52:37.942414	2016-12-18 16:52:37.942414
6168	SRITHAI ชุดอาหาร 4 ที่ 30 ชิ้น ลายสวีทฟลอร่า	https://www.tvdirect.tv/srithai-4-32	3075	0112400223230	2016-12-18 16:52:38.717633	2016-12-18 16:52:38.717633
6169	SRITHAI หม้อสเตนเลส ทรงวินด์เชอร์ 6 ชิ้น	https://www.tvdirect.tv/srithai-6	3740	0112400223308	2016-12-18 16:52:39.547992	2016-12-18 16:52:39.547992
6170	SRITHAI หม้อสเตนเลส สิมิลัน 3 ชิ้น	https://www.tvdirect.tv/srithai-3	1775	0112400223315	2016-12-18 16:52:40.332208	2016-12-18 16:52:40.332208
6171	STABLE LINESDUO ALARM ปลั๊กไฟ 5 เต้า สาย 3 เมตร	https://www.tvdirect.tv/stable-linesduo-alarm-5-3	1390	0112300300695	2016-12-18 16:52:41.108659	2016-12-18 16:52:41.108659
6172	Star Twin Dualsaw Daimond Blade ใบเลื่อย Daimond Blade ขนาด 115 มม.	https://www.tvdirect.tv/star-twin-daimond-blade-daimond-blade-115	990	0123600300063	2016-12-18 16:52:41.913895	2016-12-18 16:52:41.913895
6173	Star Twin Dulasaw Tungsten Blade ใบเลื่อย Tungsten ขนาด 115 มม.	https://www.tvdirect.tv/star-twin-tungsten-blade-tungsten-115	990	0123600300070	2016-12-18 16:52:42.687392	2016-12-18 16:52:42.687392
6174	Supa Magic Hook ชุดตะขอแขวน	https://www.tvdirect.tv/supa-magic-hook	599	0112300208151	2016-12-18 16:52:43.504764	2016-12-18 16:52:43.504764
6175	SUVA Fresh Citrus Juicer-SV16020 ชุดคั้นน้ำส้ม-มะนาว	https://www.tvdirect.tv/suva-fresh-citrus-juicer-sv16020	165	0112300208304	2016-12-18 16:52:44.337096	2016-12-18 16:52:44.337096
6176	SUVA STOOL 5 IN 1 ชุดเก้าอี้สตูล ลายลูกเต๋า	https://www.tvdirect.tv/suva-stool-5-in-1	1650	0110900201392	2016-12-18 16:52:45.891259	2016-12-18 16:52:45.891259
6177	SUVA STOOL 5 IN 1 ชุดเก้าอี้สตูล ลายสีสดใส	https://www.tvdirect.tv/suva-stool-5-in-1-2859	1650	0110900201406	2016-12-18 16:52:46.675468	2016-12-18 16:52:46.675468
6178	SUVA ตะกร้ากรอง 2 ชั้น สีส้ม-เทา	https://www.tvdirect.tv/suva-2-orange	255	0112300208281	2016-12-18 16:52:47.518402	2016-12-18 16:52:47.518402
6179	SUVA ตะกร้ากรอง 2 ชั้น สีเบจ-ขาว	https://www.tvdirect.tv/suva-2	255	0112300208298	2016-12-18 16:52:48.301601	2016-12-18 16:52:48.301601
6180	TASTY ROASTER กล่องอบอาหาร	https://www.tvdirect.tv/tasty-roaster	690	0122400400096	2016-12-18 16:52:49.093677	2016-12-18 16:52:49.093677
6181	TCH LED EMERGENCY LIGHTหลอดไฟฉุกเฉิน-7W 2แถม3	https://www.tvdirect.tv/tch-led-emergency-light-7w-2-3	990	0112200200156	2016-12-18 16:52:49.857338	2016-12-18 16:52:49.857338
6182	Tecno+ หม้อทอดไร้น้ำมัน TNP AF Vesuvius 1300 W	https://www.tvdirect.tv/tecno-tnp-af-vesuvius-1300-w	3990	0112400222509	2016-12-18 16:52:50.735158	2016-12-18 16:52:50.735158
6183	Tecno+ เตาอบTNP DG 558 S	https://www.tvdirect.tv/tecno-tnp-dg-558-s	19900	0112400222455	2016-12-18 16:52:51.531061	2016-12-18 16:52:51.531061
6184	Tecno+ เตาอบTNP O 456 DG	https://www.tvdirect.tv/tecno-tnp-o-456-dg	15900	0112400222448	2016-12-18 16:52:52.400442	2016-12-18 16:52:52.400442
6185	Tecno+ เตาอบTNP O 456 MN	https://www.tvdirect.tv/tecno-tnp-o-456-mn	13900	0112400222431	2016-12-18 16:52:53.272765	2016-12-18 16:52:53.272765
6186	Tecno+ เตาอบไฟฟ้า TNP 1212J-H6E	https://www.tvdirect.tv/tecno-tnp-1212j-h6e	1990	0112400222462	2016-12-18 16:52:54.199214	2016-12-18 16:52:54.199214
6187	Tecno+ เตาอบไฟฟ้า TNP 1528Q-H7	https://www.tvdirect.tv/tecno-tnp-1528q-h7	3390	0112400222479	2016-12-18 16:52:55.008554	2016-12-18 16:52:55.008554
6188	Tecno+ เตาอบไฟฟ้า TNP 2038Q-H7	https://www.tvdirect.tv/tecno-tnp-2038q-h7	3990	0112400222486	2016-12-18 16:52:55.86055	2016-12-18 16:52:55.86055
6189	Tecno+ เตาแก๊สTNS IR 130 GB	https://www.tvdirect.tv/tecno-tns-ir-130-gb	1090	0112400222400	2016-12-18 16:52:56.682195	2016-12-18 16:52:56.682195
6190	Tecno+ เตาแก๊สTNS IR 2710 GB	https://www.tvdirect.tv/tecno-tns-ir-2710-gb	1890	0112400222417	2016-12-18 16:52:57.560987	2016-12-18 16:52:57.560987
6191	Tecno+ เตาแก๊สTNS IR 3710 GB	https://www.tvdirect.tv/tecno-tns-ir-3710-gb	2290	0112400222424	2016-12-18 16:52:58.36341	2016-12-18 16:52:58.36341
6192	Tecno+ เตาแม่เหล็กไฟฟ้าTNS IDS 2000 BR	https://www.tvdirect.tv/tecno-tns-ids-2000-br	3290	0112400222387	2016-12-18 16:52:59.272697	2016-12-18 16:52:59.272697
6193	Tecno+ เตาแม่เหล็กไฟฟ้าTNS IDS 2000 BSC	https://www.tvdirect.tv/tecno-tns-ids-2000-bsc	3590	0112400222394	2016-12-18 16:53:00.157751	2016-12-18 16:53:00.157751
6194	Tecno+ เตาแม่เหล็กไฟฟ้าTNS IDS 2000 CB	https://www.tvdirect.tv/tecno-tns-ids-2000-cb	1790	0112400222370	2016-12-18 16:53:00.999576	2016-12-18 16:53:00.999576
6195	Tecno+เตาอบไฟฟ้า TNP 2042HQ-H7	https://www.tvdirect.tv/tecno-tnp-2042hq-h7	5290	0112400221816	2016-12-18 16:53:01.845669	2016-12-18 16:53:01.845669
6196	TEFAL INGENIO GOOD CHOICE SET ชุดกระทะ 6 ชิ้น	https://www.tvdirect.tv/tefal-ingenio-good-choice-set-6	2990	0112400224527	2016-12-18 16:53:03.766557	2016-12-18 16:53:03.766557
6197	TEFAL SO RED FRYING PAN SET ชุดกระทะ 5 ชิ้น	https://www.tvdirect.tv/tefal-so-red-frying-pan-set-5	2890	0112400224534	2016-12-18 16:53:04.690577	2016-12-18 16:53:04.690577
6198	The Ultimate Juicer เครื่องคั้นน้ำผลไม้สด	https://www.tvdirect.tv/ultimate-juicer	990	0122400601257	2016-12-18 16:53:05.589632	2016-12-18 16:53:05.589632
6199	TITAN TWIST MOP ม็อบถูพื้นแบบบิด	https://www.tvdirect.tv/titan-twist-mop	890	0122300601647	2016-12-18 16:53:06.422519	2016-12-18 16:53:06.422519
6200	TORNADO BOTTLE กระบอกเชคอัตโนมัติแบบพกพา 2 ชิ้น 	https://www.tvdirect.tv/tornado-bottle-2	990	TornadoBottle	2016-12-18 16:53:07.241135	2016-12-18 16:53:07.241135
6201	TOTAL PAINTER เครื่องพ่นสีไฟฟ้า	https://www.tvdirect.tv/total-painter	3990	0121100600249	2016-12-18 16:53:08.031864	2016-12-18 16:53:08.031864
6202	TOUCAN CAN OPENER เครื่องเปิดกระป๋องอัตโนมัติ	https://www.tvdirect.tv/toucan-can-opener	349	0122400601431	2016-12-18 16:53:08.83392	2016-12-18 16:53:08.83392
6203	TULIP POKEMON ชุดเครื่องนอนทิวลิปเซต 3.5 ฟุต 4 ชิ้น ลาย SL502 POKEMON	https://www.tvdirect.tv/tulip-pokemon-3-5-4-sl502-pokemon	2170	0110800201870	2016-12-18 16:53:09.652318	2016-12-18 16:53:09.652318
6204	TULIP POKEMON ชุดเครื่องนอนทิวลิปเซต 3.5 ฟุต 4 ชิ้น ลาย SL508 POKEMON	https://www.tvdirect.tv/tulip-pokemon-3-5-4-sl508-pokemon	2170	0110800201887	2016-12-18 16:53:10.442076	2016-12-18 16:53:10.442076
6205	TULIP POKEMON ชุดเครื่องนอนทิวลิปเซต 3.5 ฟุต 4 ชิ้น ลาย SL509 POKEMON	https://www.tvdirect.tv/tulip-pokemon-3-5-4-sl509-pokemon	2170	0110800201894	2016-12-18 16:53:11.467884	2016-12-18 16:53:11.467884
6206	TULIP POKEMON ชุดเครื่องนอนทิวลิปเซต 6 ฟุต 6 ชิ้น ลาย SL502 POKEMON	https://www.tvdirect.tv/tulip-pokemon-6-6-sl502-pokemon	2925	0110800201849	2016-12-18 16:53:12.236843	2016-12-18 16:53:12.236843
6207	TULIP POKEMON ชุดเครื่องนอนทิวลิปเซต 6 ฟุต 6 ชิ้น ลาย SL508 POKEMON	https://www.tvdirect.tv/tulip-pokemon-6-6-sl508-pokemon	2925	0110800201856	2016-12-18 16:53:13.015447	2016-12-18 16:53:13.015447
6208	TULIP POKEMON ชุดเครื่องนอนทิวลิปเซต 6 ฟุต 6 ชิ้น ลาย SL509 POKEMON	https://www.tvdirect.tv/tulip-pokemon-6-6-sl509-pokemon	2925	0110800201863	2016-12-18 16:53:13.824418	2016-12-18 16:53:13.824418
6209	TUTTY FRUITY เครื่องทำไอศครีม	https://www.tvdirect.tv/tutty-fruity	1990	0122400601141	2016-12-18 16:53:14.650031	2016-12-18 16:53:14.650031
6210	U-RO DECOR Bar Stool Lemon สตูลเหล็ก 4 ชิ้นต่อ1ชุด 	https://www.tvdirect.tv/u-ro-decor-bar-stool-lemon-4-1	599	UroCecor	2016-12-18 16:53:17.53379	2016-12-18 16:53:17.53379
6211	U-RO DECOR Bar Stool Zania-L  บาร์สตูลเหล็ก	https://www.tvdirect.tv/u-ro-decor-bar-stool-zania-l	1390	UROBarStool	2016-12-18 16:53:18.952964	2016-12-18 16:53:18.952964
6212	U-RO DECOR Bar Stool Zania-S บาร์สตูลเหล็ก 	https://www.tvdirect.tv/u-ro-decor-bar-stool-zania-s	990	URODecorS	2016-12-18 16:53:20.259329	2016-12-18 16:53:20.259329
6213	U-RO DECOR Chair Acron White เก้าอี้ดีไซน์อเนกประสงค์ สีขาว	https://www.tvdirect.tv/u-ro-decor-chair-acron-white	1790	0110900201916	2016-12-18 16:53:21.419977	2016-12-18 16:53:21.419977
6214	U-RO DECOR Chair Cento Red เก้าอี้รับประทานอาหาร สีแดง	https://www.tvdirect.tv/u-ro-decor-chair-cento-red	2590	0110900201909	2016-12-18 16:53:22.201951	2016-12-18 16:53:22.201951
6215	U-RO DECOR Desk White Oak โต๊ะทำงานอเนกประสงค์ สีโอ้คธรรมชาติ	https://www.tvdirect.tv/u-ro-decor-desk-white-oak-3697	2290	0110900202098	2016-12-18 16:53:22.997972	2016-12-18 16:53:22.997972
6216	U-RO DECOR Dining table รุ่น Hollywood Maple ชุดโต๊ะรับประทานอาหารเก้าอี้ 4ตัว สีเมเปิ้ล	https://www.tvdirect.tv/u-ro-decor-dining-table-hollywood-maple-4	6990	0110900201893	2016-12-18 16:53:24.832558	2016-12-18 16:53:24.832558
6217	U-RO DECOR Dining table รุ่น Sonoma Black Oak ชุดโต๊ะรับประทานอาหารเก้าอี้ 2ตัว สีโอ้ค	https://www.tvdirect.tv/u-ro-decor-dining-table-sonoma-black-oak-2	2990	0110900201879	2016-12-18 16:53:25.632775	2016-12-18 16:53:25.632775
6218	U-RO DECOR Dining table รุ่น Sonoma Sanrimo ชุดโต๊ะรับประทานอาหาร เก้าอี้ 4 ตัว สีซานรีโม่	https://www.tvdirect.tv/u-ro-decor-dining-table-sonoma-sanrimo-4	3990	0110900201855	2016-12-18 16:53:26.443138	2016-12-18 16:53:26.443138
6219	U-RO DECOR Dining table รุ่น Sonoma Sanrimo ชุดโต๊ะรับประทานอาหารเก้าอี้ 2ตัว สีซานรีโม่	https://www.tvdirect.tv/u-ro-decor-dining-table-sonoma-sanrimo-2	2990	0110900201886	2016-12-18 16:53:27.277709	2016-12-18 16:53:27.277709
6220	U-RO DECOR Dining table รุ่น Sonoma Walnut ชุดโต๊ะรับประทานอาหาร เก้าอี้ 4 ตัว สีวอลนัทเข้ม	https://www.tvdirect.tv/u-ro-decor-dining-table-sonoma-walnut-4	3990	0110900201862	2016-12-18 16:53:28.101761	2016-12-18 16:53:28.101761
6221	U-RO DECOR Sofa Bed Jibzy Gray โซฟาเบด 3 ที่นั่ง สีเทา	https://www.tvdirect.tv/u-ro-decor-sofa-bed-jibzy-gray-3	13000	0110900201947	2016-12-18 16:53:28.91841	2016-12-18 16:53:28.91841
6222	U-RO DECOR Sofa Bed Sky Black โซฟาเบด 3 ที่นั่ง สีดำ	https://www.tvdirect.tv/u-ro-decor-sofa-bed-sky-black-3	3990	0110900201923	2016-12-18 16:53:29.721013	2016-12-18 16:53:29.721013
6223	U-RO DECOR Sofa Bed Sky Brown โซฟาเบด 3 ที่นั่ง สีน้ำตาล	https://www.tvdirect.tv/u-ro-decor-sofa-bed-sky-brown-3	3990	0110900201930	2016-12-18 16:53:30.557478	2016-12-18 16:53:30.557478
6224	U-RO DECOR SOFA CAROL เดย์เบดผ้า สีดำ	https://www.tvdirect.tv/u-ro-decor-sofa-carol	7900	0110900202296	2016-12-18 16:53:31.413125	2016-12-18 16:53:31.413125
6225	U-RO DECOR SOFA COSTA-F โซฟาเข้ามุม 3 ที่นั่ง สีดำ	https://www.tvdirect.tv/u-ro-decor-sofa-costa-f-3	12900	0110900202302	2016-12-18 16:53:32.27587	2016-12-18 16:53:32.27587
6226	UDEE STEEL HOLDER DESK SILVER ตะแกรงเหล็กแขวนใต้ชั้น - สีเงิน	https://www.tvdirect.tv/udee-steel-holder-desk-silver	255	0112300208212	2016-12-18 16:53:33.101567	2016-12-18 16:53:33.101567
6227	UDEE กระปุกตะแกรงเหล็กพร้อมฝา 2 IN 1 - สีดำ	https://www.tvdirect.tv/udee-2-in-1-black	125	0112300208267	2016-12-18 16:53:33.921265	2016-12-18 16:53:33.921265
6228	UDEE กระปุกตะแกรงเหล็กพร้อมฝา 2 IN 1 - สีเงิน	https://www.tvdirect.tv/udee-2-in-1-silver	125	0112300208274	2016-12-18 16:53:34.817377	2016-12-18 16:53:34.817377
6229	UDEE ชุดกล่องถนอมอาหารปุ่มกด 3 ชิ้น -น้ำตาล	https://www.tvdirect.tv/udee-3-brown	1300	0112400224268	2016-12-18 16:53:35.677715	2016-12-18 16:53:35.677715
6230	UDEE ชุดกล่องถนอมอาหารปุ่มกด 3 ชิ้น -ใส	https://www.tvdirect.tv/udee-3-clear	1250	0112400224251	2016-12-18 16:53:36.475526	2016-12-18 16:53:36.475526
6231	UDEE ตะแกรงเหล็กจัดเก็บอเนกประสงค์ 1.1- สีดำ	https://www.tvdirect.tv/udee-1-1-black-1	225	0112300208229	2016-12-18 16:53:37.298968	2016-12-18 16:53:37.298968
6232	UDEE ตะแกรงเหล็กจัดเก็บอเนกประสงค์ 1.1- สีเงิน	https://www.tvdirect.tv/udee-1-1-silver	225	0112300208236	2016-12-18 16:53:38.14407	2016-12-18 16:53:38.14407
6233	UDEE ตะแกรงเหล็กจัดเก็บอเนกประสงค์ 1.2 - สีดำ	https://www.tvdirect.tv/udee-1-2-black	225	0112300208243	2016-12-18 16:53:38.991996	2016-12-18 16:53:38.991996
6234	UDEE ตะแกรงเหล็กจัดเก็บอเนกประสงค์ 1.2- สีเงิน	https://www.tvdirect.tv/udee-1-2-silver	225	0112300208250	2016-12-18 16:53:39.831231	2016-12-18 16:53:39.831231
6235	ULTIMO CASA CLOTH RACK ราวตากผ้าสแตนเลสปรับขนาด	https://www.tvdirect.tv/ultimo-casa-cloth-rack	1990	0122300601586	2016-12-18 16:53:40.633901	2016-12-18 16:53:40.633901
6236	ULTIMO TURBO MOB ม็อบหัวเดี่ยวพลังเทอร์โบ	https://www.tvdirect.tv/ultimo-turbo-mob	990	0122300601759	2016-12-18 16:53:42.282626	2016-12-18 16:53:42.282626
6237	ULTRAMAXX NUTRITIONAL EXTRACTOR เครื่องปั่นพลังสูง แถมฟรี Ultramaxx Nutritional Extractor CUPS โถปั่น พร้อม กระเป๋า	https://www.tvdirect.tv/ultramaxx-nutritional-extractor-ultramaxx-nutritional-extractor-extractor-cups	1990	ULTRAMAXX1	2016-12-18 16:53:43.572979	2016-12-18 16:53:43.572979
6238	VARTA FLASHLIGHT HEADBAND ไฟฉายแบบคาดหัว รุ่น 17730	https://www.tvdirect.tv/varta-flashlight-headband-17730	850	0111100200860	2016-12-18 16:53:44.376376	2016-12-18 16:53:44.376376
6239	VARTA LED FLASHLIGHT ไฟฉาย LED 1 วัตต์ รุ่น 18700	https://www.tvdirect.tv/varta-led-flashlight-led-1-18700	1400	0111100200877	2016-12-18 16:53:45.185416	2016-12-18 16:53:45.185416
6240	VARTA LED FLASHLIGHT ไฟฉาย LED 1 วัตต์ รุ่น 18701	https://www.tvdirect.tv/varta-led-flashlight-led-1-18701	1400	0111100200884	2016-12-18 16:53:46.321777	2016-12-18 16:53:46.321777
6241	VR FITTING 3 Tier Metal Shelf Black ชั้นเหล็ก 3 ชั้น ZIR3-361536 -ดำ	https://www.tvdirect.tv/vr-fitting-3-tier-metal-shelf-black-3-zir3-361536	2650	0112300207462	2016-12-18 16:53:47.138848	2016-12-18 16:53:47.138848
6242	VR FITTING 3 Tier Metal Shelf Black ชั้นเหล็ก 3ชั้น ZIR3-241536 -ดำ	https://www.tvdirect.tv/vr-fitting-3-tier-metal-shelf-black-3-zir3-241536	2390	0112300207521	2016-12-18 16:53:47.944947	2016-12-18 16:53:47.944947
6243	VR FITTING 3 Tier Metal Shelf White ชั้นเหล็ก 3 ชั้น ZIR3W-361536 -ขาว	https://www.tvdirect.tv/vr-fitting-3-tier-metal-shelf-white-3-zir3w-361536	2650	0112300207479	2016-12-18 16:53:48.792222	2016-12-18 16:53:48.792222
6244	VR FITTING 3 Tier Metal Shelf White ชั้นเหล็ก 3ชั้น ZIR3W-241536 -ขาว	https://www.tvdirect.tv/vr-fitting-3-tier-metal-shelf-white-3-zir3w-241536	2390	0112300207538	2016-12-18 16:53:49.648502	2016-12-18 16:53:49.648502
6245	VR FITTING 4 Tier Metal Shelf Black ชั้นเหล็ก 4 ชั้น ZIR4-421855 -ดำ	https://www.tvdirect.tv/vr-fitting-4-tier-metal-shelf-black-4-zir4-421855	4250	0112300207486	2016-12-18 16:53:50.486337	2016-12-18 16:53:50.486337
6246	VR FITTING 4 Tier Metal Shelf Black ชั้นเหล็ก 4ชั้น ZIR4-241555 -ดำ	https://www.tvdirect.tv/vr-fitting-4-tier-metal-shelf-black-4-zir4-241555	3150	0112300207545	2016-12-18 16:53:51.295343	2016-12-18 16:53:51.295343
6247	VR FITTING 4 Tier Metal Shelf White ชั้นเหล็ก 4 ชั้น ZIR4W-421855 -ขาว	https://www.tvdirect.tv/vr-fitting-4-tier-metal-shelf-white-4-zir4w-421855	4250	0112300207493	2016-12-18 16:53:52.114273	2016-12-18 16:53:52.114273
6248	VR FITTING 4 Tier Metal Shelf White ชั้นเหล็ก 4ชั้น ZIR4W-241555 -ขาว	https://www.tvdirect.tv/vr-fitting-4-tier-metal-shelf-white-4-zir4w-241555	3150	0112300207552	2016-12-18 16:53:52.964924	2016-12-18 16:53:52.964924
6249	VR FITTING 5 Tier Metal Shelf Black ชั้นเหล็ก 5 ชั้น ZIR5-481872 -ดำ	https://www.tvdirect.tv/vr-fitting-5-tier-metal-shelf-black-5-zir5-481872	5690	0112300207507	2016-12-18 16:53:53.776815	2016-12-18 16:53:53.776815
6250	VR FITTING 5 Tier Metal Shelf White ชั้นเหล็ก 5 ชั้น ZIR5W-481872 -ขาว	https://www.tvdirect.tv/vr-fitting-5-tier-metal-shelf-white-5-zir5w-481872	5690	0112300207514	2016-12-18 16:53:54.559386	2016-12-18 16:53:54.559386
6251	VR Fitting ชุดโต๊ะปิคนิคอลูมิเนียมเก้าอี้แยก 4 ตัว หน้าโต๊ะลายไม้ ZZ1PC1612SA	https://www.tvdirect.tv/vr-fitting-4-zz1pc1612sa	1490	0110900201378	2016-12-18 16:53:55.388286	2016-12-18 16:53:55.388286
6252	VR Fitting บันไดพับอลูมิเนียม 8 ขั้น ZHTL402B-08	https://www.tvdirect.tv/8-zhtl402b-08	1850	0112300207455	2016-12-18 16:53:56.259962	2016-12-18 16:53:56.259962
6253	VR Fitting รถเข็นสินค้ามีล้อ พับได้ ZHVL-60	https://www.tvdirect.tv/zhvl-60	1250	0112300207448	2016-12-18 16:53:57.039263	2016-12-18 16:53:57.039263
6254	VR Fitting รถเข็นอเนกประสงค์ 4 ล้อ พับได้ ZHVL-2-04A-1	https://www.tvdirect.tv/4-zhvl-2-04a-1	1450	0112300207431	2016-12-18 16:53:57.886074	2016-12-18 16:53:57.886074
6255	WATASHI EASY EASY ชุดกล้องวงจรปิด อีซี่ๆ HDCVI - 2 กล้อง	https://www.tvdirect.tv/watashi-easy-easy-hdcvi-2	8888	0112800300010	2016-12-18 16:53:58.720923	2016-12-18 16:53:58.720923
6256	WATASHI EASY EASY ชุดกล้องวงจรปิด อีซี่ๆ HDCVI - 4 กล้อง	https://www.tvdirect.tv/watashi-easy-easy-hdcvi-4	14300	0112800300034	2016-12-18 16:54:00.218363	2016-12-18 16:54:00.218363
6257	WATASHI WIFI IP CAMERA กล้องวงจรปิดไร้สาย	https://www.tvdirect.tv/watashi-wifi-ip-camera	3990	0112800300027	2016-12-18 16:54:01.063559	2016-12-18 16:54:01.063559
6258	Welness Dust Away 1000 ml. ผลิตภัณฑ์เคลือบพื้นผิวและป้องกันฝุ่น	https://www.tvdirect.tv/welness-dust-away-1000-ml	245	0111300300933	2016-12-18 16:54:01.862986	2016-12-18 16:54:01.862986
6259	Welness Dust Away Power 3 ผลิตภัณฑ์ทำความสะอาด ขนาด 1000 มล.	https://www.tvdirect.tv/welness-dust-away-power-3-1000	390	0112300300138	2016-12-18 16:54:02.940393	2016-12-18 16:54:02.940393
6260	Welness Dust Away Power 3 ผลิตภัณฑ์ทำความสะอาด ขนาด 250 มล.	https://www.tvdirect.tv/welness-dust-away-power-3-250	125	0112300300152	2016-12-18 16:54:03.876358	2016-12-18 16:54:03.876358
6261	Welness Dust Away Power 3 ผลิตภัณฑ์ทำความสะอาด ขนาด 500 มล.	https://www.tvdirect.tv/welness-dust-away-power-3-500	245	0112300300145	2016-12-18 16:54:04.783496	2016-12-18 16:54:04.783496
6262	XTA HOSE 75 ft. & NOOZLE สายยางยืดขยาย 75 ฟุต	https://www.tvdirect.tv/xta-hose-75-ft-noozle-75	780	0122300500049	2016-12-18 16:54:05.643406	2016-12-18 16:54:05.643406
6263	Yard Monster Electric mowers Black-Red รถตัดหญ้าไฟฟ้า 1200วัตต์ สีดำ-แดง	https://www.tvdirect.tv/yard-monster-electric-mowers-black-red-1200	4150	0112200200187	2016-12-18 16:54:06.432865	2016-12-18 16:54:06.432865
6264	Yard Monster Electric mowers Black-Red รถตัดหญ้าไฟฟ้า 1400วัตต์ สีดำ-แดง	https://www.tvdirect.tv/yard-monster-electric-mowers-black-red-1400	4990	0112200200194	2016-12-18 16:54:07.253456	2016-12-18 16:54:07.253456
6265	Yogutto Homemade Yogurt Maker เครื่องทำโยเกิร์ตแบบธรรมชาติ	https://www.tvdirect.tv/yogutto-homemade-yogurt-maker	1899	0112400223762	2016-12-18 16:54:08.125205	2016-12-18 16:54:08.125205
6266	Zisha Stew Cooker หม้อตุ๋น ขนาด 3.8 ลิตร รุ่น KSC38-M	https://www.tvdirect.tv/zisha-stew-cooker-3-8-ksc38-m	1990	0122400600014	2016-12-18 16:54:08.946327	2016-12-18 16:54:08.946327
6267	ชั้นวางทีวี-เครื่องเสียง SU-DM29	https://www.tvdirect.tv/su-dm29	799	0110900201237	2016-12-18 16:54:09.763667	2016-12-18 16:54:09.763667
6268	ตู้วางทีวี-เครื่องเสียงมีประตูกระจก FT-3030	https://www.tvdirect.tv/ft-3030	1590	0110900201244	2016-12-18 16:54:10.58879	2016-12-18 16:54:10.58879
6269	ปลั๊กไฟ Stable lines Duo Alarm 4 เต้า สาย 3 เมตร	https://www.tvdirect.tv/stable-lines-duo-alarm-4-3	990	0112300300572	2016-12-18 16:54:11.40895	2016-12-18 16:54:11.40895
6270	ราวตากผ้า Smart Rack สีขาว	https://www.tvdirect.tv/smart-track	1290	0112300207000	2016-12-18 16:54:12.246307	2016-12-18 16:54:12.246307
6271	เก้าอี้พักผ่อนปรับเอนนอน KT-RC03 สีน้ำเงิน	https://www.tvdirect.tv/kt-rc03-419	950	0110900200988	2016-12-18 16:54:13.071195	2016-12-18 16:54:13.071195
6272	เก้าอี้พักผ่อนปรับเอนนอน KT-RC03 สีเขียว	https://www.tvdirect.tv/kt-rc03	950	0110900200995	2016-12-18 16:54:13.886525	2016-12-18 16:54:13.886525
6273	เครื่องดูดฝุ่นแห้ง-น้ำ Duracraft-Angelo20	https://www.tvdirect.tv/all-duracraft-angelo20	2790	0112300207154	2016-12-18 16:54:14.77689	2016-12-18 16:54:14.77689
6274	เครื่องดูดฝุ่นแห้ง-น้ำ Duracraft-Angelo30	https://www.tvdirect.tv/all-duracraft-angelo30	3990	0112300207161	2016-12-18 16:54:15.628789	2016-12-18 16:54:15.628789
6275	เครื่องทำความสะอาดอเนกประสงค์ Polish Mop	https://www.tvdirect.tv/polish-mop	1790	0112300207079	2016-12-18 16:54:16.398088	2016-12-18 16:54:16.398088
6276	โต๊ะเอนกประสงค์ KT-MD01-สีดำ	https://www.tvdirect.tv/kt-md01	999	0112300203774	2016-12-18 16:54:17.838079	2016-12-18 16:54:17.838079
6277	ไม้ถูพื้นมหัศจรรย์ 2in1 SupaMopIII	https://www.tvdirect.tv/2in1-supamopiii	990	0112300207086	2016-12-18 16:54:18.661768	2016-12-18 16:54:18.661768
6278	Air O Space Luxury Bed Set Queen Size	https://www.tvdirect.tv/air-o-space-luxury-bed-set-queen-size	1990	0122300601043	2016-12-18 16:54:19.527245	2016-12-18 16:54:19.527245
6279	Blast Vac Pro เครื่องดูดฝุ่นเป่าลม	https://www.tvdirect.tv/blast-vac-pro	990	0122300601470	2016-12-18 16:54:20.340106	2016-12-18 16:54:20.340106
6280	Ceramicore Sarten Ceramica กระทะเซรามิก ขนาด 24 ซม.	https://www.tvdirect.tv/ceramicore-sarten-ceramica-24-tapa-24	590	0122400600847	2016-12-18 16:54:21.154099	2016-12-18 16:54:21.154099
6281	CLEANING ROBOT A335หุ่นยนต์ทำความสะอาด	https://www.tvdirect.tv/cleaning-robot-a335	7900	0122300500087	2016-12-18 16:54:21.973329	2016-12-18 16:54:21.973329
6282	Clever Mop อุปกรณ์ทำความสะอาด	https://www.tvdirect.tv/clever-mop	1490	0122300601548	2016-12-18 16:54:22.788377	2016-12-18 16:54:22.788377
6283	Crane Humidifier เครื่องทำความชื้น DROP SHAPE	https://www.tvdirect.tv/humidifiers-drop-shape	2490	0122300601708	2016-12-18 16:54:23.587044	2016-12-18 16:54:23.587044
6284	CYCLUUM POWER VAC เครื่องดูดฝุ่นไซคัม	https://www.tvdirect.tv/cycluum-power-vac	1490	0122300601678	2016-12-18 16:54:24.393562	2016-12-18 16:54:24.393562
6285	Dream Box ดรีมบ๊อกซ์ ชั้นวางอเนกประสงค์	https://www.tvdirect.tv/dream-box	1990	0122300601456	2016-12-18 16:54:25.289802	2016-12-18 16:54:25.289802
6286	EARTHQUAKE MUG (BLACK) แก้วไม่หกไม่ล้มสีดำ	https://www.tvdirect.tv/earthquake-mug-black	290	0122400601394	2016-12-18 16:54:26.104434	2016-12-18 16:54:26.104434
6287	EARTHQUAKE MUG (SILVER) แก้วไม่หกไม่ล้มสีเงิน	https://www.tvdirect.tv/earthquake-mug-silver	290	0122400601387	2016-12-18 16:54:27.120622	2016-12-18 16:54:27.120622
6288	FLAVOR CHEF กระทะไฟฟ้าเคลือบแซฟไฟร์	https://www.tvdirect.tv/flavor-chef	1690	0122400600991	2016-12-18 16:54:28.038887	2016-12-18 16:54:28.038887
6289	Frozen Fruitty Pro เครื่องทำไอศกรีมและสไลด์ผักผลไม้ รุ่น WTF-99E	https://www.tvdirect.tv/frozen-fruitty-pro-wtf-99e	1990	0122400500109	2016-12-18 16:54:28.812047	2016-12-18 16:54:28.812047
6290	Fusion Juicer เครื่องสกัดน้ำแยกกาก	https://www.tvdirect.tv/fusion-juicer	2990	0122400601066	2016-12-18 16:54:29.601956	2016-12-18 16:54:29.601956
6291	Garry Vacuum เครื่องดูดฝุ่นทรงพลัง	https://www.tvdirect.tv/garry-vacuum	1990	0122300600985	2016-12-18 16:54:30.443628	2016-12-18 16:54:30.443628
6292	H2O Mop X5 + เครื่องพ่นไอน้ำ 5 in 1	https://www.tvdirect.tv/h2o-mop-x5-5-in-1	2290	0122300601463	2016-12-18 16:54:31.307083	2016-12-18 16:54:31.307083
6293	H2O Mop X5 อุปกรณ์ทำความสะอาดระบบไอน้ำ	https://www.tvdirect.tv/h2o-mop-x5	1990	0122300600367	2016-12-18 16:54:32.101731	2016-12-18 16:54:32.101731
6294	HARRY BLACKSTONE GOURMET GRILLเครื่องปิ้งย่างไฟฟ้า	https://www.tvdirect.tv/harry-blackstone-gourmet-grill	990	0122400601325	2016-12-18 16:54:32.952294	2016-12-18 16:54:32.952294
6295	Hook it ตะขอเกี่ยวอเนกประสงค์	https://www.tvdirect.tv/hook-it	390	0122300601692	2016-12-18 16:54:33.748961	2016-12-18 16:54:33.748961
6296	I Scope ไฟฉายแอลอีดีอเนกประสงค์	https://www.tvdirect.tv/i-scope	1290	0122500600488	2016-12-18 16:54:35.274465	2016-12-18 16:54:35.274465
6297	Insta Lift ผลิตภัณฑ์ดูแลพื้นผิว Pack 3 ขวด	https://www.tvdirect.tv/insta-lift-set-3	390	0122300601524	2016-12-18 16:54:36.14976	2016-12-18 16:54:36.14976
6298	IONIC WHISPERเครื่องฟอกอากาศขนาดเล็ก	https://www.tvdirect.tv/ionic-whisper	1990	0122300600374	2016-12-18 16:54:36.958088	2016-12-18 16:54:36.958088
6299	JML DOKTOR POWER CLOTHS ผ้าทำความสะอาดไมโครไฟเบอร์	https://www.tvdirect.tv/jml-doktor-power-cloths	199	0112300300541	2016-12-18 16:54:37.758998	2016-12-18 16:54:37.758998
6300	KENJI KNIFE SET ชุดมีดเซรามิค	https://www.tvdirect.tv/kenji-knife-set	490	0122100300108	2016-12-18 16:54:38.565817	2016-12-18 16:54:38.565817
6301	KOKINOOR ชุดหม้อสแตนเลส 6 ชิ้น HSP32S	https://www.tvdirect.tv/kokinoor-6-hsp32s	1290	0112400223155	2016-12-18 16:54:39.422513	2016-12-18 16:54:39.422513
6302	MICRO GRILL ถาดทำอาหารด้วยไมโครเวฟ	https://www.tvdirect.tv/micro-grill	990	0122300300052	2016-12-18 16:54:40.235571	2016-12-18 16:54:40.235571
6303	MosQ Eco Trap GM918  รุ่น 60 ตร.ม.	https://www.tvdirect.tv/mosq-trap-gm918-60	790	0122300601722	2016-12-18 16:54:41.06996	2016-12-18 16:54:41.06996
6304	Multi Stor Black กล่องเก็บของ 2 ชั้น สีดำ	https://www.tvdirect.tv/multi-stor-black-2	990	0122300601012	2016-12-18 16:54:41.940325	2016-12-18 16:54:41.940325
6305	Multi Stor White กล่องเก็บของ 2 ชั้น สีขาว	https://www.tvdirect.tv/multi-stor-white-2	990	0122300601029	2016-12-18 16:54:44.638126	2016-12-18 16:54:44.638126
6306	Multi Tea Pot กาชงชา	https://www.tvdirect.tv/multi-tea-pot	349	0122400600960	2016-12-18 16:54:45.872543	2016-12-18 16:54:45.872543
6307	My Pillow หมอนแห่งการพักผ่อน	https://www.tvdirect.tv/my-pillow	990	0122300601050	2016-12-18 16:54:47.121878	2016-12-18 16:54:47.121878
6308	Perfect QQ Pillow Set หมอนพร้อมแท่นวางอเนกประสงค์	https://www.tvdirect.tv/perfect-qq-pillow-set	490	0122200300039	2016-12-18 16:54:48.294007	2016-12-18 16:54:48.294007
6309	Perfect Slicer อุปกรณ์หั่นผลไม้	https://www.tvdirect.tv/perfect-slicer	390	0120700601168	2016-12-18 16:54:49.469185	2016-12-18 16:54:49.469185
6310	Power Juicer Express เครื่องสกัดน้ำแยกกาก	https://www.tvdirect.tv/power-juicer-express	2490	0122400600755	2016-12-18 16:54:50.307856	2016-12-18 16:54:50.307856
6311	Press Dome ฝาปิดอาหารสุญญากาศ	https://www.tvdirect.tv/press-dome	590	0122400600953	2016-12-18 16:54:51.185454	2016-12-18 16:54:51.185454
6312	RoboPal Smart Sweeper (RED) หุ่นยนต์ทำความสะอาด 3 in 1 สีแดง	https://www.tvdirect.tv/robopal-smart-sweeper-red-3in1	3990	0122300601623	2016-12-18 16:54:51.996995	2016-12-18 16:54:51.996995
6313	Roll and Store กล่องเก็บอุปกรณ์อเนกประสงค์	https://www.tvdirect.tv/roll-and-store	499	0121000301284	2016-12-18 16:54:52.734195	2016-12-18 16:54:52.734195
6314	Russell Hobbs เครื่องปั่นอาหารมือถือ รุ่น 18970-56	https://www.tvdirect.tv/russell-hobbs-18970-56	1615	0112400222196	2016-12-18 16:54:53.580857	2016-12-18 16:54:53.580857
6315	SI Automatic Wine Vacuum Seal อุปกรณ์ปิดขวดไวน์	https://www.tvdirect.tv/si-automatic-wine-vacuum-seal	390	0122400600311	2016-12-18 16:54:54.399281	2016-12-18 16:54:54.399281
6316	Slushy Wizard Blue แก้วเกล็ดหิมะ สีฟ้า	https://www.tvdirect.tv/slushy-wizard-blue	199	0122400600533	2016-12-18 16:54:55.938994	2016-12-18 16:54:55.938994
6317	Smart Blender KS-790 เครื่องปั่นพลังสูง	https://www.tvdirect.tv/smart-blender-ks-790	2990	0122400400010	2016-12-18 16:54:56.70174	2016-12-18 16:54:56.70174
6318	Smart Ice Shaver เครื่องบดน้ำแข็ง	https://www.tvdirect.tv/smart-ice-shaver	1490	0121500300770	2016-12-18 16:54:57.662908	2016-12-18 16:54:57.662908
6319	Smart Twister สายรัดอเนกประสงค์	https://www.tvdirect.tv/smart-twister	790	0121100600140	2016-12-18 16:54:58.51553	2016-12-18 16:54:58.51553
6320	Spin & Go Mop Head หัวม็อบสีเขียว 6 ชิ้น	https://www.tvdirect.tv/spin-go-mop-head-6	690	0123800400341	2016-12-18 16:54:59.353712	2016-12-18 16:54:59.353712
6321	SWIFTY SHARP เครื่องลับคมอเนกประสงค์	https://www.tvdirect.tv/swifty-sharp	690	0122400400089	2016-12-18 16:55:00.175693	2016-12-18 16:55:00.175693
6322	Tepan Smart Pan Premiun Ceramic Coating กระทะเทปันไฟฟ้าเคลือบเซรามิก	https://www.tvdirect.tv/tepan-smart-pan-premiun-ceramic-coating	1490	0122400400072	2016-12-18 16:55:00.980004	2016-12-18 16:55:00.980004
6323	Toaster Model PE9900 เครื่องปิ้งขนมปัง 3 IN 1	https://www.tvdirect.tv/toaster-model-pe9900-3-in-1	745	0122300600220	2016-12-18 16:55:01.82144	2016-12-18 16:55:01.82144
6324	Total Pillow หมอนอเนกประสงค์ 2 ใบ	https://www.tvdirect.tv/total-pillow-2	490	0122300500018	2016-12-18 16:55:02.825053	2016-12-18 16:55:02.825053
6325	Turbo Cooker Set ชุดอบไมโครเวฟ	https://www.tvdirect.tv/turbo-cooker-set	690	0122400600687	2016-12-18 16:55:03.721822	2016-12-18 16:55:03.721822
6326	TV Airwave Knife มีดอเนกประสงค์	https://www.tvdirect.tv/tv-airwave-knife	990	0122400600694	2016-12-18 16:55:04.698282	2016-12-18 16:55:04.698282
6327	Water Zoom หัวฉีดน้ำพลังสูง	https://www.tvdirect.tv/water-zoom	590	0120600600087	2016-12-18 16:55:05.677417	2016-12-18 16:55:05.677417
6328	XTA HOSE 50 & Noozle สายยางยืดขยาย 50 ฟุต	https://www.tvdirect.tv/xta-hose-50-noozle-50	580	0122300500025	2016-12-18 16:55:06.587642	2016-12-18 16:55:06.587642
6329	Body Set เซตดูแลสุขภาพ	https://www.tvdirect.tv/body-set	5990	BodySet 	2016-12-18 16:55:08.530117	2016-12-18 16:55:08.530117
6330	Build Set  เซ็ตบริหารกล้ามเนื้อ	https://www.tvdirect.tv/build-set	2990	BuildSet	2016-12-18 16:55:09.396001	2016-12-18 16:55:09.396001
6331	Burning Set  เซ็ตออกกำลังกายสร้างกล้ามเนื้อ	https://www.tvdirect.tv/burning-set	3990	BurningSet 	2016-12-18 16:55:10.242529	2016-12-18 16:55:10.242529
6332	Healthy Set เซตตรวจสุขภาพ	https://www.tvdirect.tv/healthy-set	1990	HealthySet	2016-12-18 16:55:11.140559	2016-12-18 16:55:11.140559
6333	Welness Smart Chek เครื่องตรวจวัดน้ำตาลกลูโคสในเลือด	https://www.tvdirect.tv/welness-smart-check	600	0111900300104	2016-12-18 16:55:12.566225	2016-12-18 16:55:12.566225
6334	Recumbent Bike จักรยานนั่งปั่น	https://www.tvdirect.tv/recumbent-bike	8900	0121700601196	2016-12-18 16:55:13.39724	2016-12-18 16:55:13.39724
6335	Magic Cane ไม้เท้าส่องสว่าง	https://www.tvdirect.tv/magic-cane	990	0122300601593	2016-12-18 16:55:14.224542	2016-12-18 16:55:14.224542
6336	Genie Bra All color 3 set 	https://www.tvdirect.tv/genie-bra-all-color-3-set-2490	2490	GenieBraAllcolor3set2490	2016-12-18 16:55:15.665037	2016-12-18 16:55:15.665037
6337	ROCK GYM COMPACT เครื่องบริหารหน้าท้อง ขนาดพกพา	https://www.tvdirect.tv/rock-gym-compact	2990	0121700601653	2016-12-18 16:55:16.543273	2016-12-18 16:55:16.543273
6338	VELFORM HAIR 2 ผลิตภัณฑ์ดูแลเส้นผม แพ็คคู่	https://www.tvdirect.tv/velform-hair-2-set-2	1990	0120700601267	2016-12-18 16:55:17.400212	2016-12-18 16:55:17.400212
6339	Rock Gym แถมฟรี  HEART RATE WATCH นาฬิกาวัดอัตราการเต้นหัวใจ 	https://www.tvdirect.tv/rock-gym	3990	RockGymFreeHeartRateOld	2016-12-18 16:55:18.341272	2016-12-18 16:55:18.341272
6340	Genie Hour Glass Free Fatis Gel	https://www.tvdirect.tv/genie-hour-glass-belt	1490	GenieHourGlass	2016-12-18 16:55:19.379584	2016-12-18 16:55:19.379584
6341	Fairtex ADT แถมฟรี Fatis Firming Gel 2 กล่อง	https://www.tvdirect.tv/fairtex-adt-fatis-firming-gel-2	19900	FairtexADT	2016-12-18 16:55:20.231946	2016-12-18 16:55:20.231946
6342	Genie Hour Glass แถม Briefs 	https://www.tvdirect.tv/genie-hour-glass-briefs	1500	GenieHourGlassfreeBriefs	2016-12-18 16:55:21.178671	2016-12-18 16:55:21.178671
6343	Welness YH3000 แถมฟรี Ab Storm 	https://www.tvdirect.tv/welness-massage-chair-yh-3000-yh-3000	29900	WelnessYH3000AB1	2016-12-18 16:55:22.068097	2016-12-18 16:55:22.068097
6344	Genie Bra All color 4 set 	https://www.tvdirect.tv/genie-bra-all-color-4-set	2990	Geniebra4set	2016-12-18 16:55:23.036205	2016-12-18 16:55:23.036205
6345	Aston Car Camcorder กล้องติดรถยนต์	https://www.tvdirect.tv/aston-car-camcorder	990	0112500203352	2016-12-18 16:55:24.601974	2016-12-18 16:55:24.601974
6346	Aston Triple X Cam กล้องติดรถทรงกระจกมองหลัง	https://www.tvdirect.tv/aston-triple-x-cam	2990	0112500203385	2016-12-18 16:55:25.519365	2016-12-18 16:55:25.519365
6347	BLACK&DECKER CAR POLISHER เครื่องขัดสีรถยนต์	https://www.tvdirect.tv/black-decker-car-polisher	1490	0111100200921	2016-12-18 16:55:26.44065	2016-12-18 16:55:26.44065
6348	CAR CANE ด้ามจับช่วยพยุงนิรภัย	https://www.tvdirect.tv/car-cane	590	0120600600155	2016-12-18 16:55:27.292869	2016-12-18 16:55:27.292869
6349	CAR VALET กล่องเสียบเพิ่มพื้นที่วางของในรถยนต์	https://www.tvdirect.tv/car-valet	790	0120600600162	2016-12-18 16:55:28.14504	2016-12-18 16:55:28.14504
6350	DROP STOP แท่งกันของตกในรถ	https://www.tvdirect.tv/drop-stop	390	0120600600179	2016-12-18 16:55:28.986926	2016-12-18 16:55:28.986926
6351	DTECH ACTION CAMERA Silver กล้องบันทึกภาพเอนกประสงค์TCM055 สีเทา	https://www.tvdirect.tv/dtech-action-camera-silver-tcm055	1590	0112500204090	2016-12-18 16:55:29.81786	2016-12-18 16:55:29.81786
6352	DTECH ACTION CAMERA กล้องบันทึกภาพเอนกประสงค์TCM054	https://www.tvdirect.tv/dtech-action-camera-tcm054	2490	DtechAction	2016-12-18 16:55:30.744813	2016-12-18 16:55:30.744813
6353	DTECH CAR CAMERA Black กล้องติดรถยนต์ TCM048 สีดำ	https://www.tvdirect.tv/dtech-car-camera-black-tcm048	2500	0112500204083	2016-12-18 16:55:31.583901	2016-12-18 16:55:31.583901
6354	DTECH CAR CAMERA Black/Gold  กล้องติดรถยนต์TCM064 สีดำทอง	https://www.tvdirect.tv/dtech-car-camera-black-gold-tcm064	1690	0112500204113	2016-12-18 16:55:32.412395	2016-12-18 16:55:32.412395
6355	DTECH CAR CAMERA Silver/Glayกล้องติดรถยนต์TCM065 สีเทาดำ	https://www.tvdirect.tv/dtech-car-camera-silver-glay-tcm065	2490	0112500204045	2016-12-18 16:55:33.238934	2016-12-18 16:55:33.238934
6356	DTECH CAR CAMERA TCM-003 COL. BLACK กล้องติดรถยนต์รุ่น TCM-003 สีดำ	https://www.tvdirect.tv/dtech-car-camera-tcm-003-col-black-tcm-003	2490	0112500204014	2016-12-18 16:55:34.010938	2016-12-18 16:55:34.010938
6357	DTECH CAR CAMERA TCM-023 COL. BLACK กล้องติดรถยนต์รุ่น TCM-023 สีดำ	https://www.tvdirect.tv/dtech-car-camera-tcm-023-col-black-tcm-023	2490	0112500204007	2016-12-18 16:55:34.835965	2016-12-18 16:55:34.835965
6358	DTECH CAR CAMERA TCM-023 COL. WHITE กล้องติดรถยนต์รุ่น TCM-023 สีขาว	https://www.tvdirect.tv/dtech-car-camera-tcm-023-col-white-tcm-023	2490	0112500203994	2016-12-18 16:55:35.699653	2016-12-18 16:55:35.699653
6359	FANTASY WIRELESS CHARGER FOR SAMSUNG&IPHONE-BLACK แท่นชาร์จมือถือไร้สายสำหรับซัมซุงและไอโฟน สีดำ	https://www.tvdirect.tv/fantasy-wireless-charger-for-samsung-iphone-black	649	0112500204021	2016-12-18 16:55:36.561118	2016-12-18 16:55:36.561118
6360	FANTASY WIRELESS CHARGER FOR SAMSUNG&IPHONE-WHITE แท่นชาร์จมือถือไร้สายสำหรับซัมซุงและไอโฟน สีขาว	https://www.tvdirect.tv/fantasy-wireless-charger-for-samsung-iphone-white	649	0112500204038	2016-12-18 16:55:37.410045	2016-12-18 16:55:37.410045
6361	KINGSTON MICRO SD-เมมโมรี่การ์ด 32G CLASS 10	https://www.tvdirect.tv/kingston-micro-sd-32g-class-10	395	0112500204106	2016-12-18 16:55:38.224371	2016-12-18 16:55:38.224371
6362	MAX ADAPTER-USB COL. BLACK อะแดปเตอร์ชาร์จไฟ-สีดำ	https://www.tvdirect.tv/max-adapter-usb-col-black	790	0112500203741	2016-12-18 16:55:38.998892	2016-12-18 16:55:38.998892
6363	MAX ADAPTER-USB COL. WHITE อะแดปเตอร์ชาร์จไฟ-สีขาว	https://www.tvdirect.tv/max-adapter-usb-col-white	790	0112500203734	2016-12-18 16:55:39.733433	2016-12-18 16:55:39.733433
6364	MAX POWER BANK แบตสำรอง 10000 MAH	https://www.tvdirect.tv/max-power-bank-10000-mah	799	PowerBank10000Mah	2016-12-18 16:55:40.834373	2016-12-18 16:55:40.834373
6365	MTX IMAGE PRO IP432 2 WAY SPEAKER ลำโพงติดรถยนต์  แถม MTX STREET AUDIO IX2 หูฟัง	https://www.tvdirect.tv/mtx-image-pro-ip432-2-way-speaker-mtx-street-audio-ix2	6550	MTXIMAGE	2016-12-18 16:55:42.534443	2016-12-18 16:55:42.534443
6366	NORIBELL 3D SMARTGLASSES Gold แว่นตาสามมิติเสมือนจริง สีทอง	https://www.tvdirect.tv/noribell-3d-smartglasses-gold	1990	0111200201545	2016-12-18 16:55:43.355627	2016-12-18 16:55:43.355627
6367	NORIBELL 3D SMARTGLASSES Silver แว่นตาสามมิติเสมือนจริง สีเงิน	https://www.tvdirect.tv/noribell-3d-smartglasses-silver	1990	0111200201538	2016-12-18 16:55:44.156696	2016-12-18 16:55:44.156696
6368	Pomo Kids Watch Moji นาฬิกาโทรศัพท์ อัจฉริยะ รุ่นโมจิ 	https://www.tvdirect.tv/pomo-kids-watch-moji	3990	PomoKidsWatchMoji	2016-12-18 16:55:45.040424	2016-12-18 16:55:45.040424
6369	Pomo Kids Watch Rainbow นาฬิกาโทรศัพท์ อัจฉริยะ รุ่นเรนโบว์ 	https://www.tvdirect.tv/pomo-kids-watch-rainbow	3990	PomoKidsWatchRainbow	2016-12-18 16:55:45.93827	2016-12-18 16:55:45.93827
6370	REMAX 4USB TRAVEL CHARGER COL. BLACK อะแดปเตอร์ชาร์จไฟ-ดำ	https://www.tvdirect.tv/remax-4usb-travel-charger-col-black	459	0112500203895	2016-12-18 16:55:46.714062	2016-12-18 16:55:46.714062
6371	REMAX BLUETOOTH HEADSET COL. BLACK หูฟัง -สีดำ	https://www.tvdirect.tv/remax-bluetooth-headset-col-black	569	0112500203826	2016-12-18 16:55:47.586433	2016-12-18 16:55:47.586433
6372	REMAX BLUETOOTH HEADSET COL. WHITE หูฟัง -สีขาว	https://www.tvdirect.tv/remax-bluetooth-headset-col-white	569	0112500203833	2016-12-18 16:55:48.462146	2016-12-18 16:55:48.462146
6373	REMAX CAR CHARGERS COL. BLACK หัวชาร์จรถ 3USB สีดำ	https://www.tvdirect.tv/remax-car-chargers-col-black-3usb	359	0112500203857	2016-12-18 16:55:49.584628	2016-12-18 16:55:49.584628
6374	REMAX CAR CHARGERS COL. WHITE หัวชาร์จรถ 3USB สีขาว	https://www.tvdirect.tv/remax-car-chargers-col-white-3usb	359	0112500203840	2016-12-18 16:55:50.453178	2016-12-18 16:55:50.453178
6375	REMAX ENJOY CAR STAND COL. BLACK แท่นชาร์จ - สีดำ	https://www.tvdirect.tv/remax-enjoy-car-stand-col-black	299	0112500203789	2016-12-18 16:55:51.28876	2016-12-18 16:55:51.28876
6376	REMAX POWER BANK COOZY COL.แบตสำรอง	https://www.tvdirect.tv/remax-power-bank-coozy-col	799	PowerBankCoozyColor	2016-12-18 16:55:52.24039	2016-12-18 16:55:52.24039
6377	REMAX POWER BANK PRODA JANE COL.  แบตสำรอง	https://www.tvdirect.tv/remax-power-bank-proda-jane-col	759	PowerBankProdaJane	2016-12-18 16:55:53.168726	2016-12-18 16:55:53.168726
6378	REMAX POWER BANK PRODA NOTE COL. BLACK แบตสำรอง-สีดำ	https://www.tvdirect.tv/remax-power-bank-proda-note-col-black	859	0112500203956	2016-12-18 16:55:54.006249	2016-12-18 16:55:54.006249
6379	REMAX POWER BANK PRODA NOTE COL. WHITE แบตสำรอง-สีขาว	https://www.tvdirect.tv/remax-power-bank-proda-note-col-white	859	0112500203871	2016-12-18 16:55:54.888255	2016-12-18 16:55:54.888255
6380	REMAX SMALLTALK - RM501 หูฟัง 	https://www.tvdirect.tv/remax-smalltalk-rm501	239	SmalltalkRM501	2016-12-18 16:55:55.85709	2016-12-18 16:55:55.85709
6381	TIRE INFLATOR MSJ-509 ที่สูบลมแบบพกพา	https://www.tvdirect.tv/tire-inflator-msj-509	350	0110600201872	2016-12-18 16:55:56.744162	2016-12-18 16:55:56.744162
6382	Varta Bike Light Set ชุดไฟ LED ติดจักรยาน รุ่น 18803	https://www.tvdirect.tv/varta-bike-light-set-led-18803	2500	0110600201902	2016-12-18 16:55:57.596473	2016-12-18 16:55:57.596473
6383	Basket Doi Tung Model Th007 กระเช้าของขวัญดอยตุง Size S	https://www.tvdirect.tv/basket-doi-tung-model-th007-size-s	1190	0112100300604	2016-12-18 16:55:59.557284	2016-12-18 16:55:59.557284
6384	Basket Doi Tung Model Th008 กระเช้าของขวัญดอยตุง Size M	https://www.tvdirect.tv/basket-doi-tung-model-th008-size-m	1350	0112100300611	2016-12-18 16:56:00.397246	2016-12-18 16:56:00.397246
6385	Basket Doi Tung Model Th027 กระเช้าของขวัญดอยตุง Size L	https://www.tvdirect.tv/basket-doi-tung-model-th027-size-l	1990	0112100300628	2016-12-18 16:56:01.219159	2016-12-18 16:56:01.219159
6386	Welness Spiral ผลิตภัณฑ์เสริมอาหาร 100 เม็ด	https://www.tvdirect.tv/welness-spiral-100	490	0111800302857	2016-12-18 16:56:04.303387	2016-12-18 16:56:04.303387
6387	Welness Spiral ผลิตภัณฑ์เสริมอาหาร 300 เม็ด	https://www.tvdirect.tv/welness-spiral-300-86	999	0111800302864	2016-12-18 16:56:05.088518	2016-12-18 16:56:05.088518
6388	VForm ผลิตภัณฑ์เสริมอาหาร ขนาด 60 แคปซูล	https://www.tvdirect.tv/vform-60	1290	0111800303052	2016-12-18 16:56:05.853858	2016-12-18 16:56:05.853858
6389	BREO น้ำมันรำข้าวกล้อง บรรจุ 60 แคปซูล	https://www.tvdirect.tv/breo-60	890	0111800303076	2016-12-18 16:56:06.666166	2016-12-18 16:56:06.666166
6390	BREO Premium Virgin oil for Cooking ขนาด 250 มล.	https://www.tvdirect.tv/breo-premium-virgin-oil-for-cooking-250	590	0111800303083	2016-12-18 16:56:07.448892	2016-12-18 16:56:07.448892
6391	ควอลิเทสขนาด 60 แคปซูล/ขวด จำนวน 2 ขวดแถม 1 ขวด พิเศษแถมอีก 1 ขวด(30 แคปซูล)	https://www.tvdirect.tv/60-2-1-1-30	6700	0111800201877	2016-12-18 16:56:08.272364	2016-12-18 16:56:08.272364
6392	Hi-Balanz Beta Glucan IMU-C BG-30 30 แคปซูล	https://www.tvdirect.tv/hi-balanz-beta-glucan-imu-c-bg-30-30	1490	0111800202423	2016-12-18 16:56:09.015286	2016-12-18 16:56:09.015286
6393	Hi-Balanz Lycopene LC-30 30 แคปซูล Pack 3	https://www.tvdirect.tv/hi-balanz-lycopene-lc-30-30-pack-3	1290	0111800202461	2016-12-18 16:56:09.737972	2016-12-18 16:56:09.737972
6394	Hi-Balanz Reishi Extract RE-30 30 แคปซูล Pack 3	https://www.tvdirect.tv/hi-balanz-reishi-extract-re-30-30-pack-3	990	0111800202478	2016-12-18 16:56:10.555072	2016-12-18 16:56:10.555072
6395	Hi-Balanz Isolated Soy Protein IS-30 30 เม็ด Pack 3	https://www.tvdirect.tv/hi-balanz-isolated-soy-protein-is-30-30-pack-3	1890	0111800202485	2016-12-18 16:56:11.375983	2016-12-18 16:56:11.375983
6396	Hi-Balanz Grape Seed Extract C Plus GS-30 30 แคปซูล Pack 3	https://www.tvdirect.tv/hi-balanz-grape-seed-extract-c-plus-gs-30-30-pack-3	1290	0111800202492	2016-12-18 16:56:12.175024	2016-12-18 16:56:12.175024
6397	Hi-Balanz BRIB 1 BR-30 30 แคปซูล Pack 3	https://www.tvdirect.tv/hi-balanz-brib-1-br-30-30-pack-3	1490	0111800202508	2016-12-18 16:56:12.954222	2016-12-18 16:56:12.954222
6398	BREO ชุดของขวัญ Be Happy เป็นสุขล้น	https://www.tvdirect.tv/breo-be-happy	2500	0111800303144	2016-12-18 16:56:15.702561	2016-12-18 16:56:15.702561
6399	Donut Is Oil โดนัทอีสออยล์ 30 แคปซูล	https://www.tvdirect.tv/donut-is-oil-30	350	0111800202607	2016-12-18 16:56:16.904196	2016-12-18 16:56:16.904196
6400	Donut Is Oil โดนัทอีสออยล์ 30 แคปซูล 3 pack	https://www.tvdirect.tv/donut-is-oil-30-3-pack	1000	0111800202614	2016-12-18 16:56:18.073634	2016-12-18 16:56:18.073634
6401	BREO น้ำมันรำข้าวกล้อง 60 CAP 4 ขวด แถมฟรี  BREO กล่องผ้าฝ้าย	https://www.tvdirect.tv/breo-rice-bran-oil-pack-4-free-breo-cotton-box-pack-4	1980	BreoRiceBranOil	2016-12-18 16:56:19.311761	2016-12-18 16:56:19.311761
6402	TRBO ALMEGA FISH OIL PLUS น้ำมันรำข้าวและน้ำมันปลา	https://www.tvdirect.tv/trbo-almega-fish-oil-plus	1190	0111800202683	2016-12-18 16:56:20.417045	2016-12-18 16:56:20.417045
6403	TRBO RICE BRAN น้ำมันรำข้าว แบบขวด 60 แคปซูล	https://www.tvdirect.tv/trbo-rice-bran-60-caps	490	0111800202690	2016-12-18 16:56:21.194409	2016-12-18 16:56:21.194409
6404	TRBO RICE BRAN น้ำมันรำข้าวแบบพกพา 12 Packs	https://www.tvdirect.tv/trbo-rice-bran-12-packs	1700	0111800202706	2016-12-18 16:56:21.944542	2016-12-18 16:56:21.944542
6405	NEOCELL SUPER COLLAGEN Cคอลลาเจนผสม วิตามินซี	https://www.tvdirect.tv/neocell-super-collagen-c	950	0110700209754	2016-12-18 16:56:22.723392	2016-12-18 16:56:22.723392
6406	Welness Gold Capsule ผลิตภัณฑ์เสริมอาหาร 30 แคปซูล	https://www.tvdirect.tv/welness-gold-capsule-30	990	0111800302819	2016-12-18 16:56:24.752009	2016-12-18 16:56:24.752009
6407	Welness Fish Oil Concentrate เวลเนส ฟิชออย คอนเซ็นเทรด บรรจุ 60 แคปซูล	https://www.tvdirect.tv/welness-fish-oil-concentrate-60-1-1	850	0111504500054	2016-12-18 16:56:25.583258	2016-12-18 16:56:25.583258
6408	Welness Rice Bran Oil ผลิตภัณฑ์เสริมอาหาร 60 แคปซูล	https://www.tvdirect.tv/welness-rice-bran-oil-60	450	0111200301023	2016-12-18 16:56:26.35456	2016-12-18 16:56:26.35456
6409	WELNESS FISH OIL CONCENTRATE เวลเนส ฟิชออย คอนเซ็นเทรด บรรจุ 60 แคปซูล ซื้อ 2 แถม 1	https://www.tvdirect.tv/welness-fish-oil-concentrate-60-3	0	WELNESSFISHOILCONCENTRATE	2016-12-18 16:56:27.193018	2016-12-18 16:56:27.193018
6410	FATIS Dietary Supplement Kio-in ผลิตภัณฑ์เสริมอาหาร ฟาทีส ไคโอ	https://www.tvdirect.tv/fatis-dietary-supplement-kio-in	1290	0111800303175	2016-12-18 16:56:27.985109	2016-12-18 16:56:27.985109
6411	Fatis Coffee ฟาทีส คอฟฟี่ กาแฟปรุงสำเร็จรูปชนิดผง	https://www.tvdirect.tv/fatis-coffee	240	0110304500011	2016-12-18 16:56:30.287049	2016-12-18 16:56:30.287049
6412	น้ำมังคุดแซนสยาม (XanSiam) 12 ขวด	https://www.tvdirect.tv/xan-siam-mangosteen-juice-12-units	3900	0112900200142	2016-12-18 16:56:31.194334	2016-12-18 16:56:31.194334
6413	Hi-Balanz KDTX Plus KD-05 5 ซอง	https://www.tvdirect.tv/hi-balanz-kdtx-plus-kd-05-5	390	0111800202355	2016-12-18 16:56:31.977409	2016-12-18 16:56:31.977409
6414	Hi-Balanz Vivid X-TRA Plus L-Carnitine VX-60 60 แคปซูล ฟรี 30 แคปซูล	https://www.tvdirect.tv/hi-balanz-vivid-x-tra-plus-l-carnitine-vx-60-60-30	1290	0111800202362	2016-12-18 16:56:32.745504	2016-12-18 16:56:32.745504
6415	Hi-Balanz KDTX Plus KD-10 10 ซอง Pack 3	https://www.tvdirect.tv/hi-balanz-kdtx-plus-kd-10-10-pack-3	1490	0111800202447	2016-12-18 16:56:33.62053	2016-12-18 16:56:33.62053
6416	Hi-Balanz KDTX Plus KD-05 5 ซอง Pack 3	https://www.tvdirect.tv/hi-balanz-kdtx-plus-kd-05-5-pack-3	890	0111800202454	2016-12-18 16:56:34.387209	2016-12-18 16:56:34.387209
6417	BREO เครื่องดื่มผงข้าวกล้องสำเร็จรูปสูตร 1	https://www.tvdirect.tv/breo-1	490	0111800303120	2016-12-18 16:56:35.291007	2016-12-18 16:56:35.291007
6418	BREO เครื่องดื่มข้าวกล้องผงข้าวกล้องสูตร 2	https://www.tvdirect.tv/breo-2	490	0111800303137	2016-12-18 16:56:36.100672	2016-12-18 16:56:36.100672
6419	Donut Dietary โดนัทไดอะแทลลี่ 30+10 แคปซูล	https://www.tvdirect.tv/donut-dierary-30-10	475	0111800202515	2016-12-18 16:56:38.880035	2016-12-18 16:56:38.880035
6420	Donut Dietary โดนัทไดอะแทลลี่ 30+10 แคปซูล 2 Pack 	https://www.tvdirect.tv/donut-dietary-2-pack-30-10	900	0111800202522	2016-12-18 16:56:39.705447	2016-12-18 16:56:39.705447
6421	Donut Dietary โดนัทไดอะแทลลี่ 30+10 แคปซูล 3 Pack 	https://www.tvdirect.tv/donut-dietary-3-pack-30-10-3	1300	0111800202539	2016-12-18 16:56:40.5144	2016-12-18 16:56:40.5144
6422	Body Shape JERUSALEM ARTICHOKE TEA ชาแก่นตะวันผสมรากชะเอม	https://www.tvdirect.tv/bs-jerusalem-artichoke-tea	290	0111800202737	2016-12-18 16:56:41.46534	2016-12-18 16:56:41.46534
6423	Body Shape CHIA SEED เมล็ดเชีย 320 g.	https://www.tvdirect.tv/bs-chia-seed	320	0111800202744	2016-12-18 16:56:42.320247	2016-12-18 16:56:42.320247
6424	Body Shape GE HERB เครื่องดื่มสมุนไพรผสมคอลลาเจน	https://www.tvdirect.tv/bs-ge-herb	690	0111800202751	2016-12-18 16:56:43.070769	2016-12-18 16:56:43.070769
6425	Body Shape HONTE อาหารเสริมสกัดจากแก่นตะวัน	https://www.tvdirect.tv/bs-honte	480	0111800202768	2016-12-18 16:56:43.842501	2016-12-18 16:56:43.842501
6426	Body Shape ZON BEE ผลิตภัณฑ์เสริมอาหารไคโตซาน	https://www.tvdirect.tv/bs-zon-bee	1390	0111800202775	2016-12-18 16:56:44.606637	2016-12-18 16:56:44.606637
6427	Body Shape COFFEE + L-CARNITINE กาแฟคอลลาเจนแอล-คาร์นิทีน	https://www.tvdirect.tv/bs-coffee-l-carnitine	110	0111800202782	2016-12-18 16:56:45.384204	2016-12-18 16:56:45.384204
6428	Body Shape COFFEE M กาแฟโปรตีน	https://www.tvdirect.tv/bs-coffee-m	130	0111800202799	2016-12-18 16:56:46.157773	2016-12-18 16:56:46.157773
6429	Body Shape L-CARNITINE 500 MG อาหารเสริมแอล-คาร์นิทีน	https://www.tvdirect.tv/bs-l-carnitine-500-mg	450	0111800202805	2016-12-18 16:56:46.919433	2016-12-18 16:56:46.919433
6430	WELNESS VURNURAX PLUS GS CAPSULES 10 CAPS ผลิตภัณฑ์เสริมอาหาร	https://www.tvdirect.tv/welness-vurnurax-plus-gs-capsules-10-caps	1990	0111800303168	2016-12-18 16:56:47.739169	2016-12-18 16:56:47.739169
6431	Fatis Coffee 9 กล่อง	https://www.tvdirect.tv/fatis-coffee-9	1440	FatisCoffee9	2016-12-18 16:56:48.604449	2016-12-18 16:56:48.604449
6432	Fatis Coffee 3 กล่อง	https://www.tvdirect.tv/fatis-coffee-3	480	FatisCoffee3	2016-12-18 16:56:51.355551	2016-12-18 16:56:51.355551
6433	MANA GYMNEMA TEA ชาจากผักเชียงดา	https://www.tvdirect.tv/mana-gymnema-tea	790	0111800203482	2016-12-18 16:56:52.089324	2016-12-18 16:56:52.089324
6434	MANA GYMNEMA INODORUM แคปซูลจากผักเชียงดา	https://www.tvdirect.tv/mana-gymnema-inodorum	790	0111800203475	2016-12-18 16:56:52.943319	2016-12-18 16:56:52.943319
6435	Nathary Chia Seed 165g+50g เมล็ดเชีย165gเพิ่มปริมาณ50g	https://www.tvdirect.tv/nathary-chia-seed-165g-50g-165g-50g	450	0111800203536	2016-12-18 16:56:53.740395	2016-12-18 16:56:53.740395
6436	Nathary Chia Seed 450g+100g เมล็ดเชีย 450gเพิ่มปริมาณ100g	https://www.tvdirect.tv/nathary-chia-seed-450g-100g-450g-100g	650	0111800203543	2016-12-18 16:56:54.550846	2016-12-18 16:56:54.550846
6437	FATIS MATCHA GREEN TEA ฟาทีสชาเขียว มัจฉะ กรีนที	https://www.tvdirect.tv/fatis-matcha-green-tea	590	0111800303106	2016-12-18 16:56:55.392769	2016-12-18 16:56:55.392769
6438	MADI KAMBUCHA ชาหมัก	https://www.tvdirect.tv/madi-kambucha	1450	0112900200166	2016-12-18 16:56:56.176012	2016-12-18 16:56:56.176012
6439	Fatis Matcha  2 กล่อง	https://www.tvdirect.tv/fatis-matcha-2	840	FatisMatcha2	2016-12-18 16:56:57.020785	2016-12-18 16:56:57.020785
6440	Fatis Matcha  3 กล่อง แถมฟรี  FATIS COFFEE	https://www.tvdirect.tv/fatis-matcha-3	1350	FatisMatcha3	2016-12-18 16:56:57.774714	2016-12-18 16:56:57.774714
6441	Fatis Matcha  6กล่อง แถมฟรี 2 กล่อง	https://www.tvdirect.tv/fatis-matcha-6-2	3290	FatisMatcha6	2016-12-18 16:56:58.539283	2016-12-18 16:56:58.539283
6442	Neo 8 Massage Serum for Men	https://www.tvdirect.tv/neo-8-massage-serum-for-men	1580	0110700208290	2016-12-18 16:57:03.769481	2016-12-18 16:57:03.769481
6443	GENESIS UP UP UP 10 CAPSULES อาหารเสริมสมรรถภาพ	https://www.tvdirect.tv/genesis-up-up-up-10-capsules	990	0111800202832	2016-12-18 16:57:04.583937	2016-12-18 16:57:04.583937
6444	GENESIS MEN SERUM 30ML. เซรั่มเฉพาะจุด	https://www.tvdirect.tv/genesis-men-serum-30ml	990	0110700209318	2016-12-18 16:57:05.489044	2016-12-18 16:57:05.489044
6445	GENESIS MEN SERUM 50ML. เซรั่มเฉพาะจุด	https://www.tvdirect.tv/genesis-men-serum-50ml	1590	0110700209301	2016-12-18 16:57:06.28262	2016-12-18 16:57:06.28262
6446	NURU GEL GOLD 250ML. เจลหล่อลื่นโกลด์	https://www.tvdirect.tv/nuru-gel-gold-250ml	260	0110700209297	2016-12-18 16:57:07.185911	2016-12-18 16:57:07.185911
6447	NURU GEL HARD 250ML. เจลหล่อลื่นระดับสูง	https://www.tvdirect.tv/nuru-gel-hard-250ml	200	0110700209280	2016-12-18 16:57:08.052465	2016-12-18 16:57:08.052465
6448	NURU GEL MEDIUM 250ML. เจลหล่อลื่นระดับกลาง	https://www.tvdirect.tv/nuru-gel-medium-250ml	200	0110700209273	2016-12-18 16:57:08.870637	2016-12-18 16:57:08.870637
6449	NURU GEL STANDARD 250ML. เจลหล่อลื่น	https://www.tvdirect.tv/nuru-gel-standard-250ml	200	0110700209266	2016-12-18 16:57:09.681595	2016-12-18 16:57:09.681595
6450	COOL GEL NECK PILLOW SLTMGC003หมอนเจลเย็นรองคอ	https://www.tvdirect.tv/cool-gel-neck-pillow-sltmgc003	590	0123300500015	2016-12-18 16:57:13.943697	2016-12-18 16:57:13.943697
6451	Welness Beautifying Hip Cushion เบาะกระชับสะโพก	https://www.tvdirect.tv/welness-beautifying-hip-cushion	1990	0121200300209	2016-12-18 16:57:14.715509	2016-12-18 16:57:14.715509
6452	Squatty Potty ที่เหยียบช่วยระบาย	https://www.tvdirect.tv/squatty-potty	690	0122300601487	2016-12-18 16:57:17.812929	2016-12-18 16:57:17.812929
6453	BackJoy Care Comfort Tech แผ่นรองนั่ง วีลแชร์	https://www.tvdirect.tv/backjoy-care-comfort-tech	3990	0121900200102	2016-12-18 16:57:20.011385	2016-12-18 16:57:20.011385
6454	HOSPRO WHEELCHAIR รถเข็น รุ่น H-WC108G-12	https://www.tvdirect.tv/hospro-wheelchair-h-wc108g-12	7400	0111900202965	2016-12-18 16:57:20.926913	2016-12-18 16:57:20.926913
6455	HOSPRO WHEELCHAIR รถเข็น รุ่น H-WC607	https://www.tvdirect.tv/hospro-wheelchair-h-wc607	4200	0111900202972	2016-12-18 16:57:21.684691	2016-12-18 16:57:21.684691
6456	Magic Cane ไม้เท้าส่องสว่าง 2 ชิ้น	https://www.tvdirect.tv/magic-cane-2-50	1485	MagicCane	2016-12-18 16:57:22.5192	2016-12-18 16:57:22.5192
6457	MY CANE ไม้เท้าส่องสว่าง  1 แถม 1	https://www.tvdirect.tv/my-cane-1-1	990	MyCane	2016-12-18 16:57:23.366399	2016-12-18 16:57:23.366399
6458	 Gini Lumber chair แถมฟรี 3 style Bag	https://www.tvdirect.tv/gini-lumber-chair-3-style-bag	4990	GiniLumberchair	2016-12-18 16:57:26.248645	2016-12-18 16:57:26.248645
6459	U-RO DECOR Chair Hannover  เก้าอี้สำนักงาน 	https://www.tvdirect.tv/u-ro-decor-chair-hannover	11000	UROChairHannover	2016-12-18 16:57:27.402453	2016-12-18 16:57:27.402453
6460	U-RO DECOR Chair Moon  เก้าอี้สำนักงาน 	https://www.tvdirect.tv/u-ro-decor-chair-moon	1990	UROChairMoon	2016-12-18 16:57:28.262932	2016-12-18 16:57:28.262932
6461	U-RO DECOR Chair Moon-kเก้าอี้สำนักงาน 	https://www.tvdirect.tv/u-ro-decor-chair-moon-k	2290	UROChairMoonk	2016-12-18 16:57:29.274729	2016-12-18 16:57:29.274729
6462	U-RO DECOR Chair Parma-lv Brown เก้าอี้สำนักงาน สีน้ำตาล	https://www.tvdirect.tv/u-ro-decor-chair-parma-lv-brown	1690	0110900202289	2016-12-18 16:57:30.049865	2016-12-18 16:57:30.049865
6463	Genki Health Sandal รองเท้าเพื่อสุขภาพ (Size L:27)	https://www.tvdirect.tv/genki-health-sandal-size-l-27-1-1	390	0111200301245	2016-12-18 16:57:32.747629	2016-12-18 16:57:32.747629
6464	Smart Chek Test Strip แผ่นตรวจวัดระดับน้ำตาลในเลือด (25 ชุด)	https://www.tvdirect.tv/smart-chek-test-strip-25	600	0111900300098	2016-12-18 16:57:33.546435	2016-12-18 16:57:33.546435
6465	Portable Toilet สุขาเคลื่อนที่	https://www.tvdirect.tv/portable-toilet	2490	0122300600466	2016-12-18 16:57:34.406199	2016-12-18 16:57:34.406199
6466	SABAI Shoulder ถุงอบสมุนไพรไทย - ประคบบ่า,ไหล่	https://www.tvdirect.tv/sabai-shoulder	890	0111900202200	2016-12-18 16:57:35.292941	2016-12-18 16:57:35.292941
6467	SABAI Knee ถุงอบสมุนไพรไทย - ประคบเข่า	https://www.tvdirect.tv/sabai-knee	690	0111900202231	2016-12-18 16:57:36.10129	2016-12-18 16:57:36.10129
6468	SABAI Neck ถุงอบสมุนไพรไทย - ประคบคอ	https://www.tvdirect.tv/sabai-neck	490	0111900202224	2016-12-18 16:57:36.831225	2016-12-18 16:57:36.831225
6469	SABAI RELAX - ถุงสมุนไพรเย็นประคบรอบดวงตา	https://www.tvdirect.tv/sabai-relax	380	0111900202248	2016-12-18 16:57:37.601309	2016-12-18 16:57:37.601309
6470	เครื่องวัดความดันโลหิตดิจิตอลที่ต้นแขน รุ่น HK-805 (พูดได้) ฟรี Adapter	https://www.tvdirect.tv/hk-805-adapter	1990	0111900202255	2016-12-18 16:57:38.413607	2016-12-18 16:57:38.413607
6471	MAGIC BACK SUPPORTแผ่นรองหลังเพื่อสุขภาพ 2 ชิ้น	https://www.tvdirect.tv/magic-back-support-2	1290	0111900202279	2016-12-18 16:57:40.961331	2016-12-18 16:57:40.961331
6472	BackJoy Posture Green แผ่นรองนั่ง สีเขียว ฟรี luggage tag คละสี	https://www.tvdirect.tv/backjoy-posture-green-luggage-tag	1990	0121900200012	2016-12-18 16:57:41.721285	2016-12-18 16:57:41.721285
6473	BackJoy Posture Purple แผ่นรองนั่ง สีม่วง ฟรี luggage tag คละสี	https://www.tvdirect.tv/backjoy-posture-purple-luggage-tag	1990	0121900200029	2016-12-18 16:57:42.567667	2016-12-18 16:57:42.567667
6474	BackJoy Posture Surf แผ่นรองนั่ง สีเซิร์ฟ ฟรี luggage tag คละสี	https://www.tvdirect.tv/backjoy-posture-surf-luggage-tag	1990	0121900200036	2016-12-18 16:57:43.351383	2016-12-18 16:57:43.351383
6475	BackJoy Posture Black แผ่นรองนั่ง สีดำ ฟรี luggage tag คละสี	https://www.tvdirect.tv/backjoy-posture-black-luggage-tag	1990	0121900200043	2016-12-18 16:57:44.185507	2016-12-18 16:57:44.185507
6476	BackJoy Posture Pink แผ่นรองนั่ง สีชมพู ฟรี luggage tag คละสี	https://www.tvdirect.tv/backjoy-posture-pink-luggage-tag	1990	0121900200050	2016-12-18 16:57:44.994585	2016-12-18 16:57:44.994585
6477	BackJoy Posture Mango แผ่นรองนั่ง สีมะม่วง ฟรี luggage tag คละสี	https://www.tvdirect.tv/backjoy-posture-mango-luggage-tag	1990	0121900200067	2016-12-18 16:57:45.831685	2016-12-18 16:57:45.831685
6478	BackJoy Posture Blue แผ่นรองนั่ง สีฟ้า ฟรี luggage tag คละสี	https://www.tvdirect.tv/backjoy-posture-blue-luggage-tag	1990	0121900200074	2016-12-18 16:57:46.614932	2016-12-18 16:57:46.614932
6479	BackJoy Roller Ball ลูกบอลนวดผ่อนคลาย	https://www.tvdirect.tv/backjoy-roller-ball	990	0121900200081	2016-12-18 16:57:47.447566	2016-12-18 16:57:47.447566
6480	BackJoy Posture Band สายรัดหลัง	https://www.tvdirect.tv/backjoy-posture-band	990	0121900200098	2016-12-18 16:57:48.224144	2016-12-18 16:57:48.224144
6481	BackJoy SleepSound In-Flight Blue หมอนรองคอ สีฟ้า	https://www.tvdirect.tv/backjoy-sleepsound-in-flight-blue	1890	0120800200049	2016-12-18 16:57:49.063501	2016-12-18 16:57:49.063501
6482	BackJoy SleepSound In-Flight Red หมอนรองคอ สีแดง	https://www.tvdirect.tv/backjoy-sleepsound-in-flight-red	1890	0120800200056	2016-12-18 16:57:49.9414	2016-12-18 16:57:49.9414
6483	BEURER FINGERTIP PULSE OXIMETER เครื่องวัดออกซิเจนปลายนิ้ว Fingertip รุ่น PO30	https://www.tvdirect.tv/beurer-fingertip-pulse-oximeter-fingertip-po30	2535	0111900202941	2016-12-18 16:57:52.72456	2016-12-18 16:57:52.72456
6484	BEURER HEARING AID เครื่องช่วยฟัง รุ่นHA20	https://www.tvdirect.tv/beurer-hearing-aid-ha20	990	0111900202958	2016-12-18 16:57:53.875616	2016-12-18 16:57:53.875616
6485	HOSPRO NEBULIZER เครื่องพ่นละอองยา รูปลิงน้อย รุ่น BR-CN001 สีน้ำตาล	https://www.tvdirect.tv/hospro-nebulizer-br-cn001	2600	0111900202989	2016-12-18 16:57:57.629523	2016-12-18 16:57:57.629523
6486	HOSPRO NEBULIZER เครื่องพ่นละอองยา รูปลิงน้อย รุ่น BR-CN001 สีเขียว	https://www.tvdirect.tv/hospro-nebulizer-br-cn001-3492	2600	0111900202996	2016-12-18 16:57:58.862621	2016-12-18 16:57:58.862621
6487	Portable Personal Scale เครื่องชั่งน้ำหนักระบบดิจิตอลแบบพกพา สีขาว	https://www.tvdirect.tv/portable-personal-scale	499	0121000301307	2016-12-18 16:57:59.780897	2016-12-18 16:57:59.780897
6488	Portable Personal Scale เครื่องชั่งน้ำหนักระบบดิจิตอลแบบพกพา สีฟ้า	https://www.tvdirect.tv/portable-personal-scale-611	499	0121000301314	2016-12-18 16:58:00.659178	2016-12-18 16:58:00.659178
6489	SLIDE SLIM FOR WOMEN แผ่นรองเท้ากันกระแทกสำหรับผู้หญิง	https://www.tvdirect.tv/slide-slim-for-women	290	0122600300028	2016-12-18 16:58:01.600074	2016-12-18 16:58:01.600074
6490	Fatis Firming Gel 2 แถม 2 	https://www.tvdirect.tv/fatis-firming-gel-2-2	2000	FatisFirmingGel 2	2016-12-18 16:58:14.488919	2016-12-18 16:58:14.488919
6491	Fatis Firming Gel 1 แถม 1	https://www.tvdirect.tv/fatis-firming-gel-1-1	1490	FatisFirmingGel1	2016-12-18 16:58:15.327835	2016-12-18 16:58:15.327835
6492	Velform Hair ผลิตภัณฑ์ดูแลเส้นผม บรรจุ 2 ขวด	https://www.tvdirect.tv/velform-hair-200-ml	990	0110300300882	2016-12-18 16:58:16.089052	2016-12-18 16:58:16.089052
6493	Velform Hair สูตร 2 ผลิตภัณฑ์ดูแลเส้นผม	https://www.tvdirect.tv/velform-hair-2-1-pack	1290	0120300300324	2016-12-18 16:58:16.913671	2016-12-18 16:58:16.913671
6494	HAIRNETIX ผงไฟเบอร์ (BLACK /สีดำ)	https://www.tvdirect.tv/hairnetix-black	995	0120700601229	2016-12-18 16:58:19.919158	2016-12-18 16:58:19.919158
6495	CERTAINTY TAPE SIZE M28 ผ้าอ้อมผู้ใหญ่แบบเทป ขนาด M 28 ชิ้น	https://www.tvdirect.tv/certainty-tape-size-m28-m-28	395	0111900202927	2016-12-18 16:58:20.879326	2016-12-18 16:58:20.879326
6496	CERTAINTY TAPE SIZE L24 ผ้าอ้อมผู้ใหญ่แบบเทป ขนาด L 24 ชิ้น	https://www.tvdirect.tv/certainty-tape-size-l24-l-24	395	0111900202934	2016-12-18 16:58:21.631962	2016-12-18 16:58:21.631962
6497	CERTAINTY TAPE SIZE M28 ผ้าอ้อมผู้ใหญ่แบบเทป ขนาด M 28 ชิ้น จำนวน 4 แพ็ค	https://www.tvdirect.tv/certainty-tape-size-m28-m-28-4	1520	CertaintySizeM	2016-12-18 16:58:22.489149	2016-12-18 16:58:22.489149
6498	CERTAINTY TAPE SIZE L24 ผ้าอ้อมผู้ใหญ่แบบเทป ขนาด L 24 ชิ้น จำนวน 4 แพ็ค	https://www.tvdirect.tv/certainty-tape-size-l24-l-24-4	1520	CertaintySizeL	2016-12-18 16:58:23.306086	2016-12-18 16:58:23.306086
6499	Grizzly Pacesetter Training Belt 6IN- เข็มขัดเซฟหลัง 6 นิ้ว 	https://www.tvdirect.tv/grizzly-pacesetter-training-belt-6in-6	1290	PacesetterTrainningBelt6inch	2016-12-18 16:58:24.199204	2016-12-18 16:58:24.199204
6500	Velform Hair สูตร 2 ผลิตภัณฑ์ดูแลเส้นผม 1 ขวด แถมฟรี! Vform อาหารเสริมสำหรับเส้นผม 60 แคปซูล	https://www.tvdirect.tv/velform-hair-2-1-pack-free-vform-60-cap	1990	0120700400549	2016-12-18 16:58:30.28538	2016-12-18 16:58:30.28538
6501	HAIRNETIX ผงไฟเบอร์ (DARK BROWN /สีน้ำตาลเข้ม)	https://www.tvdirect.tv/hairnetix-dark-brown	995	0120700601236	2016-12-18 16:58:31.119761	2016-12-18 16:58:31.119761
6502	Le Jeans เลกกิ้งลายยีนส์	https://www.tvdirect.tv/le-jeans	1990	0120100605742	2016-12-18 16:58:36.8894	2016-12-18 16:58:36.8894
6503	Genie Slim and Tone Legging กางเกงเลกกิ้งกระชับสัดส่วน สีดำ สีเทา สีน้ำตาล	https://www.tvdirect.tv/genie-slim-and-tone-legging	1990	Genie Slim and Tone Legging	2016-12-18 16:58:37.83898	2016-12-18 16:58:37.83898
6504	กางเกงเลคกิ้งกระชับสัดส่วน Lalita Slimming Shape	https://www.tvdirect.tv/lalita-slimming-shape	990	0112000202701	2016-12-18 16:58:38.637224	2016-12-18 16:58:38.637224
6505	SWANS ROSE BELLY BELT TOP BLACK เสื้อกล้ามกระชับสัดส่วน (เอวลอย) สีดำ	https://www.tvdirect.tv/swans-rose-belly-belt-top-black	590	0110100205422	2016-12-18 16:58:39.406644	2016-12-18 16:58:39.406644
6506	SWANS COOL LEGGINGS BLACK กางเกงเลกกิ้งขายาว 4 ส่วน สีดำ	https://www.tvdirect.tv/swans-cool-leggings-black-4	790	0110100205415	2016-12-18 16:58:40.237476	2016-12-18 16:58:40.237476
6507	SWANS COOL LEGGINGS SKY BLUE กางเกงเลกกิ้งขายาว 4 ส่วน สีฟ้า	https://www.tvdirect.tv/swans-cool-leggings-sky-blue-4	790	0110100205408	2016-12-18 16:58:41.082238	2016-12-18 16:58:41.082238
6508	GENIE SLIM JEGGING	https://www.tvdirect.tv/genie-slim-jegging	1990	GenieSlinJegging	2016-12-18 16:58:41.986243	2016-12-18 16:58:41.986243
6509	Genie Bra Classic ชุดชั้นในสวมสบาย	https://www.tvdirect.tv/genie-bra-classic	890	GenieBraClassic	2016-12-18 16:58:47.563261	2016-12-18 16:58:47.563261
6510	Genie Bra Custom Bra ชุดชั้นในปรับสายได้ สีดำ สีเนื้อ สีขาว	https://www.tvdirect.tv/genie-bra-classic-1556	890	Genie Bra Custom Bra	2016-12-18 16:58:48.456213	2016-12-18 16:58:48.456213
6511	Genie Bra Neutral สีน้ำตาล สีม่วง สีเทา	https://www.tvdirect.tv/genie-bra-neutral	1090	Genie Bra Neutral	2016-12-18 16:58:49.49121	2016-12-18 16:58:49.49121
6512	Genie Bra Tropical Island บราสวมสบาย สีเหลือง เขียวอ่อน ส้มอ่อน	https://www.tvdirect.tv/genie-bra-tropical-island	1990	Genie Bra Tropical Island	2016-12-18 16:58:50.368002	2016-12-18 16:58:50.368002
6513	Slim n Lift กางเกงกระชับสัดส่วนสลิมแอนด์ลิฟท์	https://www.tvdirect.tv/slim-n-lift	1490	SlimnLift	2016-12-18 16:58:51.655193	2016-12-18 16:58:51.655193
6514	SLIM N LIFT CARESSE เสื้อกระชับลายลูกไม้	https://www.tvdirect.tv/slim-n-lift-caresse	1490	SLIM N LIFT CARESSE	2016-12-18 16:58:52.489063	2016-12-18 16:58:52.489063
6515	Genie Briefs Bright กางเกงชั้นใน สีม่วง สีน้ำเงิน สีส้ม	https://www.tvdirect.tv/genie-briefs-bright	750	Genie Briefs Bright	2016-12-18 16:58:53.456115	2016-12-18 16:58:53.456115
6516	Genie Briefs Classic กางเกงใน สีขาว สีดำ สีเนื้อ	https://www.tvdirect.tv/genie-briefs-classic	750	Genie Briefs Classic	2016-12-18 16:58:54.320938	2016-12-18 16:58:54.320938
6517	Genie Briefs Pastel กางเกงชั้นใน สีชมพู ม่วงอ่อน ฟ้าอ่อน	https://www.tvdirect.tv/genie-briefs-pastel	750	Genie Briefs Pastel	2016-12-18 16:58:55.293906	2016-12-18 16:58:55.293906
6518	Genie Briefs Neutral กางเกงชั้นใน สีน้ำตาล สีม่วง สีเทา	https://www.tvdirect.tv/genie-briefs-neutral	540	Genie Briefs Neutral	2016-12-18 16:58:56.129683	2016-12-18 16:58:56.129683
6519	JML Belvia Bodysuit  ชุดกระชับแบบเต็มตัว สีเนื้อ	https://www.tvdirect.tv/jml-belvia-bodysuit-c	490	JML Belvia Bodysuit	2016-12-18 16:58:57.025001	2016-12-18 16:58:57.025001
6520	Genie Bra Custom Bra Big Size ชุดชั้นในปรับสายได้ สีดำ สีเนื้อ สีขาว ไซส์ใหญ่	https://www.tvdirect.tv/genie-bra-custom-bra-big-size	590	Genie Bra Custom Bra Big Size	2016-12-18 16:58:57.868507	2016-12-18 16:58:57.868507
6521	Genie Briefs Classic Big Size กางเกงใน สีขาว สีดำ สีเนื้อ	https://www.tvdirect.tv/genie-briefs-classic-big-size	350	Genie Briefs Classic Big Size	2016-12-18 16:58:58.748168	2016-12-18 16:58:58.748168
6522	Genie Briefs Neutral Big Sizeกางเกงชั้นใน สีน้ำตาล สีม่วง สีเทา ไซส์ใหญ่	https://www.tvdirect.tv/genie-briefs-neutral-big-size	350	Genie Briefs Neutral Big Size	2016-12-18 16:58:59.637981	2016-12-18 16:58:59.637981
6523	D-Bra บรายกกระชับ 6 ตัว - S ฟรี กกน.ฟรีไซส์ 6 ตัว	https://www.tvdirect.tv/d-bra-6-s-6	1590	0110100203987	2016-12-18 16:59:00.582968	2016-12-18 16:59:00.582968
6524	D-Bra บรายกกระชับ 6 ตัว - M ฟรี กกน.ฟรีไซส์ 6 ตัว	https://www.tvdirect.tv/d-bra-6-m-6	1590	0110100203994	2016-12-18 16:59:01.513411	2016-12-18 16:59:01.513411
6525	D-Bra บรายกกระชับ 6 ตัว - L ฟรี กกน. ฟรีไซส์ 6 ตัว	https://www.tvdirect.tv/d-bra-6-l-6	1590	0110100204007	2016-12-18 16:59:02.338002	2016-12-18 16:59:02.338002
6526	Cecilene 3D BRA STANDARD บราไร้โครง 3 มิติ สีดำ, สีเนื้อ, สีชมพู, แถมฟรี! กางเกงชั้นใน คละสี	https://www.tvdirect.tv/cecilene-3d-bra-standard-free-pants	1790	Cecilene 3D BRA STANDARD	2016-12-18 16:59:03.379856	2016-12-18 16:59:03.379856
6527	Genie Bra Classic 1990 1 free 1	https://www.tvdirect.tv/genie-bra-classic-1990-1-free-1	1990	GenieBraClassic1990	2016-12-18 16:59:04.213573	2016-12-18 16:59:04.213573
6528	Genie Bra All color  free Genie Brief 1990	https://www.tvdirect.tv/genie-bra-all-color-free-genie-brief-1990	1990	Genie Bra All color  free Genie Brief 1990	2016-12-18 16:59:09.025084	2016-12-18 16:59:09.025084
6529	Genie Bra All color  free Genie Brief 1490	https://www.tvdirect.tv/genie-bra-all-color-free-genie-brief-1490	1490	Genie Bra All color  free Genie Brief 1490	2016-12-18 16:59:09.864757	2016-12-18 16:59:09.864757
6530	GENIE BRA MODERN BRIEFS BLACK  กางเกงใน สีดำ 	https://www.tvdirect.tv/genie-bra-modern-briefs-black	750	GENIEBRAMODERNBRIEFSBLACK	2016-12-18 16:59:10.816672	2016-12-18 16:59:10.816672
6531	GENIE BRA MODERN BRIEFS NUDE  กางเกงใน สีเนื้อ	https://www.tvdirect.tv/genie-bra-modern-briefs-nude	750	GENIE BRA MODERN BRIEFS NUDE  กางเกงใน สีเนื้อ	2016-12-18 16:59:11.6908	2016-12-18 16:59:11.6908
6532	GENIE BRA MODERN BRA BLACK Free GENIE BRA MODERN BRIEFS BLACK	https://www.tvdirect.tv/genie-bra-modern-bra-black-freee-genie-bra-modern-briefs-black	1990	GenieBraModernBraBlack	2016-12-18 16:59:12.524796	2016-12-18 16:59:12.524796
6533	GENIE BRA MODERN BRA NUDE Free GENIE BRA MODERN BRIEFS NUDE	https://www.tvdirect.tv/genie-bra-modern-bra-nude-freee-genie-bra-modern-briefs-nude	1990	GenieBraModernBraNude	2016-12-18 16:59:13.359908	2016-12-18 16:59:13.359908
6534	WOLFOX NIPPLE BRA FREE SIZE BLACK แผ่นปิดหน้าอก สีดำ	https://www.tvdirect.tv/wolfox-nipple-bra-free-size-black	290	0110100204418	2016-12-18 16:59:14.115838	2016-12-18 16:59:14.115838
6535	WOLFOX NIPPLE BRA FREE SIZE NUDE แผ่นปิดหน้าอก สีเนื้อ	https://www.tvdirect.tv/wolfox-nipple-bra-free-size-nude	290	0110100204401	2016-12-18 16:59:14.901982	2016-12-18 16:59:14.901982
6536	WOLFOX NU BRA  NUDE	https://www.tvdirect.tv/wolfox-nu-bra-nude	699	WOLFOX NU BRA  NUDE	2016-12-18 16:59:15.818002	2016-12-18 16:59:15.818002
6537	WOLFOX NU BRA  BLACK	https://www.tvdirect.tv/wolfox-nu-bra-black	699	WOLFOX NU BRA  BLACK	2016-12-18 16:59:16.762152	2016-12-18 16:59:16.762152
6538	WOLFOX NEW CORSET BRANUDE บราไร้สายแบบเชือกรูด สีเนื้อ	https://www.tvdirect.tv/wolfox-new-corset-branude	799	WOLFOX NEW CORSET BRANUDE บราไร้สายแบบเชือกรูด สีเนื้อ	2016-12-18 16:59:17.723569	2016-12-18 16:59:17.723569
6539	WOLFOX NEW CORSET BRA BLACK บราไร้สายแบบเชือกรูด สีดำ	https://www.tvdirect.tv/wolfox-new-corset-bra-black	799	WOLFOX NEW CORSET BRA BLACK บราไร้สายแบบเชือกรูด สีดำ	2016-12-18 16:59:18.643474	2016-12-18 16:59:18.643474
6540	WOLFOX PUSH UP BRA NUDE บราไร้สายแบบดันทรง สีเนื้อ	https://www.tvdirect.tv/wolfox-push-up-bra-nude	899	WOLFOX PUSH UP BRA NUDE บราไร้สายแบบดันทรง สีเนื้อ	2016-12-18 16:59:19.524003	2016-12-18 16:59:19.524003
6541	WOLFOX PUSH UP BRA BLACK บราไร้สายแบบดันทรง สีดำ	https://www.tvdirect.tv/wolfox-push-up-bra-black	899	WOLFOX PUSH UP BRA  BLACK บราไร้สายแบบดันทรง สีดำ	2016-12-18 16:59:20.410704	2016-12-18 16:59:20.410704
6542	WOLFOX WING BRA  NUDE บราไร้สายแบบมีโครง สีเนื้อ	https://www.tvdirect.tv/wolfox-wing-bra-nude	990	WOLFOX WING BRA  NUDE บราไร้สายแบบมีโครง สีเนื้อ	2016-12-18 16:59:21.298926	2016-12-18 16:59:21.298926
6543	WOLFOX WING BRA  BLACK บราไร้สายแบบมีโครง สีดำ	https://www.tvdirect.tv/wolfox-wing-bra-black	990	WOLFOX WING BRA BLACK บราไร้สายแบบมีโครง สีดำ	2016-12-18 16:59:22.180081	2016-12-18 16:59:22.180081
6544	WOLFOX SPORT BRA FASHION BLACK สปอร์ตบราออกกำลังกาย สีดำ	https://www.tvdirect.tv/wolfox-sport-bra-fashion-black	490	WOLFOX SPORT BRA FASHION BLACK สปอร์ตบราออกกำลังกาย สีดำ	2016-12-18 16:59:22.99402	2016-12-18 16:59:22.99402
6545	WOLFOX SPORT BRA FASHION  BLUE สปอร์ตบราออกกำลังกาย สีน้ำเงิน	https://www.tvdirect.tv/wolfox-sport-bra-fashion-blue	490	WOLFOX SPORT BRA FASHION  BLUE สปอร์ตบราออกกำลังกาย สีน้ำเงิน	2016-12-18 16:59:23.839281	2016-12-18 16:59:23.839281
6546	WOLFOX SPORT BRA FASHION GRAY สปอร์ตบราออกกำลังกาย สีเทา	https://www.tvdirect.tv/wolfox-sport-bra-fashion-gray	490	WOLFOX SPORT BRA FASHION  GRAY สปอร์ตบราออกกำลังกาย สีเทา	2016-12-18 16:59:24.682018	2016-12-18 16:59:24.682018
6547	WOLFOX SPORT BRA FASHION GREEN สปอร์ตบราออกกำลังกาย สีเขียว	https://www.tvdirect.tv/wolfox-sport-bra-fashion-green	490	WOLFOX SPORT BRA FASHION GREEN สปอร์ตบราออกกำลังกาย สีเขียว	2016-12-18 16:59:25.601526	2016-12-18 16:59:25.601526
6548	WOLFOX SPORT BRA FASHION  PINK สปอร์ตบราออกกำลังกาย สีชมพู	https://www.tvdirect.tv/wolfox-sport-bra-fashion-pink	490	WOLFOX SPORT BRA FASHION  PINK สปอร์ตบราออกกำลังกาย สีชมพู	2016-12-18 16:59:30.68977	2016-12-18 16:59:30.68977
6549	WOLFOX SPORT BRA  BLACK สปอร์ตบราออกกำลังกาย สีดำ	https://www.tvdirect.tv/wolfox-sport-bra-black	390	WOLFOX SPORT BRA  BLACK สปอร์ตบราออกกำลังกาย สีดำ	2016-12-18 16:59:31.522835	2016-12-18 16:59:31.522835
6550	WOLFOX SPORT BRA WHITE สปอร์ตบราออกกำลังกาย สีขาว	https://www.tvdirect.tv/wolfox-sport-bra-white	390	WOLFOX SPORT BRA WHITE สปอร์ตบราออกกำลังกาย สีขาว	2016-12-18 16:59:32.34801	2016-12-18 16:59:32.34801
6551	WOLFOX SPORT BRA GREEN สปอร์ตบราออกกำลังกาย สีเขียว	https://www.tvdirect.tv/wolfox-sport-bra-green	390	WOLFOX SPORT BRA GREEN สปอร์ตบราออกกำลังกาย สีเขียว	2016-12-18 16:59:33.288227	2016-12-18 16:59:33.288227
6552	WOLFOX SPORT BRA ORANGE สปอร์ตบราออกกำลังกาย สีส้ม	https://www.tvdirect.tv/wolfox-sport-bra-orange	390	WOLFOX SPORT BRA ORANGE สปอร์ตบราออกกำลังกาย สีส้ม	2016-12-18 16:59:34.131058	2016-12-18 16:59:34.131058
6553	WOLFOX SPORT BRA  ROSE RED สปอร์ตบราออกกำลังกาย สีชมพู	https://www.tvdirect.tv/wolfox-sport-bra-rose-red	390	WOLFOX SPORT BRA ROSE RED สปอร์ตบราออกกำลังกาย สีชมพู	2016-12-18 16:59:34.919173	2016-12-18 16:59:34.919173
6554	VULCANUS MEN'S UNDERWEAR ORANGE กางเกงในเสริมสมรรถภาพ (บุรุษ) สีส้ม	https://www.tvdirect.tv/vulcanus-men-s-underwear-orange	690	VULCANUSMENSUNDERWEARORANGE	2016-12-18 16:59:35.898765	2016-12-18 16:59:35.898765
6555	VULCANUS MEN'S UNDERWEAR BLACK กางเกงในเสริมสมรรถภาพ (บุรุษ) สีดำ	https://www.tvdirect.tv/vulcanus-men-s-underwear-black	690	VULCANUSMENSUNDERWEARBLACK	2016-12-18 16:59:36.842912	2016-12-18 16:59:36.842912
6556	VULCANUS MEN'S UNDERWEAR NAVY กางเกงในเสริมสมรรถภาพ (บุรุษ) สีน้ำเงิน	https://www.tvdirect.tv/vulcanus-men-s-underwear-navy	690	VULCANUSMENSUNDERWEARNAVY	2016-12-18 16:59:37.757513	2016-12-18 16:59:37.757513
6557	VULCANUS MEN'S UNDERWEAR  YELLOW กางเกงในเสริมสมรรถภาพ (บุรุษ) สีเหลือง	https://www.tvdirect.tv/vulcanus-men-s-underwear-yellow	690	VULCANUSMENSUNDERWEARYELLOW	2016-12-18 16:59:38.639714	2016-12-18 16:59:38.639714
6558	VULCANUS MEN'S UNDERWEAR  GRAY กางเกงในเสริมสมรรถภาพ (บุรุษ) สีเทา	https://www.tvdirect.tv/vulcanus-men-s-underwear-gray	690	VULCANUSMENSUNDERWEARGRAY	2016-12-18 16:59:39.511385	2016-12-18 16:59:39.511385
6559	SWANS VOLUME UP NUDE เสื้อกล้ามกระชับสัดส่วน (ดันทรง) สีเนื้อ	https://www.tvdirect.tv/swans-volume-up-nude	1490	SWANS VOLUME UP  NUDE เสื้อกล้ามกระชับสัดส่วน (ดันทรง) สีเนื้อ	2016-12-18 16:59:40.404371	2016-12-18 16:59:40.404371
6560	SWANS VOLUME UP  BLACK เสื้อกล้ามกระชับสัดส่วน (ดันทรง) สีดำ	https://www.tvdirect.tv/swans-volume-up-black	1490	SWANS VOLUME UP  BLACK เสื้อกล้ามกระชับสัดส่วน (ดันทรง) สีดำ	2016-12-18 16:59:41.191947	2016-12-18 16:59:41.191947
6561	WOLFOX SPORT BRA VEST สปอร์ตบรา	https://www.tvdirect.tv/wolfox-sport-bra-vest	390	SportBraVest	2016-12-18 16:59:42.242121	2016-12-18 16:59:42.242121
6562	WOLFOX SPORT BRA CROSS-X สปอร์ตบราสายไขว้	https://www.tvdirect.tv/wolfox-sport-bra-cross-x	390	SportBraCrossX	2016-12-18 16:59:43.198597	2016-12-18 16:59:43.198597
6563	Missy bra  Black/White/Nude ชุดชั้นในสวมสบาย รุ่นหลังกล้าม T-bra  3 ตัว (สีดำ สีขาว สีเนื้อ ) 	https://www.tvdirect.tv/missy-bra-black-white-nude-t-bra-3	890	Missybra	2016-12-18 16:59:44.061335	2016-12-18 16:59:44.061335
6564	J-PRESS กางเกงชั้นในชาย รุ่น 2903 SIZE S 30-32 เซต 6 ตัวแถม 3 ตัว	https://www.tvdirect.tv/j-press-2903-size-s-30-32-6-3	950	0110100205776	2016-12-18 16:59:44.903616	2016-12-18 16:59:44.903616
6565	J-PRESS กางเกงชั้นในชาย รุ่น 2903 SIZE M 32-34 เซต 6 ตัวแถม 3 ตัว	https://www.tvdirect.tv/j-press-2903-size-m-32-34-6-3	950	0110100205806	2016-12-18 16:59:45.651638	2016-12-18 16:59:45.651638
6566	J-PRESS กางเกงชั้นในชาย รุ่น 2903 SIZE L 34-36 เซต 6 ตัวแถม 3 ตัว	https://www.tvdirect.tv/j-press-2903-size-l-34-36-6-3	950	0110100205813	2016-12-18 16:59:46.38876	2016-12-18 16:59:46.38876
6567	GENIE TEENI BRA WHITE บราเซ็ต 3 ตัว - สีขาว	https://www.tvdirect.tv/genie-teeni-bra-white-3	990	GenieBraTeeniWhite	2016-12-18 16:59:47.21306	2016-12-18 16:59:47.21306
6568	GENIE TEENI BRA  PINK ORANGE LEMON บราเซ็ต 3 ตัว -สีชมพู สีส้ม สีเหลือง	https://www.tvdirect.tv/genie-teeni-bra-pink-orange-lemon-3	990	GenieBraTeeniBraPink	2016-12-18 16:59:54.317469	2016-12-18 16:59:54.317469
6569	J-PRESS กางเกงชั้นในชาย รุ่น 2903  เซต 6 ตัวแถม 3 ตัว	https://www.tvdirect.tv/j-press-2903-6-3	950	Jpress	2016-12-18 16:59:55.557086	2016-12-18 16:59:55.557086
6570	Genie Bra Brights  สีม่วง น้ำเงิน ส้ม	https://www.tvdirect.tv/genie-bra-brights	1090	Genie Bra Brights	2016-12-18 16:59:56.45012	2016-12-18 16:59:56.45012
6571	Genie Bra Pastel สีชมพู สีม่วงอ่อน สีฟ้าอ่อน	https://www.tvdirect.tv/genie-bra-pastel	1090	Genie Bra Pastel	2016-12-18 16:59:57.305929	2016-12-18 16:59:57.305929
6572	Genie Bra Pink Collection สีชมพู	https://www.tvdirect.tv/genie-bra-pink-collection	890	Genie Bra Pink Collection	2016-12-18 16:59:58.228439	2016-12-18 16:59:58.228439
6573	Genie Bra South Beach บราสวมสบาย สีแดง เขียวมิ้นต์เข้ม น้ำเงินเข้ม	https://www.tvdirect.tv/genie-bra-south-beach	1990	Genie Bra South Beach	2016-12-18 16:59:59.117351	2016-12-18 16:59:59.117351
6574	SLIM N LIFT AIR กางเกงกระชับสัดส่วน สลิมแอนด์ลิฟท์แอร์	https://www.tvdirect.tv/slim-n-lift-air	790	SLIM N LIFT AIR	2016-12-18 16:59:59.989938	2016-12-18 16:59:59.989938
6575	Genie Cami Shaper Hawaiian Coast เสื้อกล้ามกระชับสัดส่วน สีม่วงอ่อน เขียวมิ้นต์ ฟ้าใส	https://www.tvdirect.tv/genie-cami-shaper-hawaiian-coast	1490	Genie Cami Shaper Hawaiian Coast	2016-12-18 17:00:01.0206	2016-12-18 17:00:01.0206
6576	Genie Cami Shaper South Beach เสื้อกล้ามกระชับสัดส่วน สีส้ม เขียวมิ้นต์เข้ม น้ำเงินเข้ม	https://www.tvdirect.tv/genie-cami-shaper-south-beach	1490	Genie Cami Shaper South Beach	2016-12-18 17:00:03.415846	2016-12-18 17:00:03.415846
6577	Genie Cami Shaper Tropical Island เสื้อกล้ามกระชับสัดส่วน สีเหลือง เขียวอ่อน ส้มอ่อน	https://www.tvdirect.tv/genie-cami-shaper-tropical-island	1490	Genie Cami Shaper Tropical Island	2016-12-18 17:00:05.297342	2016-12-18 17:00:05.297342
6578	GENIE COOL BRA  สีขาว ดำ เนื้อ (BLACK NUDE WHITE )3 PCS.	https://www.tvdirect.tv/genie-cool-bra-black-nude-white-3-pcs	690	GenieCoolBra3	2016-12-18 17:00:07.181028	2016-12-18 17:00:07.181028
6579	Genie Briefs Pastel Big Size กางเกงชั้นใน สีชมพู ม่วงอ่อน ฟ้าอ่อน ไซส์ใหญ่	https://www.tvdirect.tv/genie-briefs-pastel-big-size	350	Genie Briefs Pastel Big Size	2016-12-18 17:00:08.78059	2016-12-18 17:00:08.78059
6580	Genie Briefs Bright Big Size กางเกงชั้นใน สีม่วง สีน้ำเงิน สีส้ม ไซส์ใหญ่	https://www.tvdirect.tv/genie-briefs-bright-big-size	350	Genie Briefs Bright Big Size	2016-12-18 17:00:10.00536	2016-12-18 17:00:10.00536
6581	THERMO SHAPER ชุดระบายเหงื่อ	https://www.tvdirect.tv/thermo-shaper	1290	THERMOSHAPER	2016-12-18 17:00:19.972867	2016-12-18 17:00:19.972867
6582	Set ชุดนอน Imitated Silk Home Wear	https://www.tvdirect.tv/set-imitated-silk-home-wear	1590	0110100203918	2016-12-18 17:00:20.892324	2016-12-18 17:00:20.892324
6583	LALITA COMPACT กางเกงเลคกิ้งกระชับ 7 ส่วน	https://www.tvdirect.tv/lalita-compact-7	990	0112000202729	2016-12-18 17:00:27.061406	2016-12-18 17:00:27.061406
6584	MAX-CORE OUTER SPORT PANTS BLACK กางเกงออกกำลังกาย(บุรุษ) สีดำ	https://www.tvdirect.tv/max-core-outer-sport-pants-black	790	0110100205017	2016-12-18 17:00:28.06192	2016-12-18 17:00:28.06192
6585	MAX-CORE OUTER SPORT PANTS WHITE กางเกงออกกำลังกาย(บุรุษ) สีขาว	https://www.tvdirect.tv/max-core-outer-sport-pants-white	790	0110100205000	2016-12-18 17:00:28.857646	2016-12-18 17:00:28.857646
6586	MAX-CORE OUTER SPORT T-SHIRT BLACK เสื้อกล้ามออกกำลังกาย (บุรุษ) สีดำ	https://www.tvdirect.tv/max-core-outer-sport-t-shirt-black	1590	0110100204999	2016-12-18 17:00:29.698932	2016-12-18 17:00:29.698932
6587	MAX-CORE OUTER SPORT T-SHIRT WHITE เสื้อกล้ามออกกำลังกาย (บุรุษ) สีขาว	https://www.tvdirect.tv/max-core-outer-sport-t-shirt-white	1590	0110100204982	2016-12-18 17:00:30.703179	2016-12-18 17:00:30.703179
6588	SWANS BODY SUIT BLACK FREE SIZE ชุดกระชับสัดส่วน (บอดี้สูท) สีดำ	https://www.tvdirect.tv/swans-body-suit-black-free-size	1290	0110100205176	2016-12-18 17:00:31.637111	2016-12-18 17:00:31.637111
6589	SWANS BODY SUIT NUDE FREE SIZE ชุดกระชับสัดส่วน (บอดี้สูท) สีเนื้อ	https://www.tvdirect.tv/swans-body-suit-nude-free-size	1290	0110100205169	2016-12-18 17:00:32.579095	2016-12-18 17:00:32.579095
6590	SWANS BASIC GIRDLE Free Size BLACK กางเกงกระชับสัดส่วนเอวต่ำ สีดำ	https://www.tvdirect.tv/swans-basic-girdle-free-size-black	590	0110100205114	2016-12-18 17:00:36.999876	2016-12-18 17:00:36.999876
6591	SWANS BASIC GIRDLE Free Size NUDE กางเกงกระชับสัดส่วนเอวต่ำ สีเนื้อ	https://www.tvdirect.tv/swans-basic-girdle-free-size-nude	590	0110100205107	2016-12-18 17:00:37.898242	2016-12-18 17:00:37.898242
6592	SWANS COMPRESSION STOCKING BLACK ปลอกขากระชับสัดส่วน สีดำ	https://www.tvdirect.tv/swans-compression-stocking-black	590	0110100205055	2016-12-18 17:00:38.715851	2016-12-18 17:00:38.715851
6593	SWANS COMPRESSION STOCKING NUDE ปลอกขากระชับสัดส่วน สีเนื้อ	https://www.tvdirect.tv/swans-compression-stocking-nude	590	0110100205048	2016-12-18 17:00:39.461781	2016-12-18 17:00:39.461781
6594	SWANS ARM SLEEVES BLACK ปลอกแขนกระชับสัดส่วน สีดำ	https://www.tvdirect.tv/swans-arm-sleeves-black	590	0110100205031	2016-12-18 17:00:40.339305	2016-12-18 17:00:40.339305
6595	SWANS ARM SLEEVES NUDE ปลอกแขนกระชับสัดส่วน สีเนื้อ	https://www.tvdirect.tv/swans-arm-sleeves-nude	590	0110100205024	2016-12-18 17:00:41.19908	2016-12-18 17:00:41.19908
6596	SWANS SHORT PANTS WHITE กางเกงเก็บสัดส่วนขาสั้น สีขาว	https://www.tvdirect.tv/swans-short-pants-white	590	0110100205370	2016-12-18 17:00:42.251091	2016-12-18 17:00:42.251091
6597	SWANS SHORT PANTS NUDE กางเกงเก็บสัดส่วนขาสั้น สีเนื้อ	https://www.tvdirect.tv/swans-short-pants-nude	590	0110100205363	2016-12-18 17:00:43.186259	2016-12-18 17:00:43.186259
6598	SWANS STRONG SILK TOP BLACK เสื้อกล้ามกระชับสัดส่วน (ผ้าไหม) สีดำ	https://www.tvdirect.tv/swans-strong-silk-top-black	990	0110100205356	2016-12-18 17:00:43.989933	2016-12-18 17:00:43.989933
6599	SWANS STRONG SILK TOP NUDE เสื้อกล้ามกระชับสัดส่วน (ผ้าไหม) สีเนื้อ	https://www.tvdirect.tv/swans-strong-silk-top-nude	990	0110100205349	2016-12-18 17:00:44.864191	2016-12-18 17:00:44.864191
6600	X TREME POWER BELT 1 FREE 1	https://www.tvdirect.tv/x-treme-power-belt-1-free-1	990	XtremePowerBelt	2016-12-18 17:00:51.293063	2016-12-18 17:00:51.293063
6601	MAX-CORE INFRARED T-SHIRT WHITE เสื้อกล้ามกระชับสัดส่วน (บุรุษ) สีขาว	https://www.tvdirect.tv/max-core-infrared-t-shirt-white	1790	MAXCOREINFRAREDTSHIRTWHITE	2016-12-18 17:00:52.314416	2016-12-18 17:00:52.314416
6602	MAX-CORE INFRARED T-SHIRT  BLACK เสื้อกล้ามกระชับสัดส่วน (บุรุษ) สีดำ	https://www.tvdirect.tv/max-core-infrared-t-shirt-black	1790	MAXCOREINFRAREDTSHIRTBLACK	2016-12-18 17:00:53.239845	2016-12-18 17:00:53.239845
6603	MAX-CORE WAIST CLINCH NUDE ผ้ารัดเอวกระชับสัดส่วน (บุรุษ) สีเนื้อ	https://www.tvdirect.tv/max-core-waist-clinch-nude	990	MAXCOREWAISTCLINCHNUDE	2016-12-18 17:00:59.149522	2016-12-18 17:00:59.149522
6604	MAX-CORE WAIST CLINCH BLACK ผ้ารัดเอวกระชับสัดส่วน (บุรุษ) สีดำ	https://www.tvdirect.tv/max-core-waist-clinch-black	990	MAXCOREWAISTCLINCHBLACK	2016-12-18 17:01:00.008545	2016-12-18 17:01:00.008545
6605	SWANS TAPING TOP  NUDE เสื้อกล้ามกระชับสัดส่วน (สตรี) สีเนื้อ	https://www.tvdirect.tv/swans-taping-top-nude	1290	SWANS TAPING TOP NUDE เสื้อกล้ามกระชับสัดส่วน (สตรี) สีเนื้อ	2016-12-18 17:01:01.039196	2016-12-18 17:01:01.039196
6606	SWANS TAPING TOP BLACK เสื้อกล้ามกระชับสัดส่วน (สตรี) สีดำ	https://www.tvdirect.tv/swans-taping-top-black	1290	SWANS TAPING TOP  BLACK เสื้อกล้ามกระชับสัดส่วน (สตรี) สีดำ	2016-12-18 17:01:02.536232	2016-12-18 17:01:02.536232
6607	SWANS HIGH WAISTNUDE กางเกงกระชับสัดส่วน (เอวสูง) สีเนื้อ	https://www.tvdirect.tv/swans-high-waistnude	1290	SWANS HIGH WAISTNUDE กางเกงกระชับสัดส่วน (เอวสูง) สีเนื้อ	2016-12-18 17:01:03.48329	2016-12-18 17:01:03.48329
6608	SWANS HIGH WAIST BLACK กางเกงกระชับสัดส่วน (เอวสูง) สีดำ	https://www.tvdirect.tv/swans-high-waist-black	1290	SWANS HIGH WAIST BLACK กางเกงกระชับสัดส่วน (เอวสูง) สีดำ	2016-12-18 17:01:04.422767	2016-12-18 17:01:04.422767
6609	SWANS MAGIC SHAPER GIRDLE  NUDE กางเกงกระชับสัดส่วน (ขาสั้น) สีเนื้อ	https://www.tvdirect.tv/swans-magic-shaper-girdle-nude	990	SWANS MAGIC SHAPER GIRDLE NUDE	2016-12-18 17:01:05.389068	2016-12-18 17:01:05.389068
6610	SWANS MAGIC SHAPER GIRDLE  BLACK กางเกงกระชับสัดส่วน (ขาสั้น) สีดำ	https://www.tvdirect.tv/swans-magic-shaper-girdle-black	990	SWANSMAGICSHAPERGIRDLEBLACK	2016-12-18 17:01:06.333103	2016-12-18 17:01:06.333103
6611	SWANS WAIST CLINCH NUDE ผ้ารัดเอวกระชับสัดส่วน (สตรี) สีเนื้อ	https://www.tvdirect.tv/swans-waist-clinch-nude	990	SWANS WAIST CLINCH NUDE ผ้ารัดเอวกระชับสัดส่วน (สตรี) สีเนื้อ	2016-12-18 17:01:07.339016	2016-12-18 17:01:07.339016
6612	SWANS WAIST CLINCH BLACK ผ้ารัดเอวกระชับสัดส่วน (สตรี) สีดำ	https://www.tvdirect.tv/swans-waist-clinch-black	990	SWANS WAIST CLINCH  BLACK ผ้ารัดเอวกระชับสัดส่วน (สตรี) สีดำ	2016-12-18 17:01:08.305606	2016-12-18 17:01:08.305606
6613	SWANS CAMISOLE  NUDE เสื้อสายเดี่ยวกระชับสัดส่วน (สตรี) สีเนื้อ	https://www.tvdirect.tv/swans-camisole-nude	790	SWANS CAMISOLE  NUDE เสื้อสายเดี่ยวกระชับสัดส่วน (สตรี) สีเนื้อ	2016-12-18 17:01:09.254108	2016-12-18 17:01:09.254108
6614	SWANS CAMISOLE  BLACK เสื้อสายเดี่ยวกระชับสัดส่วน (สตรี) สีดำ	https://www.tvdirect.tv/swans-camisole-black	790	SWANS CAMISOLE  BLACK เสื้อสายเดี่ยวกระชับสัดส่วน (สตรี) สีดำ	2016-12-18 17:01:10.119619	2016-12-18 17:01:10.119619
6615	SWANS SPORT TOP  NUDE เสื้อกล้ามออกกำลังกาย (สตรี) สีเนื้อ	https://www.tvdirect.tv/swans-sport-top-nude	790	SWANS SPORT TOP NUDE เสื้อกล้ามออกกำลังกาย (สตรี) สีเนื้อ	2016-12-18 17:01:11.108073	2016-12-18 17:01:11.108073
6616	SWANS SPORT TOP  BLACK เสื้อกล้ามออกกำลังกาย (สตรี) สีดำ	https://www.tvdirect.tv/swans-sport-top-black	790	SWANS SPORT TOP  BLACK เสื้อกล้ามออกกำลังกาย (สตรี) สีดำ	2016-12-18 17:01:12.043835	2016-12-18 17:01:12.043835
6617	X TREME POWER BELT  เข็มขัดกระชับสัดส่วน	https://www.tvdirect.tv/x-treme-power-belt	990	X TREME POWER BELT  เข็มขัดกระชับสัดส่วน	2016-12-18 17:01:13.286981	2016-12-18 17:01:13.286981
6618	Zlimmy Panty Temptations Classic Size S/M กางเกงกระชับหน้าท้อง	https://www.tvdirect.tv/zlimmy-panty-temptations-classic-size-s-m	1990	0122000600940	2016-12-18 17:01:18.931127	2016-12-18 17:01:18.931127
6619	Zlimmy Panty Temptations Classic Size L/XL กางเกงกระชับหน้าท้อง	https://www.tvdirect.tv/zlimmy-panty-temptations-classic-size-l-xl	1990	0122000600957	2016-12-18 17:01:19.791982	2016-12-18 17:01:19.791982
6620	Bio Shaper Size L/XL เซ็ตชุดกระชับสัดส่วน	https://www.tvdirect.tv/bio-shaper-size-l-xl	990	0120100600730	2016-12-18 17:01:20.727733	2016-12-18 17:01:20.727733
6621	Bio Shaper Size S/M เซ็ตชุดกระชับสัดส่วน	https://www.tvdirect.tv/bio-shaper-size-s-m	990	0120100600723	2016-12-18 17:01:21.729177	2016-12-18 17:01:21.729177
6622	Fit Slender Pants กางเกงซาวน่า	https://www.tvdirect.tv/fit-slender-pants	990	Fit Slender Pants กางเกงซาวน่า	2016-12-18 17:01:25.572357	2016-12-18 17:01:25.572357
6623	Set กระเป๋า D.Twinkle Fashion Bag Blue สีน้ำเงิน	https://www.tvdirect.tv/set-d-twinkle-fashion-bag-blue	4990	0110200206437	2016-12-18 17:01:36.733645	2016-12-18 17:01:36.733645
6624	Set กระเป๋า D.Twinkle Fashion Bag Red สีแดง	https://www.tvdirect.tv/set-d-twinkle-fashion-bag-red	4990	0110200206444	2016-12-18 17:01:37.581997	2016-12-18 17:01:37.581997
6625	กระเป๋าใบเล็ก D.Twinkle Luxury Fashion Bag สีแดง	https://www.tvdirect.tv/d-twinkle-luxury-fashion-bag	1990	0110200206451	2016-12-18 17:01:38.469555	2016-12-18 17:01:38.469555
6626	กระเป๋าใบเล็ก D.Twinkle Luxury Fashion Bag สีน้ำเงินเข้ม	https://www.tvdirect.tv/d-twinkle-small-dark-blue	1990	0110200206468	2016-12-18 17:01:39.371612	2016-12-18 17:01:39.371612
6627	กระเป๋า Pocket Outdoor sport bag สีฟ้า	https://www.tvdirect.tv/pocket-outdoor-sport-bag	750	0113300200657	2016-12-18 17:01:40.112586	2016-12-18 17:01:40.112586
6628	WOLFOX BRA BAG BLUE กระเป๋าใส่ชุดชั้นในทรงเหลี่ยม สีฟ้า	https://www.tvdirect.tv/wolfox-bra-bag-blue	290	0110100204463	2016-12-18 17:01:40.949939	2016-12-18 17:01:40.949939
6629	WOLFOX BRA BAG PINK กระเป๋าใส่ชุดชั้นในทรงเหลี่ยม สีชมพู	https://www.tvdirect.tv/wolfox-bra-bag-pink	290	0110100204456	2016-12-18 17:01:41.721452	2016-12-18 17:01:41.721452
6630	WOLFOX BRA BAG OCEAN กระเป๋าใส่ชุดชั้นในทรงกลม สีน้ำทะเล	https://www.tvdirect.tv/wolfox-bra-bag-ocean	390	0110100204449	2016-12-18 17:01:42.55992	2016-12-18 17:01:42.55992
6631	WOLFOX BRA BAG LEOPARD กระเป๋าใส่ชุดชั้นในทรงกลม สีลายเสือ	https://www.tvdirect.tv/wolfox-bra-bag-leopard	390	0110100204432	2016-12-18 17:01:43.345732	2016-12-18 17:01:43.345732
6632	WOLFOX BRA BAG ROSE กระเป๋าใส่ชุดชั้นในทรงกลม สีชมพู	https://www.tvdirect.tv/wolfox-bra-bag-rose	390	0110100204425	2016-12-18 17:01:44.142978	2016-12-18 17:01:44.142978
6633	SUPERMAN Backpack Bag กระเป๋าเป้ 17นิ้ว SM-11070	https://www.tvdirect.tv/superman-backpack-bag-17-sm-11070	995	0110200206840	2016-12-18 17:01:44.903996	2016-12-18 17:01:44.903996
6634	CARRY-ALL Backpack Bag Col. Pink กระเป๋าเป้ 17นิ้วสีชมพู CA-13721	https://www.tvdirect.tv/carry-all-backpack-bag-col-pink-17-ca-13721	965	0110200206857	2016-12-18 17:01:45.705395	2016-12-18 17:01:45.705395
6635	CARRY-ALL Backpack Bag Col. Blue กระเป๋าเป้ 17นิ้วสีฟ้า CA-13722	https://www.tvdirect.tv/carry-all-backpack-bag-col-blue-17-ca-13722	965	0110200206864	2016-12-18 17:01:46.487347	2016-12-18 17:01:46.487347
6636	CARRY-ALL Backpack Bag Col. Brown กระเป๋าเป้ 17นิ้วสีน้ำตาล CA-13723	https://www.tvdirect.tv/carry-all-backpack-bag-col-brown-17-ca-13723	965	0110200206871	2016-12-18 17:01:47.19606	2016-12-18 17:01:47.19606
6637	TRAVEL LUGGAGE 20 Inches col.  กระเป๋าเดินทาง 20 นิ้ว ล้อคู่ 	https://www.tvdirect.tv/travel-luggage-20-inches-col-20	1990	TravelLuggage	2016-12-18 17:01:48.063993	2016-12-18 17:01:48.063993
6638	TANLUHU SPORT SMALL POCKET SPORT BAG กระเป๋ากีฬาขนาดเล็ก 	https://www.tvdirect.tv/tanluhu-sport-small-pocket-sport-bag	290	Tanluhusport	2016-12-18 17:01:48.976187	2016-12-18 17:01:48.976187
6639	RFID WALLET กระเป๋าเงินอาร์เอฟไอดี	https://www.tvdirect.tv/rfid-wallet-black-white	990	0120200500015	2016-12-18 17:01:49.833879	2016-12-18 17:01:49.833879
6640	STAUER 1930 DASHTRONIC SET เซ็ตนาฬิกาข้อมือรุ่น STAUER 1930	https://www.tvdirect.tv/stauer-1930-dashtronic-set-stauer-1930	999	0124200300033	2016-12-18 17:01:51.802545	2016-12-18 17:01:51.802545
6641	STAUER20308 MORITZ SWISS MOVEMENT WATCH MODEL นาฬิกาข้อมือ	https://www.tvdirect.tv/stauer20308-moritz-swiss-movement-watch-model	4990	0120500600408	2016-12-18 17:01:52.57311	2016-12-18 17:01:52.57311
6642	STAUER SWISS GENT'S QUARTZ - CHRONOGRAPH WATCH SM1100นาฬิกาข้อมือ	https://www.tvdirect.tv/stauer-swiss-gent-s-quartz-chronograph-watch-sm1100	4590	0120500600651	2016-12-18 17:01:53.340754	2016-12-18 17:01:53.340754
6643	STAUER GENT'S QUARTZ SML8031นาฬิกาข้อมือ	https://www.tvdirect.tv/stauer-gent-s-quartz-sml8031	2350	0120500600675	2016-12-18 17:01:54.092042	2016-12-18 17:01:54.092042
6644	STAUER GENT'S QUARTZ SML8010นาฬิกาข้อมือ	https://www.tvdirect.tv/stauer-gent-s-quartz-sml8010	2350	0120500600668	2016-12-18 17:01:54.912642	2016-12-18 17:01:54.912642
6645	Stauer 11071 Ladies Stainess Swiss Mountaineer Watch White Model นาฬิกาข้อมือผู้หญิงสีขาว	https://www.tvdirect.tv/stauer-11071-ladies-stainess-swiss-mountaineer-watch-white-model	2490	0120500600378	2016-12-18 17:01:57.416986	2016-12-18 17:01:57.416986
6646	Stauer 11075 Ladies Stainess Swiss Mountaineer Watch Black Model นาฬิกาข้อมือผู้หญิงสีดำ	https://www.tvdirect.tv/stauer-11075-ladies-stainess-swiss-mountaineer-watch-black-model	2490	0120500600392	2016-12-18 17:01:58.24644	2016-12-18 17:01:58.24644
6647	MISAKI WATCH ATHENA นาฬิกาสีดำหน้าปัดสีดำ	https://www.tvdirect.tv/misaki-watch-athena	2500	0120100300982	2016-12-18 17:01:59.072055	2016-12-18 17:01:59.072055
6648	MISAKI RING MORNING  แหวนมุกสีขาว	https://www.tvdirect.tv/misaki-ring-morning	500	RingMorning	2016-12-18 17:02:03.566716	2016-12-18 17:02:03.566716
6649	MISAKI RING SPIRALE 52 แหวนเงินมีมุกตรงกลาง ขนาด 52	https://www.tvdirect.tv/misaki-ring-spirale-52-52	1200	0120100301323	2016-12-18 17:02:04.43092	2016-12-18 17:02:04.43092
6650	MISAKI RING URBAN  แหวนประดับมุกขนาด	https://www.tvdirect.tv/misaki-ring-urban	990	MisakiRingUrban	2016-12-18 17:02:05.383575	2016-12-18 17:02:05.383575
6651	MISAKI RING QUANTUM  แหวนประดับมุกขาว 	https://www.tvdirect.tv/misaki-ring-quantum-52-52-3134	990	MisakiRingQuantum	2016-12-18 17:02:06.306309	2016-12-18 17:02:06.306309
6652	MISAKI RING BLADEแหวนมุกสีน้ำตาล	https://www.tvdirect.tv/misaki-ring-blade	990	RingBlade	2016-12-18 17:02:07.194424	2016-12-18 17:02:07.194424
6653	MISAKI RING FLORALIS แหวนประดับมุกสีขาว 	https://www.tvdirect.tv/misaki-ring-floralis	990	RingFloralis	2016-12-18 17:02:10.054451	2016-12-18 17:02:10.054451
6654	จี้กังหันแชกงหมิว แบบ 1 สีทองและเงิน	https://www.tvdirect.tv/wind-turbine-necklace-model-1-gold-silver	2500	0110400204998	2016-12-18 17:02:13.521156	2016-12-18 17:02:13.521156
6655	จี้กังหันแชกงหมิว แบบ 2 สีทองและเงิน	https://www.tvdirect.tv/wind-turbine-necklace-model-2-gold-silver	2500	0110400205001	2016-12-18 17:02:14.773378	2016-12-18 17:02:14.773378
6656	จี้กังหันแชกงหมิว แบบ 4 สีทองและเงิน	https://www.tvdirect.tv/wind-turbine-necklace-model-4-gold-silver	2990	0110400205018	2016-12-18 17:02:15.643818	2016-12-18 17:02:15.643818
6657	MISAKI PEARL YOUR HEART SETมิซากิเซ็ทหัวใจ	https://www.tvdirect.tv/misaki-pearl-your-heart-set	990	0120400601048	2016-12-18 17:02:16.5614	2016-12-18 17:02:16.5614
6658	MISAKI NECKLACE BIGTIME สร้อยคอประดับมุกสีชมพู	https://www.tvdirect.tv/misaki-necklace-bigtime	2000	0120100300852	2016-12-18 17:02:17.445106	2016-12-18 17:02:17.445106
6659	MISAKI BRACELET SPIRALE สร้อยข้อมือสีเงินมีมุกตรงกลาง	https://www.tvdirect.tv/misaki-bracelet-spirale	1900	0120100301286	2016-12-18 17:02:18.202564	2016-12-18 17:02:18.202564
6660	MISAKI BRACELET MUST QCUBMUST M/L กำไลข้อมือ	https://www.tvdirect.tv/misaki-bracelet-must-qcubmust-m-l	1500	0120400500211	2016-12-18 17:02:19.117531	2016-12-18 17:02:19.117531
6661	MISAKI NECKLACE SPIRALE สร้อยเงินจี้วงกลมมีมุกตรงกลาง	https://www.tvdirect.tv/misaki-necklace-spirale	2000	0120100301309	2016-12-18 17:02:19.954767	2016-12-18 17:02:19.954767
6662	MISAKI PENDANT ETERNITY สร้อยมีจี้วงกลมประดับด้วยมุก	https://www.tvdirect.tv/misaki-pendant-eternity	1200	0120100300739	2016-12-18 17:02:20.745929	2016-12-18 17:02:20.745929
6663	MISAKI PENDANT MINI POP ART BRONZE สร้อยจี้มุก	https://www.tvdirect.tv/misaki-pendant-mini-pop-art-bronze	1200	0120100301248	2016-12-18 17:02:21.621156	2016-12-18 17:02:21.621156
6664	MISAKI PENDANT MINI POP ART VELOUR สร้อยยาวจี้มุกสีชมพู	https://www.tvdirect.tv/misaki-pendant-mini-pop-art-velour	1200	0120100301255	2016-12-18 17:02:22.448864	2016-12-18 17:02:22.448864
6665	MISAKI NECKLACE QUANTUM สร้อยมุกยาวสีขาว	https://www.tvdirect.tv/misaki-necklace-quantum	1500	0120100301408	2016-12-18 17:02:23.277269	2016-12-18 17:02:23.277269
6666	MISAKI PENDANT TETE A TETE(QCRPTETEATETE)สร้อยวาเลนไทน์	https://www.tvdirect.tv/misaki-pendant-tete-a-tete-qcrpteteatete	600	0120100302399	2016-12-18 17:02:24.070205	2016-12-18 17:02:24.070205
6667	MISAKI PENDENT NAUTILUS WHITE QCRRNAUTILUS สร้อยพร้อมจี้	https://www.tvdirect.tv/misaki-pendent-nautilus-white-qcrrnautilus	1200	0120400500020	2016-12-18 17:02:24.863318	2016-12-18 17:02:24.863318
6668	MISAKI NECKLACE CLEOPATRA QCRNCLEOPATRA สร้อยคอ	https://www.tvdirect.tv/misaki-necklace-cleopatra-qcrncleopatra	2000	0120400500037	2016-12-18 17:02:25.688303	2016-12-18 17:02:25.688303
6669	MISAKI NECKLACE LONG RIBBONQCRNRIBBONLONG สร้อยมุกยาว 2 สี	https://www.tvdirect.tv/misaki-necklace-long-ribbonqcrnribbonlong-2	2000	0120400500075	2016-12-18 17:02:26.604845	2016-12-18 17:02:26.604845
6670	MISAKI NECKLACE RIBBON SHORT QCRNRIBBONSHORT สร้อยคอมุก 2 สี	https://www.tvdirect.tv/misaki-necklace-ribbon-short-qcrnribbonshort-2	800	0120400500082	2016-12-18 17:02:27.447999	2016-12-18 17:02:27.447999
6671	MISAKI PENDANT MAJESTIC  QCRPMAJESTIC สร้อยคอพร้อมจี้ประดับมุก	https://www.tvdirect.tv/misaki-pendant-majestic-qcrpmajestic	1200	0120400500129	2016-12-18 17:02:28.298739	2016-12-18 17:02:28.298739
6672	MISAKI PENDANT MAJESTIC LONG QCRPMAJESTICLONG สร้อยคอพร้อมจี้ประดับมุก	https://www.tvdirect.tv/misaki-pendant-majestic-long-qcrpmajesticlong	1200	0120400500143	2016-12-18 17:02:29.340531	2016-12-18 17:02:29.340531
6673	MISAKI NECKLACE MAJESTIC QCRNMAJESTIC สร้อยคอ	https://www.tvdirect.tv/misaki-necklace-majestic-qcrnmajestic	2000	0120400500150	2016-12-18 17:02:30.198644	2016-12-18 17:02:30.198644
6674	MISAKI PENDANT SHOOTING STAR QCUPSHOOTING STAR สร้อยคอพร้อมจี้สีเงินรูปดาวตก	https://www.tvdirect.tv/misaki-pendant-shooting-star-qcupshooting-star	1200	0120400500181	2016-12-18 17:02:32.625178	2016-12-18 17:02:32.625178
6675	MISAKI BRACELET SHOOTING STAR QCUBSHOOTINGSTAR สร้อยข้อมือรูปดาวตก	https://www.tvdirect.tv/misaki-bracelet-shooting-star-qcubshootingstar	990	0120400500198	2016-12-18 17:02:33.457846	2016-12-18 17:02:33.457846
6676	MISAKI Necklace Large Saba สร้อยคอ	https://www.tvdirect.tv/misaki-necklace-large-saba	3000	0120400600294	2016-12-18 17:02:34.342562	2016-12-18 17:02:34.342562
6677	MISAKI Pendant Kermit สร้อยคอพร้อมจี้สีเงินรูปกบ	https://www.tvdirect.tv/misaki-pendant-kermit	1200	0120400600362	2016-12-18 17:02:35.170021	2016-12-18 17:02:35.170021
6678	Brooch 2x1.5 cm silver เข็มกลัดเลข 9 ไทย ประดับเพชร CZขนาด2x1.5ซม.ติดโบว์	https://www.tvdirect.tv/brooch-2x1-5-cm-silver-9-cz-2x1-5	290	0110400205056	2016-12-18 17:02:38.954526	2016-12-18 17:02:38.954526
6679	Brooch 3x3.5 cm silver เข็มกลัดเลข 9 ไทย ประดับเพชร CZ  ขนาด3x3.5ซม	https://www.tvdirect.tv/brooch-3x3-5-cm-silver-9-cz-3x3-5	490	0110400205032	2016-12-18 17:02:39.75801	2016-12-18 17:02:39.75801
6680	Brooch 3x3.5 cm silver เข็มกลัดเลข 9 ไทย ลายกนก ประดับเพชร CZขนาด3x3.5ซม	https://www.tvdirect.tv/brooch-3x3-5-cm-silver-9-cz-3x3-5-3849	490	0110400205049	2016-12-18 17:02:40.68632	2016-12-18 17:02:40.68632
6681	MISAKI EARRINGS SPIRALE SMALL ตุ้มหูวงกลมมีมุกตรงกลาง	https://www.tvdirect.tv/misaki-earrings-spirale-small	1500	0120100301293	2016-12-18 17:02:41.706397	2016-12-18 17:02:41.706397
6682	MISAKI Earring Kermit ตุ้มหูสีเงินรูปกบ	https://www.tvdirect.tv/misaki-earring-kermit	1200	0120400600379	2016-12-18 17:02:45.380186	2016-12-18 17:02:45.380186
6683	MISAKI E FATALE BLตุ้มหูมุกดำยาว	https://www.tvdirect.tv/misaki-e-fatale-bl	1200	0120400600881	2016-12-18 17:02:46.226921	2016-12-18 17:02:46.226921
6684	Eagle Eyes Vintage Americana Max	https://www.tvdirect.tv/eagle-eyes-vintage-americana-max	1990	0120300500519	2016-12-18 17:02:50.552487	2016-12-18 17:02:50.552487
6685	Eagle Eyes Vintage Americana Tiffany Black	https://www.tvdirect.tv/eagle-eyes-vintage-americana-tiffany-black	1990	0120300500526	2016-12-18 17:02:51.439833	2016-12-18 17:02:51.439833
6686	Eagle Eyes Vintage Americana Parkstreet Black	https://www.tvdirect.tv/eagle-eyes-vintage-americana-parkstreet-black	1990	0120300500557	2016-12-18 17:02:52.235865	2016-12-18 17:02:52.235865
6687	EAGLE EYES ARIANA BLACK MODEL 1	https://www.tvdirect.tv/eagle-eyes-ariana-black-model-1	1990	0120300501080	2016-12-18 17:02:53.007312	2016-12-18 17:02:53.007312
6688	RAYBAN WAYFARER ASIAN FIT RB2140F 901	https://www.tvdirect.tv/rayban-wayfarer-asian-fit-rb2140f-901	6000	0110200206734	2016-12-18 17:02:53.800946	2016-12-18 17:02:53.800946
6689	RAYBAN YOUNGSTER RB4222 865/13	https://www.tvdirect.tv/rayban-youngster-rb4222-865-13	4900	0110200206727	2016-12-18 17:02:54.555939	2016-12-18 17:02:54.555939
6690	RAYBAN YOUNGSTER RB4222 622/8G	https://www.tvdirect.tv/rayban-youngster-rb4222-622-8g	4900	0110200206710	2016-12-18 17:02:55.386582	2016-12-18 17:02:55.386582
6691	RAYBAN ERIKA RB4171F 865/13	https://www.tvdirect.tv/rayban-erika-rb4171f-865-13	4900	0110200206703	2016-12-18 17:02:56.156604	2016-12-18 17:02:56.156604
6692	RAYBAN ERIKA RB4171F 622/8G	https://www.tvdirect.tv/rayban-erika-rb4171f-622-8g	4900	0110200206699	2016-12-18 17:02:57.064971	2016-12-18 17:02:57.064971
6693	RAYBAN AVIATOR LARGE METAL RB3025 001/3E	https://www.tvdirect.tv/rayban-aviator-large-metal-rb3025-001-3e	6400	0110200206682	2016-12-18 17:02:57.950739	2016-12-18 17:02:57.950739
6694	RAYBAN AVIATOR LARGE METAL RB3025 112/85	https://www.tvdirect.tv/rayban-aviator-large-metal-rb3025-112-85	6400	0110200206675	2016-12-18 17:02:58.770611	2016-12-18 17:02:58.770611
6695	RAYBAN AVIATOR LARGE METAL RB3025 112/93	https://www.tvdirect.tv/rayban-aviator-large-metal-rb3025-112-93	6850	0110200206668	2016-12-18 17:02:59.607054	2016-12-18 17:02:59.607054
6696	RAYBAN AVIATOR LARGE METAL RB3025 029/30	https://www.tvdirect.tv/rayban-aviator-large-metal-rb3025-029-30	6850	0110200206651	2016-12-18 17:03:00.395986	2016-12-18 17:03:00.395986
6697	RAYBAN AVIATOR LARGE METAL RB3025 W0879	https://www.tvdirect.tv/rayban-aviator-large-metal-rb3025-w0879	6000	0110200206644	2016-12-18 17:03:01.266861	2016-12-18 17:03:01.266861
6698	RAYBAN AVIATOR LARGE METAL RB3025 L2823	https://www.tvdirect.tv/rayban-aviator-large-metal-rb3025-l2823	6000	0110200206637	2016-12-18 17:03:02.164799	2016-12-18 17:03:02.164799
6699	RAYBAN AVIATOR LARGE METAL RB3025 L0205	https://www.tvdirect.tv/rayban-aviator-large-metal-rb3025-l0205	6000	0110200206620	2016-12-18 17:03:03.02572	2016-12-18 17:03:03.02572
6700	EAGLE EYES FREEDOM SERIES SET  แถมฟรี กล้องส่องทางไกล	https://www.tvdirect.tv/eagle-eyes-freedom-series-set-free	2990	EagleEyeFreedomSeriesSet	2016-12-18 17:03:04.284571	2016-12-18 17:03:04.284571
6701	Eagle Eyes Pro-Master GS2 TV SET แถมฟรี กล้องส่องทางไกล	https://www.tvdirect.tv/eagle-eyes-pro-master-gs2-tv-set-free	2990	EagleEyesProMasterGS2TVSET	2016-12-18 17:03:05.176664	2016-12-18 17:03:05.176664
6702	EAGLE EYES AVIATOR FOLD-UP TV SET แถม EAGLE EYE - BINOCULARS VIVITAR#90040	https://www.tvdirect.tv/eagle-eyes-aviator-fold-up-tv-set	2990	EagleEyeAviator	2016-12-18 17:03:06.158652	2016-12-18 17:03:06.158652
6703	Eagle Eyes PanoVu Model 2	https://www.tvdirect.tv/eagle-eyes-panovu-model-2	990	0112200300023	2016-12-18 17:03:07.011032	2016-12-18 17:03:07.011032
6704	Eagle Eyes Rocketeer Blue Model 1 แว่นตาอีเกิ้ลอายส์ ร็อคคีตเตอร์ สีน้ำเงิน	https://www.tvdirect.tv/eagle-eyes-rocketeer-blue-model1	990	0120100302214	2016-12-18 17:03:09.48377	2016-12-18 17:03:09.48377
6705	Eagle Eyes Rocketeer Red Model 1 แว่นตาอีเกิ้ลอายส์ ร็อคคีตเตอร์ สีแดง	https://www.tvdirect.tv/eagle-eyes-rocketeer-red-model1	990	0120100302207	2016-12-18 17:03:10.288077	2016-12-18 17:03:10.288077
6706	Eagle Eyes Extreme SL Model 2	https://www.tvdirect.tv/eagle-eyes-extreme-sl-model-2	990	0122700500090	2016-12-18 17:03:11.160185	2016-12-18 17:03:11.160185
6707	Eagle Eyes Revo Amethyst Aviator Model 1	https://www.tvdirect.tv/eagle-eyes-revo-amethyst-aviator-model-1-binoculars-vivitar-990	2990	0120300500656	2016-12-18 17:03:12.029334	2016-12-18 17:03:12.029334
6708	Eagle Eyes Revo Emerald Aviator Model 1	https://www.tvdirect.tv/eagle-eyes-revo-emerald-aviator-model-1-binoculars-vivitar-990	2490	0120300500670	2016-12-18 17:03:12.862069	2016-12-18 17:03:12.862069
6709	EAGLE EYES-EMERALE GREEN MODEL1 อีเกิลอายสอีเมอรัล กรีน โมเดล1	https://www.tvdirect.tv/eagle-eyes-emerale-green-model1-1	990	0122200300138	2016-12-18 17:03:13.737144	2016-12-18 17:03:13.737144
6710	EAGLE EYES  PRO-XL BLACK MODEL 1	https://www.tvdirect.tv/eagle-eyes-pro-xl-black-model-1	1990	0120300500984	2016-12-18 17:03:14.569336	2016-12-18 17:03:14.569336
6711	EAGLE EYES ROXIE TORTOISE MODEL 1	https://www.tvdirect.tv/eagle-eyes-roxie-tortoise-model-1	1990	0120300501059	2016-12-18 17:03:15.452479	2016-12-18 17:03:15.452479
6712	Plernarie Sunscreen 15 ml. แถมฟรี! Serum  5 ml.	https://www.tvdirect.tv/plernarie-sunscreen-15-ml-serum-5-ml	799	0110700208306	2016-12-18 17:03:22.51154	2016-12-18 17:03:22.51154
6713	Plernarie Repairing Serum 15 ml.	https://www.tvdirect.tv/plernarie-repairing-serum-15-ml	1200	0110700208313	2016-12-18 17:03:23.328093	2016-12-18 17:03:23.328093
6714	Plernarie Sunscreen + Serum  แถมฟรี! กระเป๋า	https://www.tvdirect.tv/plernarie-sunscreen-serum	1990	0110700208320	2016-12-18 17:03:24.334201	2016-12-18 17:03:24.334201
6715	RENE BETA GLUCAN SERUM 30 ML.	https://www.tvdirect.tv/rene-beta-glucan-serum-30-ml	1290	0110700301090	2016-12-18 17:03:25.20682	2016-12-18 17:03:25.20682
6716	ARTISCENT MIRACLE BRIGHTENING DAY CREAM	https://www.tvdirect.tv/artiscent-miracle-brightening-day-cream	1780	0110700208658	2016-12-18 17:03:26.02039	2016-12-18 17:03:26.02039
6717	ARTISCENT MIRACLE BRIGHTENING NIGHT CREAM	https://www.tvdirect.tv/artiscent-miracle-brightening-night-cream	1780	0110700208665	2016-12-18 17:03:26.880079	2016-12-18 17:03:26.880079
6718	ARTISCENT ABSOLUTE AGE DEFYING DAY CREAM	https://www.tvdirect.tv/artiscent-absolute-age-defying-day-cream	1980	0110700208672	2016-12-18 17:03:27.682223	2016-12-18 17:03:27.682223
6719	ARTISCENT ABSOLUTE AGE DEFYING NIGHT CREAM	https://www.tvdirect.tv/artiscent-absolute-age-defying-night-cream	1980	0110700208689	2016-12-18 17:03:28.582349	2016-12-18 17:03:28.582349
6720	TRILOGY ORGANIC ROSEHIP OIL 20MLน้ำมันสกัดโรสฮิป	https://www.tvdirect.tv/trilogy-organic-rosehip-oil-20ml	840	0110700208764	2016-12-18 17:03:29.427231	2016-12-18 17:03:29.427231
6721	TRILOGY ORGANIC ROSEHIP OIL 45MLน้ำมันสกัดโรสฮิป	https://www.tvdirect.tv/trilogy-organic-rosehip-oil-45ml	1480	0110700208771	2016-12-18 17:03:30.267566	2016-12-18 17:03:30.267566
6722	TRILOGY ROSEHIP OIL LIP BALM 7MLลิปบาล์มโรสฮิป	https://www.tvdirect.tv/trilogy-rosehip-oil-lip-balm-7ml	760	0110700208788	2016-12-18 17:03:31.103473	2016-12-18 17:03:31.103473
6723	TRILOGY ROSEHIP OIL ANTIOXIDANT 30MLออยบำรุงผิว	https://www.tvdirect.tv/trilogy-rosehip-oil-antioxidant-30ml	1280	0110700208795	2016-12-18 17:03:31.96478	2016-12-18 17:03:31.96478
6724	Best Sea Cream ครีมปลาดาว	https://www.tvdirect.tv/best-sea-cream	1290	0110700208269	2016-12-18 17:03:32.759492	2016-12-18 17:03:32.759492
6725	JSP Milis Cream ครีมว่านตาลเดี่ยว	https://www.tvdirect.tv/jsp-milis-cream	1290	0110700208740	2016-12-18 17:03:33.556155	2016-12-18 17:03:33.556155
6726	Golden Essence Gel 1 แถม 1 	https://www.tvdirect.tv/golden-essence-gel-1-1	0	GoldenEssenceGel1Get1	2016-12-18 17:03:35.015114	2016-12-18 17:03:35.015114
6727	ADEN WEISS+ Cellular Cream	https://www.tvdirect.tv/aden-weiss-cellular-cream	1200	0110700209477	2016-12-18 17:03:35.942995	2016-12-18 17:03:35.942995
6728	ido Snow White Eau De Parfum ไอดูน้ำหอมกลิ่นสโนไวท์ 110 ML.	https://www.tvdirect.tv/ido-snow-white-eau-de-parfum-110-ml	360	0110700209415	2016-12-18 17:03:36.813049	2016-12-18 17:03:36.813049
6729	MOLELA ADVANCED PERFECTING SERUM เซรั่มบำรุงผิว	https://www.tvdirect.tv/molela-advanced-perfecting-serum	850	0110700209491	2016-12-18 17:03:37.615046	2016-12-18 17:03:37.615046
6730	ANNA WHITE PERFECT CREAM 50G. ครีมบำรุงผิวหน้า	https://www.tvdirect.tv/anna-white-perfect-cream-50g	1200	0110700209563	2016-12-18 17:03:38.489428	2016-12-18 17:03:38.489428
6731	RIACE AQUA MULTI WHITENING GEL CREAM ครีมบำรุงผิว	https://www.tvdirect.tv/riace-aqua-multi-whitening-gel-cream	1650	0110700209505	2016-12-18 17:03:39.384482	2016-12-18 17:03:39.384482
6732	DERMANOUR SET 6D NANO SUPER BRUSH เดอร์มาเนอร์เซตทำความสะอาดหน้า	https://www.tvdirect.tv/dermanour-set-6d-nano-super-brush	1699	0110700209617	2016-12-18 17:03:42.287965	2016-12-18 17:03:42.287965
6733	Rene Beta Glucan Facial Booster Gel เรเน่	https://www.tvdirect.tv/rene-beta-glucan-facial-booster-gel	1590	0110700301540	2016-12-18 17:03:43.240668	2016-12-18 17:03:43.240668
6734	Nature Republic Soothing & Moisture Aloe Vera 92% Soothing Gel  เจลว่านหางจระเข้ 92%	https://www.tvdirect.tv/nature-republic-soothing-moisture-aloe-vera-92-soothing-gel-92	350	0110700209693	2016-12-18 17:03:44.03991	2016-12-18 17:03:44.03991
6735	Vaseline Lip Therapy Rosy Lips ลิปทรีทเมนต์	https://www.tvdirect.tv/vaseline-lip-therapy-rosy-lips	185	0110700209709	2016-12-18 17:03:44.956161	2016-12-18 17:03:44.956161
6736	BIOSKIN SET CC AQUA CUSHION HD NO.23 HYLU COLLAGEN เซตแป้งคุชชั่นเบอร์ 23 และ เซรั่มคอลลาเจน	https://www.tvdirect.tv/bioskin-set-cc-aqua-cushion-hd-no-23-hylu-collagen-23	1380	0110700209679	2016-12-18 17:03:45.824073	2016-12-18 17:03:45.824073
6737	IKI ULTRA WHITE+LIFTING MASK 15G เจลมาร์กหน้าทองคำ ยกกระชับผิวหน้า 15กรัม	https://www.tvdirect.tv/iki-ultra-white-lifting-mask-15g-15	1190	0110700209815	2016-12-18 17:03:46.610472	2016-12-18 17:03:46.610472
6738	BELLE JOUR RAPID FACE LIFT SERUM 12G เซรั่ม ยกกระชับและลดเลือนริ้วรอยอย่างรวดเร็ว 12กรัม	https://www.tvdirect.tv/belle-jour-rapid-face-lift-serum-12g-12	999	0110700209822	2016-12-18 17:03:47.448586	2016-12-18 17:03:47.448586
6739	BEAU VISAGE ANTI-AGING MOISTURIZER 25ML ครีมต่อต้านริ้วรอยและกระชับผิว 25กรัม	https://www.tvdirect.tv/beau-visage-anti-aging-moisturizer-25ml-25	999	0110700209839	2016-12-18 17:03:48.321164	2016-12-18 17:03:48.321164
6740	CNP LABORATORY PROPOLIS ENERGY AMPULE 35ML เซรั่มบำรุงผิวขาวสกัดจากรังผึ้ง 35 มล	https://www.tvdirect.tv/cnp-laboratory-propolis-energy-ampule-35ml-35	2790	0110700210300	2016-12-18 17:03:49.160585	2016-12-18 17:03:49.160585
6741	CNP LABORATORY PROPOLIS SET ชุดพรอโพลิส เอนเนอจี แอมพลู เซต	https://www.tvdirect.tv/cnp-laboratory-propolis-set	1990	0110700210294	2016-12-18 17:03:49.955998	2016-12-18 17:03:49.955998
6742	PUERARIAN INTENSIVE DAY CREAM 30 g พิวราเรี่ยน เดย์ครีม 30 กรัม	https://www.tvdirect.tv/puerarian-intensive-day-cream-30-g-30	1250	0110700301568	2016-12-18 17:03:52.777842	2016-12-18 17:03:52.777842
6743	PUERARIAN INTENSIVE NIGHT CREAM 30 g พิวราเรี่ยน ไนท์ครีม 30 กรัม	https://www.tvdirect.tv/puerarian-intensive-night-cream-30-g-30	1250	0110700301582	2016-12-18 17:03:53.987236	2016-12-18 17:03:53.987236
6744	PUERARIAN INTENSIVE FACIAL MASK 30 g พิวราเรี่ยนเฟเชิลมาร์คครีม 30 กรัม	https://www.tvdirect.tv/puerarian-intensive-facial-mask-30-g	1250	0110700301599	2016-12-18 17:03:55.115663	2016-12-18 17:03:55.115663
6745	PUERARIAN ESSENCE EYE GEL 20 g พิวราเรี่ยนเอสเซ้นส์ อายเจล 20 กรัม	https://www.tvdirect.tv/puerarian-essence-eye-gel-20-g	900	0110700301603	2016-12-18 17:03:56.331329	2016-12-18 17:03:56.331329
6746	HUG CORRIEDALE  ชุดลดริ้วรอย 5 ชิ้นฟรีถุงผ้า	https://www.tvdirect.tv/hug-corriedale-6	1199	0110700210355	2016-12-18 17:03:57.470586	2016-12-18 17:03:57.470586
6747	HUG CORRIEDALE  ชุดผิวสวยใส 3 ชิ้น	https://www.tvdirect.tv/hug-corriedale-3	799	0110700210379	2016-12-18 17:03:58.343066	2016-12-18 17:03:58.343066
6748	HUG CORRIEDALE ชุุดหน้าขาวใส 5ฟรีถุงผ้า	https://www.tvdirect.tv/hug-corriedale-5	1199	0110700210362	2016-12-18 17:03:59.131704	2016-12-18 17:03:59.131704
6749	RENE Beta Glucan Travel Set 3 Pcs ชุดครีมบำรุงผิว  3 ชิ้น	https://www.tvdirect.tv/rene-beta-glucan-travel-set-3-pcs-3	990	0110700301465	2016-12-18 17:03:59.94701	2016-12-18 17:03:59.94701
6750	Nuvite Magic Plus White Cream 30 G. นูไวท์เมจิกพลัสไวท์ครีม ขนาด 30 กรัม	https://www.tvdirect.tv/nuvite-magic-plus-white-cream-30-g-30	590	0120700400013	2016-12-18 17:04:00.89086	2016-12-18 17:04:00.89086
6751	RENE' ALL SEASON CLEANSER 100 ML.	https://www.tvdirect.tv/rene-all-season-cleanser	590	0110700301366	2016-12-18 17:04:01.764057	2016-12-18 17:04:01.764057
6752	RENE' SUNSCREEN SPF 50 PA+++ PLUS BETA GLUCAN 30 g.	https://www.tvdirect.tv/rene-sunscreen-spf-50-pa-plus-beta-glucan	1190	0110700301373	2016-12-18 17:04:03.921075	2016-12-18 17:04:03.921075
6753	RENE' BETA GLUCAN SET Serum+Cleansing+Sunscreen+PVC Bag 	https://www.tvdirect.tv/rene-beta-glucan-set	2990	0110700301458	2016-12-18 17:04:04.745163	2016-12-18 17:04:04.745163
6754	Nuvite Melasis Cream 30 g นูไวท์ครีมทาหน้า 30 กรัม	https://www.tvdirect.tv/nuvite-melasis-cream-30-g-30	1290	0120700601274	2016-12-18 17:04:05.623099	2016-12-18 17:04:05.623099
6755	Bawang Anti Hair Fall Pack for Ladies ป้าหวัง สูตรลดการขาดหลุดร่วง สำหรับผู้หญิง แพ็ค แชมพู 400 ML + ครีมนวด 200 ML	https://www.tvdirect.tv/bawang-anti-hair-fall-pack-for-ladies-400-ml-200-ml	598	0120700400440	2016-12-18 17:04:08.416909	2016-12-18 17:04:08.416909
6756	Bawang Anti-Hair Fall Shampoo Professional Pack 200 Ml. ป้าหวังชุดแชมพูสูตรลดการขาดหลุดร่วงของเส้นผม	https://www.tvdirect.tv/bawang-anti-hair-fall-shampoo-professional-pack-200-ml	498	0120300301215	2016-12-18 17:04:09.357159	2016-12-18 17:04:09.357159
6757	Bawang Hair Darkening Professional Pack 200 ML. ป้าหวัง แชมพูสูตรเพื่อผมดกดำเงางาม	https://www.tvdirect.tv/bawang-hair-darkening-professional-pack-200-ml	498	0120300301222	2016-12-18 17:04:10.340753	2016-12-18 17:04:10.340753
6758	Bawang hair Conditioner 220 G. ป้าหวัง ครีมนวดผมขนาด 220 กรัม	https://www.tvdirect.tv/bawang-hair-conditioner-220-g-220	138	0120300301260	2016-12-18 17:04:11.212422	2016-12-18 17:04:11.212422
6759	Bawang Repairing and Nourishing Shampoo 400 Ml. ป้าหวังแชมพูฟื้นบำรุงเส้นผมเสีย	https://www.tvdirect.tv/bawang-repairing-and-nourishing-shampoo-400-ml	238	0120300301239	2016-12-18 17:04:12.09096	2016-12-18 17:04:12.09096
6760	Bawang Hair Strengthening Shampoo 400 Ml. ป้าหวังแชมพูสูตรบำรุงเส้นผม	https://www.tvdirect.tv/bawang-hair-strengthening-shampoo-400-ml	238	0120300301246	2016-12-18 17:04:13.013105	2016-12-18 17:04:13.013105
6761	Bawang Anti-Dandruff Shampoo 400 ml. ป้าหวังแชมพูสูตรป้องกันรังแคขนาด 400 มล.	https://www.tvdirect.tv/bawang-anti-dandruff-shampoo-400-ml-400	238	0120300301253	2016-12-18 17:04:13.855469	2016-12-18 17:04:13.855469
6762	Bawang Anti Hair Fall Pack for Ladies ป้าหวัง สูตรลดการขาดหลุดร่วง สำหรับผู้หญิง แพ็ค แชมพู 200 ml. + ครีมนวด 200 ml.	https://www.tvdirect.tv/bawang-anti-hair-fall-pack-for-ladies-200-ml-200-ml	298	0120700400068	2016-12-18 17:04:14.798812	2016-12-18 17:04:14.798812
6763	Bawang Anti-Hair Fall Shampoo For Ladies 400 ML. ป้าหวัง สูตรลดการหลุดร่วงของเส้นผมสำหรับผู้หญิง	https://www.tvdirect.tv/bawang-anti-hair-fall-shampoo-for-ladies-400-ml-1940	368	0120700400648	2016-12-18 17:04:15.663754	2016-12-18 17:04:15.663754
6764	ARTISCENT Natural Hair Dye สมุนไพรเปลี่ยนสีผม	https://www.tvdirect.tv/artiscent-natural-hair-dye	650	0110700208641	2016-12-18 17:04:16.594655	2016-12-18 17:04:16.594655
6765	ARTISCENT Relaxing Aroma Shampoo	https://www.tvdirect.tv/artiscent-relaxing-aroma-shampoo	280	0110700208696	2016-12-18 17:04:17.394988	2016-12-18 17:04:17.394988
6766	ARTISCENT Relaxing Aroma Conditioner	https://www.tvdirect.tv/artiscent-relaxing-aroma-conditioner	295	0110700208702	2016-12-18 17:04:18.268085	2016-12-18 17:04:18.268085
6767	ARTISCENT Wonderful Day (Relaxing Set)	https://www.tvdirect.tv/artiscent-wonderful-day-relaxing-set	1250	0110700208733	2016-12-18 17:04:19.174483	2016-12-18 17:04:19.174483
6768	Bawang Anti Hair Fall Pack for Ladies ป้าหวัง สูตรลดการขาดหลุดร่วง สำหรับผู้หญิง แพ็ค แชมพู 400 ML + ครีมนวด 200 ML 1 Free 1	https://www.tvdirect.tv/bawang-anti-hair-fall-pack-for-ladies-400-200-ml	890	BAWANGANTIHAIRFALLPACKFORLADIES400	2016-12-18 17:04:20.058611	2016-12-18 17:04:20.058611
6769	Speed Hair Color - Black แชมพูปิดผมขาวจากธรรมชาติ 1 Free 1 สีดำ	https://www.tvdirect.tv/speed-hair-color-black-1-free-1	1290	0110700209512	2016-12-18 17:04:20.993483	2016-12-18 17:04:20.993483
6770	Speed Hair Color - Brown แชมพูปิดผมขาวจากธรรมชาติ 1 Free 1 สีน้ำตาล	https://www.tvdirect.tv/speed-hair-color-brown-1-free-1	1290	0110700209529	2016-12-18 17:04:21.86621	2016-12-18 17:04:21.86621
6771	BAWANG ANTI HAIR FALL & RENEWAL PACKAGE ป้าหวังแอนตี้ แฮร์ ฟอล แชมพู 200ml + เซรั่ม 55ml	https://www.tvdirect.tv/bawang-anti-hair-fall-renewal-package-200-ml-55-ml	698	0120700400471	2016-12-18 17:04:22.730515	2016-12-18 17:04:22.730515
6772	 VELFORM HAIR 2 ผลิตภัณฑ์ดูแลเส้นผม SET 2 ขวด 3 Set 	https://www.tvdirect.tv/velform-hair-2-set-2-3-set	5970	VelformHair3set	2016-12-18 17:04:23.955892	2016-12-18 17:04:23.955892
6773	Express Color Black ครีมปกปิดผมขาว	https://www.tvdirect.tv/express-color-black	1290	0120700601069	2016-12-18 17:04:24.768616	2016-12-18 17:04:24.768616
6774	TRBO RICE BRAN SOAP สบู่น้ำมันรำข้าว	https://www.tvdirect.tv/trbo-rice-bran-soap	259	0110700208559	2016-12-18 17:04:27.312317	2016-12-18 17:04:27.312317
6775	Angel looka Moisturizing Hand Mask มาร์คมือ	https://www.tvdirect.tv/angel-looka-moisturizing-hand-mask	599	0110700209536	2016-12-18 17:04:28.245664	2016-12-18 17:04:28.245664
6776	Angel looka Moisturizing Foot Mask มาร์คเท้า	https://www.tvdirect.tv/angel-looka-moisturizing-foot-mask	599	0110700209543	2016-12-18 17:04:29.335932	2016-12-18 17:04:29.335932
6777	Nuvite Gluta Soap นูไวท์สบู่กลูต้า	https://www.tvdirect.tv/nuvite-gluta-soap	590	0120700601296	2016-12-18 17:04:30.238499	2016-12-18 17:04:30.238499
6778	Lucas Papaw Ointment 25g บาล์มสารพัดประโยชน์จากส่วนผสมของมะละกอ 25 กรัม	https://www.tvdirect.tv/lucas-papaw-ointment-25g-25	350	0110700209747	2016-12-18 17:04:31.212373	2016-12-18 17:04:31.212373
6779	DR.ATO ESSENTIAL MOISTURE WASH 225 ML ครีมอาบน้ำ 225 มล.	https://www.tvdirect.tv/dr-ato-essential-moisture-wash-225-ml-225	590	0112600200572	2016-12-18 17:04:32.113154	2016-12-18 17:04:32.113154
6780	DR.ATO ESSENTIAL MOISTURE LOTION 225ML  โลชั่นบำรุงผิว 225 มล.	https://www.tvdirect.tv/dr-ato-essential-moisture-lotion-225ml-225	690	0112600200565	2016-12-18 17:04:33.084289	2016-12-18 17:04:33.084289
6781	SANTENATUR ครีมบำรุุงผิวจากมันฝรั่ง 30 ml	https://www.tvdirect.tv/santenatur-30-ml	350	0110700209761	2016-12-18 17:04:33.939171	2016-12-18 17:04:33.939171
6782	SANTENATUR ครีมบำรุงผิวจากมันฝรั่ง 50 ml	https://www.tvdirect.tv/santenatur-50-ml	590	0110700209778	2016-12-18 17:04:34.81674	2016-12-18 17:04:34.81674
6783	SANTENATUR ครีมบำรุงผิวจากมันฝรั่ง 150ML	https://www.tvdirect.tv/santenatur-150ml	1290	0110700209785	2016-12-18 17:04:35.649147	2016-12-18 17:04:35.649147
6784	SANTENATUR ครีมบำรุงผิวเด็กจากมันฝรั่ง 50ML	https://www.tvdirect.tv/santenatur-50ml	790	0110700209792	2016-12-18 17:04:36.544433	2016-12-18 17:04:36.544433
6785	SANTENATUR ครีมบำรุงผิวเด็กจากมันฝรั่ง 150ML	https://www.tvdirect.tv/santenatur-150ml-3269	1490	0110700209808	2016-12-18 17:04:37.407013	2016-12-18 17:04:37.407013
6786	PUERARIAN SOAP 80 g พิวราเรี่ยนสบู่กวาวเครือ 80 กรัม	https://www.tvdirect.tv/puerarian-soap-80-g-80	150	0110700301575	2016-12-18 17:04:38.338824	2016-12-18 17:04:38.338824
6787	JML PED EGG (WHITE) อุปกรณ์ดูแลผิวเท้า สีขาว	https://www.tvdirect.tv/jml-ped-egg-white	499	0110700301267	2016-12-18 17:04:41.028869	2016-12-18 17:04:41.028869
6788	JML PED EGG (PINK)อุปกรณ์ดูแลผิวเท้า สีชมพู	https://www.tvdirect.tv/jml-ped-egg-pink	499	0110700301274	2016-12-18 17:04:42.047077	2016-12-18 17:04:42.047077
6789	KLEEN KUT WET&DRY ที่โกนหนวดพกพาชนิดกันน้ำ	https://www.tvdirect.tv/kleen-kut-wet-dry	1490	0120700601175	2016-12-18 17:04:42.999725	2016-12-18 17:04:42.999725
6790	Puerarian พิวราเรียน เซรั่มกระชับทรวงอก ขนาด 60 ml.	https://www.tvdirect.tv/puerarian-breast-serum-60-ml	1250	0110700301335	2016-12-18 17:04:43.909775	2016-12-18 17:04:43.909775
6791	Puerarian พิวราเรียน เซรั่มกระชับทรวงอก ขนาด 60 ml. จำนวน 2 ขวด แถมฟรี! พิวร่าพลัส 60 แคปซูล 1 ขวด	https://www.tvdirect.tv/puerarian-breast-serum-60-ml-free-puerarian-plus-60-capsule	2500	0110700301410	2016-12-18 17:04:44.913897	2016-12-18 17:04:44.913897
6792	ครีมกระชับทรวงอก Boo Ben Breast cream	https://www.tvdirect.tv/boo-ben-breast-cream	690	0110700208450	2016-12-18 17:04:45.841056	2016-12-18 17:04:45.841056
6793	Thip Siam herbal toothpaste 120 g ยาสีฟันสมุนไพรทิพสยาม 120 กรัม	https://www.tvdirect.tv/thip-siam-herbal-toothpaste-120-g-120	175	0111600208625	2016-12-18 17:04:46.642955	2016-12-18 17:04:46.642955
6794	Thip Siam herbal toothpaste 120 g ยาสีฟันสมุนไพรทิพสยาม 120 กรัมแพ็ค 3 ฟรี 1	https://www.tvdirect.tv/thip-siam-herbal-toothpaste-120-g-120-3-1	525	0111600208632	2016-12-18 17:04:47.543678	2016-12-18 17:04:47.543678
6795	REMINGTON Hair Clipper ปัตตาเลี่ยน รุ่นHC-5356	https://www.tvdirect.tv/remington-hair-clipper-hc-5356	3800	0110700210003	2016-12-18 17:04:48.390427	2016-12-18 17:04:48.390427
6796	REMINGTON Hair Clipper ปัตตาเลี่ยนแต่งผม รุ่นAPPRENTICE HC-5018	https://www.tvdirect.tv/remington-hair-clipper-apprentice-hc-5018	1950	0110700210058	2016-12-18 17:04:49.266196	2016-12-18 17:04:49.266196
6797	REMINGTON SHAVER อุปกรณ์ตกแต่งหนวดเครา รุ่นMB-4110	https://www.tvdirect.tv/remington-shaver-mb-4110	2950	0110700210065	2016-12-18 17:04:50.132332	2016-12-18 17:04:50.132332
6798	REMINGTON SHAVERอุปกรณ์ตกแต่งหนวดเครา รุ่นPG-6130	https://www.tvdirect.tv/remington-shaver-pg-6130	2300	0110700210072	2016-12-18 17:04:51.019405	2016-12-18 17:04:51.019405
6799	REMINGTON SHAVER อุปกรณ์ตกแต่งหนวดเครา รุ่นPG-180	https://www.tvdirect.tv/remington-shaver-pg-180	1500	0110700210089	2016-12-18 17:04:51.874272	2016-12-18 17:04:51.874272
6800	REMINGTON SHAVER เครื่องโกนหนวด รุ่นPR-1230	https://www.tvdirect.tv/remington-shaver-pr-1230	3900	0110700210096	2016-12-18 17:04:52.732562	2016-12-18 17:04:52.732562
6801	REMINGTON CORDLESS EPILATOR อุปกรณ์ตกแต่งขนสุภาพสตรี WDF-4815C	https://www.tvdirect.tv/remington-cordless-epilator-wdf-4815c	2000	0110700210102	2016-12-18 17:04:53.706783	2016-12-18 17:04:53.706783
6802	REMINGTON CORDLESS EPILATOR อุปกรณ์ตกแต่งขนสุภาพสตรี EP-7010	https://www.tvdirect.tv/remington-cordless-epilator-ep-7010	3100	0110700210119	2016-12-18 17:04:54.558155	2016-12-18 17:04:54.558155
6803	Puerarian พิวราเรียน เซรั่มกระชับทรวงอก ขนาด 60 ml.	https://www.tvdirect.tv/puerarian-60-ml-1	1251	Puerarian1Bath	2016-12-18 17:04:55.426731	2016-12-18 17:04:55.426731
6804	Slique อุปกรณ์ถอนขน	https://www.tvdirect.tv/slique	299	0120700500010	2016-12-18 17:04:56.23456	2016-12-18 17:04:56.23456
6805	Derma Seta เครื่องบอดี้โฮมสปา	https://www.tvdirect.tv/derma-seta	990	0122600300011	2016-12-18 17:04:57.172234	2016-12-18 17:04:57.172234
6806	Maxi Styler อุปกรณ์จัดแต่งทรงผม	https://www.tvdirect.tv/maxi-styler	1990	0110700301014	2016-12-18 17:04:58.005231	2016-12-18 17:04:58.005231
6807	SECRET EXTENSION LIGHT BROWN แฮร์พีชเพิ่มวอลลุ่ม	https://www.tvdirect.tv/secret-extension-light-brown	390	0120700601113	2016-12-18 17:05:00.223738	2016-12-18 17:05:00.223738
6808	SECRET EXTENSION DARK BROWN แฮร์พีชเพิ่มวอลลุ่ม	https://www.tvdirect.tv/secret-extension-dark-brown	390	0120700601120	2016-12-18 17:05:01.093013	2016-12-18 17:05:01.093013
6809	SECRET EXTENSION MEDIUM BROWN แฮร์พีชเพิ่มวอลลุ่ม	https://www.tvdirect.tv/secret-extension-medium-brown	390	0120700601137	2016-12-18 17:05:01.990818	2016-12-18 17:05:01.990818
6810	SECRET EXTENSION BLACK/ BROWN แฮร์พีชเพิ่มวอลลุ่ม	https://www.tvdirect.tv/secret-extension-black-brown	390	0120700601144	2016-12-18 17:05:03.190459	2016-12-18 17:05:03.190459
6811	Baby Foot Citrus ผลิตภัณฑ์ปรับสภาพผิวเท้า	https://www.tvdirect.tv/baby-foot-citrus	690	0120700600901	2016-12-18 17:05:04.171216	2016-12-18 17:05:04.171216
6812	Bullet Pedi Pro อุปกรณ์กำจัดขนและดูแลเท้า	https://www.tvdirect.tv/bullet-pedi-pro	399	0120300302083	2016-12-18 17:05:05.311588	2016-12-18 17:05:05.311588
6813	Puerarian เซรั่มกระชับทรวงอกพิวราเรียน ขนาด 60 Ml. ซื้อ 2 แถม 1 ชิ้น	https://www.tvdirect.tv/puerarian-60-ml-2-1	2500	0110700301496	2016-12-18 17:05:06.324601	2016-12-18 17:05:06.324601
6814	Oryze Jasmine Ryce 2 Way โอริเซ่ จัสมินไรซ์ ทูเวย์ แป้งทาหน้าผสมรองพื้นและกันแดด	https://www.tvdirect.tv/oryze-jasmine-ryce-2-way	1250	OryzeJasmineRyce2Way1pack	2016-12-18 17:05:10.025094	2016-12-18 17:05:10.025094
6815	Qtiie.JP JAPAN 3D Nose Set เซ็ทแต่งจมูก	https://www.tvdirect.tv/3d-nose-set-by-qtiie-jp-japan	379	0110700208221	2016-12-18 17:05:10.997106	2016-12-18 17:05:10.997106
6816	DERMACOL FILM STUDIO BARRANDOV PRAGUE Dermacol make-up cover ครีมรองพื้น เดอร์มาคอล เบอร์210	https://www.tvdirect.tv/dermacol-film-studio-barrandov-prague-dermacol-make-up-cover-210-1	790	0110700209655	2016-12-18 17:05:11.938779	2016-12-18 17:05:11.938779
6817	DERMACOL FILM STUDIO BARRANDOV PRAGUE Dermacol make-up cover ครีมรองพื้น เดอร์มาคอล เบอร์207	https://www.tvdirect.tv/dermacol-film-studio-barrandov-prague-dermacol-make-up-cover-207-1	790	0110700209662	2016-12-18 17:05:12.770378	2016-12-18 17:05:12.770378
6818	SOLA PRIMER TEINT FOUNDATION SPF20 รองพื้น#10	https://www.tvdirect.tv/sola-primer-teint-foundation-spf20-10	650	0110700209723	2016-12-18 17:05:13.657834	2016-12-18 17:05:13.657834
6819	SOLA PRIMER TEINT FOUNDATION SPF20 รองพื้น#20	https://www.tvdirect.tv/sola-primer-teint-foundation-spf20-20	650	0110700209730	2016-12-18 17:05:14.531457	2016-12-18 17:05:14.531457
6820	TRUE COVER REDEFINED	https://www.tvdirect.tv/true-cover-redefined	1490	truecoverredefined	2016-12-18 17:05:16.037878	2016-12-18 17:05:16.037878
6821	DERMACOL FOUNDATION-ครีมรองพื้น 207 Set 2 ชิ้น	https://www.tvdirect.tv/dermacol-film-studio-barrandov-prague-dermacol-make-up-cover-207	1099	DermacolFoundation207	2016-12-18 17:05:16.956808	2016-12-18 17:05:16.956808
6822	DERMACOL FOUNDATION-ครีมรองพื้น 210 Set 2 ชิ้น	https://www.tvdirect.tv/dermacol-film-studio-barrandov-prague-dermacol-make-up-cover-210	1099	DermacolFoundation210	2016-12-18 17:05:17.753065	2016-12-18 17:05:17.753065
6823	Sarah Arbute Extra White Sunblock SPF 70	https://www.tvdirect.tv/sarah-arbute-extra-white-sunblock-spf-70	325	0110700100075	2016-12-18 17:05:18.690363	2016-12-18 17:05:18.690363
6824	FACEPERM VIBRATION PUFF เครื่องทารองพื้นอัตโนมัติ	https://www.tvdirect.tv/faceperm-vibration-puff	390	0110700300673	2016-12-18 17:05:19.544115	2016-12-18 17:05:19.544115
6825	Qtiie.JP JAPAN Eye Force Set เซ็ทแต่งตา	https://www.tvdirect.tv/eye-force-set-by-qtiie-jp-japan	339	0110700208214	2016-12-18 17:05:20.386908	2016-12-18 17:05:20.386908
6826	SET SOLA WINK 6 PCS. เซตโซลาวิ้ง 6 ชิ้น	https://www.tvdirect.tv/set-sola-wink-6-pcs-6	1450	0110700209587	2016-12-18 17:05:21.367007	2016-12-18 17:05:21.367007
6827	SET SOLA WINK 6 PCS. SET 2 NO.30 เซตโซลาวิ้ง 6 ชิ้น เบอร์ 30	https://www.tvdirect.tv/set-sola-wink-6-pcs-set-2-no-30-6-30	1450	0110700209600	2016-12-18 17:05:22.242815	2016-12-18 17:05:22.242815
6828	Body Shape Colla Carnitine คอลล่า คาร์นิทีน	https://www.tvdirect.tv/bs-colla-carnitine	249	0111800202720	2016-12-18 17:05:25.326358	2016-12-18 17:05:25.326358
6829	Fatis Firming Gel Plus Red algae120 mg ผลิตภัณฑ์ลดกระชับผิวกาย 120 มิลลิกรัม	https://www.tvdirect.tv/fatis-firming-gel-plus-red-algae120-mg-120	1490	0112000300070	2016-12-18 17:05:26.575602	2016-12-18 17:05:26.575602
6830	Fatis Firming Gel Red Algae ผลิตภัณฑ์กระชับสัดส่วน 2 หลอด	https://www.tvdirect.tv/fatis-firming-gel-red-algae-2	1990	FatisFirmingGelRedAlgae	2016-12-18 17:05:27.596032	2016-12-18 17:05:27.596032
6831	BS BODY FIT COMPLEX CREAM ครีมกระชับสัดส่วน Set 4 ชิ้น	https://www.tvdirect.tv/bs-body-fit-complex-cream	1499	BsBodyFit	2016-12-18 17:05:29.756777	2016-12-18 17:05:29.756777
6832	Activa Silhouette MAX ชุดผลิตภัณฑ์เพื่อการลดกระชับ	https://www.tvdirect.tv/activa-silhouette-max	1490	0120300300034	2016-12-18 17:05:30.681182	2016-12-18 17:05:30.681182
6833	Nuvite Collagen Peptide Plus นูไวท์ คอลลาเจนเปปไทด์ พลัส ขนาด 60 แคปซูล	https://www.tvdirect.tv/nuvite-collagen-peptide-plus-60	1290	0111800302970	2016-12-18 17:05:35.56516	2016-12-18 17:05:35.56516
6834	Nuvite Classic (นูไวท์ คลาสสิค) 60 แคปซูล	https://www.tvdirect.tv/nuvite-classic-60	990	0111200300231	2016-12-18 17:05:36.88202	2016-12-18 17:05:36.88202
6835	Nuvite Lyco-P (นูไวท์ ไลโค พี) 60 softgel	https://www.tvdirect.tv/nuvite-lyco-p-60-softgel	990	0110300301698	2016-12-18 17:05:38.131139	2016-12-18 17:05:38.131139
6836	Donut Collagen โดนัทคอลาเจน 10,000 mg. รสส้ม (10 ซอง)	https://www.tvdirect.tv/donut-collagen-10000-mg-1	299	0111800202546	2016-12-18 17:05:39.450814	2016-12-18 17:05:39.450814
6837	Donut Collagen โดนัทคอลลาเจน 10,000 mg. รสส้ม (10 ซอง) 3 Pack 	https://www.tvdirect.tv/donut-collagen-10000-mg-3	850	0111800202553	2016-12-18 17:05:40.718899	2016-12-18 17:05:40.718899
6838	Donutt Collagen M Plus โดนัทท์คอลาเจนเอ็มพลัส 15,000 mg (10 ซอง)	https://www.tvdirect.tv/donutt-collagen-m-plus-15000-10	225	0111800202560	2016-12-18 17:05:41.983862	2016-12-18 17:05:41.983862
6839	Donutt Collagen M Plus โดนัทท์คอลลาเจนเอ็มพลัส 15,000 mg (10 ซอง) 3 Pack	https://www.tvdirect.tv/donutt-collagen-m-plus-15000-3	650	0111800202577	2016-12-18 17:05:42.823097	2016-12-18 17:05:42.823097
6840	Donut Salmu โดนัทแซลมุ 30 แคปซูล	https://www.tvdirect.tv/donut-salmu-30	285	0111800202584	2016-12-18 17:05:43.617638	2016-12-18 17:05:43.617638
6841	Donut Salmu โดนัทแซลมุ 30 แคปซูล 2 Pack	https://www.tvdirect.tv/donut-salmu-30-2-1-30	550	0111800202591	2016-12-18 17:05:44.53101	2016-12-18 17:05:44.53101
6842	Body Shape COLLA GLUTA คอลล่า กลูต้า	https://www.tvdirect.tv/bs-colla-gluta	249	0111800202713	2016-12-18 17:05:45.429078	2016-12-18 17:05:45.429078
6843	IWISH COLLAGEN ผลิตภัณฑ์เสริมอาหาร บี-บลิส	https://www.tvdirect.tv/iwish-collagen	690	0111800202849	2016-12-18 17:05:46.315341	2016-12-18 17:05:46.315341
6844	IWISH GLUTAMINO+ ผลิตภัณฑ์เสริมอาหาร	https://www.tvdirect.tv/iwish-glutamino	1250	0111800202856	2016-12-18 17:05:47.266962	2016-12-18 17:05:47.266962
6845	IKI COLLAGEN JELLY STRAWBARRY FLAVOR อิกิคอลลาเจนเจลลี่ รสสตรอเบอร์รี่	https://www.tvdirect.tv/iki-collagen-jelly-strawbarry-flavor	595	0111800303151	2016-12-18 17:05:48.07764	2016-12-18 17:05:48.07764
6846	Gluta With Berry And Grapeseed Extract (30 capsule) กลูต้า ออล อิน วัน (30 แคปซูล)	https://www.tvdirect.tv/gluta-with-berry-and-grapeseed-extract-30-capsule-30	490	0111800203550	2016-12-18 17:05:48.86566	2016-12-18 17:05:48.86566
6847	Nuvite Srendere (นูไวท์ สเรนเดอเร่) 40 เม็ด	https://www.tvdirect.tv/nuvite-srendere-40	590	0111200300248	2016-12-18 17:05:49.763815	2016-12-18 17:05:49.763815
6848	NUVITE GLUTA PLUS COLLAGEN PEPTIDE	https://www.tvdirect.tv/nuvite-gluta-plus-collagen-peptide	690	0110700301083	2016-12-18 17:06:18.604264	2016-12-18 17:06:18.604264
6849	ARTISCENT Relaxing Aroma Bath&Shower Gel	https://www.tvdirect.tv/artiscent-relaxing-aroma-bath-shower-gel	320	0110700208719	2016-12-18 17:06:19.725203	2016-12-18 17:06:19.725203
6850	ARTISCENT Relaxing Aroma Lotion	https://www.tvdirect.tv/artiscent-relaxing-aroma-lotion	390	0110700208726	2016-12-18 17:06:22.96493	2016-12-18 17:06:22.96493
6851	ครีมกระชับทรวงอก BOO BEN PLUS 50 ml	https://www.tvdirect.tv/boo-ben-plus-50-ml	590	0110700208900	2016-12-18 17:06:23.801953	2016-12-18 17:06:23.801953
6852	ido Aqua Eau De Parfum ไอดูน้ำหอมอะควา 110 ML.	https://www.tvdirect.tv/ido-aqua-eau-de-parfum-110-ml	360	0110700209460	2016-12-18 17:06:24.775671	2016-12-18 17:06:24.775671
6853	ido CO2 Eau De Parfum ไอดูน้ำหอมซีโอทู 110 ML.	https://www.tvdirect.tv/ido-co2-eau-de-parfum-110-ml	360	0110700209453	2016-12-18 17:06:25.734516	2016-12-18 17:06:25.734516
6854	ido Chole Eau De Parfum ไอดูน้ำหอมโชเอ้ 110 ML.	https://www.tvdirect.tv/ido-chole-eau-de-parfum-110-ml	360	0110700209446	2016-12-18 17:06:26.679652	2016-12-18 17:06:26.679652
6855	ido Poem Eau De Parfum ไอดูน้ำหอมกลิ่นโพเอ็ม 110 ML.	https://www.tvdirect.tv/ido-poem-eau-de-parfum-110-ml	360	0110700209439	2016-12-18 17:06:27.513258	2016-12-18 17:06:27.513258
6856	ido Sexy Night Eau De Parfum ไอดูน้ำหอมกลิ่นเซ็กซี่ไนท์ 110 ML.	https://www.tvdirect.tv/ido-sexy-night-eau-de-parfum-110-ml	360	0110700209422	2016-12-18 17:06:28.30239	2016-12-18 17:06:28.30239
6857	ido Vanilla Eau De Parfum ไอดูน้ำหอมกลิ่นวนิลา 110 ML.	https://www.tvdirect.tv/ido-vanilla-eau-de-parfum-110-ml	360	0110700209408	2016-12-18 17:06:29.221434	2016-12-18 17:06:29.221434
6858	ido Malaya Eau De Parfum ไอดูน้ำหอมกลิ่นมาลายา 110 ML.	https://www.tvdirect.tv/ido-malaya-eau-de-parfum-110-ml	360	0110700209394	2016-12-18 17:06:30.114291	2016-12-18 17:06:30.114291
6859	ido Miracle Eau De Parfum ไอดูน้ำหอมกลิ่นมิราเคิล 110 ML.	https://www.tvdirect.tv/ido-miracle-eau-de-parfum-110-ml	360	0110700209387	2016-12-18 17:06:30.938102	2016-12-18 17:06:30.938102
6860	ido Le Black Eau de Parfum ไอดูน้ำหอมกลิ่นเลอแบล็ค 110 ML	https://www.tvdirect.tv/ido-le-black-eau-de-parfum-110-ml	360	0110700209370	2016-12-18 17:06:31.815562	2016-12-18 17:06:31.815562
6861	ido Ploy Eau De Parfum ไอดูน้ำหอมกลิ่นพลอย 110 ML.	https://www.tvdirect.tv/ido-ploy-eau-de-parfum-110-ml	360	0110700209363	2016-12-18 17:06:32.620534	2016-12-18 17:06:32.620534
6862	ido Green Apple Eau De Parfum ไอดูน้ำหอมกลิ่นกรีนแอปเปิ้ล 110 ML.	https://www.tvdirect.tv/ido-green-apple-eau-de-parfum-110-ml	360	0110700209356	2016-12-18 17:06:33.533834	2016-12-18 17:06:33.533834
6863	ido Cantaloupe Eau De Parfum ไอดูน้ำหอมกลิ่นแคนตาลูป 110 ML.	https://www.tvdirect.tv/ido-cantaloupe-eau-de-parfum-110-ml	360	0110700209349	2016-12-18 17:06:34.409327	2016-12-18 17:06:34.409327
6864	ido Sakura Eau De Parfum ไอดูน้ำหอมกลิ่นซากุระ 110 ML.	https://www.tvdirect.tv/ido-sakura-eau-de-parfum-110-ml	360	0110700209332	2016-12-18 17:06:35.227103	2016-12-18 17:06:35.227103
6865	ido Paul Sport Eau De Parfum ไอดูน้ำหอมกลิ่นพอลสปอร์ต 110 ML.	https://www.tvdirect.tv/ido-paul-sport-eau-de-parfum-110-ml	360	0110700209325	2016-12-18 17:06:36.062089	2016-12-18 17:06:36.062089
6866	Bolzen ลู่วิ่งไฟฟ้า รุ่น 301	https://www.tvdirect.tv/bolzen-301	19900	0111700200239	2016-12-18 17:07:46.600499	2016-12-18 17:07:46.600499
6867	Bolzen ลู่วิ่งไฟฟ้า รุ่น 501	https://www.tvdirect.tv/bolzen-501	35900	0111700200246	2016-12-18 17:07:47.460941	2016-12-18 17:07:47.460941
6868	Fairtex ADT 150 B	https://www.tvdirect.tv/fairtex-adt-150-b	19900	0121700600113	2016-12-18 17:07:48.399355	2016-12-18 17:07:48.399355
6869	Johnson Tempo Treadmill ลู่วิ่งไฟฟ้า รุ่น T86	https://www.tvdirect.tv/tempo-treadmill-t86	23900	0111700200307	2016-12-18 17:07:49.274554	2016-12-18 17:07:49.274554
6870	360องศา Treadmill ลู่วิ่งไฟฟ้า MTF 3010 ชมพู	https://www.tvdirect.tv/360-treadmill-mtf-3010	14900	0111700201025	2016-12-18 17:07:50.109627	2016-12-18 17:07:50.109627
6871	Johnson Treo Treadmill T101 ลู่วิ่งไฟฟ้า	https://www.tvdirect.tv/johnson-treo-treadmill-t101	15900	0111700201045	2016-12-18 17:07:50.948891	2016-12-18 17:07:50.948891
6872	NORTH FITNESS TREADMILL ลู่วิ่งไฟฟ้า รุ่น TD สีเทา	https://www.tvdirect.tv/north-fitness-treadmill-td	16900	0111700201397	2016-12-18 17:07:51.943084	2016-12-18 17:07:51.943084
6873	V-TECH TREADMILLS ลู่วิ่งไฟฟ้า รุ่น R5 สีดำ	https://www.tvdirect.tv/v-tech-treadmills-r5	38900	0111700201441	2016-12-18 17:07:52.886103	2016-12-18 17:07:52.886103
6874	V-TECH TREADMILLS ลู่วิ่งไฟฟ้า รุ่น T1100 - สีดำ	https://www.tvdirect.tv/v-tech-treadmills-t1100	14900	0111700201427	2016-12-18 17:07:53.77272	2016-12-18 17:07:53.77272
6875	FAIRTEX SUPER RUN ลู่วิ่งแฟร์เทคซุปเปอร์รัน  แถมฟรี จักรยานพับได้ KALAQ Q6 	https://www.tvdirect.tv/fairtex-super-run	49000	FairtexSuperRun	2016-12-18 17:07:54.899595	2016-12-18 17:07:54.899595
6876	IGM-IGS0041 ลู่วิ่งระบบสายพาน- ไม่ใช้ไฟฟ้า รุ่น IGS0041	https://www.tvdirect.tv/igm-igs0041-igs0041	3990	0111700201151	2016-12-18 17:07:55.724925	2016-12-18 17:07:55.724925
6877	360 องศา ลู่วิ่งไฟฟ้า MTK500L AT - 3.5 HP MOTOR	https://www.tvdirect.tv/360-mtk500l-at-3-5-hp-motor	29900	0111700201564	2016-12-18 17:07:56.515999	2016-12-18 17:07:56.515999
6878	360 องศา ลู่วิ่งไฟฟ้า X4.5 MOTORIZED TREADMILL	https://www.tvdirect.tv/360-x4-5-motorized-treadmill	39900	0111700201571	2016-12-18 17:07:57.349701	2016-12-18 17:07:57.349701
6879	360 องศา ลู่วิ่งไฟฟ้า X3 MOTORIZED TREADMILL	https://www.tvdirect.tv/360-x3-motorized-treadmill	27900	0111700201588	2016-12-18 17:07:58.259314	2016-12-18 17:07:58.259314
6880	360 องศา ลู่วิ่งไฟฟ้า X4 MOTORIZED TREADMILL	https://www.tvdirect.tv/360-x4-motorized-treadmill	39900	0111700201595	2016-12-18 17:07:59.166925	2016-12-18 17:07:59.166925
6881	360 องศา ลู่วิ่งไฟฟ้า รุ่น S630	https://www.tvdirect.tv/360-s630	27900	0111700201601	2016-12-18 17:07:59.978873	2016-12-18 17:07:59.978873
6882	360 องศา ลู่วิ่งไฟฟ้า รุ่น MTH 4.0L	https://www.tvdirect.tv/360-mth-4-0l	21900	0111700201618	2016-12-18 17:08:00.870092	2016-12-18 17:08:00.870092
6883	360องศา Treadmill  ลู่วิ่งไฟฟ้า รุ่น DK-12AF	https://www.tvdirect.tv/360-treadmill-dk-12af	19900	0111700201632	2016-12-18 17:08:01.89419	2016-12-18 17:08:01.89419
6884	JOHNSON TEMPO T11 TREADMILL ลู่วิ่งไฟฟ้า รุ่น T11	https://www.tvdirect.tv/johnson-tempo-t11-treadmill-t11	23900	0111700201687	2016-12-18 17:08:02.768384	2016-12-18 17:08:02.768384
6885	FAIRTEX POWER RUN TREADMILL  แถมฟรี B-BODY TONERเครื่องบริหารระบบจักรยานและครันช์	https://www.tvdirect.tv/fairtex-power-run-treadmill	29900	FairtexPowerRunBboy	2016-12-18 17:08:05.456934	2016-12-18 17:08:05.456934
6886	Bolzen Treadmill EX Black ลู่วิ่งไฟฟ้า รุ่น EX สีดำ	https://www.tvdirect.tv/bolzen-treadmill-ex-black-ex	89000	0111700202035	2016-12-18 17:08:06.412906	2016-12-18 17:08:06.412906
6887	Bolzen Treadmill 501 Black ลู่วิ่งไฟฟ้า รุ่น 501 สีดำ	https://www.tvdirect.tv/bolzen-treadmill-501-black-501	35900	0111700202028	2016-12-18 17:08:07.240298	2016-12-18 17:08:07.240298
6888	Bolzen Treadmill 301S Black ลู่วิ่งไฟฟ้า รุ่น 301S สีดำ	https://www.tvdirect.tv/bolzen-treadmill-301-s-black-301-s	19900	0111700201960	2016-12-18 17:08:08.10845	2016-12-18 17:08:08.10845
6889	JOHNSON Treadmill 8.1T Black ลู่วิ่งไฟฟ้า รุ่น 8.1T สีดำ	https://www.tvdirect.tv/johnson-treadmill-8-1t-black-8-1t	52900	0111700202042	2016-12-18 17:08:09.121155	2016-12-18 17:08:09.121155
6890	JOHNSON HORIZON TREADMILL ลู่วิ่งไฟฟ้า รุ่นADVENTURE E	https://www.tvdirect.tv/johnson-horizon-treadmill-adventure-e	36900	0111700201083	2016-12-18 17:08:09.968932	2016-12-18 17:08:09.968932
6891	NORTH FITNESS TREADMILL ลู่วิ่งไฟฟ้า รุ่น MT08 - สีดำแดง	https://www.tvdirect.tv/north-fitness-treadmill-mt08	19900	0111700201410	2016-12-18 17:08:10.918541	2016-12-18 17:08:10.918541
6892	Fairtex Space Walker เครื่องเดินบนอากาศ	https://www.tvdirect.tv/fairtex-space-walker	3990	0121000300515	2016-12-18 17:08:13.630997	2016-12-18 17:08:13.630997
6893	Johnson Horizon Elliptical เครื่องเดินวงรี รุ่น Delos	https://www.tvdirect.tv/horizon-elliptical-delos	15900	0111700200345	2016-12-18 17:08:14.448379	2016-12-18 17:08:14.448379
6894	Johnson Tempo Elliptical เครื่องเดินวงรี รุ่น E901	https://www.tvdirect.tv/tempo-elliptical-e901	8500	0111700200352	2016-12-18 17:08:15.369509	2016-12-18 17:08:15.369509
6895	360 Ongsa Step Up เครื่องเดินวงรี ลูวิ่งกึ่งสเต็ป รุ่น YK-CT5816A	https://www.tvdirect.tv/step-up-yk-ct5816a	12900	0111700200703	2016-12-18 17:08:16.213763	2016-12-18 17:08:16.213763
6896	FAIRTEX CROSSTRAINER E204เครื่องเดินวงรี	https://www.tvdirect.tv/fairtex-crosstrainer-e204	7990	0121700500147	2016-12-18 17:08:17.057916	2016-12-18 17:08:17.057916
6897	ELLIPTICAL BIKE HNA-623E-REV อุปกรณ์บริหารร่างกายระบบอิลิปติคอล	https://www.tvdirect.tv/elliptical-bike-hna-623e-rev	8900	0121700601189	2016-12-18 17:08:17.952179	2016-12-18 17:08:17.952179
6898	360องศา SPACE WALKER K405B-2	https://www.tvdirect.tv/360-space-walker-k405b-2	3990	0111700200976	2016-12-18 17:08:18.795296	2016-12-18 17:08:18.795296
6899	Nordic Walker เครื่องเดินบนอากาศ	https://www.tvdirect.tv/nordic-walker	3490	0111700201018	2016-12-18 17:08:19.626881	2016-12-18 17:08:19.626881
6900	NORDIC STRIDER เครื่องออกกำลังกายนอร์ดิก สไตร์เดอร์ IGM_IGS0047	https://www.tvdirect.tv/nordic-strider-igm-igs0047	3490	0111700201052	2016-12-18 17:08:22.589102	2016-12-18 17:08:22.589102
6901	360องศา Super Cross Trainer 2 in 1 จักรยานนั่งปั่นรุ่น K8202	https://www.tvdirect.tv/360-super-cross-trainer-2-in-1-k8202	5990	0111700201113	2016-12-18 17:08:23.956568	2016-12-18 17:08:23.956568
6902	360องศา UP 2 STEP ELLIPTICAL เครื่องเดินวงรี รุ่น ET-8.2R	https://www.tvdirect.tv/360-up-2-step-elliptical-et-8-2r	6990	0111700201120	2016-12-18 17:08:25.222491	2016-12-18 17:08:25.222491
6903	NORTH FITNESS ELLIPTICAL 2IN1 เครื่องเดินวงรี รุ่น 8895HA	https://www.tvdirect.tv/north-fitness-elliptical-2in1-8895ha	12900	0111700201281	2016-12-18 17:08:26.517196	2016-12-18 17:08:26.517196
6904	NORTH FITNESS ELLIPTICAL 2IN1 เครื่องเดินวงรี รุ่น EE	https://www.tvdirect.tv/north-fitness-elliptical-2in1-ee	14900	0111700201274	2016-12-18 17:08:27.401731	2016-12-18 17:08:27.401731
6905	NORTH FITNESS ELLIPTICAL เครื่องเดินวงรี รุ่น 8718H สีดำ	https://www.tvdirect.tv/north-fitness-elliptical-8718h	13900	0111700201267	2016-12-18 17:08:28.458038	2016-12-18 17:08:28.458038
6906	NORTH FITNESS ELLIPTICAL เครื่องเดินวงรี รุ่น 8895H	https://www.tvdirect.tv/north-fitness-elliptical-8895h	11900	0111700201250	2016-12-18 17:08:29.349516	2016-12-18 17:08:29.349516
6907	NORTH FITNESS ELLIPTICAL เครื่องเดินวงรี รุ่น EC สีเทา	https://www.tvdirect.tv/north-fitness-elliptical-ec	14900	0111700201243	2016-12-18 17:08:30.302078	2016-12-18 17:08:30.302078
6908	NORTH FITNESS ELLIPTICAL เครื่องเดินวงรี รุ่น EA สีเทา	https://www.tvdirect.tv/north-fitness-elliptical-ea	17900	0111700201236	2016-12-18 17:08:31.121561	2016-12-18 17:08:31.121561
6909	Johnson Horizon Syros Pro Elliptical เครื่องเดินวงรี	https://www.tvdirect.tv/johnson-horizon-syros-pro-elliptical	18900	0111700201144	2016-12-18 17:08:32.047291	2016-12-18 17:08:32.047291
6910	V-TECH ELLIPTICAL ลู่เดินกึ่งเสต็ป รุ่น E519	https://www.tvdirect.tv/v-tech-elliptical-e519	8900	0111700201489	2016-12-18 17:08:32.928515	2016-12-18 17:08:32.928515
6911	IGM-IGS0037 ฟิต แอนด์ โฟล์ บี รุ่น IGS0037	https://www.tvdirect.tv/igm-igs0037-igs0037	2990	0111700201175	2016-12-18 17:08:33.69168	2016-12-18 17:08:33.69168
6912	JOHNSON TEMPO E902 ELLIPTICAL เครื่องเดินวงรี รุ่น E902	https://www.tvdirect.tv/johnson-tempo-e902-elliptical-e902	12900	0111700201694	2016-12-18 17:08:35.656213	2016-12-18 17:08:35.656213
6913	360 Ongsa Step Up เครื่องเดินกึ่งสเต็ป รุ่น YK-B23C	https://www.tvdirect.tv/step-up-yk-b23c	13900	0111700200697	2016-12-18 17:08:36.476324	2016-12-18 17:08:36.476324
6914	Johnson Horizon Upright Bike จักรยานนั่งปั่น รุ่น Comfort 3	https://www.tvdirect.tv/horizon-upright-bike-comfort-3	16500	0111700200390	2016-12-18 17:08:39.197469	2016-12-18 17:08:39.197469
6915	Johnson Horizon Upright Bike จักรยานนั่งปั่น รุ่น Comfort 5	https://www.tvdirect.tv/horizon-upright-bike-comfort-5	22500	0111700200383	2016-12-18 17:08:40.071139	2016-12-18 17:08:40.071139
6916	Johnson Horizon Recumbent Bike จักรยานเอนปั่น รุ่น Comfort R	https://www.tvdirect.tv/horizon-recumbent-bike-comfort-r	29500	0111700200369	2016-12-18 17:08:40.977418	2016-12-18 17:08:40.977418
6917	Johnson Horizon Upright Bike จักรยานนั่งปั่น รุ่น Paros	https://www.tvdirect.tv/horizon-upright-bike-paros	11000	0111700200406	2016-12-18 17:08:41.824478	2016-12-18 17:08:41.824478
6918	Johnson Horizon Upright Bike จักรยานนั่งปั่น รุ่น S3	https://www.tvdirect.tv/horizon-upright-bike-s3	16500	0111700200437	2016-12-18 17:08:42.692226	2016-12-18 17:08:42.692226
6919	Johnson Tempo Upright Bike จักรยานนั่งปั่น รุ่น B901	https://www.tvdirect.tv/tempo-upright-bike-b901	7500	0111700200413	2016-12-18 17:08:43.559925	2016-12-18 17:08:43.559925
6920	Johnson Treo Recumbent Bike จักรยานเอนปั่น รุ่น R108	https://www.tvdirect.tv/treo-recumbent-bike-r108	12000	0111700200376	2016-12-18 17:08:44.39879	2016-12-18 17:08:44.39879
6921	B Body Toner เครื่องบริหารระบบจักรยานและครันช์	https://www.tvdirect.tv/b-body-toner	2990	0121700601561	2016-12-18 17:08:45.239648	2016-12-18 17:08:45.239648
6922	360 Ongsa จักรยานนั่งปั่น S-760	https://www.tvdirect.tv/s-760	14900	0111700200628	2016-12-18 17:08:46.037166	2016-12-18 17:08:46.037166
6923	360 Ongsa จักรยานนั่งปั่น SPIN BIKE 909	https://www.tvdirect.tv/spin-bike-909	15900	0111700200635	2016-12-18 17:08:46.816995	2016-12-18 17:08:46.816995
6924	360 Ongsa จักรยานนั่งปั่น Spin Bike AM-S2000T-สีดำ	https://www.tvdirect.tv/spin-bike-am-s2000t	11900	0111700200642	2016-12-18 17:08:47.678293	2016-12-18 17:08:47.678293
6925	360 Ongsa จักรยานนั่งปั่น Spin Bike  AM-S2000T-สีขาว	https://www.tvdirect.tv/spin-bike-am-s2000t-1418	11900	0111700200659	2016-12-18 17:08:48.505368	2016-12-18 17:08:48.505368
6926	360 Ongsa จักรยานนั่งปั่น Spin Bike   AM-S1000	https://www.tvdirect.tv/spin-bike-am-s1000	9900	0111700200666	2016-12-18 17:08:49.338666	2016-12-18 17:08:49.338666
6927	360 Ongsa จักรยานนั่งปั่นและเอนปั่น  YK-BK8716R	https://www.tvdirect.tv/yk-bk8716r	12900	0111700200673	2016-12-18 17:08:50.238727	2016-12-18 17:08:50.238727
6928	360 Ongsa จักรยานนั่งปั่น แบบพับได้ Exercise Bike	https://www.tvdirect.tv/exercise-bike	5990	0111700200680	2016-12-18 17:08:51.04864	2016-12-18 17:08:51.04864
6929	Folding Bike จักรยานพับได้ล้อ 8 นิ้ว รุ่น GK-08	https://www.tvdirect.tv/folding-bike-8-gk-08	4590	0123200500016	2016-12-18 17:08:51.964586	2016-12-18 17:08:51.964586
6930	FAIRTEX UPRIGHT BIKE B204จักรยานปั่น	https://www.tvdirect.tv/fairtex-upright-bike-b204	5990	0121700500130	2016-12-18 17:08:52.819346	2016-12-18 17:08:52.819346
6931	จักรยานปั่นมือ ปั่นเท้า มีจอมอนิเตอร์-เขียว	https://www.tvdirect.tv/bicycle-hand-green	1590	0111700200796	2016-12-18 17:08:53.629289	2016-12-18 17:08:53.629289
6932	จักรยานปั่นมือ ปั่นเท้า มีจอมอนิเตอร์-ดำ	https://www.tvdirect.tv/bicycle-hand-black	1590	0111700200802	2016-12-18 17:08:54.446994	2016-12-18 17:08:54.446994
6933	360 Ongsa จักรยานนั่งปั่นออกกำลังกาย รุ่น JTS611-1 -ดำ	https://www.tvdirect.tv/jts611-black	8900	0111700200826	2016-12-18 17:08:57.118626	2016-12-18 17:08:57.118626
6934	360 Ongsa จักรยานนั่งปั่นออกกำลังกาย รุ่น JTS611-2-ขาว	https://www.tvdirect.tv/jts611-white	8900	0111700200833	2016-12-18 17:08:57.929894	2016-12-18 17:08:57.929894
6935	SPINNING BIKE BLACK จักรยานจานหมุน สีดำ	https://www.tvdirect.tv/spinning-bike-black	7900	0111700200857	2016-12-18 17:08:58.838082	2016-12-18 17:08:58.838082
6936	SPINNING BIKE WHITE จักรยานจานหมุน สีขาว	https://www.tvdirect.tv/spinning-bike-white	7900	0111700200864	2016-12-18 17:08:59.668534	2016-12-18 17:08:59.668534
6937	360องศา จักรยานนั่งปั่น SPIN BIKE 9011S -ดำ	https://www.tvdirect.tv/360-spin-bike-9011s-black	9900	0111700200921	2016-12-18 17:09:00.516516	2016-12-18 17:09:00.516516
6938	360องศา จักรยานนั่งปั่น SPIN BIKE 9011S -ขาว	https://www.tvdirect.tv/360-spin-bike-9011s-white	9900	0111700200945	2016-12-18 17:09:01.312218	2016-12-18 17:09:01.312218
6939	360องศา จักรยานนั่งปั่น MAGNETIC BIKE 8071B-แดง	https://www.tvdirect.tv/360-magnetic-bike-8071b	8900	0111700200952	2016-12-18 17:09:02.289452	2016-12-18 17:09:02.289452
6940	360องศา จักรยานนั่งปั่น MAGNETIC BIKE 8223B	https://www.tvdirect.tv/360-magnetic-bike-8223b	6900	0111700200969	2016-12-18 17:09:03.22477	2016-12-18 17:09:03.22477
6941	Compact Bike จักรยานออกกำลังกายรุ่นมินิสีดำ	https://www.tvdirect.tv/compact-bike	2990	0121700500178	2016-12-18 17:09:04.081766	2016-12-18 17:09:04.081766
6942	Hand Foot Spinning bikes จักรยานมือ เท้า ปั่น สีบรอนซ์- ขาปั่นสีฟ้า	https://www.tvdirect.tv/hand-foot-spinning-bikes	999	0111700201069	2016-12-18 17:09:04.926877	2016-12-18 17:09:04.926877
6943	Hand Foot Spinning bikes จักรยานมือ เท้า ปั่น สีดำ- ขาปั่นสีฟ้า	https://www.tvdirect.tv/hand-foot-spinning-bikes-2858	999	0111700201076	2016-12-18 17:09:05.751812	2016-12-18 17:09:05.751812
6944	360องศา Power Plank เครื่องบริหารร่างกายระบบแพลงค์ รุ่น AND-605A	https://www.tvdirect.tv/360-power-plank-and-605a	1990	0111700201090	2016-12-18 17:09:06.663957	2016-12-18 17:09:06.663957
6945	360องศา Spin Bike จักรยานนั่งปั่น รุ่น S-790 - 22KG.	https://www.tvdirect.tv/360-spin-bike-s-790-22kg	18900	0111700201106	2016-12-18 17:09:07.711943	2016-12-18 17:09:07.711943
6946	360องศา Recumbent bike จักรยานนั่งปั่น รุ่น YK-BF4303	https://www.tvdirect.tv/360-recumbent-bike-yk-bf4303	9900	0111700201137	2016-12-18 17:09:08.669686	2016-12-18 17:09:08.669686
6947	MAXX SPIN BIKE BLACK&RED จักรยานแม็กสปินไบค์ สีดำแดง	https://www.tvdirect.tv/maxx-spin-bike-black-red	7500	0121700500185	2016-12-18 17:09:09.547004	2016-12-18 17:09:09.547004
6948	NORTH FITNESS SPINNING BIKE จักรยานนั่งปั่น รุ่น S90 สีเขียว	https://www.tvdirect.tv/north-fitness-spinning-bike-s90	8990	0111700201380	2016-12-18 17:09:10.454341	2016-12-18 17:09:10.454341
6949	NORTH FITNESS SPINNING BIKE จักรยานนั่งปั่น รุ่น SA สีขาว	https://www.tvdirect.tv/north-fitness-spinning-bike-sa	15900	0111700201373	2016-12-18 17:09:11.343644	2016-12-18 17:09:11.343644
6950	NORTH FITNESS SPINNING BIKE จักรยานนั่งปั่น รุ่น S95 สีส้ม	https://www.tvdirect.tv/north-fitness-spinning-bike-s95	12900	0111700201366	2016-12-18 17:09:12.141771	2016-12-18 17:09:12.141771
6951	NORTH FITNESS SPINNING BIKE จักรยานนั่งปั่น รุ่น S91 สีแดง	https://www.tvdirect.tv/north-fitness-spinning-bike-s91	10900	0111700201359	2016-12-18 17:09:13.061125	2016-12-18 17:09:13.061125
6952	NORTH FITNESS SPINNING BIKE จักรยานนั่งปั่น รุ่น S99	https://www.tvdirect.tv/north-fitness-spinning-bike-s99	15900	0111700201342	2016-12-18 17:09:15.867717	2016-12-18 17:09:15.867717
6953	NORTH FITNESS SPINNING BIKE จักรยานนั่งปั่น รุ่น S100	https://www.tvdirect.tv/north-fitness-spinning-bike-s100	15900	0111700201335	2016-12-18 17:09:16.864756	2016-12-18 17:09:16.864756
6954	NORTH FITNESS UPRIGHT BIKE จักรยานนั่งปั่น รุ่น 358 สีดำแดง	https://www.tvdirect.tv/north-fitness-upright-bike-358	8990	0111700201328	2016-12-18 17:09:17.738417	2016-12-18 17:09:17.738417
6955	NORTH FITNESS UPRIGHT BIKE จักรยานนั่งปั่น รุ่น 8718 สีดำ	https://www.tvdirect.tv/north-fitness-upright-bike-8718	10900	0111700201311	2016-12-18 17:09:18.679915	2016-12-18 17:09:18.679915
6956	NORTH FITNESS UPRIGHT BIKE จักรยานนั่งปั่น รุ่น 8895 สีเทา	https://www.tvdirect.tv/north-fitness-upright-bike-8895	9990	0111700201304	2016-12-18 17:09:19.470113	2016-12-18 17:09:19.470113
6957	NORTH FITNESS UPRIGHT BIKE จักรยานนั่งปั่น รุ่น UBB สีเทา	https://www.tvdirect.tv/north-fitness-upright-bike-ubb	11900	0111700201298	2016-12-18 17:09:20.435009	2016-12-18 17:09:20.435009
6958	NORTH FITNESS RECUMBENT BIKE จักรยานนั่งปั่น รุ่น 8718R	https://www.tvdirect.tv/north-fitness-recumbent-bike-8718r	17900	0111700201229	2016-12-18 17:09:21.347061	2016-12-18 17:09:21.347061
6959	NORTH FITNESS RECUMBENT BIKE จักรยานนั่งปั่น รุ่น 8530R	https://www.tvdirect.tv/north-fitness-recumbent-bike-8530r	9990	0111700201212	2016-12-18 17:09:22.306833	2016-12-18 17:09:22.306833
6960	NORTH FITNESS RECUMBENT BIKE จักรยานนั่งปั่น รุ่น RB สีเทา	https://www.tvdirect.tv/north-fitness-recumbent-bike-rb	15900	0111700201205	2016-12-18 17:09:23.309902	2016-12-18 17:09:23.309902
6961	NORTH FITNESS RECUMBENT BIKE จักรยานนั่งปั่น รุ่น 8895R	https://www.tvdirect.tv/north-fitness-recumbent-bike-8895r	12900	0111700201199	2016-12-18 17:09:24.238589	2016-12-18 17:09:24.238589
6962	V-TECH RECUMBENT BIKE จักรยานเอนปั่น รุ่น R809	https://www.tvdirect.tv/v-tech-recumbent-bike-r809	14900	0111700201472	2016-12-18 17:09:25.17729	2016-12-18 17:09:25.17729
6963	V-TECH SPINNING BIKE จักรยานนั่งปั่น รุ่น AL902	https://www.tvdirect.tv/v-tech-spinning-bike-al902	8900	0111700201465	2016-12-18 17:09:26.160897	2016-12-18 17:09:26.160897
6964	V-TECH UPRIGHT BIKE จักรยานนั่งปั่น รุ่น EB-2000	https://www.tvdirect.tv/v-tech-upright-bike-eb-2000	29900	0111700201458	2016-12-18 17:09:27.021858	2016-12-18 17:09:27.021858
6965	IGM-IGS0049 จักรยานเท้าปั่นมินิ ขาปั่นสีดำ รุ่น IGS0050	https://www.tvdirect.tv/igm-igs0049-igs0050	599	0111700201168	2016-12-18 17:09:27.896373	2016-12-18 17:09:27.896373
6966	JOHNSON VISION R20 C RECUMBENT BIKE จักรยานนั่งปั่น รุ่น R20 C	https://www.tvdirect.tv/johnson-vision-r20-c-recumbent-bike-r20-c	39900	0111700201700	2016-12-18 17:09:28.708126	2016-12-18 17:09:28.708126
6967	AIR BIKE ORBITRAC GHN-8.2C จักรยานออกกำลังกายแบบลม  แถมฟรี  CAR CAMCORDER กล้องติดหน้ารถ	https://www.tvdirect.tv/air-bike-orbitrac-ghn-8-2c	4990	AirBikeCAR	2016-12-18 17:09:29.944217	2016-12-18 17:09:29.944217
6968	Johnson Horizon Mini Stepper เครื่องออกกำลังกาย	https://www.tvdirect.tv/horizon-mini-stepper	2600	0111700200451	2016-12-18 17:09:32.299232	2016-12-18 17:09:32.299232
6969	Maxx Twister อุปกรณ์บริหารแม็กทวิสเตอร์	https://www.tvdirect.tv/maxx-twister	2990	0121700600236	2016-12-18 17:09:33.111468	2016-12-18 17:09:33.111468
6970	360 องศา TWISTER CT เครื่องบริหารกระชับสัดส่วน	https://www.tvdirect.tv/360-twister-ct	3590	0111700201540	2016-12-18 17:09:34.042775	2016-12-18 17:09:34.042775
6971	VERTICAL GYM  เครื่องออกกำลังกายแบบการปีนเขา 	https://www.tvdirect.tv/vertical-gym	5990	0121700601691	2016-12-18 17:09:35.00564	2016-12-18 17:09:35.00564
6972	Welness Massage Belt เข็มขัดกระชับสัดส่วน	https://www.tvdirect.tv/welness-massage-belt	1990	0110300300684	2016-12-18 17:09:36.989447	2016-12-18 17:09:36.989447
6973	360 Ongsa เครื่องสั่นเพื่อสุขภาพ 360 SLIM BODY VIBRATION PLATE	https://www.tvdirect.tv/360-slim-body-vibration-plate	9900	0111700200604	2016-12-18 17:09:37.862818	2016-12-18 17:09:37.862818
6974	360 Ongsa Adjustable Dumbbell Set 52.5 lbs ชุดดัมเบลปรับน้ำหนักได้ 52.5 ปอนด์ 	https://www.tvdirect.tv/adjustable-bumbbell-set-52-5-lbs	8900	0111700200482	2016-12-18 17:09:40.176297	2016-12-18 17:09:40.176297
6975	360 Ongsa Chromed Dumbbell Set 15 Kg ชุดดัมเบลชุบโครเมียมปรับระดับได้ 15 กิโลกรัม	https://www.tvdirect.tv/chromed-dumbbell-set-15-kg	1800	0111700200512	2016-12-18 17:09:41.038579	2016-12-18 17:09:41.038579
6976	360 Ongsa Crome Dumbell Set 50 kg ชุดดัมเบลชุบโครเมียมปรับระดับได้ 50 กิโลกรัม	https://www.tvdirect.tv/crome-dumbell-set-50-kg-50	4990	0111700200529	2016-12-18 17:09:41.972171	2016-12-18 17:09:41.972171
6977	360 Ongsa Black Dumbell Set 50 kg ชุดดัมเบลสีดำปรับระดับได้ 50 กิโลกรัม	https://www.tvdirect.tv/black-dumbell-set-50-kg-50	4590	0111700200536	2016-12-18 17:09:42.957797	2016-12-18 17:09:42.957797
6978	1KG BONE DUMBBELL ดัมเบลแพ็คคู่ สีเหลือง AB1208Y	https://www.tvdirect.tv/1kg-bone-dumbbell-ab1208y	490	0113200200515	2016-12-18 17:09:43.803968	2016-12-18 17:09:43.803968
6979	2KG BONE DUMBBELL ดัมเบลแพ็คคู่ สีเขียว AB1210G	https://www.tvdirect.tv/2kg-bone-dumbbell-ab1210g	690	0113200200522	2016-12-18 17:09:44.631371	2016-12-18 17:09:44.631371
6980	3KG BONE DUMBBELL ดัมเบลแพ็คคู่ สีเทา AB1211GR	https://www.tvdirect.tv/3kg-bone-dumbbell-ab1211gr	890	0113200200539	2016-12-18 17:09:45.513008	2016-12-18 17:09:45.513008
6981	1KG TRIANGULAR DUMBBELL ดัมเบลแพ็คคู่ สีน้ำเงิน AB1249B	https://www.tvdirect.tv/1kg-triangular-dumbbell-ab1249b	490	0113200200577	2016-12-18 17:09:46.342631	2016-12-18 17:09:46.342631
6982	2KG TRIANGULAR DUMBBELL ดัมเบลแพ็คคู่ สีเขียว AB1250G	https://www.tvdirect.tv/2kg-triangular-dumbbell-ab1250g	690	0113200200553	2016-12-18 17:09:47.215912	2016-12-18 17:09:47.215912
6983	3KG TRIANGULAR DUMBBELL ดัมเบลแพ็คคู่ สีเหลือง	https://www.tvdirect.tv/3kg-triangular-dumbbell	890	0113200200560	2016-12-18 17:09:48.0182	2016-12-18 17:09:48.0182
6984	360 Ongsa Chromed Dumbbell Set 20 Kg ชุดดัมเบลชุบโครเมียมปรับระดับได้ 20 กิโลกรัม	https://www.tvdirect.tv/chromed-dumbbell-set-20-kg	2150	0111700200505	2016-12-18 17:09:48.836607	2016-12-18 17:09:48.836607
6985	Ride The Tiger เครื่องบริหารพลังเสือ	https://www.tvdirect.tv/ride-the-tiger	4990	0121700600175	2016-12-18 17:09:51.942012	2016-12-18 17:09:51.942012
6986	Johnson Horizon Bench เครื่องยกน้ำหนัก รุ่น Andonis Plus	https://www.tvdirect.tv/horizon-bench-andonis-plus	15000	0111700200420	2016-12-18 17:09:52.769875	2016-12-18 17:09:52.769875
6987	JOHNSON HORIZON LC9605 STRENGTH	https://www.tvdirect.tv/johnson-horizon-lc9605-strength	25900	0111700201717	2016-12-18 17:10:11.292691	2016-12-18 17:10:11.292691
6988	Obsidian Slide Board อุปกรณ์บริหารแบบสไลด์	https://www.tvdirect.tv/obsidian-slide-board	2990	0121700601486	2016-12-18 17:10:18.464225	2016-12-18 17:10:18.464225
6989	Total Crunch เครื่องบริหารระบบคอมพาวด์	https://www.tvdirect.tv/total-crunch	2990	0121700601172	2016-12-18 17:10:19.3739	2016-12-18 17:10:19.3739
6990	Fairtex Training Set ชุดออกกำลังกายอเนกประสงค์	https://www.tvdirect.tv/fairtex-training-set	1490	0121700500109	2016-12-18 17:10:20.219452	2016-12-18 17:10:20.219452
6991	360 Ongsa ม้านั่งบริหารร่างกาย รุ่น JS-006D	https://www.tvdirect.tv/js-006d	2790	0111700200574	2016-12-18 17:10:21.082807	2016-12-18 17:10:21.082807
6992	360 Ongsa เครื่องบริหารร่างกาย Total Gym	https://www.tvdirect.tv/total-gym	4590	0111700200598	2016-12-18 17:10:21.924154	2016-12-18 17:10:21.924154
6993	Johnson Impact Weight Bench Bar ชุดบริหารสร้างกล้ามเนื้อ	https://www.tvdirect.tv/impact-weight-bench-bar	7200	0111700200444	2016-12-18 17:10:22.786706	2016-12-18 17:10:22.786706
6994	THIGH MASTER อุปกรณ์บริหารต้นขา	https://www.tvdirect.tv/thigh-master	390	0121700601622	2016-12-18 17:10:23.597251	2016-12-18 17:10:23.597251
6995	360 องศา SMART SMITH สมิท แมชชีน รุ่น X-303	https://www.tvdirect.tv/360-smart-smith-x-303	29000	0111700201502	2016-12-18 17:10:24.703108	2016-12-18 17:10:24.703108
6996	360 องศา POWER TOWER บาร์โหน บาร์ดึงข้อ รุ่น X-310	https://www.tvdirect.tv/360-power-tower-x-310	14900	0111700201519	2016-12-18 17:10:25.592708	2016-12-18 17:10:25.592708
6997	360 องศา POWER TOWER STATION PTS บาร์โหน บาร์ดึงข้อแบบตั้งพื้น	https://www.tvdirect.tv/360-power-tower-station-pts	4990	0111700201526	2016-12-18 17:10:26.456398	2016-12-18 17:10:26.456398
6998	Core Sculptor (Double Cord)	https://www.tvdirect.tv/core-sculptor-double-cord	790	0121000300201	2016-12-18 17:10:27.293228	2016-12-18 17:10:27.293228
6999	Shadow Boxer Full Set อุปกรณ์บริหารร่างกาย ชาโดว์ บอกเซอร์	https://www.tvdirect.tv/shadow-boxer-full-set	1490	0121400300351	2016-12-18 17:10:28.136892	2016-12-18 17:10:28.136892
7000	Air Climber Xpress เครื่องบริหารพลังลม	https://www.tvdirect.tv/air-climber-xpress	2990	0121700601400	2016-12-18 17:10:29.010361	2016-12-18 17:10:29.010361
7001	Body Slender อุปกรณ์บริหารร่างกายบอดี้สเลนด์เดอร์	https://www.tvdirect.tv/body-slender-power-line-dumbbell-mf-3103	990	0121700600168	2016-12-18 17:10:29.835206	2016-12-18 17:10:29.835206
7002	Ab Booster Plus เครื่องบริหารระบบครั้นช์ 	https://www.tvdirect.tv/ab-booster-plus	1990	0121700601615	2016-12-18 17:10:31.933228	2016-12-18 17:10:31.933228
7003	AB GENERATOR เครื่องบริหารหน้าท้อง	https://www.tvdirect.tv/ab-generator	3990	0121700601516	2016-12-18 17:10:34.910064	2016-12-18 17:10:34.910064
7004	Ab Storm with Velcro เครื่องบริหารระบบทวิสต์ + ตีนตุ๊กแก	https://www.tvdirect.tv/ab-storm-with-velcro	2990	0121400300436	2016-12-18 17:10:35.774122	2016-12-18 17:10:35.774122
7005	Rockin Abs อุปกรณ์บริหารหน้าท้อง	https://www.tvdirect.tv/rockin-abs	990	0121700601578	2016-12-18 17:10:36.644337	2016-12-18 17:10:36.644337
7006	360 Ongsa Mini Fitness Sit up Bench เบาะซิทอัพพับเก็บได้	https://www.tvdirect.tv/mini-fitness-sit-up-bench-mfb	1190	0111700200499	2016-12-18 17:10:37.553232	2016-12-18 17:10:37.553232
7007	360 Ongsa เครื่องบริหารหน้าท้อง ม้านอนยกน้ำหนัก รุ่น AND-6453B	https://www.tvdirect.tv/and-6453b	2990	0111700200567	2016-12-18 17:10:38.389776	2016-12-18 17:10:38.389776
7008	Bun and Thigh Wave เครื่องบริหารกระชับสัดส่วน	https://www.tvdirect.tv/bun-and-thigh-wave	2490	0121700600076	2016-12-18 17:10:39.230082	2016-12-18 17:10:39.230082
7009	360 Ongsa Step Up เครื่องบริหารร่างกาย EXERCISE WHEEL	https://www.tvdirect.tv/exercise-wheel	490	0111700200789	2016-12-18 17:10:40.022733	2016-12-18 17:10:40.022733
7010	FAIRTEX SIT UP BENCH (RED) DP-6455 (OFFER DUMBBELL SIZE 1.5KGX2PCS)	https://www.tvdirect.tv/fairtex-sit-up-bench-red-dp-6455-offer-dumbbell-size-1-5kgx2pcs	1990	0121700600724	2016-12-18 17:10:40.886974	2016-12-18 17:10:40.886974
7011	360 Ongsa เบาะนั่งซิทอัพ 3 IN 1 รุ่น AND-618	https://www.tvdirect.tv/3-in-1-and-618	1290	0111700200840	2016-12-18 17:10:41.692583	2016-12-18 17:10:41.692583
7012	POWER PLANK PRO FN8025เครื่องบริหารระบบแพลงค์	https://www.tvdirect.tv/power-plank-pro-fn8025	2990	0121700500123	2016-12-18 17:10:42.608232	2016-12-18 17:10:42.608232
7013	5 MINUTES SHAPER PRO (GREEN) เครื่องบริหารหน้าท้อง	https://www.tvdirect.tv/5-minutes-shaper-pro-green	3990	0121700601639	2016-12-18 17:10:43.444888	2016-12-18 17:10:43.444888
7014	360องศา เบาะนั่งซิทอัพ 3 IN 1 รุ่น AND-618-B	https://www.tvdirect.tv/360-3-in-1-and-618-b	1290	0111700200907	2016-12-18 17:10:44.268135	2016-12-18 17:10:44.268135
7015	360องศา เบาะนั่งซิทอัพ รุ่น AND-6205	https://www.tvdirect.tv/360-and-6205	1150	0111700200914	2016-12-18 17:10:45.108336	2016-12-18 17:10:45.108336
7016	SWING MAXX 6 IN 1 อุปกรณ์บริหารหน้าท้อง	https://www.tvdirect.tv/swing-maxx-6-in-1	2990	0121700400065	2016-12-18 17:10:45.997788	2016-12-18 17:10:45.997788
7017	AB WINNER เครื่องออกกำลังกายแบบนั่ง	https://www.tvdirect.tv/ab-winner	2490	0121700400058	2016-12-18 17:10:46.879433	2016-12-18 17:10:46.879433
7018	NORTH FITNESS FLAT BENCH ม้านั่งบริหาร อเนกประสงค์ รุ่น FB40	https://www.tvdirect.tv/north-fitness-flat-bench-fb40	5590	0111700201182	2016-12-18 17:10:47.981559	2016-12-18 17:10:47.981559
7019	V-TECH AB COASTER เครื่องบริหารหน้าท้อง รุ่น B21	https://www.tvdirect.tv/v-tech-ab-coaster-b21	3990	0111700201496	2016-12-18 17:10:50.750335	2016-12-18 17:10:50.750335
7020	V-TECH BARBELL BENCH 40 KG ม้าบาร์เบล 40 กก รุ่น H903	https://www.tvdirect.tv/v-tech-barbell-bench-40-kg-40-h903	8900	0111700201434	2016-12-18 17:10:51.606178	2016-12-18 17:10:51.606178
7021	NORTH FITNESS FLAT-INBENCH ม้านั่งบริหาร รุ่น 30808	https://www.tvdirect.tv/north-fitness-flat-inbench-30808	3990	0111700201403	2016-12-18 17:10:52.562735	2016-12-18 17:10:52.562735
7022	360 องศา POWER PLANK FITNESS SIT UP เครื่องบริหารหน้าท้อง รุ่น AND-605C	https://www.tvdirect.tv/360-power-plank-fitness-sit-up-and-605c	2790	0111700201533	2016-12-18 17:10:53.408264	2016-12-18 17:10:53.408264
7023	360 องศา TWISTER EXERCISE จานหมุนออกกำลังกาย	https://www.tvdirect.tv/360-twister-exercise	690	0111700201649	2016-12-18 17:10:54.287804	2016-12-18 17:10:54.287804
7024	360 องศา FITNESS SIT UP BENCH AND-6455	https://www.tvdirect.tv/360-fitness-sit-up-bench-and-6455	1690	0111700201656	2016-12-18 17:10:55.232373	2016-12-18 17:10:55.232373
7025	360 องศา ม้านั่งบริหารหน้าท้อง รุ่น AND-6005H	https://www.tvdirect.tv/360-and-6005h	2390	0111700201663	2016-12-18 17:10:56.128056	2016-12-18 17:10:56.128056
7026	360 องศา ม้านั่งบริหารร่างกาย รุ่น AND-6005D-D	https://www.tvdirect.tv/360-and-6005d-d	2990	0111700201670	2016-12-18 17:10:57.070701	2016-12-18 17:10:57.070701
7027	ABLOOM  WHEEL DISK FITNESS BLUE แผ่นดิสค์บริหารกล้ามเนื้อ สีน้ำเงิน	https://www.tvdirect.tv/abloom-wheel-disk-fitness-blue	690	0111700201724	2016-12-18 17:10:57.966665	2016-12-18 17:10:57.966665
7028	The Total Trainer แถมฟรี  Fatis Coffee	https://www.tvdirect.tv/total-trainer	2990	TotalTrainerFatis	2016-12-18 17:10:59.281421	2016-12-18 17:10:59.281421
7029	Ab Prince Pro เครื่องบริหารหน้าท้อง	https://www.tvdirect.tv/ab-prince-pro	1990	0121700601493	2016-12-18 17:11:00.130238	2016-12-18 17:11:00.130238
7030	AB Coaster เครื่องบริหารหน้าท้อง	https://www.tvdirect.tv/ab-coaster	2990	0121000300997	2016-12-18 17:11:01.07401	2016-12-18 17:11:01.07401
7031	Ab Circle Pro เครื่องออกกำลังกาย	https://www.tvdirect.tv/ab-circle-pro	2990	0121000301048	2016-12-18 17:11:01.993749	2016-12-18 17:11:01.993749
7032	Ab Circle Mini เครื่องบริหารกระชับสัดส่วน	https://www.tvdirect.tv/ab-circle-mini	2990	0121700500024	2016-12-18 17:11:02.919799	2016-12-18 17:11:02.919799
7033	Ab Dance เครื่องบริหารสไลด์เชฟ	https://www.tvdirect.tv/ab-dance	3990	0121700600052	2016-12-18 17:11:03.789129	2016-12-18 17:11:03.789129
7034	Knockout Abs เครื่องบริหารหน้าท้องน๊อคเอาท์	https://www.tvdirect.tv/knockout-abs	1290	0121400300122	2016-12-18 17:11:04.750857	2016-12-18 17:11:04.750857
7035	TWIST&SHAPE อุปกรณ์บริหารร่างกายระบบบิด 240 องศา	https://www.tvdirect.tv/twist-shape-240	3990	0121700400034	2016-12-18 17:11:05.583196	2016-12-18 17:11:05.583196
7036	360 องศา POWER PLANK FITNESS SIT UP 2in1 เครื่องบริหารร่างกายระบบแพลงค์ รุ่น AND-605K	https://www.tvdirect.tv/360-power-plank-fitness-sit-up-2in1-and-605k	1990	0111700201557	2016-12-18 17:11:06.552261	2016-12-18 17:11:06.552261
7037	Aerolife เครื่องบริหารต้นขา	https://www.tvdirect.tv/aerolife	1990	0121700600014	2016-12-18 17:11:17.926534	2016-12-18 17:11:17.926534
7038	360 องศา YOGA MAT TPE หนา 6 มม. MB-32002	https://www.tvdirect.tv/360-yoga-mat-tpe-6-mb-32002	590	0111700201001	2016-12-18 17:11:24.80356	2016-12-18 17:11:24.80356
7039	360องศา Spring Board Trampoline สปริงบอร์ด แทรมโพลีน TPS	https://www.tvdirect.tv/360-spring-board-trampoline-tps	2990	0111700201032	2016-12-18 17:11:25.820462	2016-12-18 17:11:25.820462
7040	GRIZZLY BARBELL PAD แผ่นรองบ่า	https://www.tvdirect.tv/grizzly-barbell-pad	890	0111900202910	2016-12-18 17:11:26.704228	2016-12-18 17:11:26.704228
7041	GRIZZLY LIFTING KNEE WRAPS ผ้าพัน รัดเข่า	https://www.tvdirect.tv/grizzly-lifting-knee-wraps	1100	0111900202903	2016-12-18 17:11:27.616961	2016-12-18 17:11:27.616961
7042	GRIZZLY RED LINE WRIST WRAPS ผ้าพัน รัดข้อมือ	https://www.tvdirect.tv/grizzly-red-line-wrist-wraps	790	0111900202897	2016-12-18 17:11:28.49156	2016-12-18 17:11:28.49156
7043	GRIZZLY GRAB PADS แผ่นรองฝ่ามือ	https://www.tvdirect.tv/grizzly-grab-pads	690	0111900202880	2016-12-18 17:11:29.324887	2016-12-18 17:11:29.324887
7044	GRIZZLY POWER WRIST WRAPS สายรัดข้อมือ	https://www.tvdirect.tv/grizzly-power-wrist-wraps	840	0111900202873	2016-12-18 17:11:30.200002	2016-12-18 17:11:30.200002
7045	Grizzly Mens Gloves Col. Black Size XL ถุงมือยกน้ำหนักชายสีดำ - XL	https://www.tvdirect.tv/grizzly-mens-gloves-col-black-size-xl-xl	1100	0111900202545	2016-12-18 17:11:31.114564	2016-12-18 17:11:31.114564
7046	Grizzly Mens Gloves Col. Black Size L ถุงมือยกน้ำหนักชายสีดำ - L	https://www.tvdirect.tv/grizzly-mens-gloves-col-black-size-l-l	1100	0111900202538	2016-12-18 17:11:31.938711	2016-12-18 17:11:31.938711
7047	Grizzly Mens Gloves Col. Black Size M ถุงมือยกน้ำหนักชายสีดำ - M	https://www.tvdirect.tv/grizzly-mens-gloves-col-black-size-m-m	1100	0111900202521	2016-12-18 17:11:32.819436	2016-12-18 17:11:32.819436
7048	Grizzly Grabbers แผ่นรองฝ่ามือ	https://www.tvdirect.tv/grizzly-grabbers	1090	GrizzlyGrabbers	2016-12-18 17:11:33.741118	2016-12-18 17:11:33.741118
7049	Grizzly Lifting Straps สายรัดข้อมือ	https://www.tvdirect.tv/grizzly-lifting-straps	480	GrizzlyLifting	2016-12-18 17:11:35.713166	2016-12-18 17:11:35.713166
7050	Grizzly Paws Leather Gloves Col. Black ถุงมือหนัง	https://www.tvdirect.tv/grizzly-paws-leather-gloves-col-black-size-xs-xs-3130	1290	GrizzlyPaws	2016-12-18 17:11:36.789583	2016-12-18 17:11:36.789583
7051	Grizzly Pacesetter Training Belt 4IN- เข็มขัดเซฟหลัง 4 นิ้ว 	https://www.tvdirect.tv/grizzly-pacesetter-training-belt-4in-4	1100	PacesetterTrainningBelt4inch	2016-12-18 17:11:37.820358	2016-12-18 17:11:37.820358
7052	Grizzly Enforcer Padded Belt 4IN- เข็มขัดเซฟหลัง 4 นิ้ว	https://www.tvdirect.tv/grizzly-enforcer-padded-belt-4in-4	1590	EnforcerPaddedBelt4inch	2016-12-18 17:11:38.879607	2016-12-18 17:11:38.879607
7053	Grizzly Enforcer Padded Belt 6IN เข็มขัดเซฟหลัง 6 นิ้ว	https://www.tvdirect.tv/grizzly-enforcer-padded-belt-6in	1890	EnforcerPaddedBelt6inch	2016-12-18 17:11:39.820869	2016-12-18 17:11:39.820869
7054	Grizzly Bear Hugger Washable Training Belt 4IN เข็มขัดเซฟหลัง 4 นิ้ว	https://www.tvdirect.tv/grizzly-bear-hugger-washable-training-belt-4in-s-4-s-3150	1180	BearHugger4inch	2016-12-18 17:11:40.799981	2016-12-18 17:11:40.799981
7055	Grizzly Bear Hugger Washable Training Belt 6IN เข็มขัดเซฟหลัง 6 นิ้ว 	https://www.tvdirect.tv/grizzly-bear-hugger-washable-training-belt-6in-6	1350	BearHugger6inch	2016-12-18 17:11:41.953016	2016-12-18 17:11:41.953016
7056	Grizzly Womens Gloves Black ถุงมือยกน้ำหนักหญิงสีดำ 	https://www.tvdirect.tv/grizzly-womens-gloves-black	1100	WomensGloves	2016-12-18 17:11:42.963191	2016-12-18 17:11:42.963191
7057	Grizzly Womens Paws ถุงมือหนังหญิง	https://www.tvdirect.tv/grizzly-womens-paws	1190	WomensPaws	2016-12-18 17:11:46.411678	2016-12-18 17:11:46.411678
7058	ABLOOM  YOGA BALL SET BLUE- WHITE ลูกบอลโยคะ 65 CMและ25CM สีน้ำเงินและสีชมพู	https://www.tvdirect.tv/abloom-yoga-ball-set-blue-white-65-cm-25cm	699	0111700201779	2016-12-18 17:11:47.344976	2016-12-18 17:11:47.344976
7059	ABLOOM  YOGA BALL BLUE ลูกบอลโยคะ 50 CM พิมพ์ลายท่าออกกำลังกาย สีน้ำเงิน	https://www.tvdirect.tv/abloom-yoga-ball-blue-50-cm	490	0111700201786	2016-12-18 17:11:48.329342	2016-12-18 17:11:48.329342
7060	ABLOOM  WRIST SANDBAG BLUEถุงทรายถ่วงน้ำหนักข้อมือ 1KG สีน้ำเงิน	https://www.tvdirect.tv/abloom-wrist-sandbag-blue-1kg	650	0111700201731	2016-12-18 17:11:49.340994	2016-12-18 17:11:49.340994
7061	ABLOOM  ELASTIC EXERCISE BLACK-RED-GREEN-BLUE ยางยืดออกกำลังกาย 4 เส้น สีดำสีแดงสีเขียวสีน้ำเงิน	https://www.tvdirect.tv/abloom-elastic-exercise-black-red-green-blue-4	490	0111700201748	2016-12-18 17:11:50.298181	2016-12-18 17:11:50.298181
7062	ABLOOM  PEANUT YOGA BALL GRAY ลูกบอลโยคะแบบถั่ว สีเทา	https://www.tvdirect.tv/abloom-peanut-yoga-ball-gray	490	0111700201755	2016-12-18 17:11:51.414244	2016-12-18 17:11:51.414244
7063	ABLOOM PEANUT YOGA BALL BLUE ลูกบอลโยคะแบบถั่ว น้ำเงิน	https://www.tvdirect.tv/abloom-peanut-yoga-ball-blue	490	0111700201762	2016-12-18 17:11:52.429834	2016-12-18 17:11:52.429834
7064	ABLOOM   ELASTIC EXERCISE YELLOW ยางยืดออกกำลังกาย สีเหลือง	https://www.tvdirect.tv/abloom-elastic-exercise-yellow	259	0111700201793	2016-12-18 17:11:53.354267	2016-12-18 17:11:53.354267
7065	ABLOOM   ELASTIC EXERCISE BLUE ยางยืดออกกำลังกาย สีฟ้า	https://www.tvdirect.tv/abloom-elastic-exercise-blue	299	0111700201809	2016-12-18 17:11:54.253166	2016-12-18 17:11:54.253166
7066	ABLOOM YOGA MAT GREEN-ORANGE เสื่อโยคะ สีเขียว-ส้ม	https://www.tvdirect.tv/abloom-yoga-mat-green-orange	1290	0111700201816	2016-12-18 17:11:55.084442	2016-12-18 17:11:55.084442
7067	ABLOOM  YOGA MAT YELLOW-BLUE เสื่อโยคะ สีเหลือง-น้ำเงิน	https://www.tvdirect.tv/abloom-yoga-mat-yellow-blue	1290	0111700201823	2016-12-18 17:11:56.024459	2016-12-18 17:11:56.024459
7068	ABLOOM   PILATES CIRCLE GRAY วงแหวนพิลาทิส 40 ซม สีเทา	https://www.tvdirect.tv/abloom-pilates-circle-gray-40	590	0111700201830	2016-12-18 17:11:57.002455	2016-12-18 17:11:57.002455
7069	ABLOOM  PILATES CIRCLE PURPLE วงแหวนพิลาทิส 40 ซม สีม่วง	https://www.tvdirect.tv/abloom-pilates-circle-purple-40	590	0111700201847	2016-12-18 17:11:58.0033	2016-12-18 17:11:58.0033
7070	ABLOOM  YOGA WHEEL PINK-BLACK วงล้อสำหรับโยคะ สีชมพู-ดำ	https://www.tvdirect.tv/abloom-yoga-wheel-pink-black	1890	0111700201854	2016-12-18 17:11:59.021682	2016-12-18 17:11:59.021682
7071	Abloom  Non-Slip Socks White ถุงเท้าโยคะมีปุ่มกันลื่น1คู่ สีขาว	https://www.tvdirect.tv/abloom-non-slip-socks-white-1	290	0111700201861	2016-12-18 17:11:59.901	2016-12-18 17:11:59.901
7072	Abloom  Non-Slip Socks Black ถุงเท้าโยคะมีปุ่มกันลื่น1 คู่ สีดำ	https://www.tvdirect.tv/abloom-non-slip-socks-black-1	290	0111700201878	2016-12-18 17:12:05.449095	2016-12-18 17:12:05.449095
7073	Hot Shaper กางเกงเรียกเหงื่อ	https://www.tvdirect.tv/hot-shaper	890	HotShaper	2016-12-18 17:12:11.74409	2016-12-18 17:12:11.74409
7074	SWANS SPORT TOP SIZE S-M BLACK เสื้อกล้ามออกกำลังกาย (สตรี) สีดำ	https://www.tvdirect.tv/swans-sport-top-size-s-m-black	790	0110100205280	2016-12-18 17:12:12.915143	2016-12-18 17:12:12.915143
7075	ProFlex Isolate Vanilla 700 G. โปรเฟลคซ์ ไอโซเลท กลิ่นวานิลลา ขนาด 700 กรัม	https://www.tvdirect.tv/proflex-isolate-vanilla-700-g-700	990	0111800202133	2016-12-18 17:12:17.982471	2016-12-18 17:12:17.982471
7076	ProFlex Isolate Chocolate 700 G. โปรเฟลคซ์ ไอโซเลท กลิ่นช็อคโกแลต ขนาด 700 กรัม	https://www.tvdirect.tv/proflex-isolate-chocolate-700-g-700	990	0111800202140	2016-12-18 17:12:18.825209	2016-12-18 17:12:18.825209
7077	ProFlex Isolate Pure 700 G. โปรเฟลคซ์ ไอโซเลท รสจืด ขนาด 700 กรัม	https://www.tvdirect.tv/proflex-isolate-pure-700-g-700	1050	0111800202157	2016-12-18 17:12:19.709435	2016-12-18 17:12:19.709435
7078	ProFlex Isolate Pure 5 LB. โปรเฟลคซ์ ไอโซเลท รสจืด ขนาด 5 ปอนด์	https://www.tvdirect.tv/proflex-isolate-pure-5-lb-5	2050	0111800202164	2016-12-18 17:12:20.603489	2016-12-18 17:12:20.603489
7079	 ProFlex Isolate vanilla 5 LB. โปรเฟลคซ์ ไอโซเลท รสวนิลา ขนาด 5 ปอนด์	https://www.tvdirect.tv/dtm-proflex-isolate-vanilla-5-lb	1890	0111800202171	2016-12-18 17:12:21.50539	2016-12-18 17:12:21.50539
7080	ProFlex Isolate chocolate 5 LB. โปรเฟลคซ์ ไอโซเลท รสช็อคโกแลต ขนาด 5 ปอนด์	https://www.tvdirect.tv/dtm-proflex-isolate-chocolate-5-lb	1890	0111800202188	2016-12-18 17:12:22.322399	2016-12-18 17:12:22.322399
7081	ProFlex Concentrate Vanilla 700 G. โปรเฟลคซ์ คอนเซนเทรด กลิ่นวานิลลา ขนาด 700 กรัม	https://www.tvdirect.tv/proflex-concentrate-vanilla-700-g-700	870	0111800202195	2016-12-18 17:12:23.300883	2016-12-18 17:12:23.300883
7082	ProFlex Concentrate Chocolate 700 G. โปรเฟลคซ์ คอนเซนเทรด กลิ่นช็อคโกแลต ขนาด 700 กรัม	https://www.tvdirect.tv/proflex-concentrate-chocolate-700-g-700	870	0111800202201	2016-12-18 17:12:24.176179	2016-12-18 17:12:24.176179
7083	ProFlex Concentrate Strawberry 700 G.  โปรเฟลคซ์ คอนเซนเทรด กลิ่นสตรอเบอร์รี่ ขนาด 700 กรัม	https://www.tvdirect.tv/proflex-concentrate-strawberry-700-g-700	870	0111800202218	2016-12-18 17:12:25.076678	2016-12-18 17:12:25.076678
7084	ProFlex Concentrate Pure 700 G.  โปรเฟลคซ์ คอนเซนเทรด รสจืด ขนาด 700 กรัม	https://www.tvdirect.tv/proflex-concentrate-pure-700-g-700	870	0111800202225	2016-12-18 17:12:25.957851	2016-12-18 17:12:25.957851
7085	ProFlex Concentrate Chocolate 5 LB.  โปรเฟลคซ์ คอนเซนเทรด กลิ่นช็อคโกแลต ขนาด 5 ปอนด์	https://www.tvdirect.tv/proflex-concentrate-chocolate-5-lb-5	1720	0111800202232	2016-12-18 17:12:26.885252	2016-12-18 17:12:26.885252
7086	ProFlex Concentrate Vanilla 5 LB.  โปรเฟลคซ์ คอนเซนเทรด กลิ่นวานิลลา ขนาด 5 ปอนด์	https://www.tvdirect.tv/proflex-concentrate-vanilla-5-lb-5	1720	0111800202249	2016-12-18 17:12:27.773419	2016-12-18 17:12:27.773419
7087	PROFLEX HULK VANILLA  5 LB.	https://www.tvdirect.tv/dtm-proflex-hulk-vanilla-5-lb	1350	0111800202256	2016-12-18 17:12:28.616573	2016-12-18 17:12:28.616573
7088	PROFLEX HULK CHOCOLATE  5 LB.	https://www.tvdirect.tv/dtm-proflex-hulk-chocolate-5-lb	1350	0111800202263	2016-12-18 17:12:29.455141	2016-12-18 17:12:29.455141
7089	ProFlex Diva Vanilla 500 G. โปรเฟลคซ์ ดีว่า กลิ่นวานิลลา ขนาด 500 กรัม	https://www.tvdirect.tv/proflex-diva-vanilla-500-g-500	820	0111800202270	2016-12-18 17:12:30.305175	2016-12-18 17:12:30.305175
7090	ProFlex Diva Chocolate 500 G.  โปรเฟลคซ์ ดีว่า กลิ่นช็อคโกแลต ขนาด 500 กรัม	https://www.tvdirect.tv/proflex-diva-chocolate-500-g-500	820	0111800202287	2016-12-18 17:12:31.217925	2016-12-18 17:12:31.217925
7091	ProFlex Diva Mixed Berry 500 G.  โปรเฟลคซ์ ดีว่า กลิ่นเบอร์รี่ ขนาด 500 กรัม	https://www.tvdirect.tv/proflex-diva-mixed-berry-500-g-500	820	0111800202294	2016-12-18 17:12:32.16337	2016-12-18 17:12:32.16337
7092	ProFlex Gold 700 G.  โปรเฟลคซ์ โกลด์ ขนาด 700 กรัม	https://www.tvdirect.tv/proflex-gold-700-g-700	990	0111800202300	2016-12-18 17:12:33.050804	2016-12-18 17:12:33.050804
7093	UNIVERSAL REAL GAINS STRAWBERRY 6.85LBS เวย์โปรตีน	https://www.tvdirect.tv/universal-real-gains-strawberry-6-85lbs	2690	0111800203468	2016-12-18 17:12:33.969812	2016-12-18 17:12:33.969812
7094	UNIVERSAL SUPER CUTS 3 130 Tablets ผลิตภัณฑ์ลดน้ำหนัก	https://www.tvdirect.tv/universal-super-cuts-3-130-tablets	1270	0111800203413	2016-12-18 17:12:36.915083	2016-12-18 17:12:36.915083
7095	UNIVERSAL L CARNITINE FUMARATE 60 Capsules ผลิตภัณฑ์ลดน้ำหนัก	https://www.tvdirect.tv/universal-l-carnitine-fumarate-60-capsules	1180	0111800203406	2016-12-18 17:12:37.978908	2016-12-18 17:12:37.978908
7096	UNIVERSAL REAL GAINS STRAWBERRY 10.6LBS ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/universal-real-gains-strawberry-10-6lbs	3800	0111800203338	2016-12-18 17:12:38.983973	2016-12-18 17:12:38.983973
7097	UNIVERSAL REAL GAINS BANANA 10.6LBS ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/universal-real-gains-banana-10-6lbs	3800	0111800203321	2016-12-18 17:12:39.962374	2016-12-18 17:12:39.962374
7098	UNIVERSAL REAL GAINS BANANA 6.85LBS ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/universal-real-gains-banana-6-85lbs	2690	0111800203314	2016-12-18 17:12:41.003623	2016-12-18 17:12:41.003623
7099	UNIVERSAL REAL GAINS CHOCOLATE MINT 10.6LBS ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/universal-real-gains-chocolate-mint-10-6lbs	3800	0111800203307	2016-12-18 17:12:41.983041	2016-12-18 17:12:41.983041
7100	UNIVERSAL REAL GAINS COOKIE&CREAM 10.6LB ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/universal-real-gains-cookie-cream-10-6lb	3800	0111800203284	2016-12-18 17:12:42.976916	2016-12-18 17:12:42.976916
7101	UNIVERSAL REAL GAINS COOKIE&CREAM 6.85LB ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/universal-real-gains-cookie-cream-6-85lb	2690	0111800203277	2016-12-18 17:12:43.976371	2016-12-18 17:12:43.976371
7102	UNIVERSAL REAL GAINS VANILLA 10.6LBS ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/universal-real-gains-vanilla-10-6lbs	3800	0111800203260	2016-12-18 17:12:44.959691	2016-12-18 17:12:44.959691
7103	UNIVERSAL REAL GAINS VANILLA 6.85LBS ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/universal-real-gains-vanilla-6-85lbs	2690	0111800203253	2016-12-18 17:12:45.966591	2016-12-18 17:12:45.966591
7104	UNIVERSAL REAL GAINS CHOCOLATE 10.6LBS ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/universal-real-gains-chocolate-10-6lbs	3800	0111800203246	2016-12-18 17:12:46.906058	2016-12-18 17:12:46.906058
7105	UNIVERSAL GAIN FAST 3100 STRAWBERRY 10LBS ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/universal-gain-fast-3100-strawberry-10lbs	3400	0111800203222	2016-12-18 17:12:47.974313	2016-12-18 17:12:47.974313
7106	UNIVERSAL GAIN FAST 3100 STRAWBERRY 5.1LBS ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/universal-gain-fast-3100-strawberry-5-1lbs	1900	0111800203215	2016-12-18 17:12:48.929174	2016-12-18 17:12:48.929174
7107	UNIVERSAL GAIN FAST 3100 BANANA 10LBS ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/universal-gain-fast-3100-banana-10lbs	3400	0111800203208	2016-12-18 17:12:49.86877	2016-12-18 17:12:49.86877
7108	UNIVERSAL GAIN FAST 3100 COOKIE&CREAM 5.1LBS ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/universal-gain-fast-3100-cookie-cream-5-1lbs	1900	0111800202867	2016-12-18 17:12:50.812678	2016-12-18 17:12:50.812678
7109	UNIVERSAL GAIN FAST 3100 VANILLA 10LBS ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/universal-gain-fast-3100-vanilla-10lbs	3400	0111800203178	2016-12-18 17:12:51.81025	2016-12-18 17:12:51.81025
7110	UNIVERSAL GAIN FAST 3100 VANILLA 5.1LBS ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/universal-gain-fast-3100-vanilla-5-1lbs	1900	0111800203161	2016-12-18 17:12:52.817594	2016-12-18 17:12:52.817594
7111	UNIVERSAL GAIN FAST 3100 CHOCOLATE 10LBS ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/universal-gain-fast-3100-chocolate-10lbs	3400	0111800203154	2016-12-18 17:12:53.773004	2016-12-18 17:12:53.773004
7112	ANIMAL WHEY COOKIE&CREAM 10LBS เวย์โปรตีน	https://www.tvdirect.tv/animal-whey-cookie-cream-10lbs	4300	0111800203130	2016-12-18 17:12:54.624424	2016-12-18 17:12:54.624424
7113	ANIMAL WHEY COOKIE&CREAM 4LBS เวย์โปรตีน	https://www.tvdirect.tv/animal-whey-cookie-cream-4lbs	2350	0111800203123	2016-12-18 17:12:55.558681	2016-12-18 17:12:55.558681
7114	ANIMAL WHEY COOKIE&CREAM 2LBS เวย์โปรตีน	https://www.tvdirect.tv/animal-whey-cookie-cream-2lbs	1390	0111800203116	2016-12-18 17:12:58.396417	2016-12-18 17:12:58.396417
7115	ANIMAL WHEY VANILLA 10LBS เวย์โปรตีน	https://www.tvdirect.tv/animal-whey-vanilla-10lbs	4300	0111800203109	2016-12-18 17:12:59.284129	2016-12-18 17:12:59.284129
7116	ANIMAL WHEY VANILLA 4LBS เวย์โปรตีน	https://www.tvdirect.tv/animal-whey-vanilla-4lbs	2350	0111800203093	2016-12-18 17:13:00.230044	2016-12-18 17:13:00.230044
7117	ANIMAL WHEY VANILLA 2LBS เวย์โปรตีน	https://www.tvdirect.tv/animal-whey-vanilla-2lbs	1390	0111800203086	2016-12-18 17:13:01.066035	2016-12-18 17:13:01.066035
7118	ANIMAL WHEY CHOCOLATE 10LBS เวย์โปรตีน	https://www.tvdirect.tv/animal-whey-chocolate-10lbs	4300	0111800203079	2016-12-18 17:13:02.127986	2016-12-18 17:13:02.127986
7119	ANIMAL WHEY CHOCOLATE 4LBS เวย์โปรตีน	https://www.tvdirect.tv/animal-whey-chocolate-4lbs	2350	0111800203062	2016-12-18 17:13:03.031331	2016-12-18 17:13:03.031331
7120	ANIMAL WHEY CHOCOLATE 2LBS เวย์โปรตีน	https://www.tvdirect.tv/animal-whey-chocolate-2lbs	1390	0111800203055	2016-12-18 17:13:03.956873	2016-12-18 17:13:03.956873
7121	UNIVERSAL ULTRA WHEY PRO STRAWBERRY 5LBS เวย์โปรตีน	https://www.tvdirect.tv/universal-ultra-whey-pro-strawberry-5lbs	2350	0111800203031	2016-12-18 17:13:05.051679	2016-12-18 17:13:05.051679
7122	UNIVERSAL ULTRA WHEY PRO STRAWBERRY 2LBS เวย์โปรตีน	https://www.tvdirect.tv/universal-ultra-whey-pro-strawberry-2lbs	1350	0111800203024	2016-12-18 17:13:06.037084	2016-12-18 17:13:06.037084
7123	UNIVERSAL ULTRA WHEY DOUBLE CHOCCHIP 5LBS เวย์โปรตีน	https://www.tvdirect.tv/universal-ultra-whey-double-chocchip-5lbs	2350	0111800203000	2016-12-18 17:13:06.995334	2016-12-18 17:13:06.995334
7124	UNIVERSAL ULTRA WHEY PRO DOUBLE CHOCCHIP 2LBS เวย์โปรตีน	https://www.tvdirect.tv/universal-ultra-whey-double-chocchip-2lbs	1350	0111800202997	2016-12-18 17:13:08.037392	2016-12-18 17:13:08.037392
7125	UNIVERSAL ULTRA WHEY PRO MOCHA CAPPUCINO 10LBS เวย์โปรตีน	https://www.tvdirect.tv/universal-ultra-whey-mocha-cappucino-10lbs	4050	0111800202980	2016-12-18 17:13:08.983762	2016-12-18 17:13:08.983762
7126	UNIVERSAL ULTRA WHEY PRO MOCHA CAPPUCINO 5LBS เวย์โปรตีน	https://www.tvdirect.tv/universal-ultra-whey-mocha-cappucino-5lbs	2350	0111800202973	2016-12-18 17:13:09.994607	2016-12-18 17:13:09.994607
7127	UNIVERSAL ULTRA WHEY PRO MOCHA CAPPUCINO 2LBS เวย์โปรตีน	https://www.tvdirect.tv/universal-ultra-whey-mocha-cappucino-2lbs	1350	0111800202966	2016-12-18 17:13:10.994167	2016-12-18 17:13:10.994167
7128	UNIVERSAL ULTRA WHEY PRO COOKIE&CREAM 10LBS เวย์โปรตีน	https://www.tvdirect.tv/universal-ultra-whey-pro-cookie-cream-10lbs	4050	0111800202959	2016-12-18 17:13:11.824145	2016-12-18 17:13:11.824145
7129	UNIVERSAL ULTRA WHEY PRO COOKIE&CREAM 5LBS เวย์โปรตีน	https://www.tvdirect.tv/universal-ultra-whey-pro-cookie-cream-5lbs	2350	0111800202942	2016-12-18 17:13:12.744841	2016-12-18 17:13:12.744841
7130	UNIVERSAL ULTRA WHEY PRO COOKIE&CREAM 2LBS เวย์โปรตีน	https://www.tvdirect.tv/universal-ultra-whey-pro-cookie-cream-2lbs	1350	0111800202935	2016-12-18 17:13:13.749463	2016-12-18 17:13:13.749463
7131	UNIVERSAL ULTRA WHEY PRO VANILLA 10LBS เวย์โปรตีน	https://www.tvdirect.tv/universal-ultra-whey-pro-vanilla-10lbs	4050	0111800202928	2016-12-18 17:13:14.555995	2016-12-18 17:13:14.555995
7132	UNIVERSAL ULTRA WHEY PRO VANILLA 2LBS เวย์โปรตีน	https://www.tvdirect.tv/universal-ultra-whey-pro-vanilla-2lbs	1350	0111800202904	2016-12-18 17:13:15.434159	2016-12-18 17:13:15.434159
7133	UNIVERSAL ULTRA WHEY PRO CHOCOLATE 2LBS เวย์โปรตีน	https://www.tvdirect.tv/universal-ultra-whey-pro-chocolate-2lbs	1350	0111800202874	2016-12-18 17:13:16.368993	2016-12-18 17:13:16.368993
7134	PROFLEX DIVA KIWI 500 G. Set 2 ชิ้น	https://www.tvdirect.tv/proflex-diva-kiwi-500-g-500	1599	ProflexDiva500	2016-12-18 17:13:19.012877	2016-12-18 17:13:19.012877
7135	PROFLEX DIVA MATCHA GREEN TEA 500 G. Set 2 ชิ้น	https://www.tvdirect.tv/proflex-diva-matcha-green-tea-500-g-500	1599	ProflexDivaMatcha	2016-12-18 17:13:19.892289	2016-12-18 17:13:19.892289
7136	PROFLEX ISOLATE MATCHA GREENTEA 700 G. Set 2 ชิ้น	https://www.tvdirect.tv/proflex-isolate-matcha-greentea-700-g-700	1799	ProflexIsolate700	2016-12-18 17:13:20.876725	2016-12-18 17:13:20.876725
7137	UNIVERSAL RED HOT 60 Capsules ผลิตภัณฑ์ลดน้ำหนัก	https://www.tvdirect.tv/universal-red-hot-60-capsules	1500	0111800203420	2016-12-18 17:13:21.815254	2016-12-18 17:13:21.815254
7138	ANIMAL MASS COOKIE&CREAM 10.19LBS ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/animal-mass-cookie-cream-10-19lbs	3990	0111800203390	2016-12-18 17:13:22.808542	2016-12-18 17:13:22.808542
7139	ANIMAL MASS VANILLA 10.19LBS ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/animal-mass-vanilla-10-19lbs	3990	0111800203376	2016-12-18 17:13:23.646693	2016-12-18 17:13:23.646693
7140	ANIMAL MASS VANILLA 5.09LBS ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/animal-mass-vanilla-5-09lbs	2190	0111800203369	2016-12-18 17:13:24.475205	2016-12-18 17:13:24.475205
7141	ANIMAL MASS CHOCOLATE 10.19LBSS ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/animal-mass-chocolate-10-19lbss	3990	0111800203352	2016-12-18 17:13:25.428271	2016-12-18 17:13:25.428271
7142	ANIMAL MASS CHOCOLATE 5.09LBS ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/animal-mass-chocolate-5-09lbs	2190	0111800203345	2016-12-18 17:13:26.281013	2016-12-18 17:13:26.281013
7143	UNIVERSAL REAL GAINS CHOCOLATE MINT 6.85LBS ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/universal-real-gains-chocolate-mint-6-85lbs	2690	0111800203291	2016-12-18 17:13:27.178159	2016-12-18 17:13:27.178159
7144	UNIVERSAL GAIN FAST 3100 COOKIE&CREAM 10LBS ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/universal-gain-fast-3100-cookie-cream-10lbs	3400	0111800203185	2016-12-18 17:13:28.199301	2016-12-18 17:13:28.199301
7145	UNIVERSAL ULTRA WHEY PRO STRAWBERRY 10LBS เวย์โปรตีน	https://www.tvdirect.tv/universal-ultra-whey-pro-strawberry-10lbs	4050	0111800203048	2016-12-18 17:13:29.05088	2016-12-18 17:13:29.05088
7146	UNIVERSAL ULTRA WHEY PRO CHOCOLATE 10LB เวย์โปรตีน	https://www.tvdirect.tv/universal-ultra-whey-pro-chocolate-10lb	4050	0111800202898	2016-12-18 17:13:30.01386	2016-12-18 17:13:30.01386
7147	UNIVERSAL ULTRA WHEY PRO CHOCOLATE 5LBS เวย์โปรตีน	https://www.tvdirect.tv/universal-ultra-whey-pro-chocolate-5lbs	2350	0111800202881	2016-12-18 17:13:31.033862	2016-12-18 17:13:31.033862
7148	CASIKO เครื่องชั่งน้ำหนัก CK-3311A-สีเทา	https://www.tvdirect.tv/casiko-ck-3311a	459	0112300207860	2016-12-18 17:14:00.851825	2016-12-18 17:14:00.851825
7149	Pomo 37 Blood Pressure Monitor wristband สายรัดข้อมือวัดความดันโลหิต	https://www.tvdirect.tv/pomo-37-blood-pressure-monitor-wristband	2990	0112500203598	2016-12-18 17:14:12.850187	2016-12-18 17:14:12.850187
7150	WAIST BELT STS07 COL.กระเป๋าคาดเอวเอนกประสงค์(LED)	https://www.tvdirect.tv/waist-belt-sts07-col-led	990	WaistBeltSTS07	2016-12-18 17:14:14.490046	2016-12-18 17:14:14.490046
7151	OTOP เรือมหาสมบัติเจิ้งเหอ	https://www.tvdirect.tv/otop	49900	0113400300059	2016-12-18 17:14:42.626956	2016-12-18 17:14:42.626956
7152	พญาอินทรีย์ทอง	https://www.tvdirect.tv/0111000300400	49900	0111000300400	2016-12-18 17:14:43.586409	2016-12-18 17:14:43.586409
7153	My King สารคดีเฉลิมพระเกียรติ รัชกาลที่ ๙  ชุด Blu-Ray (Limited Premium Set)	https://www.tvdirect.tv/my-king-blu-ray	2499	0111300300964	2016-12-18 17:14:44.480794	2016-12-18 17:14:44.480794
7154	มังกร 9 มงคล-พื้นเหลือง (เลขทั่วไป)	https://www.tvdirect.tv/0113700300063	49900	0113700300063	2016-12-18 17:14:45.421823	2016-12-18 17:14:45.421823
7155	OTOP มังกร-หงส์	https://www.tvdirect.tv/otop-130	29900	0110803000029	2016-12-18 17:14:46.354634	2016-12-18 17:14:46.354634
7156	OTOP เรือ 9 มังกร	https://www.tvdirect.tv/otop-9	49900	0110803000012	2016-12-18 17:14:47.276012	2016-12-18 17:14:47.276012
7157	มังกรพันหลัก	https://www.tvdirect.tv/0111603000158	19900	0111603000158	2016-12-18 17:14:48.234922	2016-12-18 17:14:48.234922
7158	มังกรพันหลักคู่	https://www.tvdirect.tv/0111603000141	29900	0111603000141	2016-12-18 17:14:49.092838	2016-12-18 17:14:49.092838
7159	มังกรหลักตรง	https://www.tvdirect.tv/0111603000134	29900	0111603000134	2016-12-18 17:14:49.894414	2016-12-18 17:14:49.894414
7160	มั่งมีศรีสุข (ขนาดใหญ่ 60 x 38 cm)	https://www.tvdirect.tv/60-x-38-cm	7990	0110400300300	2016-12-18 17:14:50.775413	2016-12-18 17:14:50.775413
7161	มั่งมีศรีสุข (ขนาดเล็ก 43 x 32 cm)	https://www.tvdirect.tv/43-x-32-cm	4990	0110400300317	2016-12-18 17:14:51.615536	2016-12-18 17:14:51.615536
7162	เรือจำลองไม้สักทองรุ่นเฉพาะบุคคล (ขนาด 89 เซนติเมตร)	https://www.tvdirect.tv/0110400300232	99000	0110400300232	2016-12-18 17:14:52.513714	2016-12-18 17:14:52.513714
7163	เรือจำลองไม้สักทองรุ่นเฉพาะบุคคล (ขนาด 60 เซนติเมตร)	https://www.tvdirect.tv/0110400300225	39900	0110400300225	2016-12-18 17:14:53.378407	2016-12-18 17:14:53.378407
7164	เรือจำลองไม้สักทอง รุ่นโชคลาภ (ขนาดเรือ กว้าง 13 ยาว 48 สูง 58 CM)	https://www.tvdirect.tv/13-48-58-cm	9900	0110400300027	2016-12-18 17:14:54.280731	2016-12-18 17:14:54.280731
7165	เรือจำลองไม้สักทอง รุ่นเฉพาะบุคคล (ขนาด 48 เซนติเมตร)	https://www.tvdirect.tv/0110400300034	19900	0110400300034	2016-12-18 17:14:55.18856	2016-12-18 17:14:55.18856
7166	มังกร 9 มงคล (เลขทั่วไป)	https://www.tvdirect.tv/0110400300171	44900	0110400300171	2016-12-18 17:14:56.061116	2016-12-18 17:14:56.061116
7167	MANTIS INSTANT SHINE น้ำยาทำความสะอาด เคลือบเงา	https://www.tvdirect.tv/mantis-instant-shine	499	0110600300261	2016-12-18 17:14:56.892411	2016-12-18 17:14:56.892411
7168	Motor Up Orignal Engine Treatment วิตามินเพิ่มประสิทธิภาพเครื่องยนต์สูตรดั้งเดิม	https://www.tvdirect.tv/motor-up-orignal-engine-treatment	990	0120600500110	2016-12-18 17:14:57.788055	2016-12-18 17:14:57.788055
7169	Motor Up Engine Cleaner วิตามินทำความสะอาดภายในเครื่องยนต์	https://www.tvdirect.tv/motor-up-engine-cleaner	190	0120600500127	2016-12-18 17:14:58.687351	2016-12-18 17:14:58.687351
7170	Motor Up Fuel System Treatment วิตามินเพิ่มประสิทธิภาพระบบจ่ายน้ำมันเชื้อเพลิงเครื่องยนต์เบนซิน และดีเซล	https://www.tvdirect.tv/motor-up-fuel-system-treatment	590	0120600500141	2016-12-18 17:14:59.616809	2016-12-18 17:14:59.616809
7171	Motor Up Moremiles วิตามินเพิ่มประสิทธิภาพและประหยัดน้ำสูตรพิเศษสำหรับเครื่องยนต์เบนซิน	https://www.tvdirect.tv/motor-up-moremiles	390	0120600500158	2016-12-18 17:15:03.905101	2016-12-18 17:15:03.905101
7172	Motor Up Xtreme Small Pack	https://www.tvdirect.tv/motor-up-xtreme-small-pack	990	0120600500172	2016-12-18 17:15:04.835239	2016-12-18 17:15:04.835239
7173	Motor Up Original Small Pack	https://www.tvdirect.tv/motor-up-original-small-pack	990	0120600500189	2016-12-18 17:15:05.863843	2016-12-18 17:15:05.863843
7174	สกู๊ตเตอร์ผู้ใหญ่ รุ่น URBAN7XL สีขาว	https://www.tvdirect.tv/scooter-urban7xl-white	2790	0111400203059	2016-12-18 17:15:06.868557	2016-12-18 17:15:06.868557
7175	เรือสำเภา รุ่น 3 ใบเรือตรง (โจวหม่าน)	https://www.tvdirect.tv/0113400300080	19900	0113400300080	2016-12-18 17:15:07.870636	2016-12-18 17:15:07.870636
7176	เรือสำเภา รุ่น 3 ใบเรือเล็กข้าง (หยางชิง)	https://www.tvdirect.tv/0113400300103	19900	0113400300103	2016-12-18 17:15:08.800758	2016-12-18 17:15:08.800758
7177	เรือสำเภา รุ่น 2ใบท้ายยาว (โจวเหวิน)	https://www.tvdirect.tv/0113400300127	19900	0113400300127	2016-12-18 17:15:09.827732	2016-12-18 17:15:09.827732
7178	Inmotion SCV L6 Scooter WHITE สีขาว	https://www.tvdirect.tv/inmotion-scv-l6-scooter-white	27500	0112500202287	2016-12-18 17:15:10.862455	2016-12-18 17:15:10.862455
7179	Inmotion SCV L6 Scooter BLACK สีดำ	https://www.tvdirect.tv/inmotion-scv-l6-scooter-black	27500	0112500202294	2016-12-18 17:15:11.797439	2016-12-18 17:15:11.797439
7180	Inmotion SCV R1 EX	https://www.tvdirect.tv/inmotion-scv-r1	47500	Inmotion SCV R1 EX	2016-12-18 17:15:13.294842	2016-12-18 17:15:13.294842
7181	Inmotion SCV H2 (Balance Wheels)	https://www.tvdirect.tv/inmotion-scv-h2-balance-wheels	18900	Inmotion SCV H2	2016-12-18 17:15:14.282376	2016-12-18 17:15:14.282376
7182	Inmotion SCV H1 (Balance Wheels)	https://www.tvdirect.tv/inmotion-scv-h1-balance-wheel	18900	Inmotion SCV H1	2016-12-18 17:15:15.385267	2016-12-18 17:15:15.385267
7183	Inmotion SCV V3 (Double Wheels)	https://www.tvdirect.tv/inmotion-scv-v3-double-wheels-c	25000	Inmotion SCV V3	2016-12-18 17:15:16.825087	2016-12-18 17:15:16.825087
7184	OTOP เรือเฉพาะบุคคล ขนาด 39 ซม	https://www.tvdirect.tv/otop-39	9900	0113700300490	2016-12-18 17:15:17.955178	2016-12-18 17:15:17.955178
7185	OTOP เรือเฉพาะบุคคล รุ่นฮก-หีบมหาสมบัติ 48 ซม. ลำดับที่ทั่วไป	https://www.tvdirect.tv/otop-48	19900	0113700300506	2016-12-18 17:15:18.965443	2016-12-18 17:15:18.965443
7186	เทพเจ้าเห้งเจียประทับนั่ง	https://www.tvdirect.tv/magicmonkey-sitting	19900	0113700300476	2016-12-18 17:15:19.913024	2016-12-18 17:15:19.913024
7187	เทพเจ้าเห้งเจียประทับยืน	https://www.tvdirect.tv/0113700300483	19900	0113700300483	2016-12-18 17:15:22.831483	2016-12-18 17:15:22.831483
7188	VINK New York Wax 250 ML.สเปรย์แวกซ์รถจักรยานยนต์ + VINK WASH 40 ML. แชมพูล้างรถ	https://www.tvdirect.tv/vink-new-york-wax-250-ml-vink-wash-40-ml	420	0110600201759	2016-12-18 17:15:23.750065	2016-12-18 17:15:23.750065
7189	VINK New York Waterless 250 ML. สเปรย์ทำความสะอาดรถจักรยานยนต์ + VINK WASH 40 ML. แชมพูล้างรถ	https://www.tvdirect.tv/vink-new-york-waterless-250-ml-vink-wash-40-ml	420	0110600201766	2016-12-18 17:15:24.664561	2016-12-18 17:15:24.664561
7190	SRITHAI จานโชว์ 10" 9 รัชกาล	https://www.tvdirect.tv/srithai-10-9	260	0111000200724	2016-12-18 17:15:25.538627	2016-12-18 17:15:25.538627
7191	SRITHAI จานโชว์ 10" พระรูปคู่ครองราชย์ 60 ปี	https://www.tvdirect.tv/srithai-10-60	290	0111000200731	2016-12-18 17:15:26.433803	2016-12-18 17:15:26.433803
7192	SRITHAI จานโชว์ 10" รัชกาลที่ 5	https://www.tvdirect.tv/srithai-10-5	260	0111000200748	2016-12-18 17:15:27.335409	2016-12-18 17:15:27.335409
7193	SRITHAI จานโชว์ 10" รัชกาลที่ 5 - 2	https://www.tvdirect.tv/srithai-10-5-2	260	0111000200755	2016-12-18 17:15:28.229135	2016-12-18 17:15:28.229135
7194	SRITHAI จานโชว์ 10" รัชกาลที่ 9	https://www.tvdirect.tv/srithai-10-61	260	0111000200762	2016-12-18 17:15:29.109897	2016-12-18 17:15:29.109897
7195	SRITHAI จานโชว์ 10" รัชกาลที่ 9 - 2	https://www.tvdirect.tv/srithai-10-9-2	260	0111000200779	2016-12-18 17:15:30.015597	2016-12-18 17:15:30.015597
7196	SRITHAI จานโชว์ 10" พระพิฆเนศ	https://www.tvdirect.tv/srithai-10	260	0111000200786	2016-12-18 17:15:30.870031	2016-12-18 17:15:30.870031
7197	โต๊ะกระเป๋า NEW IDEA -พลาสติกABS -น้ำเงิน	https://www.tvdirect.tv/new-idea-abs-blue	1990	0110900201361	2016-12-18 17:15:31.806814	2016-12-18 17:15:31.806814
7198	โต๊ะกระเป๋า NEW IDEA -พลาสติกABS -เขียว	https://www.tvdirect.tv/new-idea-abs-green	1990	0110900201354	2016-12-18 17:15:32.768342	2016-12-18 17:15:32.768342
7199	VR FITTING Aluminium Picnic Table โต๊ะปิกนิคอลูมิเนียมพับได้ PC1135	https://www.tvdirect.tv/vr-fitting-aluminium-picnic-table-pc1135	1980	0110900201385	2016-12-18 17:15:33.803532	2016-12-18 17:15:33.803532
7200	Xiaomi Yunbike C1 Black จักรยานไฟฟ้าระบบไฮบริด - ยุ่นไบค์ ชาย/ดำ	https://www.tvdirect.tv/xiaomi-yunbike-c1-black	23900	0110600201858	2016-12-18 17:15:37.159392	2016-12-18 17:15:37.159392
7201	Xiaomi Yunbike C1 White จักรยานไฟฟ้าระบบไฮบริด - ยุ่นไบค์ หญิง/ขาว	https://www.tvdirect.tv/xiaomi-yunbike-c1-white	23900	0110600201865	2016-12-18 17:15:38.063731	2016-12-18 17:15:38.063731
7202	STL Tent Flash Touch MN200 Navy เต๊นท์แฟลชทัชสำหรับ 2 คน สีกรม	https://www.tvdirect.tv/stl-tent-flash-touch-mn200-navy	1690	0113300200855	2016-12-18 17:15:39.02241	2016-12-18 17:15:39.02241
7203	STL Tent Flash Touch MN300 Navy เต๊นท์แฟลชทัชสำหรับ 3 คน สีกรม	https://www.tvdirect.tv/stl-tent-flash-touch-mn300-navy	1990	0113300200862	2016-12-18 17:15:39.91283	2016-12-18 17:15:39.91283
7204	Sacred Statue of Guanyin เจ้าแม่กวนอิม ปางประทับปลามังกร	https://www.tvdirect.tv/0113700203566	12900	0113700203566	2016-12-18 17:15:40.929284	2016-12-18 17:15:40.929284
7205	Sacred Statue of Maneki Neko แมวกวักญี่ปุ่น (ยกมือซ้าย)	https://www.tvdirect.tv/0113700203573	16900	0113700203573	2016-12-18 17:15:41.829205	2016-12-18 17:15:41.829205
7206	Sacred Statue Swan twain Dragon หงส์คู่มังกร	https://www.tvdirect.tv/0113700203618	22900	0113700203618	2016-12-18 17:15:42.806074	2016-12-18 17:15:42.806074
7207	Sacred Statue เลขแปดมงคล-ฟักทอง	https://www.tvdirect.tv/sacred-statue	22900	0113700203597	2016-12-18 17:15:43.727836	2016-12-18 17:15:43.727836
7208	Sacred Statue heaven Dragon มังกรสวรรค์พันเสา	https://www.tvdirect.tv/sacred-statue-heaven-dragon	23900	0113700203625	2016-12-18 17:15:44.647425	2016-12-18 17:15:44.647425
7209	My Queen ราชินีของเรา Blu-Ray, DVD , CD เพลงหนังสือบทความ	https://www.tvdirect.tv/my-queen-dvd-cd	2499	0112100200645	2016-12-18 17:15:45.606495	2016-12-18 17:15:45.606495
7210	SUNSPEED BOBCAT จักรยานพับได้	https://www.tvdirect.tv/sunspeed-bobcat	4990	SunspeedBobcat	2016-12-18 17:15:46.565806	2016-12-18 17:15:46.565806
7211	KALAQ Q3 FOLDING BIKES จักรยานพับได้ KALAQ Q3 	https://www.tvdirect.tv/kalaq-q3-folding-bikes-kalaq-q3	6990	KalaqQ3FoldingBikes	2016-12-18 17:15:47.495605	2016-12-18 17:15:47.495605
7212	FAS Face Paint ชุดเพ้นท์หน้า 30 มล 6 สี ฟรีพู่กัน 1ด้าม	https://www.tvdirect.tv/fas-face-paint-30-6-1	1250	0110200206925	2016-12-18 17:15:50.74439	2016-12-18 17:15:50.74439
7213	โซฟาลม SABAIBAG 1 แถม 1	https://www.tvdirect.tv/sabaibag-1-1	1990	Sabaibag	2016-12-18 17:15:51.823641	2016-12-18 17:15:51.823641
7214	SMART HOME SET 3 PCS ชุดปิคนิค 3ชิ้น เตาย่างบาร์บีคิว หม้อเอนกประสงค์ เต็นท์	https://www.tvdirect.tv/smart-home-set-3-pcs-3	1990	0112400224428	2016-12-18 17:15:52.749528	2016-12-18 17:15:52.749528
7215	CHEVROLET FOLDING BIKES-FM207 COL. BLACK จักรยานพับได้ รุ่น FM207 สีดำ	https://www.tvdirect.tv/chevrolet-folding-bikes-fm207-col-black-fm207	9900	0113200200672	2016-12-18 17:15:53.621379	2016-12-18 17:15:53.621379
7216	CHEVROLET FOLDING BIKES-FM207 COL. IVORY จักรยานพับได้ รุ่น FM207 สีครีม	https://www.tvdirect.tv/chevrolet-folding-bikes-fm207-col-ivory-fm207	9900	0113200200689	2016-12-18 17:15:54.483921	2016-12-18 17:15:54.483921
7217	BRUNO BIKES-MIXTE COL. POWER BLUE จักรยาน รุ่น MIXTE สีฟ้า	https://www.tvdirect.tv/bruno-bikes-mixte-col-power-blue-mixte	14625	0113200200696	2016-12-18 17:15:55.381697	2016-12-18 17:15:55.381697
7218	BRUNO BIKES-MIXTE COL. COTTON BEIGE จักรยาน รุ่น MIXTE สีเบจ	https://www.tvdirect.tv/bruno-bikes-mixte-col-cotton-beige-mixte	14625	0113200200702	2016-12-18 17:15:56.254577	2016-12-18 17:15:56.254577
7219	Sacred Statue PN-STGP30068 ไก่มงคล	https://www.tvdirect.tv/sacred-statue-pn-stgp30068	18900	0113700203678	2016-12-18 17:15:57.109004	2016-12-18 17:15:57.109004
7220	SANGTHONG AWNING CARRY TENT เต็นท์พับเก็บได้ 2 X 2 เมตร สีขาว	https://www.tvdirect.tv/sangthong-awning-carry-tent-2-x-2	1790	0112200200163	2016-12-18 17:15:57.998366	2016-12-18 17:15:57.998366
7221	SANGTHONG AWNING CARRY TENT เต็นท์พับเก็บได้ 3 X 3 เมตร สีขาว	https://www.tvdirect.tv/sangthong-awning-carry-tent-3-x-3	3500	0112200200170	2016-12-18 17:15:58.844441	2016-12-18 17:15:58.844441
7222	SUNSPEED FOX 27.5 COL. BLACK จักรยานเสือภูเขา - สีดำ	https://www.tvdirect.tv/sunspeed-fox-27-5-col-black	4990	0113200200726	2016-12-18 17:15:59.757986	2016-12-18 17:15:59.757986
7223	SUNSPEED FOX 27.5 COL. BLACK จักรยานเสือภูเขา - สีน้ำเงิน	https://www.tvdirect.tv/sunspeed-fox-27-5-col-black-3545	4990	0113200200733	2016-12-18 17:16:00.69891	2016-12-18 17:16:00.69891
7224	SUNSPEED FOX 27.5 COL. BLACK จักรยานเสือภูเขา - สีขาว	https://www.tvdirect.tv/sunspeed-fox-27-5-col-black-3546	4990	0113200200719	2016-12-18 17:16:01.597564	2016-12-18 17:16:01.597564
7225	COYOTE City Bike 24 Inch AMMA  จักรยานวินเทจ 24 นิ้ว รุ่น AMMA	https://www.tvdirect.tv/coyote-city-bike-24-inch-amma-24-amma	2990	COYOTECity	2016-12-18 17:16:04.978116	2016-12-18 17:16:04.978116
7226	COYOTE Mountain Bike 26 Inch ACES จักรยานเสือภูเขา 26 นิ้ว รุ่น Aces 	https://www.tvdirect.tv/coyote-mountain-bike-26-inch-aces-26-aces	5990	COYOTEMountain	2016-12-18 17:16:05.977051	2016-12-18 17:16:05.977051
7227	COYOTE Folding Bike 20 Modern จักรยานพับได้ รุ่น Modern 	https://www.tvdirect.tv/coyote-folding-bike-20-modern-modern	3990	COYOTEFolding	2016-12-18 17:16:07.061344	2016-12-18 17:16:07.061344
7228	STL Air mattress HF-P308 ที่นอนสูญญากาศ  	https://www.tvdirect.tv/stl-air-mattress-hf-p308	590	STLAir	2016-12-18 17:16:08.181662	2016-12-18 17:16:08.181662
7229	My King สารคดีเฉลิมพระเกียรติ รัชกาลที่ ๙ DVD, CD เพลง, หนังสือบทความ (Limited Premium Set)	https://www.tvdirect.tv/my-king-dvd-cd	999	0111300300957	2016-12-18 17:16:09.106386	2016-12-18 17:16:09.106386
7230	Motor Up Xtreme Engine Treatment วิตามินเพิ่มประสิทธิภาพเครื่องยนต์สูตรเอ็กซ์ทรีม	https://www.tvdirect.tv/motor-up-xtreme-engine-treatment	990	0120600500103	2016-12-18 17:16:10.133261	2016-12-18 17:16:10.133261
7231	MICRO KNIFE การ์ดมีดขนาดพกพา	https://www.tvdirect.tv/micro-knife	99	0121100600188	2016-12-18 17:16:11.024363	2016-12-18 17:16:11.024363
7232	EMPEROR BY SEAGULL 28 cm กระทะทรงลึกมาร์เบิ้ล 28 ซม.	https://www.tvdirect.tv/emperor-by-seagull-28-cm-28	1290	0112400224114	2016-12-18 17:16:33.170251	2016-12-18 17:16:33.170251
7233	ซองกันน้ำ สีขาว	https://www.tvdirect.tv/waterproof-white	199	0110200300401	2016-12-18 17:20:59.631992	2016-12-18 17:20:59.631992
7234	ซองกันน้ำ สีดำ	https://www.tvdirect.tv/waterproof-black	199	0110200300418	2016-12-18 17:21:00.542456	2016-12-18 17:21:00.542456
7235	iPad Cushion เบาะรองไอแพด	https://www.tvdirect.tv/ipad-cushion	299	0122300601081	2016-12-18 17:21:01.429672	2016-12-18 17:21:01.429672
7236	SI Hold All Organizer กระเป๋าใส่เอกสารส่วนตัว	https://www.tvdirect.tv/si-hold-all-organizer	399	0122500600280	2016-12-18 17:21:02.335166	2016-12-18 17:21:02.335166
7237	REMAX LEATHER BAG 9.4 FOR IPAD AIR2/ IPAD AIR 9.4" กระเป๋า	https://www.tvdirect.tv/remax-leather-bag-9-4-for-ipad-air2-ipad-air-9-4	699	0112500202720	2016-12-18 17:21:03.212063	2016-12-18 17:21:03.212063
7238	ANITECH WIRELESS MOUSE BLACK ไวเลสเมาส์ สีดำ MW211	https://www.tvdirect.tv/anitech-wireless-mouse-mw211-black	329	0112500202850	2016-12-18 17:21:06.263729	2016-12-18 17:21:06.263729
7239	ANITECH WIRELESS MOUSE WHITE ไวเลสเมาส์ สีขาว MW211	https://www.tvdirect.tv/anitech-wireless-mouse-mw211-white	329	0112500202867	2016-12-18 17:21:07.137599	2016-12-18 17:21:07.137599
7240	ANITECH SET KEYBOARD ชุดคีย์บอร์ด และเมาส์ PA800	https://www.tvdirect.tv/anitech-set-keyboard-pa800	329	0112500202874	2016-12-18 17:21:08.064693	2016-12-18 17:21:08.064693
7241	ANITECH ชุดคีย์บอร์ด และเมาส์ไร้สาย P501	https://www.tvdirect.tv/anitech-p501	590	0112500202881	2016-12-18 17:21:09.009579	2016-12-18 17:21:09.009579
7242	ANITECH SPEAKER GREY ลำโพง สีเทา SK219	https://www.tvdirect.tv/anitech-speaker-sk219-grey	319	0112500202904	2016-12-18 17:21:09.861443	2016-12-18 17:21:09.861443
7243	ANITECH SPEAKER PINK ลำโพง สีชมพู SK219	https://www.tvdirect.tv/anitech-speaker-sk219-pink	319	0112500202911	2016-12-18 17:21:10.721001	2016-12-18 17:21:10.721001
7244	ANITECH SPEAKER GREEN ลำโพง สีเขียว SK219	https://www.tvdirect.tv/anitech-speaker-sk219-green	319	0112500202928	2016-12-18 17:21:11.617796	2016-12-18 17:21:11.617796
7245	ANITECH SPEAKER 2.1 ลำโพง SK210	https://www.tvdirect.tv/anitech-speaker-2-1-sk210	529	0112500202935	2016-12-18 17:21:12.449178	2016-12-18 17:21:12.449178
7246	ANITECH BLUETOOTH SPEAKER ลำโพง สีเทา V100	https://www.tvdirect.tv/anitech-bluetooth-speaker-v100	599	0112500202942	2016-12-18 17:21:13.322963	2016-12-18 17:21:13.322963
7247	ANITECH BLUETOOTH SPEAKER ลำโพง สีชมพู V100	https://www.tvdirect.tv/anitech-bluetooth-speaker-v100-2092	599	0112500202959	2016-12-18 17:21:14.349459	2016-12-18 17:21:14.349459
7248	ANITECH BLUETOOTH SPEAKER ลำโพง สีฟ้า V100	https://www.tvdirect.tv/anitech-bluetooth-speaker-v100-2093	599	0112500202966	2016-12-18 17:21:15.28491	2016-12-18 17:21:15.28491
7249	ANITECH BLUETOOTH SPEAKER GREY ลำโพง สีเทา V200	https://www.tvdirect.tv/anitech-bluetooth-speaker-v200-grey	1133	0112500202973	2016-12-18 17:21:16.161705	2016-12-18 17:21:16.161705
7250	ANITECH BLUETOOTH SPEAKER GREEN ลำโพง สีเขียว V200	https://www.tvdirect.tv/anitech-bluetooth-speaker-v200-green	1133	0112500202980	2016-12-18 17:21:17.013955	2016-12-18 17:21:17.013955
7251	ANITECH BLUETOOTH SPEAKER BLUE ลำโพง สีฟ้า V200	https://www.tvdirect.tv/anitech-bluetooth-speaker-v200-blue	1133	0112500202997	2016-12-18 17:21:17.983824	2016-12-18 17:21:17.983824
7252	ANITECH HEADPHONE หูฟัง AK71	https://www.tvdirect.tv/anitech-headphone-ak71	389	0112500203000	2016-12-18 17:21:18.852989	2016-12-18 17:21:18.852989
7253	ANITECH HEADPHONE GREY หูฟัง สีเทา AK58	https://www.tvdirect.tv/anitech-headphone-ak58-grey	339	0112500203017	2016-12-18 17:21:19.763476	2016-12-18 17:21:19.763476
7254	ANITECH HEADPHONE BLUE หูฟัง สีฟ้า AK58	https://www.tvdirect.tv/anitech-headphone-ak58-blue	339	0112500203024	2016-12-18 17:21:20.641439	2016-12-18 17:21:20.641439
7255	ANITECH HEADPHONE PINK หูฟัง สีชมพู AK58	https://www.tvdirect.tv/anitech-headphone-ak58-pink	339	0112500203031	2016-12-18 17:21:24.14617	2016-12-18 17:21:24.14617
7256	ANITECH HEADPHONE BLACK หูฟัง สีดำ AK58	https://www.tvdirect.tv/anitech-headphone-ak58-black	339	0112500203048	2016-12-18 17:21:25.085043	2016-12-18 17:21:25.085043
7257	ANITECH HEADPHONE หูฟัง AK72	https://www.tvdirect.tv/anitech-headphone-ak72	399	0112500203055	2016-12-18 17:21:26.021469	2016-12-18 17:21:26.021469
7258	ANITECH HEADPHONE GREY หูฟัง สีเทา AK73	https://www.tvdirect.tv/anitech-headphone-ak73-grey	299	0112500203079	2016-12-18 17:21:27.000397	2016-12-18 17:21:27.000397
7259	ANITECH HEADPHONE GREEN หูฟัง สีเขียว AK73	https://www.tvdirect.tv/anitech-headphone-ak73-green	299	0112500203062	2016-12-18 17:21:27.960795	2016-12-18 17:21:27.960795
7260	REMAX SPK BLUETOOTH RB - M5 BLUE ลำโพงบลูทูธ	https://www.tvdirect.tv/remax-spk-bluetooth-rb-m5-blue	749	0112500202645	2016-12-18 17:21:31.373566	2016-12-18 17:21:31.373566
7261	INTEX Swimming Pool สระสวนสนุกเป่าลม-สไลเดอร์ฮิปโป 57150	https://www.tvdirect.tv/intex-swimming-pool-57150	1390	0111400203097	2016-12-18 17:22:20.351061	2016-12-18 17:22:20.351061
7262	INTEX Swimming Pool สระสวนสนุกเป่าลม-สไลเดอร์ KITTY 57137	https://www.tvdirect.tv/intex-swimming-pool-kitty-57137	1590	0111400203103	2016-12-18 17:22:21.24253	2016-12-18 17:22:21.24253
7263	BIBISWIM BABY SWIM GREEN สระว่ายน้ำและห่วงยางคอ รุ่นBB-EP-02 สีเขียว	https://www.tvdirect.tv/bibiswim-baby-swim-green-bb-ep-02	1690	0112600200725	2016-12-18 17:22:22.137197	2016-12-18 17:22:22.137197
7264	BIBISWIM BABY SWIM PINK สระว่ายน้ำและห่วงยางคอ รุ่นBB-BR-02 สีชมพู	https://www.tvdirect.tv/bibiswim-baby-swim-pink-bb-br-02	1390	0112600200701	2016-12-18 17:22:22.971618	2016-12-18 17:22:22.971618
7265	INTEX Easy Set Inflatable Pool Sky Blue 6 Ft สระน้ำเป่าลม EASY6 มาพร้อมที่สูบลม 6 ฟุต สีฟ้าน้ำทะเล	https://www.tvdirect.tv/intex-easy-set-inflatable-pool-sky-blue-6-ft-easy6-6	1050	0111400203110	2016-12-18 17:22:23.812483	2016-12-18 17:22:23.812483
7266	INTEX Easy Set Inflatable Pool 8 Ft Blue สระน้ำเป่าลม EASY8 มาพร้อมที่สูบลม 8ฟุต สีฟ้า	https://www.tvdirect.tv/intex-easy-set-inflatable-pool-8-ft-blue-easy8-8	1620	0111400203127	2016-12-18 17:22:24.846807	2016-12-18 17:22:24.846807
7267	INTEX Easy Set Inflatable Pool 10 Ft Blue สระน้ำเป่าลม EASY10 มาพร้อมที่สูบลม 10 ฟุต ลายปลา	https://www.tvdirect.tv/intex-easy-set-inflatable-pool-10-ft-blue-easy10-10	2815	0111400203134	2016-12-18 17:22:25.743823	2016-12-18 17:22:25.743823
7268	INTEX Inflatable Pool Beach Wave Blue สระน้ำเป่าลม ทรงคลื่น มาพร้อมที่สูบลม สีฟ้า	https://www.tvdirect.tv/intex-inflatable-pool-beach-wave-blue	1695	0112600200756	2016-12-18 17:22:26.649603	2016-12-18 17:22:26.649603
7269	INTEX Fantasy inflatable water park Blue สวนน้ำสไลเดอร์แฟนตาซี มาพร้อมที่สูบลม สีฟ้า	https://www.tvdirect.tv/intex-fantasy-inflatable-water-park-blue	1990	0111400203141	2016-12-18 17:22:27.574211	2016-12-18 17:22:27.574211
7270	INTEX Inflatable ball home Blue บ้านบอลแมจิเคิล มาพร้อมที่สูบลม สีฟ้า	https://www.tvdirect.tv/intex-inflatable-ball-home-blue	1050	0111400203158	2016-12-18 17:22:28.525881	2016-12-18 17:22:28.525881
7271	INTEX Baby Yim Yellow ยิมหนูน้อยซอฟไซด์ มาพร้อมที่สูบลม สีเหลือง	https://www.tvdirect.tv/intex-baby-yim-yellow	1050	0111400203165	2016-12-18 17:22:29.450236	2016-12-18 17:22:29.450236
7272	MODERN CARE เก้าอี้โยกรุ่นทอยส์ - สีชมพู ตัวเบาะลายจุดพาสเทล (RK0116)	https://www.tvdirect.tv/modern-care-rk0116	1890	0112600200206	2016-12-18 17:22:32.086001	2016-12-18 17:22:32.086001
7273	MODERN CARE รถหัดเดิน 2-in-1 สีฟ้า (WK3011)	https://www.tvdirect.tv/modern-care-wk3011	1390	0112600200213	2016-12-18 17:22:33.042207	2016-12-18 17:22:33.042207
7274	MODERN CARE รถหัดเดิน 2-in-1 สีชมพู (WK3026)	https://www.tvdirect.tv/modern-care-wk3026	1390	0112600200220	2016-12-18 17:22:33.875914	2016-12-18 17:22:33.875914
7275	MODERN CARE รถหัดเดิน 2-in-1 สีเขียว (WK3034)	https://www.tvdirect.tv/modern-care-wk3034	1390	0112600200237	2016-12-18 17:22:34.764438	2016-12-18 17:22:34.764438
7276	MODERN CARE รถหัดเดิน เจ้าปลาน้อย - สีชมพู (WK3046)	https://www.tvdirect.tv/modern-care-wk3046	990	0112600200244	2016-12-18 17:22:35.713709	2016-12-18 17:22:35.713709
7277	MODERN CARE รถหัดเดิน เจ้าปลาน้อย - สีฟ้า  (WK3051)	https://www.tvdirect.tv/modern-care-wk3051	990	0112600200251	2016-12-18 17:22:36.789151	2016-12-18 17:22:36.789151
7278	MODERN CARE รถหัดเดิน ดีลักซ์ 4-in-1 สีชมพู (WK3076)	https://www.tvdirect.tv/modern-care-4in1-wk3076	2490	0112600200268	2016-12-18 17:22:37.714828	2016-12-18 17:22:37.714828
7279	MODERN CARE รถหัดเดิน รุ่นบัดเจ็ท - สีชมพู (WK3146)	https://www.tvdirect.tv/modern-care-wk3146	550	0112600200275	2016-12-18 17:22:38.577767	2016-12-18 17:22:38.577767
7280	MODERN CARE รถหัดเดิน รุ่นบัดเจ็ท - สีเขียว (WK3151)	https://www.tvdirect.tv/modern-care-wk3164	550	0112600200282	2016-12-18 17:22:39.4438	2016-12-18 17:22:39.4438
7281	MODERN CARE รถหัดเดิน รุ่นบัดเจ็ท - สีส้ม (WK3164)	https://www.tvdirect.tv/modern-care-wk3175	550	0112600200299	2016-12-18 17:22:40.293961	2016-12-18 17:22:40.293961
7282	MODERN CARE รถหัดเดิน รุ่นบัดเจ็ท - สีฟ้า (WK3175)	https://www.tvdirect.tv/modern-care-wk3151	550	0112600200305	2016-12-18 17:22:41.168471	2016-12-18 17:22:41.168471
7283	MODERN CARE เครื่องนึ่งขวดนม - สีฟ้า (SZ4061)	https://www.tvdirect.tv/modern-care-sz4061	1190	0112600200312	2016-12-18 17:22:42.088864	2016-12-18 17:22:42.088864
7284	MODERN CARE เครื่องนึ่งขวดนม - สีเขียว (SZ4054)	https://www.tvdirect.tv/modern-care-sz4054	1190	0112600200329	2016-12-18 17:22:43.032796	2016-12-18 17:22:43.032796
7285	MODERN CARE เครื่องนึ่งขวดนมดิจิตอลSZ4071-ฟ้า	https://www.tvdirect.tv/modern-care-sz4071	1590	0112600200336	2016-12-18 17:22:43.882265	2016-12-18 17:22:43.882265
7286	MODERN CAREเครื่องนึ่งขวดนมดิจิตอลSZ4086-ชมพู	https://www.tvdirect.tv/modern-care-sz4086	1590	0112600200343	2016-12-18 17:22:44.710156	2016-12-18 17:22:44.710156
7287	MODERN CAREเครื่องนึ่งพร้อมอบแห้งSZ4041 -ฟ้า	https://www.tvdirect.tv/modern-care-sz4041	2790	0112600200350	2016-12-18 17:22:45.531299	2016-12-18 17:22:45.531299
7288	MODERN CARE รถเข็นเด็กมินิ SL5021-ฟ้า	https://www.tvdirect.tv/modern-care-sl5021	1290	0112600200367	2016-12-18 17:22:46.459495	2016-12-18 17:22:46.459495
7289	MODERN CARE รถเข็นเด็กมินิ SL5017-แดง	https://www.tvdirect.tv/modern-care-sl5017	1290	0112600200374	2016-12-18 17:22:47.327168	2016-12-18 17:22:47.327168
7290	MODERN CARE รถเข็นเด็กมินิทู SL5064 -เขียว	https://www.tvdirect.tv/modern-care-sl5064	1390	0112600200381	2016-12-18 17:22:48.266698	2016-12-18 17:22:48.266698
7291	MODERN CARE รถเข็นเด็กมินิทู SL5057 -แดง	https://www.tvdirect.tv/modern-care-sl5057	1390	0112600200398	2016-12-18 17:22:49.124571	2016-12-18 17:22:49.124571
7292	MODERN CARE รถเข็นเด็กแม๊กซี่ SL5077-แดง	https://www.tvdirect.tv/modern-care-sl5077	1990	0112600200404	2016-12-18 17:22:54.423997	2016-12-18 17:22:54.423997
7293	MODERN CARE รถเข็นเด็กแม๊กซี่ SL5081-ฟ้า	https://www.tvdirect.tv/modern-care-sl5081	1990	0112600200411	2016-12-18 17:22:55.655152	2016-12-18 17:22:55.655152
7294	MODERN CARE รถเข็นเด็ก แฮนดี้ Full Canopy SL5097 -แดง	https://www.tvdirect.tv/modern-care-sl5097	1350	0112600200428	2016-12-18 17:22:56.551303	2016-12-18 17:22:56.551303
7295	MODERN CARE รถเข็นเด็ก แฮนดี้ Full Canopy SL5101 -ฟ้า	https://www.tvdirect.tv/modern-care-sl5101	1350	0112600200435	2016-12-18 17:22:57.402274	2016-12-18 17:22:57.402274
7296	MODERN CARE กระโถนฝึกเด็ก3in1 PT8019 -ม่วง	https://www.tvdirect.tv/modern-care-3in1-pt8019	690	0112600200480	2016-12-18 17:22:58.264327	2016-12-18 17:22:58.264327
7297	MODERN CARE ที่ปั้มนมก้านโยก MP9010 -ขาว	https://www.tvdirect.tv/modern-care-mp9010	550	0112600200497	2016-12-18 17:22:59.093112	2016-12-18 17:22:59.093112
7298	MODERN CARE เครื่องปั้มนมไฟฟ้า EP0902 -ฟ้า	https://www.tvdirect.tv/modern-care-ep-0902	1990	0112600200503	2016-12-18 17:23:00.020549	2016-12-18 17:23:00.020549
7299	MODERN CARE เครื่องปั้มนมไฟฟ้า EP0904 -ขาว	https://www.tvdirect.tv/modern-care-ep-0904	1990	0112600200510	2016-12-18 17:23:00.934274	2016-12-18 17:23:00.934274
7300	BIBISWIM BABY SWIM BLUEสระว่ายน้ำและห่วงยางคอ รุ่นBB-PD-02 สีฟ้า	https://www.tvdirect.tv/bibiswim-baby-swim-blue-bb-pd-02	1690	0112600200718	2016-12-18 17:23:02.062534	2016-12-18 17:23:02.062534
7301	OONEW 5 in1 multi-function baby food cooker ที่นึ่งปั่นอาหารเด็ก	https://www.tvdirect.tv/oonew-5-in1-multi-function-baby-food-cooker	4390	0112400222561	2016-12-18 17:23:10.018409	2016-12-18 17:23:10.018409
7302	Hun Hun เตียงไม้เด็ก ลายหมีสีฟ้า ฟรีชุดเครื่องนอน	https://www.tvdirect.tv/hun-hun-3076	5900	0112600200530	2016-12-18 17:23:13.731852	2016-12-18 17:23:13.731852
7303	MAMYPOKO Tape Extra Dry Size S ผ้าอ้อมสำเร็จรูปแบบเทป ไซส์ S 76 ชิ้น X 3 แพ็ค	https://www.tvdirect.tv/mamypoko-tape-extra-dry-super-jumbo-s-76-x-3	1650	0112600300025	2016-12-18 17:23:14.586413	2016-12-18 17:23:14.586413
7304	MICKEY MOUSE Backpack Bag กระเป๋าเป้ 16นิ้ว MFK-61895	https://www.tvdirect.tv/mickey-mouse-backpack-bag-16-mfk-61895	795	0110200206796	2016-12-18 17:23:15.493558	2016-12-18 17:23:15.493558
7305	MINNIE MOUSE Backpack Bag กระเป๋าเป้ 11นิ้ว MFK-62022	https://www.tvdirect.tv/minnie-mouse-backpack-bag-11-mfk-62022	445	0110200206802	2016-12-18 17:23:16.416271	2016-12-18 17:23:16.416271
7306	MINNIE MOUSE Trolley กระเป๋าล้อลาก 13นิ้ว MFK-62025	https://www.tvdirect.tv/minnie-mouse-trolley-13-mfk-62025	995	0110200206819	2016-12-18 17:23:17.28408	2016-12-18 17:23:17.28408
7307	MICKEY MOUSE Backpack Bag กระเป๋าเป้ 13นิ้ว MFK-61867	https://www.tvdirect.tv/mickey-mouse-backpack-bag-13-mfk-61867	445	0110200206826	2016-12-18 17:23:18.114501	2016-12-18 17:23:18.114501
7308	MINNIE MOUSE Backpack Bag กระเป๋าเป้ 13นิ้ว MFK-61868	https://www.tvdirect.tv/minnie-mouse-backpack-bag-13-mfk-61868	445	0110200206833	2016-12-18 17:23:18.947869	2016-12-18 17:23:18.947869
7309	Tutor Pen ปากกาอัจฉริยะ แถมฟรี! นิทานคลาสสิค แผ่นดนตรี การ์ดคำศัพท์	https://www.tvdirect.tv/tutor-pen	2990	0111300201056	2016-12-18 17:23:21.883628	2016-12-18 17:23:21.883628
7310	MAMYPOKO Pants Extra Soft Girls Size XXL ผ้าอ้อมสำเร็จรูปแบบกางเกง ไซส์ XXL 38 ชิ้น X 3 แพ็ค	https://www.tvdirect.tv/mamypoko-pants-extra-soft-girls-super-jumbo-xxl-38-x-3	1450	0112600300146	2016-12-18 17:23:22.714784	2016-12-18 17:23:22.714784
7311	MAMYPOKO Pants Extra Soft Boys Size L ผ้าอ้อมสำเร็จรูปแบบกางเกง ไซส์ L 52 ชิ้น X 3 แพ็ค	https://www.tvdirect.tv/mamypoko-pants-extra-soft-boys-super-jumbo-l-52-x-3	1450	0112600300087	2016-12-18 17:23:23.61071	2016-12-18 17:23:23.61071
7312	SLIM'N LIFT INFUSED  กางเกงกระชับสัดส่วนและลดเซลลูไลท์	https://www.tvdirect.tv/slim-n-lift-infused	990	SLIM N LIFT INFUSED	2016-12-18 17:24:01.790953	2016-12-18 17:24:01.790953
\.


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('products_id_seq', 7312, true);


--
-- Data for Name: relations; Type: TABLE DATA; Schema: public; Owner: user
--

COPY relations (id, product_id, category_id, created_at, updated_at) FROM stdin;
16281	5736	1889	2016-12-18 16:46:04.445033	2016-12-18 16:46:04.445033
16282	5737	1889	2016-12-18 16:46:05.731718	2016-12-18 16:46:05.731718
16283	5738	1889	2016-12-18 16:46:06.992353	2016-12-18 16:46:06.992353
16284	5739	1889	2016-12-18 16:46:08.235569	2016-12-18 16:46:08.235569
16285	5740	1889	2016-12-18 16:46:09.059605	2016-12-18 16:46:09.059605
16286	5741	1889	2016-12-18 16:46:09.863995	2016-12-18 16:46:09.863995
16287	5742	1889	2016-12-18 16:46:10.762034	2016-12-18 16:46:10.762034
16288	5743	1889	2016-12-18 16:46:11.559472	2016-12-18 16:46:11.559472
16289	5744	1889	2016-12-18 16:46:12.356328	2016-12-18 16:46:12.356328
16290	5745	1889	2016-12-18 16:46:13.222789	2016-12-18 16:46:13.222789
16291	5746	1889	2016-12-18 16:46:14.019937	2016-12-18 16:46:14.019937
16292	5747	1889	2016-12-18 16:46:14.83287	2016-12-18 16:46:14.83287
16293	5748	1889	2016-12-18 16:46:15.750053	2016-12-18 16:46:15.750053
16294	5749	1889	2016-12-18 16:46:16.550932	2016-12-18 16:46:16.550932
16295	5750	1889	2016-12-18 16:46:17.346571	2016-12-18 16:46:17.346571
16296	5751	1889	2016-12-18 16:46:18.150349	2016-12-18 16:46:18.150349
16297	5752	1889	2016-12-18 16:46:18.944011	2016-12-18 16:46:18.944011
16298	5753	1889	2016-12-18 16:46:19.757282	2016-12-18 16:46:19.757282
16299	5754	1889	2016-12-18 16:46:20.518446	2016-12-18 16:46:20.518446
16300	5755	1889	2016-12-18 16:46:21.370962	2016-12-18 16:46:21.370962
16301	5756	1889	2016-12-18 16:46:22.839234	2016-12-18 16:46:22.839234
16302	5757	1889	2016-12-18 16:46:23.718948	2016-12-18 16:46:23.718948
16303	5758	1889	2016-12-18 16:46:24.500518	2016-12-18 16:46:24.500518
16304	5759	1889	2016-12-18 16:46:25.856304	2016-12-18 16:46:25.856304
16305	5760	1889	2016-12-18 16:46:26.684343	2016-12-18 16:46:26.684343
16306	5761	1889	2016-12-18 16:46:27.462678	2016-12-18 16:46:27.462678
16307	5762	1889	2016-12-18 16:46:28.333194	2016-12-18 16:46:28.333194
16308	5763	1889	2016-12-18 16:46:29.12401	2016-12-18 16:46:29.12401
16309	5764	1889	2016-12-18 16:46:29.850363	2016-12-18 16:46:29.850363
16310	5765	1889	2016-12-18 16:46:30.691518	2016-12-18 16:46:30.691518
16311	5766	1889	2016-12-18 16:46:31.480305	2016-12-18 16:46:31.480305
16312	5767	1889	2016-12-18 16:46:32.18568	2016-12-18 16:46:32.18568
16313	5768	1889	2016-12-18 16:46:32.9434	2016-12-18 16:46:32.9434
16314	5769	1889	2016-12-18 16:46:33.768286	2016-12-18 16:46:33.768286
16315	5770	1889	2016-12-18 16:46:34.564549	2016-12-18 16:46:34.564549
16316	5771	1889	2016-12-18 16:46:35.341536	2016-12-18 16:46:35.341536
16317	5772	1889	2016-12-18 16:46:36.103077	2016-12-18 16:46:36.103077
16318	5773	1889	2016-12-18 16:46:36.916257	2016-12-18 16:46:36.916257
16319	5774	1889	2016-12-18 16:46:37.700938	2016-12-18 16:46:37.700938
16320	5775	1889	2016-12-18 16:46:38.47853	2016-12-18 16:46:38.47853
16321	5776	1889	2016-12-18 16:46:39.912157	2016-12-18 16:46:39.912157
16322	5777	1889	2016-12-18 16:46:40.70307	2016-12-18 16:46:40.70307
16323	5778	1889	2016-12-18 16:46:41.440585	2016-12-18 16:46:41.440585
16324	5779	1889	2016-12-18 16:46:42.302361	2016-12-18 16:46:42.302361
16325	5780	1889	2016-12-18 16:46:43.018546	2016-12-18 16:46:43.018546
16326	5781	1889	2016-12-18 16:46:43.772554	2016-12-18 16:46:43.772554
16327	5782	1889	2016-12-18 16:46:44.522711	2016-12-18 16:46:44.522711
16328	5783	1889	2016-12-18 16:46:45.346696	2016-12-18 16:46:45.346696
16329	5784	1889	2016-12-18 16:46:46.139277	2016-12-18 16:46:46.139277
16330	5785	1889	2016-12-18 16:46:46.888105	2016-12-18 16:46:46.888105
16331	5786	1889	2016-12-18 16:46:47.834	2016-12-18 16:46:47.834
16332	5787	1889	2016-12-18 16:46:48.72972	2016-12-18 16:46:48.72972
16333	5788	1889	2016-12-18 16:46:49.531905	2016-12-18 16:46:49.531905
16334	5789	1889	2016-12-18 16:46:50.249767	2016-12-18 16:46:50.249767
16335	5790	1889	2016-12-18 16:46:51.070838	2016-12-18 16:46:51.070838
16336	5791	1889	2016-12-18 16:46:51.930476	2016-12-18 16:46:51.930476
16337	5792	1889	2016-12-18 16:46:52.688375	2016-12-18 16:46:52.688375
16338	5793	1889	2016-12-18 16:46:53.470623	2016-12-18 16:46:53.470623
16339	5794	1889	2016-12-18 16:46:54.203302	2016-12-18 16:46:54.203302
16340	5795	1889	2016-12-18 16:46:55.05474	2016-12-18 16:46:55.05474
16341	5796	1889	2016-12-18 16:46:56.605673	2016-12-18 16:46:56.605673
16342	5797	1889	2016-12-18 16:46:57.388456	2016-12-18 16:46:57.388456
16343	5798	1889	2016-12-18 16:46:58.22358	2016-12-18 16:46:58.22358
16344	5799	1889	2016-12-18 16:46:59.064136	2016-12-18 16:46:59.064136
16345	5800	1889	2016-12-18 16:46:59.975811	2016-12-18 16:46:59.975811
16346	5801	1889	2016-12-18 16:47:00.899801	2016-12-18 16:47:00.899801
16347	5802	1889	2016-12-18 16:47:01.734739	2016-12-18 16:47:01.734739
16348	5803	1889	2016-12-18 16:47:02.4859	2016-12-18 16:47:02.4859
16349	5804	1889	2016-12-18 16:47:03.308134	2016-12-18 16:47:03.308134
16350	5805	1889	2016-12-18 16:47:04.160229	2016-12-18 16:47:04.160229
16351	5806	1889	2016-12-18 16:47:05.03677	2016-12-18 16:47:05.03677
16352	5807	1889	2016-12-18 16:47:05.817888	2016-12-18 16:47:05.817888
16353	5808	1889	2016-12-18 16:47:06.624531	2016-12-18 16:47:06.624531
16354	5809	1889	2016-12-18 16:47:07.403131	2016-12-18 16:47:07.403131
16355	5810	1889	2016-12-18 16:47:08.295895	2016-12-18 16:47:08.295895
16356	5811	1889	2016-12-18 16:47:09.159648	2016-12-18 16:47:09.159648
16357	5812	1889	2016-12-18 16:47:10.044634	2016-12-18 16:47:10.044634
16358	5813	1889	2016-12-18 16:47:10.869677	2016-12-18 16:47:10.869677
16359	5814	1889	2016-12-18 16:47:11.651818	2016-12-18 16:47:11.651818
16360	5815	1889	2016-12-18 16:47:12.421957	2016-12-18 16:47:12.421957
16361	5816	1889	2016-12-18 16:47:13.929562	2016-12-18 16:47:13.929562
16362	5817	1889	2016-12-18 16:47:14.725767	2016-12-18 16:47:14.725767
16363	5818	1889	2016-12-18 16:47:15.49532	2016-12-18 16:47:15.49532
16364	5819	1889	2016-12-18 16:47:16.372825	2016-12-18 16:47:16.372825
16365	5820	1889	2016-12-18 16:47:17.165895	2016-12-18 16:47:17.165895
16366	5821	1889	2016-12-18 16:47:17.969209	2016-12-18 16:47:17.969209
16367	5822	1889	2016-12-18 16:47:19.833042	2016-12-18 16:47:19.833042
16368	5823	1889	2016-12-18 16:47:20.656888	2016-12-18 16:47:20.656888
16369	5824	1889	2016-12-18 16:47:21.437232	2016-12-18 16:47:21.437232
16370	5825	1889	2016-12-18 16:47:22.2509	2016-12-18 16:47:22.2509
16371	5826	1889	2016-12-18 16:47:23.066732	2016-12-18 16:47:23.066732
16372	5827	1889	2016-12-18 16:47:23.880052	2016-12-18 16:47:23.880052
16373	5828	1889	2016-12-18 16:47:24.686461	2016-12-18 16:47:24.686461
16374	5829	1889	2016-12-18 16:47:25.618583	2016-12-18 16:47:25.618583
16375	5830	1889	2016-12-18 16:47:28.327495	2016-12-18 16:47:28.327495
16376	5831	1889	2016-12-18 16:47:29.471009	2016-12-18 16:47:29.471009
16377	5832	1889	2016-12-18 16:47:30.663215	2016-12-18 16:47:30.663215
16378	5833	1889	2016-12-18 16:47:31.871413	2016-12-18 16:47:31.871413
16379	5834	1889	2016-12-18 16:47:33.084768	2016-12-18 16:47:33.084768
16380	5835	1889	2016-12-18 16:47:34.31048	2016-12-18 16:47:34.31048
16381	5836	1889	2016-12-18 16:47:35.793674	2016-12-18 16:47:35.793674
16382	5837	1889	2016-12-18 16:47:36.627145	2016-12-18 16:47:36.627145
16383	5838	1889	2016-12-18 16:47:37.440435	2016-12-18 16:47:37.440435
16384	5839	1889	2016-12-18 16:47:38.233078	2016-12-18 16:47:38.233078
16385	5840	1889	2016-12-18 16:47:38.951931	2016-12-18 16:47:38.951931
16386	5841	1889	2016-12-18 16:47:39.763826	2016-12-18 16:47:39.763826
16387	5842	1889	2016-12-18 16:47:40.599206	2016-12-18 16:47:40.599206
16388	5843	1889	2016-12-18 16:47:41.898712	2016-12-18 16:47:41.898712
16389	5844	1889	2016-12-18 16:47:42.701636	2016-12-18 16:47:42.701636
16390	5845	1889	2016-12-18 16:47:43.472319	2016-12-18 16:47:43.472319
16391	5846	1889	2016-12-18 16:47:44.232691	2016-12-18 16:47:44.232691
16392	5847	1889	2016-12-18 16:47:45.003376	2016-12-18 16:47:45.003376
16393	5848	1889	2016-12-18 16:47:45.871255	2016-12-18 16:47:45.871255
16394	5849	1889	2016-12-18 16:47:46.729904	2016-12-18 16:47:46.729904
16395	5850	1889	2016-12-18 16:47:47.521532	2016-12-18 16:47:47.521532
16396	5851	1889	2016-12-18 16:47:48.240657	2016-12-18 16:47:48.240657
16397	5852	1889	2016-12-18 16:47:49.063424	2016-12-18 16:47:49.063424
16398	5853	1889	2016-12-18 16:47:49.843907	2016-12-18 16:47:49.843907
16399	5854	1889	2016-12-18 16:47:50.702706	2016-12-18 16:47:50.702706
16400	5855	1889	2016-12-18 16:47:51.518268	2016-12-18 16:47:51.518268
16401	5856	1889	2016-12-18 16:47:52.926139	2016-12-18 16:47:52.926139
16402	5857	1889	2016-12-18 16:47:53.70743	2016-12-18 16:47:53.70743
16403	5858	1889	2016-12-18 16:47:54.480476	2016-12-18 16:47:54.480476
16404	5859	1889	2016-12-18 16:47:55.259855	2016-12-18 16:47:55.259855
16405	5860	1889	2016-12-18 16:47:56.031028	2016-12-18 16:47:56.031028
16406	5861	1889	2016-12-18 16:47:56.834169	2016-12-18 16:47:56.834169
16407	5862	1889	2016-12-18 16:47:57.592669	2016-12-18 16:47:57.592669
16408	5863	1889	2016-12-18 16:47:58.379693	2016-12-18 16:47:58.379693
16409	5864	1889	2016-12-18 16:47:59.079484	2016-12-18 16:47:59.079484
16410	5865	1889	2016-12-18 16:47:59.848916	2016-12-18 16:47:59.848916
16411	5866	1889	2016-12-18 16:48:00.712229	2016-12-18 16:48:00.712229
16412	5867	1889	2016-12-18 16:48:01.479214	2016-12-18 16:48:01.479214
16413	5868	1889	2016-12-18 16:48:02.37157	2016-12-18 16:48:02.37157
16414	5869	1889	2016-12-18 16:48:03.164457	2016-12-18 16:48:03.164457
16415	5870	1889	2016-12-18 16:48:03.887337	2016-12-18 16:48:03.887337
16416	5871	1889	2016-12-18 16:48:04.714765	2016-12-18 16:48:04.714765
16417	5872	1889	2016-12-18 16:48:05.543492	2016-12-18 16:48:05.543492
16418	5873	1889	2016-12-18 16:48:06.331238	2016-12-18 16:48:06.331238
16419	5874	1889	2016-12-18 16:48:07.125453	2016-12-18 16:48:07.125453
16420	5875	1889	2016-12-18 16:48:07.865992	2016-12-18 16:48:07.865992
16421	5876	1889	2016-12-18 16:48:09.343371	2016-12-18 16:48:09.343371
16422	5877	1889	2016-12-18 16:48:10.096385	2016-12-18 16:48:10.096385
16423	5878	1889	2016-12-18 16:48:10.844392	2016-12-18 16:48:10.844392
16424	5879	1889	2016-12-18 16:48:11.59281	2016-12-18 16:48:11.59281
16425	5880	1889	2016-12-18 16:48:12.374374	2016-12-18 16:48:12.374374
16426	5881	1889	2016-12-18 16:48:13.145103	2016-12-18 16:48:13.145103
16427	5882	1889	2016-12-18 16:48:13.904859	2016-12-18 16:48:13.904859
16428	5883	1889	2016-12-18 16:48:14.655805	2016-12-18 16:48:14.655805
16429	5884	1889	2016-12-18 16:48:15.467883	2016-12-18 16:48:15.467883
16430	5885	1889	2016-12-18 16:48:16.471383	2016-12-18 16:48:16.471383
16431	5886	1889	2016-12-18 16:48:17.338255	2016-12-18 16:48:17.338255
16432	5887	1889	2016-12-18 16:48:18.121525	2016-12-18 16:48:18.121525
16433	5888	1889	2016-12-18 16:48:18.978126	2016-12-18 16:48:18.978126
16434	5889	1889	2016-12-18 16:48:19.811894	2016-12-18 16:48:19.811894
16435	5890	1889	2016-12-18 16:48:20.683978	2016-12-18 16:48:20.683978
16436	5891	1889	2016-12-18 16:48:21.454298	2016-12-18 16:48:21.454298
16437	5892	1889	2016-12-18 16:48:22.264074	2016-12-18 16:48:22.264074
16438	5893	1889	2016-12-18 16:48:23.084652	2016-12-18 16:48:23.084652
16439	5894	1889	2016-12-18 16:48:23.898281	2016-12-18 16:48:23.898281
16440	5895	1889	2016-12-18 16:48:24.734037	2016-12-18 16:48:24.734037
16441	5896	1889	2016-12-18 16:48:26.171599	2016-12-18 16:48:26.171599
16442	5897	1889	2016-12-18 16:48:27.002221	2016-12-18 16:48:27.002221
16443	5898	1889	2016-12-18 16:48:27.859951	2016-12-18 16:48:27.859951
16444	5899	1889	2016-12-18 16:48:28.651991	2016-12-18 16:48:28.651991
16445	5900	1889	2016-12-18 16:48:29.45935	2016-12-18 16:48:29.45935
16446	5901	1889	2016-12-18 16:48:30.304409	2016-12-18 16:48:30.304409
16447	5902	1889	2016-12-18 16:48:31.152019	2016-12-18 16:48:31.152019
16448	5903	1889	2016-12-18 16:48:32.076291	2016-12-18 16:48:32.076291
16449	5904	1889	2016-12-18 16:48:32.913897	2016-12-18 16:48:32.913897
16450	5905	1889	2016-12-18 16:48:33.769781	2016-12-18 16:48:33.769781
16451	5906	1889	2016-12-18 16:48:34.552774	2016-12-18 16:48:34.552774
16452	5907	1889	2016-12-18 16:48:35.40256	2016-12-18 16:48:35.40256
16453	5908	1889	2016-12-18 16:48:36.231736	2016-12-18 16:48:36.231736
16454	5909	1889	2016-12-18 16:48:37.030142	2016-12-18 16:48:37.030142
16455	5910	1889	2016-12-18 16:48:37.891634	2016-12-18 16:48:37.891634
16456	5911	1889	2016-12-18 16:48:38.835788	2016-12-18 16:48:38.835788
16457	5912	1889	2016-12-18 16:48:39.69259	2016-12-18 16:48:39.69259
16458	5913	1889	2016-12-18 16:48:40.484196	2016-12-18 16:48:40.484196
16459	5914	1889	2016-12-18 16:48:41.302074	2016-12-18 16:48:41.302074
16460	5915	1889	2016-12-18 16:48:42.100714	2016-12-18 16:48:42.100714
16461	5916	1889	2016-12-18 16:48:43.591976	2016-12-18 16:48:43.591976
16462	5917	1889	2016-12-18 16:48:44.38477	2016-12-18 16:48:44.38477
16463	5918	1889	2016-12-18 16:48:45.184389	2016-12-18 16:48:45.184389
16464	5919	1889	2016-12-18 16:48:46.185502	2016-12-18 16:48:46.185502
16465	5920	1889	2016-12-18 16:48:46.991262	2016-12-18 16:48:46.991262
16466	5921	1889	2016-12-18 16:48:47.803537	2016-12-18 16:48:47.803537
16467	5922	1889	2016-12-18 16:48:48.617539	2016-12-18 16:48:48.617539
16468	5923	1889	2016-12-18 16:48:49.387906	2016-12-18 16:48:49.387906
16469	5924	1889	2016-12-18 16:48:50.170242	2016-12-18 16:48:50.170242
16470	5925	1889	2016-12-18 16:48:52.893923	2016-12-18 16:48:52.893923
16471	5926	1889	2016-12-18 16:48:54.144127	2016-12-18 16:48:54.144127
16472	5927	1889	2016-12-18 16:48:55.29843	2016-12-18 16:48:55.29843
16473	5928	1889	2016-12-18 16:48:56.443445	2016-12-18 16:48:56.443445
16474	5929	1889	2016-12-18 16:48:57.588664	2016-12-18 16:48:57.588664
16475	5930	1889	2016-12-18 16:48:58.449234	2016-12-18 16:48:58.449234
16476	5931	1889	2016-12-18 16:48:59.295323	2016-12-18 16:48:59.295323
16477	5932	1889	2016-12-18 16:49:00.115388	2016-12-18 16:49:00.115388
16478	5933	1889	2016-12-18 16:49:01.32002	2016-12-18 16:49:01.32002
16479	5934	1889	2016-12-18 16:49:02.223436	2016-12-18 16:49:02.223436
16480	5935	1889	2016-12-18 16:49:03.080007	2016-12-18 16:49:03.080007
16481	5936	1889	2016-12-18 16:49:04.658019	2016-12-18 16:49:04.658019
16482	5937	1889	2016-12-18 16:49:05.523926	2016-12-18 16:49:05.523926
16483	5938	1889	2016-12-18 16:49:06.360824	2016-12-18 16:49:06.360824
16484	5939	1889	2016-12-18 16:49:07.081452	2016-12-18 16:49:07.081452
16485	5940	1889	2016-12-18 16:49:07.836238	2016-12-18 16:49:07.836238
16486	5941	1889	2016-12-18 16:49:08.651981	2016-12-18 16:49:08.651981
16487	5942	1889	2016-12-18 16:49:09.445461	2016-12-18 16:49:09.445461
16488	5943	1889	2016-12-18 16:49:10.35936	2016-12-18 16:49:10.35936
16489	5944	1889	2016-12-18 16:49:11.148021	2016-12-18 16:49:11.148021
16490	5945	1889	2016-12-18 16:49:12.062456	2016-12-18 16:49:12.062456
16491	5946	1889	2016-12-18 16:49:13.537287	2016-12-18 16:49:13.537287
16492	5947	1889	2016-12-18 16:49:14.351053	2016-12-18 16:49:14.351053
16493	5948	1889	2016-12-18 16:49:15.097996	2016-12-18 16:49:15.097996
16494	5949	1889	2016-12-18 16:49:15.946942	2016-12-18 16:49:15.946942
16495	5950	1889	2016-12-18 16:49:16.72808	2016-12-18 16:49:16.72808
16496	5951	1889	2016-12-18 16:49:17.542949	2016-12-18 16:49:17.542949
16497	5952	1889	2016-12-18 16:49:18.339547	2016-12-18 16:49:18.339547
16498	5953	1889	2016-12-18 16:49:19.138832	2016-12-18 16:49:19.138832
16499	5954	1889	2016-12-18 16:49:19.946209	2016-12-18 16:49:19.946209
16500	5955	1889	2016-12-18 16:49:20.739925	2016-12-18 16:49:20.739925
16501	5956	1889	2016-12-18 16:49:21.56064	2016-12-18 16:49:21.56064
16502	5957	1889	2016-12-18 16:49:22.387331	2016-12-18 16:49:22.387331
16503	5958	1889	2016-12-18 16:49:23.177485	2016-12-18 16:49:23.177485
16504	5959	1889	2016-12-18 16:49:23.955679	2016-12-18 16:49:23.955679
16505	5960	1889	2016-12-18 16:49:24.854605	2016-12-18 16:49:24.854605
16506	5961	1889	2016-12-18 16:49:25.720732	2016-12-18 16:49:25.720732
16507	5962	1889	2016-12-18 16:49:26.465605	2016-12-18 16:49:26.465605
16508	5963	1889	2016-12-18 16:49:27.318104	2016-12-18 16:49:27.318104
16509	5964	1889	2016-12-18 16:49:28.196876	2016-12-18 16:49:28.196876
16510	5965	1889	2016-12-18 16:49:28.918587	2016-12-18 16:49:28.918587
16511	5966	1889	2016-12-18 16:49:30.553755	2016-12-18 16:49:30.553755
16512	5967	1889	2016-12-18 16:49:31.465866	2016-12-18 16:49:31.465866
16513	5968	1889	2016-12-18 16:49:32.219751	2016-12-18 16:49:32.219751
16514	5969	1889	2016-12-18 16:49:34.08968	2016-12-18 16:49:34.08968
16515	5970	1889	2016-12-18 16:49:34.96669	2016-12-18 16:49:34.96669
16516	5971	1889	2016-12-18 16:49:35.714446	2016-12-18 16:49:35.714446
16517	5972	1889	2016-12-18 16:49:36.479822	2016-12-18 16:49:36.479822
16518	5973	1889	2016-12-18 16:49:37.266568	2016-12-18 16:49:37.266568
16519	5974	1889	2016-12-18 16:49:38.103676	2016-12-18 16:49:38.103676
16520	5975	1889	2016-12-18 16:49:38.91138	2016-12-18 16:49:38.91138
16521	5976	1889	2016-12-18 16:49:39.722028	2016-12-18 16:49:39.722028
16522	5977	1889	2016-12-18 16:49:40.523845	2016-12-18 16:49:40.523845
16523	5978	1889	2016-12-18 16:49:41.362737	2016-12-18 16:49:41.362737
16524	5979	1889	2016-12-18 16:49:42.127241	2016-12-18 16:49:42.127241
16525	5980	1889	2016-12-18 16:49:42.900078	2016-12-18 16:49:42.900078
16526	5981	1889	2016-12-18 16:49:43.770849	2016-12-18 16:49:43.770849
16527	5982	1889	2016-12-18 16:49:44.586194	2016-12-18 16:49:44.586194
16528	5983	1889	2016-12-18 16:49:45.487963	2016-12-18 16:49:45.487963
16529	5984	1889	2016-12-18 16:49:46.335045	2016-12-18 16:49:46.335045
16530	5985	1889	2016-12-18 16:49:47.18605	2016-12-18 16:49:47.18605
16531	5986	1889	2016-12-18 16:49:48.723226	2016-12-18 16:49:48.723226
16532	5987	1889	2016-12-18 16:49:49.50675	2016-12-18 16:49:49.50675
16533	5988	1889	2016-12-18 16:49:50.309034	2016-12-18 16:49:50.309034
16534	5989	1889	2016-12-18 16:49:51.145599	2016-12-18 16:49:51.145599
16535	5990	1889	2016-12-18 16:49:51.948881	2016-12-18 16:49:51.948881
16536	5991	1889	2016-12-18 16:49:52.766526	2016-12-18 16:49:52.766526
16537	5992	1889	2016-12-18 16:49:53.788942	2016-12-18 16:49:53.788942
16538	5993	1889	2016-12-18 16:49:54.604361	2016-12-18 16:49:54.604361
16539	5994	1889	2016-12-18 16:49:55.428022	2016-12-18 16:49:55.428022
16540	5995	1889	2016-12-18 16:49:56.218858	2016-12-18 16:49:56.218858
16541	5996	1889	2016-12-18 16:49:57.059589	2016-12-18 16:49:57.059589
16542	5997	1889	2016-12-18 16:49:57.861303	2016-12-18 16:49:57.861303
16543	5998	1889	2016-12-18 16:49:58.639172	2016-12-18 16:49:58.639172
16544	5999	1889	2016-12-18 16:49:59.397123	2016-12-18 16:49:59.397123
16545	6000	1889	2016-12-18 16:50:00.176902	2016-12-18 16:50:00.176902
16546	6001	1889	2016-12-18 16:50:00.972444	2016-12-18 16:50:00.972444
16547	6002	1889	2016-12-18 16:50:01.848988	2016-12-18 16:50:01.848988
16548	6003	1889	2016-12-18 16:50:02.831511	2016-12-18 16:50:02.831511
16549	6004	1889	2016-12-18 16:50:03.746843	2016-12-18 16:50:03.746843
16550	6005	1889	2016-12-18 16:50:05.56828	2016-12-18 16:50:05.56828
16551	6006	1889	2016-12-18 16:50:06.459598	2016-12-18 16:50:06.459598
16552	6007	1889	2016-12-18 16:50:07.396178	2016-12-18 16:50:07.396178
16553	6008	1889	2016-12-18 16:50:08.232416	2016-12-18 16:50:08.232416
16554	6009	1889	2016-12-18 16:50:09.144642	2016-12-18 16:50:09.144642
16555	6010	1889	2016-12-18 16:50:10.118369	2016-12-18 16:50:10.118369
16556	6011	1889	2016-12-18 16:50:11.037088	2016-12-18 16:50:11.037088
16557	6012	1889	2016-12-18 16:50:11.983977	2016-12-18 16:50:11.983977
16558	6013	1889	2016-12-18 16:50:12.809695	2016-12-18 16:50:12.809695
16559	6014	1889	2016-12-18 16:50:13.679489	2016-12-18 16:50:13.679489
16560	6015	1889	2016-12-18 16:50:14.452591	2016-12-18 16:50:14.452591
16561	6016	1889	2016-12-18 16:50:16.132704	2016-12-18 16:50:16.132704
16562	6017	1889	2016-12-18 16:50:16.976192	2016-12-18 16:50:16.976192
16563	6018	1889	2016-12-18 16:50:17.789325	2016-12-18 16:50:17.789325
16564	6019	1889	2016-12-18 16:50:21.003502	2016-12-18 16:50:21.003502
16565	6020	1889	2016-12-18 16:50:22.190665	2016-12-18 16:50:22.190665
16566	6021	1889	2016-12-18 16:50:23.545163	2016-12-18 16:50:23.545163
16567	6022	1889	2016-12-18 16:50:24.739261	2016-12-18 16:50:24.739261
16568	6023	1889	2016-12-18 16:50:25.962352	2016-12-18 16:50:25.962352
16569	6024	1889	2016-12-18 16:50:27.280185	2016-12-18 16:50:27.280185
16570	6025	1889	2016-12-18 16:50:28.128566	2016-12-18 16:50:28.128566
16571	6026	1889	2016-12-18 16:50:28.982524	2016-12-18 16:50:28.982524
16572	6027	1889	2016-12-18 16:50:29.911232	2016-12-18 16:50:29.911232
16573	6028	1889	2016-12-18 16:50:30.757726	2016-12-18 16:50:30.757726
16574	6029	1889	2016-12-18 16:50:31.642968	2016-12-18 16:50:31.642968
16575	6030	1889	2016-12-18 16:50:32.551513	2016-12-18 16:50:32.551513
16576	6031	1889	2016-12-18 16:50:33.409836	2016-12-18 16:50:33.409836
16577	6032	1889	2016-12-18 16:50:34.275549	2016-12-18 16:50:34.275549
16578	6033	1889	2016-12-18 16:50:35.171705	2016-12-18 16:50:35.171705
16579	6034	1889	2016-12-18 16:50:35.997702	2016-12-18 16:50:35.997702
16580	6035	1889	2016-12-18 16:50:36.83822	2016-12-18 16:50:36.83822
16581	6036	1889	2016-12-18 16:50:38.323112	2016-12-18 16:50:38.323112
16582	6037	1889	2016-12-18 16:50:39.240069	2016-12-18 16:50:39.240069
16583	6038	1889	2016-12-18 16:50:40.050025	2016-12-18 16:50:40.050025
16584	6039	1889	2016-12-18 16:50:40.891213	2016-12-18 16:50:40.891213
16585	6040	1889	2016-12-18 16:50:41.733873	2016-12-18 16:50:41.733873
16586	6041	1889	2016-12-18 16:50:42.609522	2016-12-18 16:50:42.609522
16587	6042	1889	2016-12-18 16:50:43.417735	2016-12-18 16:50:43.417735
16588	6043	1889	2016-12-18 16:50:44.221699	2016-12-18 16:50:44.221699
16589	6044	1889	2016-12-18 16:50:45.047409	2016-12-18 16:50:45.047409
16590	6045	1889	2016-12-18 16:50:45.85596	2016-12-18 16:50:45.85596
16591	6046	1889	2016-12-18 16:50:46.700663	2016-12-18 16:50:46.700663
16592	6047	1889	2016-12-18 16:50:47.589521	2016-12-18 16:50:47.589521
16593	6048	1889	2016-12-18 16:50:48.415698	2016-12-18 16:50:48.415698
16594	6049	1889	2016-12-18 16:50:49.251977	2016-12-18 16:50:49.251977
16595	6050	1889	2016-12-18 16:50:50.04356	2016-12-18 16:50:50.04356
16596	6051	1889	2016-12-18 16:50:51.117815	2016-12-18 16:50:51.117815
16597	6052	1889	2016-12-18 16:50:51.981265	2016-12-18 16:50:51.981265
16598	6053	1889	2016-12-18 16:50:52.733486	2016-12-18 16:50:52.733486
16599	6054	1889	2016-12-18 16:50:53.534113	2016-12-18 16:50:53.534113
16600	6055	1889	2016-12-18 16:50:54.348081	2016-12-18 16:50:54.348081
16601	6056	1889	2016-12-18 16:50:55.802381	2016-12-18 16:50:55.802381
16602	6057	1889	2016-12-18 16:50:56.573053	2016-12-18 16:50:56.573053
16603	6058	1889	2016-12-18 16:50:57.374639	2016-12-18 16:50:57.374639
16604	6059	1889	2016-12-18 16:50:58.178095	2016-12-18 16:50:58.178095
16605	6060	1889	2016-12-18 16:50:59.004254	2016-12-18 16:50:59.004254
16606	6061	1889	2016-12-18 16:50:59.788883	2016-12-18 16:50:59.788883
16607	6062	1889	2016-12-18 16:51:00.725228	2016-12-18 16:51:00.725228
16608	6063	1889	2016-12-18 16:51:01.582171	2016-12-18 16:51:01.582171
16609	6064	1889	2016-12-18 16:51:02.459489	2016-12-18 16:51:02.459489
16610	6065	1889	2016-12-18 16:51:03.33917	2016-12-18 16:51:03.33917
16611	6066	1889	2016-12-18 16:51:04.140829	2016-12-18 16:51:04.140829
16612	6067	1889	2016-12-18 16:51:05.016693	2016-12-18 16:51:05.016693
16613	6068	1889	2016-12-18 16:51:05.860505	2016-12-18 16:51:05.860505
16614	6069	1889	2016-12-18 16:51:06.68931	2016-12-18 16:51:06.68931
16615	6070	1889	2016-12-18 16:51:07.472413	2016-12-18 16:51:07.472413
16616	6071	1889	2016-12-18 16:51:08.338594	2016-12-18 16:51:08.338594
16617	6072	1889	2016-12-18 16:51:09.206108	2016-12-18 16:51:09.206108
16618	6073	1889	2016-12-18 16:51:09.976819	2016-12-18 16:51:09.976819
16619	6074	1889	2016-12-18 16:51:10.827362	2016-12-18 16:51:10.827362
16620	6075	1889	2016-12-18 16:51:11.595596	2016-12-18 16:51:11.595596
16621	6076	1889	2016-12-18 16:51:13.069661	2016-12-18 16:51:13.069661
16622	6077	1889	2016-12-18 16:51:13.873502	2016-12-18 16:51:13.873502
16623	6078	1889	2016-12-18 16:51:14.854122	2016-12-18 16:51:14.854122
16624	6079	1889	2016-12-18 16:51:15.845451	2016-12-18 16:51:15.845451
16625	6080	1889	2016-12-18 16:51:16.64652	2016-12-18 16:51:16.64652
16626	6081	1889	2016-12-18 16:51:17.454942	2016-12-18 16:51:17.454942
16627	6082	1889	2016-12-18 16:51:18.26535	2016-12-18 16:51:18.26535
16628	6083	1889	2016-12-18 16:51:19.067685	2016-12-18 16:51:19.067685
16629	6084	1889	2016-12-18 16:51:19.881819	2016-12-18 16:51:19.881819
16630	6085	1889	2016-12-18 16:51:20.828321	2016-12-18 16:51:20.828321
16631	6086	1889	2016-12-18 16:51:21.688515	2016-12-18 16:51:21.688515
16632	6087	1889	2016-12-18 16:51:22.511936	2016-12-18 16:51:22.511936
16633	6088	1889	2016-12-18 16:51:23.283846	2016-12-18 16:51:23.283846
16634	6089	1889	2016-12-18 16:51:24.086915	2016-12-18 16:51:24.086915
16635	6090	1889	2016-12-18 16:51:24.979444	2016-12-18 16:51:24.979444
16636	6091	1889	2016-12-18 16:51:25.792569	2016-12-18 16:51:25.792569
16637	6092	1889	2016-12-18 16:51:26.607246	2016-12-18 16:51:26.607246
16638	6093	1889	2016-12-18 16:51:27.5795	2016-12-18 16:51:27.5795
16639	6094	1889	2016-12-18 16:51:28.326944	2016-12-18 16:51:28.326944
16640	6095	1889	2016-12-18 16:51:29.149532	2016-12-18 16:51:29.149532
16641	6096	1889	2016-12-18 16:51:30.647468	2016-12-18 16:51:30.647468
16642	6097	1889	2016-12-18 16:51:31.451324	2016-12-18 16:51:31.451324
16643	6098	1889	2016-12-18 16:51:32.297705	2016-12-18 16:51:32.297705
16644	6099	1889	2016-12-18 16:51:33.068947	2016-12-18 16:51:33.068947
16645	6100	1889	2016-12-18 16:51:33.947913	2016-12-18 16:51:33.947913
16646	6101	1889	2016-12-18 16:51:34.752893	2016-12-18 16:51:34.752893
16647	6102	1889	2016-12-18 16:51:35.601521	2016-12-18 16:51:35.601521
16648	6103	1889	2016-12-18 16:51:36.371538	2016-12-18 16:51:36.371538
16649	6104	1889	2016-12-18 16:51:37.272174	2016-12-18 16:51:37.272174
16650	6105	1889	2016-12-18 16:51:38.189895	2016-12-18 16:51:38.189895
16651	6106	1889	2016-12-18 16:51:39.091731	2016-12-18 16:51:39.091731
16652	6107	1889	2016-12-18 16:51:39.920183	2016-12-18 16:51:39.920183
16653	6108	1889	2016-12-18 16:51:40.769524	2016-12-18 16:51:40.769524
16654	6109	1889	2016-12-18 16:51:41.611302	2016-12-18 16:51:41.611302
16655	6110	1889	2016-12-18 16:51:42.43767	2016-12-18 16:51:42.43767
16656	6111	1889	2016-12-18 16:51:43.297676	2016-12-18 16:51:43.297676
16657	6112	1889	2016-12-18 16:51:44.19662	2016-12-18 16:51:44.19662
16658	6113	1889	2016-12-18 16:51:45.133211	2016-12-18 16:51:45.133211
16659	6114	1889	2016-12-18 16:51:45.967431	2016-12-18 16:51:45.967431
16660	6115	1889	2016-12-18 16:51:48.777494	2016-12-18 16:51:48.777494
16661	6116	1889	2016-12-18 16:51:51.331211	2016-12-18 16:51:51.331211
16662	6117	1889	2016-12-18 16:51:52.604676	2016-12-18 16:51:52.604676
16663	6118	1889	2016-12-18 16:51:53.907373	2016-12-18 16:51:53.907373
16664	6119	1889	2016-12-18 16:51:54.839881	2016-12-18 16:51:54.839881
16665	6120	1889	2016-12-18 16:51:56.227357	2016-12-18 16:51:56.227357
16666	6121	1889	2016-12-18 16:51:57.122617	2016-12-18 16:51:57.122617
16667	6122	1889	2016-12-18 16:51:58.331499	2016-12-18 16:51:58.331499
16668	6123	1889	2016-12-18 16:51:59.21182	2016-12-18 16:51:59.21182
16669	6124	1889	2016-12-18 16:52:00.069484	2016-12-18 16:52:00.069484
16670	6125	1889	2016-12-18 16:52:00.892022	2016-12-18 16:52:00.892022
16671	6126	1889	2016-12-18 16:52:01.785971	2016-12-18 16:52:01.785971
16672	6127	1889	2016-12-18 16:52:02.818314	2016-12-18 16:52:02.818314
16673	6128	1889	2016-12-18 16:52:03.610867	2016-12-18 16:52:03.610867
16674	6129	1889	2016-12-18 16:52:04.391315	2016-12-18 16:52:04.391315
16675	6130	1889	2016-12-18 16:52:05.257173	2016-12-18 16:52:05.257173
16676	6131	1889	2016-12-18 16:52:06.032598	2016-12-18 16:52:06.032598
16677	6132	1889	2016-12-18 16:52:06.919171	2016-12-18 16:52:06.919171
16678	6133	1889	2016-12-18 16:52:07.926323	2016-12-18 16:52:07.926323
16679	6134	1889	2016-12-18 16:52:08.785126	2016-12-18 16:52:08.785126
16680	6135	1889	2016-12-18 16:52:09.704617	2016-12-18 16:52:09.704617
16681	6136	1889	2016-12-18 16:52:11.338968	2016-12-18 16:52:11.338968
16682	6137	1889	2016-12-18 16:52:12.173567	2016-12-18 16:52:12.173567
16683	6138	1889	2016-12-18 16:52:13.032264	2016-12-18 16:52:13.032264
16684	6139	1889	2016-12-18 16:52:13.913068	2016-12-18 16:52:13.913068
16685	6140	1889	2016-12-18 16:52:14.789458	2016-12-18 16:52:14.789458
16686	6141	1889	2016-12-18 16:52:15.709423	2016-12-18 16:52:15.709423
16687	6142	1889	2016-12-18 16:52:16.568964	2016-12-18 16:52:16.568964
16688	6143	1889	2016-12-18 16:52:17.390931	2016-12-18 16:52:17.390931
16689	6144	1889	2016-12-18 16:52:18.175222	2016-12-18 16:52:18.175222
16690	6145	1889	2016-12-18 16:52:18.98737	2016-12-18 16:52:18.98737
16691	6146	1889	2016-12-18 16:52:19.79726	2016-12-18 16:52:19.79726
16692	6147	1889	2016-12-18 16:52:20.60551	2016-12-18 16:52:20.60551
16693	6148	1889	2016-12-18 16:52:21.421153	2016-12-18 16:52:21.421153
16694	6149	1889	2016-12-18 16:52:22.256294	2016-12-18 16:52:22.256294
16695	6150	1889	2016-12-18 16:52:23.094025	2016-12-18 16:52:23.094025
16696	6151	1889	2016-12-18 16:52:23.951355	2016-12-18 16:52:23.951355
16697	6152	1889	2016-12-18 16:52:24.845449	2016-12-18 16:52:24.845449
16698	6153	1889	2016-12-18 16:52:25.657112	2016-12-18 16:52:25.657112
16699	6154	1889	2016-12-18 16:52:26.504425	2016-12-18 16:52:26.504425
16700	6155	1889	2016-12-18 16:52:27.374697	2016-12-18 16:52:27.374697
16701	6156	1889	2016-12-18 16:52:28.90672	2016-12-18 16:52:28.90672
16702	6157	1889	2016-12-18 16:52:29.717819	2016-12-18 16:52:29.717819
16703	6158	1889	2016-12-18 16:52:30.536598	2016-12-18 16:52:30.536598
16704	6159	1889	2016-12-18 16:52:31.361134	2016-12-18 16:52:31.361134
16705	6160	1889	2016-12-18 16:52:32.172871	2016-12-18 16:52:32.172871
16706	6161	1889	2016-12-18 16:52:32.998327	2016-12-18 16:52:32.998327
16707	6162	1889	2016-12-18 16:52:33.830205	2016-12-18 16:52:33.830205
16708	6163	1889	2016-12-18 16:52:34.627716	2016-12-18 16:52:34.627716
16709	6164	1889	2016-12-18 16:52:35.443762	2016-12-18 16:52:35.443762
16710	6165	1889	2016-12-18 16:52:36.401193	2016-12-18 16:52:36.401193
16711	6166	1889	2016-12-18 16:52:37.181146	2016-12-18 16:52:37.181146
16712	6167	1889	2016-12-18 16:52:37.947087	2016-12-18 16:52:37.947087
16713	6168	1889	2016-12-18 16:52:38.778583	2016-12-18 16:52:38.778583
16714	6169	1889	2016-12-18 16:52:39.602937	2016-12-18 16:52:39.602937
16715	6170	1889	2016-12-18 16:52:40.386462	2016-12-18 16:52:40.386462
16716	6171	1889	2016-12-18 16:52:41.161278	2016-12-18 16:52:41.161278
16717	6172	1889	2016-12-18 16:52:41.918416	2016-12-18 16:52:41.918416
16718	6173	1889	2016-12-18 16:52:42.691573	2016-12-18 16:52:42.691573
16719	6174	1889	2016-12-18 16:52:43.563839	2016-12-18 16:52:43.563839
16720	6175	1889	2016-12-18 16:52:44.391498	2016-12-18 16:52:44.391498
16721	6176	1889	2016-12-18 16:52:45.896023	2016-12-18 16:52:45.896023
16722	6177	1889	2016-12-18 16:52:46.733899	2016-12-18 16:52:46.733899
16723	6178	1889	2016-12-18 16:52:47.573917	2016-12-18 16:52:47.573917
16724	6179	1889	2016-12-18 16:52:48.351839	2016-12-18 16:52:48.351839
16725	6180	1889	2016-12-18 16:52:49.097983	2016-12-18 16:52:49.097983
16726	6181	1889	2016-12-18 16:52:49.917174	2016-12-18 16:52:49.917174
16727	6182	1889	2016-12-18 16:52:50.795911	2016-12-18 16:52:50.795911
16728	6183	1889	2016-12-18 16:52:51.587696	2016-12-18 16:52:51.587696
16729	6184	1889	2016-12-18 16:52:52.456847	2016-12-18 16:52:52.456847
16730	6185	1889	2016-12-18 16:52:53.388848	2016-12-18 16:52:53.388848
16731	6186	1889	2016-12-18 16:52:54.254102	2016-12-18 16:52:54.254102
16732	6187	1889	2016-12-18 16:52:55.064803	2016-12-18 16:52:55.064803
16733	6188	1889	2016-12-18 16:52:55.912634	2016-12-18 16:52:55.912634
16734	6189	1889	2016-12-18 16:52:56.737697	2016-12-18 16:52:56.737697
16735	6190	1889	2016-12-18 16:52:57.617945	2016-12-18 16:52:57.617945
16736	6191	1889	2016-12-18 16:52:58.414503	2016-12-18 16:52:58.414503
16737	6192	1889	2016-12-18 16:52:59.325737	2016-12-18 16:52:59.325737
16738	6193	1889	2016-12-18 16:53:00.218523	2016-12-18 16:53:00.218523
16739	6194	1889	2016-12-18 16:53:01.055358	2016-12-18 16:53:01.055358
16740	6195	1889	2016-12-18 16:53:01.900593	2016-12-18 16:53:01.900593
16741	6196	1889	2016-12-18 16:53:03.818525	2016-12-18 16:53:03.818525
16742	6197	1889	2016-12-18 16:53:04.696086	2016-12-18 16:53:04.696086
16743	6198	1889	2016-12-18 16:53:05.645096	2016-12-18 16:53:05.645096
16744	6199	1889	2016-12-18 16:53:06.479206	2016-12-18 16:53:06.479206
16745	6200	1889	2016-12-18 16:53:07.245748	2016-12-18 16:53:07.245748
16746	6201	1889	2016-12-18 16:53:08.086232	2016-12-18 16:53:08.086232
16747	6202	1889	2016-12-18 16:53:08.872346	2016-12-18 16:53:08.872346
16748	6203	1889	2016-12-18 16:53:09.704705	2016-12-18 16:53:09.704705
16749	6204	1889	2016-12-18 16:53:10.68778	2016-12-18 16:53:10.68778
16750	6205	1889	2016-12-18 16:53:11.520764	2016-12-18 16:53:11.520764
16751	6206	1889	2016-12-18 16:53:12.291433	2016-12-18 16:53:12.291433
16752	6207	1889	2016-12-18 16:53:13.071753	2016-12-18 16:53:13.071753
16753	6208	1889	2016-12-18 16:53:13.875492	2016-12-18 16:53:13.875492
16754	6209	1889	2016-12-18 16:53:14.701695	2016-12-18 16:53:14.701695
16755	6210	1889	2016-12-18 16:53:17.594797	2016-12-18 16:53:17.594797
16756	6211	1889	2016-12-18 16:53:19.00898	2016-12-18 16:53:19.00898
16757	6212	1889	2016-12-18 16:53:20.314993	2016-12-18 16:53:20.314993
16758	6213	1889	2016-12-18 16:53:21.471175	2016-12-18 16:53:21.471175
16759	6214	1889	2016-12-18 16:53:22.251431	2016-12-18 16:53:22.251431
16760	6215	1889	2016-12-18 16:53:23.055833	2016-12-18 16:53:23.055833
16761	6216	1889	2016-12-18 16:53:24.882865	2016-12-18 16:53:24.882865
16762	6217	1889	2016-12-18 16:53:25.691422	2016-12-18 16:53:25.691422
16763	6218	1889	2016-12-18 16:53:26.500042	2016-12-18 16:53:26.500042
16764	6219	1889	2016-12-18 16:53:27.339059	2016-12-18 16:53:27.339059
16765	6220	1889	2016-12-18 16:53:28.16267	2016-12-18 16:53:28.16267
16766	6221	1889	2016-12-18 16:53:28.976516	2016-12-18 16:53:28.976516
16767	6222	1889	2016-12-18 16:53:29.77425	2016-12-18 16:53:29.77425
16768	6223	1889	2016-12-18 16:53:30.618704	2016-12-18 16:53:30.618704
16769	6224	1889	2016-12-18 16:53:31.464514	2016-12-18 16:53:31.464514
16770	6225	1889	2016-12-18 16:53:32.333599	2016-12-18 16:53:32.333599
16771	6226	1889	2016-12-18 16:53:33.160021	2016-12-18 16:53:33.160021
16772	6227	1889	2016-12-18 16:53:33.975452	2016-12-18 16:53:33.975452
16773	6228	1889	2016-12-18 16:53:34.870841	2016-12-18 16:53:34.870841
16774	6229	1889	2016-12-18 16:53:35.735648	2016-12-18 16:53:35.735648
16775	6230	1889	2016-12-18 16:53:36.535875	2016-12-18 16:53:36.535875
16776	6231	1889	2016-12-18 16:53:37.353586	2016-12-18 16:53:37.353586
16777	6232	1889	2016-12-18 16:53:38.199762	2016-12-18 16:53:38.199762
16778	6233	1889	2016-12-18 16:53:39.047651	2016-12-18 16:53:39.047651
16779	6234	1889	2016-12-18 16:53:39.889818	2016-12-18 16:53:39.889818
16780	6235	1889	2016-12-18 16:53:40.688833	2016-12-18 16:53:40.688833
16781	6236	1889	2016-12-18 16:53:42.339866	2016-12-18 16:53:42.339866
16782	6237	1889	2016-12-18 16:53:43.626406	2016-12-18 16:53:43.626406
16783	6238	1889	2016-12-18 16:53:44.429803	2016-12-18 16:53:44.429803
16784	6239	1889	2016-12-18 16:53:45.238962	2016-12-18 16:53:45.238962
16785	6240	1889	2016-12-18 16:53:46.380162	2016-12-18 16:53:46.380162
16786	6241	1889	2016-12-18 16:53:47.193907	2016-12-18 16:53:47.193907
16787	6242	1889	2016-12-18 16:53:48.007641	2016-12-18 16:53:48.007641
16788	6243	1889	2016-12-18 16:53:48.844683	2016-12-18 16:53:48.844683
16789	6244	1889	2016-12-18 16:53:49.701429	2016-12-18 16:53:49.701429
16790	6245	1889	2016-12-18 16:53:50.543501	2016-12-18 16:53:50.543501
16791	6246	1889	2016-12-18 16:53:51.357936	2016-12-18 16:53:51.357936
16792	6247	1889	2016-12-18 16:53:52.178461	2016-12-18 16:53:52.178461
16793	6248	1889	2016-12-18 16:53:53.014824	2016-12-18 16:53:53.014824
16794	6249	1889	2016-12-18 16:53:53.783181	2016-12-18 16:53:53.783181
16795	6250	1889	2016-12-18 16:53:54.621998	2016-12-18 16:53:54.621998
16796	6251	1889	2016-12-18 16:53:55.499996	2016-12-18 16:53:55.499996
16797	6252	1889	2016-12-18 16:53:56.31641	2016-12-18 16:53:56.31641
16798	6253	1889	2016-12-18 16:53:57.097172	2016-12-18 16:53:57.097172
16799	6254	1889	2016-12-18 16:53:57.945499	2016-12-18 16:53:57.945499
16800	6255	1889	2016-12-18 16:53:58.770187	2016-12-18 16:53:58.770187
16801	6256	1889	2016-12-18 16:54:00.271521	2016-12-18 16:54:00.271521
16802	6257	1889	2016-12-18 16:54:01.067861	2016-12-18 16:54:01.067861
16803	6258	1889	2016-12-18 16:54:01.921646	2016-12-18 16:54:01.921646
16804	6259	1889	2016-12-18 16:54:02.997711	2016-12-18 16:54:02.997711
16805	6260	1889	2016-12-18 16:54:03.936506	2016-12-18 16:54:03.936506
16806	6261	1889	2016-12-18 16:54:04.835655	2016-12-18 16:54:04.835655
16807	6262	1889	2016-12-18 16:54:05.693978	2016-12-18 16:54:05.693978
16808	6263	1889	2016-12-18 16:54:06.489557	2016-12-18 16:54:06.489557
16809	6264	1889	2016-12-18 16:54:07.312676	2016-12-18 16:54:07.312676
16810	6265	1889	2016-12-18 16:54:08.182609	2016-12-18 16:54:08.182609
16811	6266	1889	2016-12-18 16:54:08.995615	2016-12-18 16:54:08.995615
16812	6267	1889	2016-12-18 16:54:09.821395	2016-12-18 16:54:09.821395
16813	6268	1889	2016-12-18 16:54:10.647892	2016-12-18 16:54:10.647892
16814	6269	1889	2016-12-18 16:54:11.467167	2016-12-18 16:54:11.467167
16815	6270	1889	2016-12-18 16:54:12.297999	2016-12-18 16:54:12.297999
16816	6271	1889	2016-12-18 16:54:13.123384	2016-12-18 16:54:13.123384
16817	6272	1889	2016-12-18 16:54:13.937719	2016-12-18 16:54:13.937719
16818	6273	1889	2016-12-18 16:54:14.840081	2016-12-18 16:54:14.840081
16819	6274	1889	2016-12-18 16:54:15.689324	2016-12-18 16:54:15.689324
16820	6275	1889	2016-12-18 16:54:16.447921	2016-12-18 16:54:16.447921
16821	6276	1889	2016-12-18 16:54:17.89117	2016-12-18 16:54:17.89117
16822	6277	1889	2016-12-18 16:54:18.714811	2016-12-18 16:54:18.714811
16823	6278	1889	2016-12-18 16:54:19.584539	2016-12-18 16:54:19.584539
16824	6279	1889	2016-12-18 16:54:20.398832	2016-12-18 16:54:20.398832
16825	6280	1889	2016-12-18 16:54:21.214911	2016-12-18 16:54:21.214911
16826	6281	1889	2016-12-18 16:54:22.031509	2016-12-18 16:54:22.031509
16827	6282	1889	2016-12-18 16:54:22.845867	2016-12-18 16:54:22.845867
16828	6283	1889	2016-12-18 16:54:23.644997	2016-12-18 16:54:23.644997
16829	6284	1889	2016-12-18 16:54:24.44875	2016-12-18 16:54:24.44875
16830	6285	1889	2016-12-18 16:54:25.339879	2016-12-18 16:54:25.339879
16831	6286	1889	2016-12-18 16:54:26.193859	2016-12-18 16:54:26.193859
16832	6287	1889	2016-12-18 16:54:27.178707	2016-12-18 16:54:27.178707
16833	6288	1889	2016-12-18 16:54:28.044897	2016-12-18 16:54:28.044897
16834	6289	1889	2016-12-18 16:54:28.86283	2016-12-18 16:54:28.86283
16835	6290	1889	2016-12-18 16:54:29.654861	2016-12-18 16:54:29.654861
16836	6291	1889	2016-12-18 16:54:30.502198	2016-12-18 16:54:30.502198
16837	6292	1889	2016-12-18 16:54:31.360681	2016-12-18 16:54:31.360681
16838	6293	1889	2016-12-18 16:54:32.153904	2016-12-18 16:54:32.153904
16839	6294	1889	2016-12-18 16:54:33.011599	2016-12-18 16:54:33.011599
16840	6295	1889	2016-12-18 16:54:33.807227	2016-12-18 16:54:33.807227
16841	6296	1889	2016-12-18 16:54:35.333766	2016-12-18 16:54:35.333766
16842	6297	1889	2016-12-18 16:54:36.204284	2016-12-18 16:54:36.204284
16843	6298	1889	2016-12-18 16:54:37.007502	2016-12-18 16:54:37.007502
16844	6299	1889	2016-12-18 16:54:37.812608	2016-12-18 16:54:37.812608
16845	6300	1889	2016-12-18 16:54:38.625308	2016-12-18 16:54:38.625308
16846	6301	1889	2016-12-18 16:54:39.472685	2016-12-18 16:54:39.472685
16847	6302	1889	2016-12-18 16:54:40.29888	2016-12-18 16:54:40.29888
16848	6303	1889	2016-12-18 16:54:41.125601	2016-12-18 16:54:41.125601
16849	6304	1889	2016-12-18 16:54:41.945334	2016-12-18 16:54:41.945334
16850	6305	1889	2016-12-18 16:54:44.694014	2016-12-18 16:54:44.694014
16851	6306	1889	2016-12-18 16:54:45.922614	2016-12-18 16:54:45.922614
16852	6307	1889	2016-12-18 16:54:47.178113	2016-12-18 16:54:47.178113
16853	6308	1889	2016-12-18 16:54:48.345267	2016-12-18 16:54:48.345267
16854	6309	1889	2016-12-18 16:54:49.522848	2016-12-18 16:54:49.522848
16855	6310	1889	2016-12-18 16:54:50.386315	2016-12-18 16:54:50.386315
16856	6311	1889	2016-12-18 16:54:51.240529	2016-12-18 16:54:51.240529
16857	6312	1889	2016-12-18 16:54:52.001415	2016-12-18 16:54:52.001415
16858	6313	1889	2016-12-18 16:54:52.790545	2016-12-18 16:54:52.790545
16859	6314	1889	2016-12-18 16:54:53.638075	2016-12-18 16:54:53.638075
16860	6315	1889	2016-12-18 16:54:54.452569	2016-12-18 16:54:54.452569
16861	6316	1889	2016-12-18 16:54:55.943463	2016-12-18 16:54:55.943463
16862	6317	1889	2016-12-18 16:54:56.753269	2016-12-18 16:54:56.753269
16863	6318	1889	2016-12-18 16:54:57.721025	2016-12-18 16:54:57.721025
16864	6319	1889	2016-12-18 16:54:58.569593	2016-12-18 16:54:58.569593
16865	6320	1889	2016-12-18 16:54:59.409034	2016-12-18 16:54:59.409034
16866	6321	1889	2016-12-18 16:55:00.231274	2016-12-18 16:55:00.231274
16867	6322	1889	2016-12-18 16:55:01.041582	2016-12-18 16:55:01.041582
16868	6323	1889	2016-12-18 16:55:01.871728	2016-12-18 16:55:01.871728
16869	6324	1889	2016-12-18 16:55:02.883869	2016-12-18 16:55:02.883869
16870	6325	1889	2016-12-18 16:55:03.775929	2016-12-18 16:55:03.775929
16871	6326	1889	2016-12-18 16:55:04.754263	2016-12-18 16:55:04.754263
16872	6327	1889	2016-12-18 16:55:05.734468	2016-12-18 16:55:05.734468
16873	6328	1889	2016-12-18 16:55:06.640947	2016-12-18 16:55:06.640947
16874	6329	1889	2016-12-18 16:55:08.585333	2016-12-18 16:55:08.585333
16875	6330	1889	2016-12-18 16:55:09.455377	2016-12-18 16:55:09.455377
16876	6331	1889	2016-12-18 16:55:10.301959	2016-12-18 16:55:10.301959
16877	6332	1889	2016-12-18 16:55:11.193096	2016-12-18 16:55:11.193096
16878	6333	1889	2016-12-18 16:55:12.623965	2016-12-18 16:55:12.623965
16879	6334	1889	2016-12-18 16:55:13.450341	2016-12-18 16:55:13.450341
16880	6335	1889	2016-12-18 16:55:14.275873	2016-12-18 16:55:14.275873
16881	6336	1889	2016-12-18 16:55:15.716979	2016-12-18 16:55:15.716979
16882	6337	1889	2016-12-18 16:55:16.599265	2016-12-18 16:55:16.599265
16883	6338	1889	2016-12-18 16:55:17.455919	2016-12-18 16:55:17.455919
16884	6339	1889	2016-12-18 16:55:18.396268	2016-12-18 16:55:18.396268
16885	6340	1889	2016-12-18 16:55:19.436864	2016-12-18 16:55:19.436864
16886	6341	1889	2016-12-18 16:55:20.284303	2016-12-18 16:55:20.284303
16887	6342	1889	2016-12-18 16:55:21.232711	2016-12-18 16:55:21.232711
16888	6343	1889	2016-12-18 16:55:22.12267	2016-12-18 16:55:22.12267
16889	6344	1889	2016-12-18 16:55:23.040691	2016-12-18 16:55:23.040691
16890	6345	1889	2016-12-18 16:55:24.654868	2016-12-18 16:55:24.654868
16891	6346	1889	2016-12-18 16:55:25.579087	2016-12-18 16:55:25.579087
16892	6347	1889	2016-12-18 16:55:26.493756	2016-12-18 16:55:26.493756
16893	6348	1889	2016-12-18 16:55:27.35363	2016-12-18 16:55:27.35363
16894	6349	1889	2016-12-18 16:55:28.161307	2016-12-18 16:55:28.161307
16895	6350	1889	2016-12-18 16:55:29.010773	2016-12-18 16:55:29.010773
16896	6351	1889	2016-12-18 16:55:29.871454	2016-12-18 16:55:29.871454
16897	6352	1889	2016-12-18 16:55:30.751315	2016-12-18 16:55:30.751315
16898	6353	1889	2016-12-18 16:55:31.642276	2016-12-18 16:55:31.642276
16899	6354	1889	2016-12-18 16:55:32.467515	2016-12-18 16:55:32.467515
16900	6355	1889	2016-12-18 16:55:33.24394	2016-12-18 16:55:33.24394
16901	6356	1889	2016-12-18 16:55:34.015765	2016-12-18 16:55:34.015765
16902	6357	1889	2016-12-18 16:55:34.89083	2016-12-18 16:55:34.89083
16903	6358	1889	2016-12-18 16:55:35.761168	2016-12-18 16:55:35.761168
16904	6359	1889	2016-12-18 16:55:36.618701	2016-12-18 16:55:36.618701
16905	6360	1889	2016-12-18 16:55:37.416268	2016-12-18 16:55:37.416268
16906	6361	1889	2016-12-18 16:55:38.229827	2016-12-18 16:55:38.229827
16907	6362	1889	2016-12-18 16:55:39.004069	2016-12-18 16:55:39.004069
16908	6363	1889	2016-12-18 16:55:39.927694	2016-12-18 16:55:39.927694
16909	6364	1889	2016-12-18 16:55:40.895968	2016-12-18 16:55:40.895968
16910	6365	1889	2016-12-18 16:55:42.593346	2016-12-18 16:55:42.593346
16911	6366	1889	2016-12-18 16:55:43.408863	2016-12-18 16:55:43.408863
16912	6367	1889	2016-12-18 16:55:44.162999	2016-12-18 16:55:44.162999
16913	6368	1889	2016-12-18 16:55:45.091645	2016-12-18 16:55:45.091645
16914	6369	1889	2016-12-18 16:55:45.942556	2016-12-18 16:55:45.942556
16915	6370	1889	2016-12-18 16:55:46.764893	2016-12-18 16:55:46.764893
16916	6371	1889	2016-12-18 16:55:47.645906	2016-12-18 16:55:47.645906
16917	6372	1889	2016-12-18 16:55:48.514495	2016-12-18 16:55:48.514495
16918	6373	1889	2016-12-18 16:55:49.66609	2016-12-18 16:55:49.66609
16919	6374	1889	2016-12-18 16:55:50.507242	2016-12-18 16:55:50.507242
16920	6375	1889	2016-12-18 16:55:51.34669	2016-12-18 16:55:51.34669
16921	6376	1889	2016-12-18 16:55:52.289844	2016-12-18 16:55:52.289844
16922	6377	1889	2016-12-18 16:55:53.224878	2016-12-18 16:55:53.224878
16923	6378	1889	2016-12-18 16:55:54.061879	2016-12-18 16:55:54.061879
16924	6379	1889	2016-12-18 16:55:54.942526	2016-12-18 16:55:54.942526
16925	6380	1889	2016-12-18 16:55:55.912951	2016-12-18 16:55:55.912951
16926	6381	1889	2016-12-18 16:55:56.796913	2016-12-18 16:55:56.796913
16927	6382	1889	2016-12-18 16:55:57.65345	2016-12-18 16:55:57.65345
16928	6383	1889	2016-12-18 16:55:59.615483	2016-12-18 16:55:59.615483
16929	6384	1889	2016-12-18 16:56:00.456044	2016-12-18 16:56:00.456044
16930	6385	1889	2016-12-18 16:56:01.274949	2016-12-18 16:56:01.274949
16931	6386	1892	2016-12-18 16:56:04.364005	2016-12-18 16:56:04.364005
16932	6387	1892	2016-12-18 16:56:05.093682	2016-12-18 16:56:05.093682
16933	6388	1892	2016-12-18 16:56:05.878005	2016-12-18 16:56:05.878005
16934	6389	1892	2016-12-18 16:56:06.694262	2016-12-18 16:56:06.694262
16935	6390	1892	2016-12-18 16:56:07.481316	2016-12-18 16:56:07.481316
16936	6391	1892	2016-12-18 16:56:08.30147	2016-12-18 16:56:08.30147
16937	6392	1892	2016-12-18 16:56:09.019986	2016-12-18 16:56:09.019986
16938	6393	1892	2016-12-18 16:56:09.766291	2016-12-18 16:56:09.766291
16939	6394	1892	2016-12-18 16:56:10.588078	2016-12-18 16:56:10.588078
16940	6395	1892	2016-12-18 16:56:11.413357	2016-12-18 16:56:11.413357
16941	6396	1892	2016-12-18 16:56:12.207324	2016-12-18 16:56:12.207324
16942	6397	1892	2016-12-18 16:56:12.959026	2016-12-18 16:56:12.959026
16943	6398	1892	2016-12-18 16:56:15.760807	2016-12-18 16:56:15.760807
16944	6399	1892	2016-12-18 16:56:16.955727	2016-12-18 16:56:16.955727
16945	6400	1892	2016-12-18 16:56:18.132273	2016-12-18 16:56:18.132273
16946	6401	1892	2016-12-18 16:56:19.316044	2016-12-18 16:56:19.316044
16947	6402	1892	2016-12-18 16:56:20.478961	2016-12-18 16:56:20.478961
16948	6403	1892	2016-12-18 16:56:21.199256	2016-12-18 16:56:21.199256
16949	6404	1892	2016-12-18 16:56:21.995366	2016-12-18 16:56:21.995366
16950	6405	1892	2016-12-18 16:56:22.77677	2016-12-18 16:56:22.77677
16951	6406	1892	2016-12-18 16:56:24.826084	2016-12-18 16:56:24.826084
16952	6407	1892	2016-12-18 16:56:25.640956	2016-12-18 16:56:25.640956
16953	6408	1892	2016-12-18 16:56:26.413364	2016-12-18 16:56:26.413364
16954	6409	1892	2016-12-18 16:56:27.258203	2016-12-18 16:56:27.258203
16955	6410	1892	2016-12-18 16:56:27.9894	2016-12-18 16:56:27.9894
16956	6386	1891	2016-12-18 16:56:29.568581	2016-12-18 16:56:29.568581
16957	6387	1891	2016-12-18 16:56:29.588161	2016-12-18 16:56:29.588161
16958	6411	1891	2016-12-18 16:56:30.338352	2016-12-18 16:56:30.338352
16959	6388	1891	2016-12-18 16:56:30.35412	2016-12-18 16:56:30.35412
16960	6389	1891	2016-12-18 16:56:30.3835	2016-12-18 16:56:30.3835
16961	6390	1891	2016-12-18 16:56:30.399136	2016-12-18 16:56:30.399136
16962	6412	1891	2016-12-18 16:56:31.25125	2016-12-18 16:56:31.25125
16963	6391	1891	2016-12-18 16:56:31.262945	2016-12-18 16:56:31.262945
16964	6413	1891	2016-12-18 16:56:31.982864	2016-12-18 16:56:31.982864
16965	6414	1891	2016-12-18 16:56:32.806093	2016-12-18 16:56:32.806093
16966	6392	1891	2016-12-18 16:56:32.832017	2016-12-18 16:56:32.832017
16967	6415	1891	2016-12-18 16:56:33.672693	2016-12-18 16:56:33.672693
16968	6416	1891	2016-12-18 16:56:34.443336	2016-12-18 16:56:34.443336
16969	6393	1891	2016-12-18 16:56:34.455664	2016-12-18 16:56:34.455664
16970	6394	1891	2016-12-18 16:56:34.474124	2016-12-18 16:56:34.474124
16971	6395	1891	2016-12-18 16:56:34.500254	2016-12-18 16:56:34.500254
16972	6396	1891	2016-12-18 16:56:34.519092	2016-12-18 16:56:34.519092
16973	6397	1891	2016-12-18 16:56:34.544533	2016-12-18 16:56:34.544533
16974	6417	1891	2016-12-18 16:56:35.354445	2016-12-18 16:56:35.354445
16975	6418	1891	2016-12-18 16:56:36.15324	2016-12-18 16:56:36.15324
16976	6398	1891	2016-12-18 16:56:38.114519	2016-12-18 16:56:38.114519
16977	6419	1891	2016-12-18 16:56:38.935753	2016-12-18 16:56:38.935753
16978	6420	1891	2016-12-18 16:56:39.76054	2016-12-18 16:56:39.76054
16979	6421	1891	2016-12-18 16:56:40.574616	2016-12-18 16:56:40.574616
16980	6399	1891	2016-12-18 16:56:40.600209	2016-12-18 16:56:40.600209
16981	6400	1891	2016-12-18 16:56:40.621963	2016-12-18 16:56:40.621963
16982	6401	1891	2016-12-18 16:56:40.640192	2016-12-18 16:56:40.640192
16983	6402	1891	2016-12-18 16:56:40.653021	2016-12-18 16:56:40.653021
16984	6403	1891	2016-12-18 16:56:40.677459	2016-12-18 16:56:40.677459
16985	6404	1891	2016-12-18 16:56:40.697647	2016-12-18 16:56:40.697647
16986	6422	1891	2016-12-18 16:56:41.522843	2016-12-18 16:56:41.522843
16987	6423	1891	2016-12-18 16:56:42.379368	2016-12-18 16:56:42.379368
16988	6424	1891	2016-12-18 16:56:43.121611	2016-12-18 16:56:43.121611
16989	6425	1891	2016-12-18 16:56:43.897999	2016-12-18 16:56:43.897999
16990	6426	1891	2016-12-18 16:56:44.660016	2016-12-18 16:56:44.660016
16991	6427	1891	2016-12-18 16:56:45.440261	2016-12-18 16:56:45.440261
16992	6428	1891	2016-12-18 16:56:46.209318	2016-12-18 16:56:46.209318
16993	6429	1891	2016-12-18 16:56:46.968183	2016-12-18 16:56:46.968183
16994	6430	1891	2016-12-18 16:56:47.793605	2016-12-18 16:56:47.793605
16995	6431	1891	2016-12-18 16:56:48.656983	2016-12-18 16:56:48.656983
16996	6432	1891	2016-12-18 16:56:51.366404	2016-12-18 16:56:51.366404
16997	6433	1891	2016-12-18 16:56:52.2253	2016-12-18 16:56:52.2253
16998	6434	1891	2016-12-18 16:56:52.97514	2016-12-18 16:56:52.97514
16999	6435	1891	2016-12-18 16:56:53.782011	2016-12-18 16:56:53.782011
17000	6436	1891	2016-12-18 16:56:54.596149	2016-12-18 16:56:54.596149
17001	6437	1891	2016-12-18 16:56:55.427274	2016-12-18 16:56:55.427274
17002	6438	1891	2016-12-18 16:56:56.208366	2016-12-18 16:56:56.208366
17003	6405	1891	2016-12-18 16:56:56.230966	2016-12-18 16:56:56.230966
17004	6439	1891	2016-12-18 16:56:57.025404	2016-12-18 16:56:57.025404
17005	6440	1891	2016-12-18 16:56:57.782437	2016-12-18 16:56:57.782437
17006	6441	1891	2016-12-18 16:56:58.543935	2016-12-18 16:56:58.543935
17007	6385	1891	2016-12-18 16:56:58.574523	2016-12-18 16:56:58.574523
17008	6384	1891	2016-12-18 16:56:58.59208	2016-12-18 16:56:58.59208
17009	6383	1891	2016-12-18 16:56:58.624293	2016-12-18 16:56:58.624293
17010	6406	1891	2016-12-18 16:56:58.648084	2016-12-18 16:56:58.648084
17011	6407	1891	2016-12-18 16:56:58.667969	2016-12-18 16:56:58.667969
17012	6408	1891	2016-12-18 16:56:58.682697	2016-12-18 16:56:58.682697
17013	6409	1891	2016-12-18 16:56:58.705665	2016-12-18 16:56:58.705665
17014	6410	1891	2016-12-18 16:56:58.717437	2016-12-18 16:56:58.717437
17015	6411	1893	2016-12-18 16:57:00.708639	2016-12-18 16:57:00.708639
17016	6412	1893	2016-12-18 16:57:00.754354	2016-12-18 16:57:00.754354
17017	6417	1893	2016-12-18 16:57:00.792879	2016-12-18 16:57:00.792879
17018	6418	1893	2016-12-18 16:57:00.812096	2016-12-18 16:57:00.812096
17019	6423	1893	2016-12-18 16:57:00.841085	2016-12-18 16:57:00.841085
17020	6431	1893	2016-12-18 16:57:00.854981	2016-12-18 16:57:00.854981
17021	6432	1893	2016-12-18 16:57:00.875378	2016-12-18 16:57:00.875378
17022	6433	1893	2016-12-18 16:57:00.895575	2016-12-18 16:57:00.895575
17023	6434	1893	2016-12-18 16:57:00.913827	2016-12-18 16:57:00.913827
17024	6435	1893	2016-12-18 16:57:00.932197	2016-12-18 16:57:00.932197
17025	6436	1893	2016-12-18 16:57:00.950624	2016-12-18 16:57:00.950624
17026	6437	1893	2016-12-18 16:57:00.969418	2016-12-18 16:57:00.969418
17027	6438	1893	2016-12-18 16:57:00.994317	2016-12-18 16:57:00.994317
17028	6439	1893	2016-12-18 16:57:01.009265	2016-12-18 16:57:01.009265
17029	6440	1893	2016-12-18 16:57:01.041172	2016-12-18 16:57:01.041172
17030	6441	1893	2016-12-18 16:57:01.064864	2016-12-18 16:57:01.064864
17031	6384	1893	2016-12-18 16:57:01.095038	2016-12-18 16:57:01.095038
17032	6383	1893	2016-12-18 16:57:01.111671	2016-12-18 16:57:01.111671
17033	6442	1894	2016-12-18 16:57:03.847075	2016-12-18 16:57:03.847075
17034	6443	1894	2016-12-18 16:57:04.633219	2016-12-18 16:57:04.633219
17035	6444	1894	2016-12-18 16:57:05.546653	2016-12-18 16:57:05.546653
17036	6445	1894	2016-12-18 16:57:06.323543	2016-12-18 16:57:06.323543
17037	6446	1894	2016-12-18 16:57:07.204942	2016-12-18 16:57:07.204942
17038	6447	1894	2016-12-18 16:57:08.083686	2016-12-18 16:57:08.083686
17039	6448	1894	2016-12-18 16:57:08.898251	2016-12-18 16:57:08.898251
17040	6449	1894	2016-12-18 16:57:09.734639	2016-12-18 16:57:09.734639
17041	6430	1894	2016-12-18 16:57:09.764321	2016-12-18 16:57:09.764321
17042	6406	1894	2016-12-18 16:57:09.78992	2016-12-18 16:57:09.78992
17043	6343	1896	2016-12-18 16:57:10.950487	2016-12-18 16:57:10.950487
17044	6343	1897	2016-12-18 16:57:12.024435	2016-12-18 16:57:12.024435
17045	6343	1895	2016-12-18 16:57:13.200536	2016-12-18 16:57:13.200536
17046	6450	1895	2016-12-18 16:57:13.971087	2016-12-18 16:57:13.971087
17047	6451	1895	2016-12-18 16:57:14.745821	2016-12-18 16:57:14.745821
17048	6451	1898	2016-12-18 16:57:15.896252	2016-12-18 16:57:15.896252
17049	6450	1898	2016-12-18 16:57:15.950111	2016-12-18 16:57:15.950111
17050	6452	1900	2016-12-18 16:57:17.847338	2016-12-18 16:57:17.847338
17051	6453	1901	2016-12-18 16:57:20.057203	2016-12-18 16:57:20.057203
17052	6332	1901	2016-12-18 16:57:20.087177	2016-12-18 16:57:20.087177
17053	6454	1901	2016-12-18 16:57:20.959122	2016-12-18 16:57:20.959122
17054	6455	1901	2016-12-18 16:57:21.723325	2016-12-18 16:57:21.723325
17055	6335	1901	2016-12-18 16:57:21.740395	2016-12-18 16:57:21.740395
17056	6456	1901	2016-12-18 16:57:22.599137	2016-12-18 16:57:22.599137
17057	6457	1901	2016-12-18 16:57:23.391494	2016-12-18 16:57:23.391494
17058	6458	1902	2016-12-18 16:57:26.396906	2016-12-18 16:57:26.396906
17059	6329	1902	2016-12-18 16:57:26.408053	2016-12-18 16:57:26.408053
17060	5880	1902	2016-12-18 16:57:26.43066	2016-12-18 16:57:26.43066
17061	5903	1902	2016-12-18 16:57:26.448546	2016-12-18 16:57:26.448546
17062	5904	1902	2016-12-18 16:57:26.458055	2016-12-18 16:57:26.458055
17063	5905	1902	2016-12-18 16:57:26.469797	2016-12-18 16:57:26.469797
17064	5906	1902	2016-12-18 16:57:26.504621	2016-12-18 16:57:26.504621
17065	5907	1902	2016-12-18 16:57:26.522939	2016-12-18 16:57:26.522939
17066	5908	1902	2016-12-18 16:57:26.541823	2016-12-18 16:57:26.541823
17067	5909	1902	2016-12-18 16:57:26.566668	2016-12-18 16:57:26.566668
17068	5910	1902	2016-12-18 16:57:26.587798	2016-12-18 16:57:26.587798
17069	6459	1902	2016-12-18 16:57:27.458007	2016-12-18 16:57:27.458007
17070	6460	1902	2016-12-18 16:57:28.396035	2016-12-18 16:57:28.396035
17071	6461	1902	2016-12-18 16:57:29.330347	2016-12-18 16:57:29.330347
17072	6462	1902	2016-12-18 16:57:30.054249	2016-12-18 16:57:30.054249
17073	6329	1899	2016-12-18 16:57:31.953576	2016-12-18 16:57:31.953576
17074	6333	1899	2016-12-18 16:57:32.022062	2016-12-18 16:57:32.022062
17075	6463	1899	2016-12-18 16:57:32.811431	2016-12-18 16:57:32.811431
17076	6464	1899	2016-12-18 16:57:33.606802	2016-12-18 16:57:33.606802
17077	5905	1899	2016-12-18 16:57:33.624338	2016-12-18 16:57:33.624338
17078	5904	1899	2016-12-18 16:57:33.655245	2016-12-18 16:57:33.655245
17079	6465	1899	2016-12-18 16:57:34.41165	2016-12-18 16:57:34.41165
17080	5906	1899	2016-12-18 16:57:34.442964	2016-12-18 16:57:34.442964
17081	5903	1899	2016-12-18 16:57:34.479902	2016-12-18 16:57:34.479902
17082	5908	1899	2016-12-18 16:57:34.499415	2016-12-18 16:57:34.499415
17083	5907	1899	2016-12-18 16:57:34.520863	2016-12-18 16:57:34.520863
17084	6335	1899	2016-12-18 16:57:34.539513	2016-12-18 16:57:34.539513
17085	5910	1899	2016-12-18 16:57:34.551244	2016-12-18 16:57:34.551244
17086	5909	1899	2016-12-18 16:57:34.574222	2016-12-18 16:57:34.574222
17087	6466	1899	2016-12-18 16:57:35.349143	2016-12-18 16:57:35.349143
17088	6467	1899	2016-12-18 16:57:36.106471	2016-12-18 16:57:36.106471
17089	6468	1899	2016-12-18 16:57:36.835601	2016-12-18 16:57:36.835601
17090	6469	1899	2016-12-18 16:57:37.659519	2016-12-18 16:57:37.659519
17091	6470	1899	2016-12-18 16:57:38.476126	2016-12-18 16:57:38.476126
17092	6456	1899	2016-12-18 16:57:38.488681	2016-12-18 16:57:38.488681
17093	6471	1899	2016-12-18 16:57:40.9661	2016-12-18 16:57:40.9661
17094	5880	1899	2016-12-18 16:57:40.981436	2016-12-18 16:57:40.981436
17095	6472	1899	2016-12-18 16:57:41.752573	2016-12-18 16:57:41.752573
17096	6473	1899	2016-12-18 16:57:42.624314	2016-12-18 16:57:42.624314
17097	6474	1899	2016-12-18 16:57:43.404542	2016-12-18 16:57:43.404542
17098	6475	1899	2016-12-18 16:57:44.242473	2016-12-18 16:57:44.242473
17099	6476	1899	2016-12-18 16:57:45.045863	2016-12-18 16:57:45.045863
17100	6477	1899	2016-12-18 16:57:45.855115	2016-12-18 16:57:45.855115
17101	6478	1899	2016-12-18 16:57:46.675624	2016-12-18 16:57:46.675624
17102	6479	1899	2016-12-18 16:57:47.499479	2016-12-18 16:57:47.499479
17103	6480	1899	2016-12-18 16:57:48.280473	2016-12-18 16:57:48.280473
17104	5821	1899	2016-12-18 16:57:48.293182	2016-12-18 16:57:48.293182
17105	5820	1899	2016-12-18 16:57:48.313364	2016-12-18 16:57:48.313364
17106	6481	1899	2016-12-18 16:57:49.117573	2016-12-18 16:57:49.117573
17107	6482	1899	2016-12-18 16:57:49.997242	2016-12-18 16:57:49.997242
17108	6453	1899	2016-12-18 16:57:50.01565	2016-12-18 16:57:50.01565
17109	6458	1899	2016-12-18 16:57:50.048904	2016-12-18 16:57:50.048904
17110	6457	1899	2016-12-18 16:57:50.06156	2016-12-18 16:57:50.06156
17111	6483	1899	2016-12-18 16:57:52.783497	2016-12-18 16:57:52.783497
17112	6484	1899	2016-12-18 16:57:53.926998	2016-12-18 16:57:53.926998
17113	6454	1899	2016-12-18 16:57:56.413335	2016-12-18 16:57:56.413335
17114	6455	1899	2016-12-18 16:57:56.484662	2016-12-18 16:57:56.484662
17115	6485	1899	2016-12-18 16:57:57.749873	2016-12-18 16:57:57.749873
17116	6486	1899	2016-12-18 16:57:58.920762	2016-12-18 16:57:58.920762
17117	6462	1899	2016-12-18 16:57:58.94016	2016-12-18 16:57:58.94016
17118	6332	1899	2016-12-18 16:57:58.972279	2016-12-18 16:57:58.972279
17119	6460	1899	2016-12-18 16:57:58.992345	2016-12-18 16:57:58.992345
17120	6459	1899	2016-12-18 16:57:59.028848	2016-12-18 16:57:59.028848
17121	6461	1899	2016-12-18 16:57:59.042012	2016-12-18 16:57:59.042012
17122	6487	1899	2016-12-18 16:57:59.838255	2016-12-18 16:57:59.838255
17123	6488	1899	2016-12-18 16:58:00.719525	2016-12-18 16:58:00.719525
17124	6489	1899	2016-12-18 16:58:01.658138	2016-12-18 16:58:01.658138
17125	6452	1899	2016-12-18 16:58:01.677007	2016-12-18 16:58:01.677007
17126	6450	1899	2016-12-18 16:58:01.705017	2016-12-18 16:58:01.705017
17127	6463	1903	2016-12-18 16:58:03.210317	2016-12-18 16:58:03.210317
17128	6489	1903	2016-12-18 16:58:03.226943	2016-12-18 16:58:03.226943
17129	6386	1890	2016-12-18 16:58:05.947333	2016-12-18 16:58:05.947333
17130	6329	1890	2016-12-18 16:58:06.013796	2016-12-18 16:58:06.013796
17131	6387	1890	2016-12-18 16:58:06.039414	2016-12-18 16:58:06.039414
17132	6411	1890	2016-12-18 16:58:06.059441	2016-12-18 16:58:06.059441
17133	6388	1890	2016-12-18 16:58:06.087647	2016-12-18 16:58:06.087647
17134	6389	1890	2016-12-18 16:58:06.107618	2016-12-18 16:58:06.107618
17135	6390	1890	2016-12-18 16:58:06.132009	2016-12-18 16:58:06.132009
17136	6412	1890	2016-12-18 16:58:06.155022	2016-12-18 16:58:06.155022
17137	6391	1890	2016-12-18 16:58:06.176557	2016-12-18 16:58:06.176557
17138	6413	1890	2016-12-18 16:58:06.192992	2016-12-18 16:58:06.192992
17139	6414	1890	2016-12-18 16:58:06.216772	2016-12-18 16:58:06.216772
17140	6392	1890	2016-12-18 16:58:06.233403	2016-12-18 16:58:06.233403
17141	6415	1890	2016-12-18 16:58:06.262662	2016-12-18 16:58:06.262662
17142	6416	1890	2016-12-18 16:58:06.281349	2016-12-18 16:58:06.281349
17143	6393	1890	2016-12-18 16:58:06.305075	2016-12-18 16:58:06.305075
17144	6394	1890	2016-12-18 16:58:06.333155	2016-12-18 16:58:06.333155
17145	6395	1890	2016-12-18 16:58:06.362963	2016-12-18 16:58:06.362963
17146	6396	1890	2016-12-18 16:58:06.378813	2016-12-18 16:58:06.378813
17147	6397	1890	2016-12-18 16:58:06.3909	2016-12-18 16:58:06.3909
17148	6417	1890	2016-12-18 16:58:06.419067	2016-12-18 16:58:06.419067
17149	6418	1890	2016-12-18 16:58:08.522568	2016-12-18 16:58:08.522568
17150	6398	1890	2016-12-18 16:58:08.533772	2016-12-18 16:58:08.533772
17151	6399	1890	2016-12-18 16:58:08.552066	2016-12-18 16:58:08.552066
17152	6400	1890	2016-12-18 16:58:08.574233	2016-12-18 16:58:08.574233
17153	6401	1890	2016-12-18 16:58:08.598364	2016-12-18 16:58:08.598364
17154	6402	1890	2016-12-18 16:58:08.644639	2016-12-18 16:58:08.644639
17155	6403	1890	2016-12-18 16:58:08.671701	2016-12-18 16:58:08.671701
17156	6404	1890	2016-12-18 16:58:08.684737	2016-12-18 16:58:08.684737
17157	6422	1890	2016-12-18 16:58:08.71004	2016-12-18 16:58:08.71004
17158	6424	1890	2016-12-18 16:58:08.72945	2016-12-18 16:58:08.72945
17159	6430	1890	2016-12-18 16:58:08.755919	2016-12-18 16:58:08.755919
17160	6442	1890	2016-12-18 16:58:08.780601	2016-12-18 16:58:08.780601
17161	6443	1890	2016-12-18 16:58:08.803641	2016-12-18 16:58:08.803641
17162	6444	1890	2016-12-18 16:58:08.830076	2016-12-18 16:58:08.830076
17163	6445	1890	2016-12-18 16:58:08.846328	2016-12-18 16:58:08.846328
17164	6446	1890	2016-12-18 16:58:08.875435	2016-12-18 16:58:08.875435
17165	6447	1890	2016-12-18 16:58:08.893705	2016-12-18 16:58:08.893705
17166	6448	1890	2016-12-18 16:58:08.92038	2016-12-18 16:58:08.92038
17167	6449	1890	2016-12-18 16:58:08.95169	2016-12-18 16:58:08.95169
17168	6335	1890	2016-12-18 16:58:08.965133	2016-12-18 16:58:08.965133
17169	6333	1890	2016-12-18 16:58:10.915396	2016-12-18 16:58:10.915396
17170	6463	1890	2016-12-18 16:58:10.980022	2016-12-18 16:58:10.980022
17171	6464	1890	2016-12-18 16:58:11.001373	2016-12-18 16:58:11.001373
17172	5905	1890	2016-12-18 16:58:11.032719	2016-12-18 16:58:11.032719
17173	5904	1890	2016-12-18 16:58:11.049164	2016-12-18 16:58:11.049164
17174	6465	1890	2016-12-18 16:58:11.069095	2016-12-18 16:58:11.069095
17175	5906	1890	2016-12-18 16:58:11.106713	2016-12-18 16:58:11.106713
17176	5903	1890	2016-12-18 16:58:11.121756	2016-12-18 16:58:11.121756
17177	5908	1890	2016-12-18 16:58:11.142809	2016-12-18 16:58:11.142809
17178	5907	1890	2016-12-18 16:58:11.162732	2016-12-18 16:58:11.162732
17179	5910	1890	2016-12-18 16:58:11.19176	2016-12-18 16:58:11.19176
17180	5909	1890	2016-12-18 16:58:11.212714	2016-12-18 16:58:11.212714
17181	6466	1890	2016-12-18 16:58:11.233308	2016-12-18 16:58:11.233308
17182	6467	1890	2016-12-18 16:58:11.246969	2016-12-18 16:58:11.246969
17183	6468	1890	2016-12-18 16:58:11.266195	2016-12-18 16:58:11.266195
17184	6469	1890	2016-12-18 16:58:11.292545	2016-12-18 16:58:11.292545
17185	6470	1890	2016-12-18 16:58:11.315462	2016-12-18 16:58:11.315462
17186	6471	1890	2016-12-18 16:58:11.343955	2016-12-18 16:58:11.343955
17187	5880	1890	2016-12-18 16:58:11.370784	2016-12-18 16:58:11.370784
17188	6472	1890	2016-12-18 16:58:11.393593	2016-12-18 16:58:11.393593
17189	6473	1890	2016-12-18 16:58:13.515409	2016-12-18 16:58:13.515409
17190	6474	1890	2016-12-18 16:58:13.552941	2016-12-18 16:58:13.552941
17191	6475	1890	2016-12-18 16:58:13.57452	2016-12-18 16:58:13.57452
17192	6476	1890	2016-12-18 16:58:13.599902	2016-12-18 16:58:13.599902
17193	6477	1890	2016-12-18 16:58:13.617314	2016-12-18 16:58:13.617314
17194	6478	1890	2016-12-18 16:58:13.641863	2016-12-18 16:58:13.641863
17195	6479	1890	2016-12-18 16:58:13.663776	2016-12-18 16:58:13.663776
17196	6480	1890	2016-12-18 16:58:13.686619	2016-12-18 16:58:13.686619
17197	5821	1890	2016-12-18 16:58:13.704425	2016-12-18 16:58:13.704425
17198	6431	1890	2016-12-18 16:58:13.724301	2016-12-18 16:58:13.724301
17199	6432	1890	2016-12-18 16:58:13.750984	2016-12-18 16:58:13.750984
17200	6490	1890	2016-12-18 16:58:14.543254	2016-12-18 16:58:14.543254
17201	6491	1890	2016-12-18 16:58:15.381111	2016-12-18 16:58:15.381111
17202	6492	1890	2016-12-18 16:58:16.154686	2016-12-18 16:58:16.154686
17203	6493	1890	2016-12-18 16:58:16.965166	2016-12-18 16:58:16.965166
17204	6419	1890	2016-12-18 16:58:16.9885	2016-12-18 16:58:16.9885
17205	6420	1890	2016-12-18 16:58:17.00615	2016-12-18 16:58:17.00615
17206	6421	1890	2016-12-18 16:58:17.043708	2016-12-18 16:58:17.043708
17207	6423	1890	2016-12-18 16:58:17.076336	2016-12-18 16:58:17.076336
17208	6425	1890	2016-12-18 16:58:17.116312	2016-12-18 16:58:17.116312
17209	6426	1890	2016-12-18 16:58:19.082099	2016-12-18 16:58:19.082099
17210	6427	1890	2016-12-18 16:58:19.103734	2016-12-18 16:58:19.103734
17211	6428	1890	2016-12-18 16:58:19.123272	2016-12-18 16:58:19.123272
17212	6429	1890	2016-12-18 16:58:19.159169	2016-12-18 16:58:19.159169
17213	6494	1890	2016-12-18 16:58:19.970064	2016-12-18 16:58:19.970064
17214	6456	1890	2016-12-18 16:58:19.996542	2016-12-18 16:58:19.996542
17215	6338	1890	2016-12-18 16:58:20.013832	2016-12-18 16:58:20.013832
17216	5820	1890	2016-12-18 16:58:20.041808	2016-12-18 16:58:20.041808
17217	6481	1890	2016-12-18 16:58:20.082546	2016-12-18 16:58:20.082546
17218	6482	1890	2016-12-18 16:58:20.094684	2016-12-18 16:58:20.094684
17219	6453	1890	2016-12-18 16:58:20.125087	2016-12-18 16:58:20.125087
17220	6495	1890	2016-12-18 16:58:20.938999	2016-12-18 16:58:20.938999
17221	6496	1890	2016-12-18 16:58:21.690497	2016-12-18 16:58:21.690497
17222	6433	1890	2016-12-18 16:58:21.71551	2016-12-18 16:58:21.71551
17223	6434	1890	2016-12-18 16:58:21.739089	2016-12-18 16:58:21.739089
17224	6497	1890	2016-12-18 16:58:22.546933	2016-12-18 16:58:22.546933
17225	6498	1890	2016-12-18 16:58:23.360342	2016-12-18 16:58:23.360342
17226	6499	1890	2016-12-18 16:58:24.211136	2016-12-18 16:58:24.211136
17227	6458	1890	2016-12-18 16:58:24.240393	2016-12-18 16:58:24.240393
17228	6435	1890	2016-12-18 16:58:24.253591	2016-12-18 16:58:24.253591
17229	6436	1890	2016-12-18 16:58:26.478763	2016-12-18 16:58:26.478763
17230	6437	1890	2016-12-18 16:58:26.549595	2016-12-18 16:58:26.549595
17231	6438	1890	2016-12-18 16:58:26.571663	2016-12-18 16:58:26.571663
17232	6405	1890	2016-12-18 16:58:26.592697	2016-12-18 16:58:26.592697
17233	6457	1890	2016-12-18 16:58:26.604749	2016-12-18 16:58:26.604749
17234	6483	1890	2016-12-18 16:58:26.620593	2016-12-18 16:58:26.620593
17235	6484	1890	2016-12-18 16:58:26.642334	2016-12-18 16:58:26.642334
17236	6454	1890	2016-12-18 16:58:26.661254	2016-12-18 16:58:26.661254
17237	6455	1890	2016-12-18 16:58:26.684829	2016-12-18 16:58:26.684829
17238	6485	1890	2016-12-18 16:58:26.708817	2016-12-18 16:58:26.708817
17239	6486	1890	2016-12-18 16:58:26.728703	2016-12-18 16:58:26.728703
17240	6343	1890	2016-12-18 16:58:26.75003	2016-12-18 16:58:26.75003
17241	6462	1890	2016-12-18 16:58:26.761241	2016-12-18 16:58:26.761241
17242	6439	1890	2016-12-18 16:58:26.789146	2016-12-18 16:58:26.789146
17243	6440	1890	2016-12-18 16:58:26.802233	2016-12-18 16:58:26.802233
17244	6441	1890	2016-12-18 16:58:26.825139	2016-12-18 16:58:26.825139
17245	6332	1890	2016-12-18 16:58:26.842765	2016-12-18 16:58:26.842765
17246	6385	1890	2016-12-18 16:58:26.868458	2016-12-18 16:58:26.868458
17247	6384	1890	2016-12-18 16:58:26.88218	2016-12-18 16:58:26.88218
17248	6383	1890	2016-12-18 16:58:26.903035	2016-12-18 16:58:26.903035
17249	6460	1890	2016-12-18 16:58:29.311634	2016-12-18 16:58:29.311634
17250	6459	1890	2016-12-18 16:58:29.328308	2016-12-18 16:58:29.328308
17251	6461	1890	2016-12-18 16:58:29.355573	2016-12-18 16:58:29.355573
17252	6406	1890	2016-12-18 16:58:29.372277	2016-12-18 16:58:29.372277
17253	6407	1890	2016-12-18 16:58:29.392231	2016-12-18 16:58:29.392231
17254	6408	1890	2016-12-18 16:58:29.411934	2016-12-18 16:58:29.411934
17255	6409	1890	2016-12-18 16:58:29.432675	2016-12-18 16:58:29.432675
17256	6452	1890	2016-12-18 16:58:29.453024	2016-12-18 16:58:29.453024
17257	6451	1890	2016-12-18 16:58:29.472454	2016-12-18 16:58:29.472454
17258	6487	1890	2016-12-18 16:58:29.496906	2016-12-18 16:58:29.496906
17259	6488	1890	2016-12-18 16:58:29.518142	2016-12-18 16:58:29.518142
17260	6489	1890	2016-12-18 16:58:29.548627	2016-12-18 16:58:29.548627
17261	6450	1890	2016-12-18 16:58:29.561951	2016-12-18 16:58:29.561951
17262	6500	1890	2016-12-18 16:58:30.317394	2016-12-18 16:58:30.317394
17263	6501	1890	2016-12-18 16:58:31.153604	2016-12-18 16:58:31.153604
17264	6410	1890	2016-12-18 16:58:31.193449	2016-12-18 16:58:31.193449
17265	6496	1904	2016-12-18 16:58:32.554948	2016-12-18 16:58:32.554948
17266	6498	1904	2016-12-18 16:58:32.605485	2016-12-18 16:58:32.605485
17267	6495	1904	2016-12-18 16:58:32.653255	2016-12-18 16:58:32.653255
17268	6497	1904	2016-12-18 16:58:32.685881	2016-12-18 16:58:32.685881
17269	6496	1905	2016-12-18 16:58:34.018074	2016-12-18 16:58:34.018074
17270	6498	1905	2016-12-18 16:58:34.076563	2016-12-18 16:58:34.076563
17271	6495	1905	2016-12-18 16:58:34.13714	2016-12-18 16:58:34.13714
17272	6497	1905	2016-12-18 16:58:34.17947	2016-12-18 16:58:34.17947
17273	6502	1908	2016-12-18 16:58:36.947968	2016-12-18 16:58:36.947968
17274	6503	1908	2016-12-18 16:58:37.887813	2016-12-18 16:58:37.887813
17275	6504	1908	2016-12-18 16:58:38.69159	2016-12-18 16:58:38.69159
17276	6505	1908	2016-12-18 16:58:39.46239	2016-12-18 16:58:39.46239
17277	6506	1908	2016-12-18 16:58:40.288351	2016-12-18 16:58:40.288351
17278	6507	1908	2016-12-18 16:58:41.098473	2016-12-18 16:58:41.098473
17279	6508	1908	2016-12-18 16:58:41.990739	2016-12-18 16:58:41.990739
17280	6509	1909	2016-12-18 16:58:47.618839	2016-12-18 16:58:47.618839
17281	6510	1909	2016-12-18 16:58:48.510249	2016-12-18 16:58:48.510249
17282	6511	1909	2016-12-18 16:58:49.544707	2016-12-18 16:58:49.544707
17283	6512	1909	2016-12-18 16:58:50.426662	2016-12-18 16:58:50.426662
17284	6513	1909	2016-12-18 16:58:51.659786	2016-12-18 16:58:51.659786
17285	6514	1909	2016-12-18 16:58:52.539473	2016-12-18 16:58:52.539473
17286	6515	1909	2016-12-18 16:58:53.507251	2016-12-18 16:58:53.507251
17287	6516	1909	2016-12-18 16:58:54.37949	2016-12-18 16:58:54.37949
17288	6517	1909	2016-12-18 16:58:55.348614	2016-12-18 16:58:55.348614
17289	6518	1909	2016-12-18 16:58:56.200165	2016-12-18 16:58:56.200165
17290	6519	1909	2016-12-18 16:58:57.029428	2016-12-18 16:58:57.029428
17291	6520	1909	2016-12-18 16:58:57.934137	2016-12-18 16:58:57.934137
17292	6521	1909	2016-12-18 16:58:58.801716	2016-12-18 16:58:58.801716
17293	6522	1909	2016-12-18 16:58:59.693606	2016-12-18 16:58:59.693606
17294	6336	1909	2016-12-18 16:58:59.710349	2016-12-18 16:58:59.710349
17295	6523	1909	2016-12-18 16:59:00.639163	2016-12-18 16:59:00.639163
17296	6524	1909	2016-12-18 16:59:01.564587	2016-12-18 16:59:01.564587
17297	6525	1909	2016-12-18 16:59:02.396443	2016-12-18 16:59:02.396443
17298	6526	1909	2016-12-18 16:59:03.435909	2016-12-18 16:59:03.435909
17299	6527	1909	2016-12-18 16:59:04.273146	2016-12-18 16:59:04.273146
17300	6528	1909	2016-12-18 16:59:09.082892	2016-12-18 16:59:09.082892
17301	6529	1909	2016-12-18 16:59:09.919095	2016-12-18 16:59:09.919095
17302	6530	1909	2016-12-18 16:59:10.866066	2016-12-18 16:59:10.866066
17303	6531	1909	2016-12-18 16:59:11.730042	2016-12-18 16:59:11.730042
17304	6532	1909	2016-12-18 16:59:12.555652	2016-12-18 16:59:12.555652
17305	6533	1909	2016-12-18 16:59:13.365478	2016-12-18 16:59:13.365478
17306	6534	1909	2016-12-18 16:59:14.151482	2016-12-18 16:59:14.151482
17307	6535	1909	2016-12-18 16:59:14.933327	2016-12-18 16:59:14.933327
17308	6536	1909	2016-12-18 16:59:15.85681	2016-12-18 16:59:15.85681
17309	6537	1909	2016-12-18 16:59:16.795927	2016-12-18 16:59:16.795927
17310	6538	1909	2016-12-18 16:59:17.777464	2016-12-18 16:59:17.777464
17311	6539	1909	2016-12-18 16:59:18.647925	2016-12-18 16:59:18.647925
17312	6540	1909	2016-12-18 16:59:19.568194	2016-12-18 16:59:19.568194
17313	6541	1909	2016-12-18 16:59:20.446931	2016-12-18 16:59:20.446931
17314	6542	1909	2016-12-18 16:59:21.337092	2016-12-18 16:59:21.337092
17315	6543	1909	2016-12-18 16:59:22.220457	2016-12-18 16:59:22.220457
17316	6544	1909	2016-12-18 16:59:23.032246	2016-12-18 16:59:23.032246
17317	6545	1909	2016-12-18 16:59:23.844371	2016-12-18 16:59:23.844371
17318	6546	1909	2016-12-18 16:59:24.704558	2016-12-18 16:59:24.704558
17319	6547	1909	2016-12-18 16:59:25.628849	2016-12-18 16:59:25.628849
17320	6548	1909	2016-12-18 16:59:30.725344	2016-12-18 16:59:30.725344
17321	6549	1909	2016-12-18 16:59:31.555849	2016-12-18 16:59:31.555849
17322	6550	1909	2016-12-18 16:59:32.386536	2016-12-18 16:59:32.386536
17323	6551	1909	2016-12-18 16:59:33.31333	2016-12-18 16:59:33.31333
17324	6552	1909	2016-12-18 16:59:34.136139	2016-12-18 16:59:34.136139
17325	6553	1909	2016-12-18 16:59:34.927429	2016-12-18 16:59:34.927429
17326	6554	1909	2016-12-18 16:59:35.929775	2016-12-18 16:59:35.929775
17327	6555	1909	2016-12-18 16:59:36.877022	2016-12-18 16:59:36.877022
17328	6556	1909	2016-12-18 16:59:37.789835	2016-12-18 16:59:37.789835
17329	6557	1909	2016-12-18 16:59:38.69172	2016-12-18 16:59:38.69172
17330	6558	1909	2016-12-18 16:59:39.560864	2016-12-18 16:59:39.560864
17331	6559	1909	2016-12-18 16:59:40.408657	2016-12-18 16:59:40.408657
17332	6560	1909	2016-12-18 16:59:41.252569	2016-12-18 16:59:41.252569
17333	6561	1909	2016-12-18 16:59:42.290463	2016-12-18 16:59:42.290463
17334	6562	1909	2016-12-18 16:59:43.202858	2016-12-18 16:59:43.202858
17335	6563	1909	2016-12-18 16:59:44.111605	2016-12-18 16:59:44.111605
17336	6564	1909	2016-12-18 16:59:44.91101	2016-12-18 16:59:44.91101
17337	6565	1909	2016-12-18 16:59:45.710721	2016-12-18 16:59:45.710721
17338	6566	1909	2016-12-18 16:59:46.393476	2016-12-18 16:59:46.393476
17339	6567	1909	2016-12-18 16:59:47.271279	2016-12-18 16:59:47.271279
17340	6568	1909	2016-12-18 16:59:54.371429	2016-12-18 16:59:54.371429
17341	6569	1909	2016-12-18 16:59:55.61539	2016-12-18 16:59:55.61539
17342	6344	1909	2016-12-18 16:59:55.636836	2016-12-18 16:59:55.636836
17343	6570	1909	2016-12-18 16:59:56.455017	2016-12-18 16:59:56.455017
17344	6571	1909	2016-12-18 16:59:57.355854	2016-12-18 16:59:57.355854
17345	6572	1909	2016-12-18 16:59:58.289311	2016-12-18 16:59:58.289311
17346	6573	1909	2016-12-18 16:59:59.168995	2016-12-18 16:59:59.168995
17347	6574	1909	2016-12-18 17:00:00.04901	2016-12-18 17:00:00.04901
17348	6575	1909	2016-12-18 17:00:01.075218	2016-12-18 17:00:01.075218
17349	6576	1909	2016-12-18 17:00:03.473775	2016-12-18 17:00:03.473775
17350	6577	1909	2016-12-18 17:00:05.35812	2016-12-18 17:00:05.35812
17351	6578	1909	2016-12-18 17:00:07.242424	2016-12-18 17:00:07.242424
17352	6579	1909	2016-12-18 17:00:08.836435	2016-12-18 17:00:08.836435
17353	6580	1909	2016-12-18 17:00:10.056046	2016-12-18 17:00:10.056046
17354	6513	1907	2016-12-18 17:00:18.224086	2016-12-18 17:00:18.224086
17355	6514	1907	2016-12-18 17:00:18.271276	2016-12-18 17:00:18.271276
17356	6502	1907	2016-12-18 17:00:18.284537	2016-12-18 17:00:18.284537
17357	6509	1907	2016-12-18 17:00:18.319885	2016-12-18 17:00:18.319885
17358	6510	1907	2016-12-18 17:00:18.35236	2016-12-18 17:00:18.35236
17359	6511	1907	2016-12-18 17:00:18.369791	2016-12-18 17:00:18.369791
17360	6512	1907	2016-12-18 17:00:18.397944	2016-12-18 17:00:18.397944
17361	6515	1907	2016-12-18 17:00:18.41255	2016-12-18 17:00:18.41255
17362	6516	1907	2016-12-18 17:00:18.426002	2016-12-18 17:00:18.426002
17363	6517	1907	2016-12-18 17:00:18.455066	2016-12-18 17:00:18.455066
17364	6518	1907	2016-12-18 17:00:18.467974	2016-12-18 17:00:18.467974
17365	6503	1907	2016-12-18 17:00:18.485701	2016-12-18 17:00:18.485701
17366	6581	1907	2016-12-18 17:00:20.002491	2016-12-18 17:00:20.002491
17367	6519	1907	2016-12-18 17:00:20.026052	2016-12-18 17:00:20.026052
17368	6504	1907	2016-12-18 17:00:20.059922	2016-12-18 17:00:20.059922
17369	6582	1907	2016-12-18 17:00:20.92724	2016-12-18 17:00:20.92724
17370	6520	1907	2016-12-18 17:00:20.948757	2016-12-18 17:00:20.948757
17371	6521	1907	2016-12-18 17:00:20.97358	2016-12-18 17:00:20.97358
17372	6522	1907	2016-12-18 17:00:20.989119	2016-12-18 17:00:20.989119
17373	6336	1907	2016-12-18 17:00:21.014558	2016-12-18 17:00:21.014558
17374	6523	1907	2016-12-18 17:00:25.807102	2016-12-18 17:00:25.807102
17375	6524	1907	2016-12-18 17:00:25.861858	2016-12-18 17:00:25.861858
17376	6525	1907	2016-12-18 17:00:25.900842	2016-12-18 17:00:25.900842
17377	6526	1907	2016-12-18 17:00:25.91967	2016-12-18 17:00:25.91967
17378	6527	1907	2016-12-18 17:00:25.938898	2016-12-18 17:00:25.938898
17379	6528	1907	2016-12-18 17:00:25.95531	2016-12-18 17:00:25.95531
17380	6529	1907	2016-12-18 17:00:25.972977	2016-12-18 17:00:25.972977
17381	6530	1907	2016-12-18 17:00:25.989581	2016-12-18 17:00:25.989581
17382	6531	1907	2016-12-18 17:00:26.009218	2016-12-18 17:00:26.009218
17383	6532	1907	2016-12-18 17:00:26.030902	2016-12-18 17:00:26.030902
17384	6533	1907	2016-12-18 17:00:26.045482	2016-12-18 17:00:26.045482
17385	6583	1907	2016-12-18 17:00:27.110164	2016-12-18 17:00:27.110164
17386	6534	1907	2016-12-18 17:00:27.134705	2016-12-18 17:00:27.134705
17387	6535	1907	2016-12-18 17:00:27.153878	2016-12-18 17:00:27.153878
17388	6584	1907	2016-12-18 17:00:28.10735	2016-12-18 17:00:28.10735
17389	6585	1907	2016-12-18 17:00:28.903213	2016-12-18 17:00:28.903213
17390	6586	1907	2016-12-18 17:00:29.750423	2016-12-18 17:00:29.750423
17391	6587	1907	2016-12-18 17:00:30.741937	2016-12-18 17:00:30.741937
17392	6588	1907	2016-12-18 17:00:31.667466	2016-12-18 17:00:31.667466
17393	6589	1907	2016-12-18 17:00:32.58412	2016-12-18 17:00:32.58412
17394	6590	1907	2016-12-18 17:00:37.027344	2016-12-18 17:00:37.027344
17395	6591	1907	2016-12-18 17:00:37.927513	2016-12-18 17:00:37.927513
17396	6592	1907	2016-12-18 17:00:38.72078	2016-12-18 17:00:38.72078
17397	6593	1907	2016-12-18 17:00:39.466895	2016-12-18 17:00:39.466895
17398	6594	1907	2016-12-18 17:00:40.343916	2016-12-18 17:00:40.343916
17399	6595	1907	2016-12-18 17:00:41.203851	2016-12-18 17:00:41.203851
17400	6505	1907	2016-12-18 17:00:41.221582	2016-12-18 17:00:41.221582
17401	6506	1907	2016-12-18 17:00:41.253364	2016-12-18 17:00:41.253364
17402	6507	1907	2016-12-18 17:00:41.35172	2016-12-18 17:00:41.35172
17403	6596	1907	2016-12-18 17:00:42.3016	2016-12-18 17:00:42.3016
17404	6597	1907	2016-12-18 17:00:43.192051	2016-12-18 17:00:43.192051
17405	6598	1907	2016-12-18 17:00:43.994755	2016-12-18 17:00:43.994755
17406	6599	1907	2016-12-18 17:00:44.921021	2016-12-18 17:00:44.921021
17407	6508	1907	2016-12-18 17:00:44.943364	2016-12-18 17:00:44.943364
17408	6536	1907	2016-12-18 17:00:44.97956	2016-12-18 17:00:44.97956
17409	6537	1907	2016-12-18 17:00:44.996027	2016-12-18 17:00:44.996027
17410	6538	1907	2016-12-18 17:00:45.022594	2016-12-18 17:00:45.022594
17411	6539	1907	2016-12-18 17:00:45.036836	2016-12-18 17:00:45.036836
17412	6540	1907	2016-12-18 17:00:45.066677	2016-12-18 17:00:45.066677
17413	6541	1907	2016-12-18 17:00:45.083892	2016-12-18 17:00:45.083892
17414	6542	1907	2016-12-18 17:00:49.763469	2016-12-18 17:00:49.763469
17415	6543	1907	2016-12-18 17:00:49.830482	2016-12-18 17:00:49.830482
17416	6544	1907	2016-12-18 17:00:49.852932	2016-12-18 17:00:49.852932
17417	6545	1907	2016-12-18 17:00:49.868488	2016-12-18 17:00:49.868488
17418	6546	1907	2016-12-18 17:00:49.894122	2016-12-18 17:00:49.894122
17419	6547	1907	2016-12-18 17:00:49.917384	2016-12-18 17:00:49.917384
17420	6548	1907	2016-12-18 17:00:49.945313	2016-12-18 17:00:49.945313
17421	6549	1907	2016-12-18 17:00:49.973382	2016-12-18 17:00:49.973382
17422	6550	1907	2016-12-18 17:00:49.986963	2016-12-18 17:00:49.986963
17423	6551	1907	2016-12-18 17:00:50.007549	2016-12-18 17:00:50.007549
17424	6552	1907	2016-12-18 17:00:50.02975	2016-12-18 17:00:50.02975
17425	6553	1907	2016-12-18 17:00:50.042465	2016-12-18 17:00:50.042465
17426	6600	1907	2016-12-18 17:00:51.348616	2016-12-18 17:00:51.348616
17427	6554	1907	2016-12-18 17:00:51.375426	2016-12-18 17:00:51.375426
17428	6555	1907	2016-12-18 17:00:51.406745	2016-12-18 17:00:51.406745
17429	6556	1907	2016-12-18 17:00:51.424677	2016-12-18 17:00:51.424677
17430	6557	1907	2016-12-18 17:00:51.454435	2016-12-18 17:00:51.454435
17431	6558	1907	2016-12-18 17:00:51.473637	2016-12-18 17:00:51.473637
17432	6601	1907	2016-12-18 17:00:52.37157	2016-12-18 17:00:52.37157
17433	6602	1907	2016-12-18 17:00:53.297571	2016-12-18 17:00:53.297571
17434	6603	1907	2016-12-18 17:00:59.153678	2016-12-18 17:00:59.153678
17435	6604	1907	2016-12-18 17:01:00.080408	2016-12-18 17:01:00.080408
17436	6559	1907	2016-12-18 17:01:00.108588	2016-12-18 17:01:00.108588
17437	6560	1907	2016-12-18 17:01:00.126322	2016-12-18 17:01:00.126322
17438	6605	1907	2016-12-18 17:01:01.043508	2016-12-18 17:01:01.043508
17439	6606	1907	2016-12-18 17:01:02.586887	2016-12-18 17:01:02.586887
17440	6607	1907	2016-12-18 17:01:03.537398	2016-12-18 17:01:03.537398
17441	6608	1907	2016-12-18 17:01:04.427592	2016-12-18 17:01:04.427592
17442	6609	1907	2016-12-18 17:01:05.448411	2016-12-18 17:01:05.448411
17443	6610	1907	2016-12-18 17:01:06.415553	2016-12-18 17:01:06.415553
17444	6611	1907	2016-12-18 17:01:07.396006	2016-12-18 17:01:07.396006
17445	6612	1907	2016-12-18 17:01:08.364748	2016-12-18 17:01:08.364748
17446	6613	1907	2016-12-18 17:01:09.258609	2016-12-18 17:01:09.258609
17447	6614	1907	2016-12-18 17:01:10.170457	2016-12-18 17:01:10.170457
17448	6615	1907	2016-12-18 17:01:11.170986	2016-12-18 17:01:11.170986
17449	6616	1907	2016-12-18 17:01:12.099977	2016-12-18 17:01:12.099977
17450	6617	1907	2016-12-18 17:01:13.33868	2016-12-18 17:01:13.33868
17451	6340	1907	2016-12-18 17:01:13.364604	2016-12-18 17:01:13.364604
17452	6561	1907	2016-12-18 17:01:13.393627	2016-12-18 17:01:13.393627
17453	6562	1907	2016-12-18 17:01:13.415455	2016-12-18 17:01:13.415455
17454	6563	1907	2016-12-18 17:01:17.876521	2016-12-18 17:01:17.876521
17455	6342	1907	2016-12-18 17:01:17.95952	2016-12-18 17:01:17.95952
17456	6564	1907	2016-12-18 17:01:17.976387	2016-12-18 17:01:17.976387
17457	6565	1907	2016-12-18 17:01:18.002139	2016-12-18 17:01:18.002139
17458	6566	1907	2016-12-18 17:01:18.029534	2016-12-18 17:01:18.029534
17459	6567	1907	2016-12-18 17:01:18.044493	2016-12-18 17:01:18.044493
17460	6568	1907	2016-12-18 17:01:18.055664	2016-12-18 17:01:18.055664
17461	6569	1907	2016-12-18 17:01:18.076447	2016-12-18 17:01:18.076447
17462	6344	1907	2016-12-18 17:01:18.091607	2016-12-18 17:01:18.091607
17463	6574	1907	2016-12-18 17:01:18.118631	2016-12-18 17:01:18.118631
17464	6618	1907	2016-12-18 17:01:18.987148	2016-12-18 17:01:18.987148
17465	6619	1907	2016-12-18 17:01:19.855163	2016-12-18 17:01:19.855163
17466	6620	1907	2016-12-18 17:01:20.781821	2016-12-18 17:01:20.781821
17467	6621	1907	2016-12-18 17:01:21.782462	2016-12-18 17:01:21.782462
17468	6570	1907	2016-12-18 17:01:21.815617	2016-12-18 17:01:21.815617
17469	6571	1907	2016-12-18 17:01:21.851659	2016-12-18 17:01:21.851659
17470	6572	1907	2016-12-18 17:01:21.886431	2016-12-18 17:01:21.886431
17471	6573	1907	2016-12-18 17:01:21.925567	2016-12-18 17:01:21.925567
17472	6575	1907	2016-12-18 17:01:21.945757	2016-12-18 17:01:21.945757
17473	6576	1907	2016-12-18 17:01:21.971932	2016-12-18 17:01:21.971932
17474	6577	1907	2016-12-18 17:01:24.376199	2016-12-18 17:01:24.376199
17475	6578	1907	2016-12-18 17:01:24.4028	2016-12-18 17:01:24.4028
17476	6579	1907	2016-12-18 17:01:24.427201	2016-12-18 17:01:24.427201
17477	6580	1907	2016-12-18 17:01:24.459583	2016-12-18 17:01:24.459583
17478	6622	1907	2016-12-18 17:01:25.57743	2016-12-18 17:01:25.57743
17479	6581	1910	2016-12-18 17:01:28.799814	2016-12-18 17:01:28.799814
17480	6583	1910	2016-12-18 17:01:28.896054	2016-12-18 17:01:28.896054
17481	6588	1910	2016-12-18 17:01:28.924206	2016-12-18 17:01:28.924206
17482	6589	1910	2016-12-18 17:01:28.949414	2016-12-18 17:01:28.949414
17483	6590	1910	2016-12-18 17:01:28.981117	2016-12-18 17:01:28.981117
17484	6591	1910	2016-12-18 17:01:29.008139	2016-12-18 17:01:29.008139
17485	6592	1910	2016-12-18 17:01:29.042125	2016-12-18 17:01:29.042125
17486	6593	1910	2016-12-18 17:01:29.070637	2016-12-18 17:01:29.070637
17487	6594	1910	2016-12-18 17:01:29.093388	2016-12-18 17:01:29.093388
17488	6595	1910	2016-12-18 17:01:29.125962	2016-12-18 17:01:29.125962
17489	6598	1910	2016-12-18 17:01:29.147424	2016-12-18 17:01:29.147424
17490	6599	1910	2016-12-18 17:01:29.175716	2016-12-18 17:01:29.175716
17491	6600	1910	2016-12-18 17:01:29.199894	2016-12-18 17:01:29.199894
17492	6601	1910	2016-12-18 17:01:29.222637	2016-12-18 17:01:29.222637
17493	6602	1910	2016-12-18 17:01:29.254235	2016-12-18 17:01:29.254235
17494	6603	1910	2016-12-18 17:01:29.27535	2016-12-18 17:01:29.27535
17495	6604	1910	2016-12-18 17:01:29.317557	2016-12-18 17:01:29.317557
17496	6605	1910	2016-12-18 17:01:29.350981	2016-12-18 17:01:29.350981
17497	6606	1910	2016-12-18 17:01:29.373839	2016-12-18 17:01:29.373839
17498	6607	1910	2016-12-18 17:01:29.396002	2016-12-18 17:01:29.396002
17499	6608	1910	2016-12-18 17:01:33.024799	2016-12-18 17:01:33.024799
17500	6609	1910	2016-12-18 17:01:33.095963	2016-12-18 17:01:33.095963
17501	6610	1910	2016-12-18 17:01:33.11683	2016-12-18 17:01:33.11683
17502	6611	1910	2016-12-18 17:01:33.152107	2016-12-18 17:01:33.152107
17503	6612	1910	2016-12-18 17:01:33.179882	2016-12-18 17:01:33.179882
17504	6613	1910	2016-12-18 17:01:33.206194	2016-12-18 17:01:33.206194
17505	6614	1910	2016-12-18 17:01:33.231662	2016-12-18 17:01:33.231662
17506	6615	1910	2016-12-18 17:01:33.252941	2016-12-18 17:01:33.252941
17507	6616	1910	2016-12-18 17:01:33.281559	2016-12-18 17:01:33.281559
17508	6617	1910	2016-12-18 17:01:33.315368	2016-12-18 17:01:33.315368
17509	6340	1910	2016-12-18 17:01:33.335281	2016-12-18 17:01:33.335281
17510	6342	1910	2016-12-18 17:01:33.362662	2016-12-18 17:01:33.362662
17511	6618	1910	2016-12-18 17:01:33.398758	2016-12-18 17:01:33.398758
17512	6619	1910	2016-12-18 17:01:33.412987	2016-12-18 17:01:33.412987
17513	6620	1910	2016-12-18 17:01:33.448172	2016-12-18 17:01:33.448172
17514	6621	1910	2016-12-18 17:01:33.478356	2016-12-18 17:01:33.478356
17515	6622	1910	2016-12-18 17:01:33.499836	2016-12-18 17:01:33.499836
17516	6623	1911	2016-12-18 17:01:36.785906	2016-12-18 17:01:36.785906
17517	6624	1911	2016-12-18 17:01:37.63234	2016-12-18 17:01:37.63234
17518	6625	1911	2016-12-18 17:01:38.524706	2016-12-18 17:01:38.524706
17519	6626	1911	2016-12-18 17:01:39.376319	2016-12-18 17:01:39.376319
17520	6627	1911	2016-12-18 17:01:40.16692	2016-12-18 17:01:40.16692
17521	6628	1911	2016-12-18 17:01:40.95636	2016-12-18 17:01:40.95636
17522	6629	1911	2016-12-18 17:01:41.785689	2016-12-18 17:01:41.785689
17523	6630	1911	2016-12-18 17:01:42.568823	2016-12-18 17:01:42.568823
17524	6631	1911	2016-12-18 17:01:43.399822	2016-12-18 17:01:43.399822
17525	6632	1911	2016-12-18 17:01:44.202729	2016-12-18 17:01:44.202729
17526	6633	1911	2016-12-18 17:01:44.965544	2016-12-18 17:01:44.965544
17527	6634	1911	2016-12-18 17:01:45.7554	2016-12-18 17:01:45.7554
17528	6635	1911	2016-12-18 17:01:46.49172	2016-12-18 17:01:46.49172
17529	6636	1911	2016-12-18 17:01:47.252132	2016-12-18 17:01:47.252132
17530	6637	1911	2016-12-18 17:01:48.068439	2016-12-18 17:01:48.068439
17531	6638	1911	2016-12-18 17:01:49.042456	2016-12-18 17:01:49.042456
17532	6639	1911	2016-12-18 17:01:49.89277	2016-12-18 17:01:49.89277
17533	6640	1913	2016-12-18 17:01:51.856507	2016-12-18 17:01:51.856507
17534	6641	1913	2016-12-18 17:01:52.622932	2016-12-18 17:01:52.622932
17535	6642	1913	2016-12-18 17:01:53.345451	2016-12-18 17:01:53.345451
17536	6643	1913	2016-12-18 17:01:54.142153	2016-12-18 17:01:54.142153
17537	6644	1913	2016-12-18 17:01:54.969749	2016-12-18 17:01:54.969749
17538	6640	1912	2016-12-18 17:01:56.549024	2016-12-18 17:01:56.549024
17539	6368	1912	2016-12-18 17:01:56.615304	2016-12-18 17:01:56.615304
17540	6369	1912	2016-12-18 17:01:56.643903	2016-12-18 17:01:56.643903
17541	6645	1912	2016-12-18 17:01:57.469916	2016-12-18 17:01:57.469916
17542	6646	1912	2016-12-18 17:01:58.25154	2016-12-18 17:01:58.25154
17543	6641	1912	2016-12-18 17:01:58.283076	2016-12-18 17:01:58.283076
17544	6647	1912	2016-12-18 17:01:59.127722	2016-12-18 17:01:59.127722
17545	6642	1912	2016-12-18 17:01:59.153197	2016-12-18 17:01:59.153197
17546	6643	1912	2016-12-18 17:01:59.179748	2016-12-18 17:01:59.179748
17547	6644	1912	2016-12-18 17:01:59.219964	2016-12-18 17:01:59.219964
17548	6645	1914	2016-12-18 17:02:00.423473	2016-12-18 17:02:00.423473
17549	6646	1914	2016-12-18 17:02:00.492887	2016-12-18 17:02:00.492887
17550	6647	1914	2016-12-18 17:02:00.52516	2016-12-18 17:02:00.52516
17551	6648	1916	2016-12-18 17:02:03.618154	2016-12-18 17:02:03.618154
17552	6649	1916	2016-12-18 17:02:04.487243	2016-12-18 17:02:04.487243
17553	6650	1916	2016-12-18 17:02:05.400043	2016-12-18 17:02:05.400043
17554	6651	1916	2016-12-18 17:02:06.31216	2016-12-18 17:02:06.31216
17555	6652	1916	2016-12-18 17:02:07.21431	2016-12-18 17:02:07.21431
17556	6653	1916	2016-12-18 17:02:10.061013	2016-12-18 17:02:10.061013
17557	6654	1917	2016-12-18 17:02:13.527337	2016-12-18 17:02:13.527337
17558	6655	1917	2016-12-18 17:02:14.779757	2016-12-18 17:02:14.779757
17559	6656	1917	2016-12-18 17:02:15.660031	2016-12-18 17:02:15.660031
17560	6657	1917	2016-12-18 17:02:16.568525	2016-12-18 17:02:16.568525
17561	6658	1917	2016-12-18 17:02:17.45402	2016-12-18 17:02:17.45402
17562	6659	1917	2016-12-18 17:02:18.235107	2016-12-18 17:02:18.235107
17563	6660	1917	2016-12-18 17:02:19.122731	2016-12-18 17:02:19.122731
17564	6661	1917	2016-12-18 17:02:19.972449	2016-12-18 17:02:19.972449
17565	6662	1917	2016-12-18 17:02:20.774602	2016-12-18 17:02:20.774602
17566	6663	1917	2016-12-18 17:02:21.644414	2016-12-18 17:02:21.644414
17567	6664	1917	2016-12-18 17:02:22.454261	2016-12-18 17:02:22.454261
17568	6665	1917	2016-12-18 17:02:23.283268	2016-12-18 17:02:23.283268
17569	6666	1917	2016-12-18 17:02:24.076381	2016-12-18 17:02:24.076381
17570	6667	1917	2016-12-18 17:02:24.871339	2016-12-18 17:02:24.871339
17571	6668	1917	2016-12-18 17:02:25.69426	2016-12-18 17:02:25.69426
17572	6669	1917	2016-12-18 17:02:26.619074	2016-12-18 17:02:26.619074
17573	6670	1917	2016-12-18 17:02:27.455878	2016-12-18 17:02:27.455878
17574	6671	1917	2016-12-18 17:02:28.326858	2016-12-18 17:02:28.326858
17575	6672	1917	2016-12-18 17:02:29.362744	2016-12-18 17:02:29.362744
17576	6673	1917	2016-12-18 17:02:30.213675	2016-12-18 17:02:30.213675
17577	6674	1917	2016-12-18 17:02:32.631872	2016-12-18 17:02:32.631872
17578	6675	1917	2016-12-18 17:02:33.46442	2016-12-18 17:02:33.46442
17579	6676	1917	2016-12-18 17:02:34.36139	2016-12-18 17:02:34.36139
17580	6677	1917	2016-12-18 17:02:35.176505	2016-12-18 17:02:35.176505
17581	6654	1915	2016-12-18 17:02:37.623129	2016-12-18 17:02:37.623129
17582	6655	1915	2016-12-18 17:02:37.667006	2016-12-18 17:02:37.667006
17583	6656	1915	2016-12-18 17:02:37.701373	2016-12-18 17:02:37.701373
17584	6657	1915	2016-12-18 17:02:37.756779	2016-12-18 17:02:37.756779
17585	6658	1915	2016-12-18 17:02:37.794694	2016-12-18 17:02:37.794694
17586	6659	1915	2016-12-18 17:02:37.835098	2016-12-18 17:02:37.835098
17587	6660	1915	2016-12-18 17:02:37.880498	2016-12-18 17:02:37.880498
17588	6648	1915	2016-12-18 17:02:37.959559	2016-12-18 17:02:37.959559
17589	6678	1915	2016-12-18 17:02:38.962259	2016-12-18 17:02:38.962259
17590	6679	1915	2016-12-18 17:02:39.763185	2016-12-18 17:02:39.763185
17591	6680	1915	2016-12-18 17:02:40.705854	2016-12-18 17:02:40.705854
17592	6661	1915	2016-12-18 17:02:40.767365	2016-12-18 17:02:40.767365
17593	6662	1915	2016-12-18 17:02:40.794962	2016-12-18 17:02:40.794962
17594	6663	1915	2016-12-18 17:02:40.838785	2016-12-18 17:02:40.838785
17595	6664	1915	2016-12-18 17:02:40.879206	2016-12-18 17:02:40.879206
17596	6681	1915	2016-12-18 17:02:41.712393	2016-12-18 17:02:41.712393
17597	6649	1915	2016-12-18 17:02:41.758589	2016-12-18 17:02:41.758589
17598	6665	1915	2016-12-18 17:02:41.805616	2016-12-18 17:02:41.805616
17599	6666	1915	2016-12-18 17:02:41.871447	2016-12-18 17:02:41.871447
17600	6667	1915	2016-12-18 17:02:41.912837	2016-12-18 17:02:41.912837
17601	6668	1915	2016-12-18 17:02:44.100589	2016-12-18 17:02:44.100589
17602	6669	1915	2016-12-18 17:02:44.175791	2016-12-18 17:02:44.175791
17603	6670	1915	2016-12-18 17:02:44.224374	2016-12-18 17:02:44.224374
17604	6671	1915	2016-12-18 17:02:44.266378	2016-12-18 17:02:44.266378
17605	6672	1915	2016-12-18 17:02:44.300253	2016-12-18 17:02:44.300253
17606	6673	1915	2016-12-18 17:02:44.350725	2016-12-18 17:02:44.350725
17607	6674	1915	2016-12-18 17:02:44.419933	2016-12-18 17:02:44.419933
17608	6675	1915	2016-12-18 17:02:44.474831	2016-12-18 17:02:44.474831
17609	6676	1915	2016-12-18 17:02:44.51766	2016-12-18 17:02:44.51766
17610	6677	1915	2016-12-18 17:02:44.544307	2016-12-18 17:02:44.544307
17611	6682	1915	2016-12-18 17:02:45.386442	2016-12-18 17:02:45.386442
17612	6683	1915	2016-12-18 17:02:46.232638	2016-12-18 17:02:46.232638
17613	6650	1915	2016-12-18 17:02:46.271773	2016-12-18 17:02:46.271773
17614	6651	1915	2016-12-18 17:02:46.31066	2016-12-18 17:02:46.31066
17615	6652	1915	2016-12-18 17:02:46.348495	2016-12-18 17:02:46.348495
17616	6653	1915	2016-12-18 17:02:46.385636	2016-12-18 17:02:46.385636
17617	6681	1918	2016-12-18 17:02:47.755026	2016-12-18 17:02:47.755026
17618	6682	1918	2016-12-18 17:02:47.800647	2016-12-18 17:02:47.800647
17619	6683	1918	2016-12-18 17:02:47.817816	2016-12-18 17:02:47.817816
17620	6684	1919	2016-12-18 17:02:50.559999	2016-12-18 17:02:50.559999
17621	6685	1919	2016-12-18 17:02:51.445674	2016-12-18 17:02:51.445674
17622	6686	1919	2016-12-18 17:02:52.25593	2016-12-18 17:02:52.25593
17623	6687	1919	2016-12-18 17:02:53.016076	2016-12-18 17:02:53.016076
17624	6688	1919	2016-12-18 17:02:53.806841	2016-12-18 17:02:53.806841
17625	6689	1919	2016-12-18 17:02:54.569399	2016-12-18 17:02:54.569399
17626	6690	1919	2016-12-18 17:02:55.392816	2016-12-18 17:02:55.392816
17627	6691	1919	2016-12-18 17:02:56.173896	2016-12-18 17:02:56.173896
17628	6692	1919	2016-12-18 17:02:57.073766	2016-12-18 17:02:57.073766
17629	6693	1919	2016-12-18 17:02:57.972971	2016-12-18 17:02:57.972971
17630	6694	1919	2016-12-18 17:02:58.783691	2016-12-18 17:02:58.783691
17631	6695	1919	2016-12-18 17:02:59.612529	2016-12-18 17:02:59.612529
17632	6696	1919	2016-12-18 17:03:00.405086	2016-12-18 17:03:00.405086
17633	6697	1919	2016-12-18 17:03:01.280776	2016-12-18 17:03:01.280776
17634	6698	1919	2016-12-18 17:03:02.188135	2016-12-18 17:03:02.188135
17635	6699	1919	2016-12-18 17:03:03.031309	2016-12-18 17:03:03.031309
17636	6700	1919	2016-12-18 17:03:04.319163	2016-12-18 17:03:04.319163
17637	6701	1919	2016-12-18 17:03:05.206224	2016-12-18 17:03:05.206224
17638	6702	1919	2016-12-18 17:03:06.164697	2016-12-18 17:03:06.164697
17639	6703	1919	2016-12-18 17:03:07.035464	2016-12-18 17:03:07.035464
17640	6704	1919	2016-12-18 17:03:09.50075	2016-12-18 17:03:09.50075
17641	6705	1919	2016-12-18 17:03:10.29341	2016-12-18 17:03:10.29341
17642	6706	1919	2016-12-18 17:03:11.165774	2016-12-18 17:03:11.165774
17643	6707	1919	2016-12-18 17:03:12.035258	2016-12-18 17:03:12.035258
17644	6708	1919	2016-12-18 17:03:12.874504	2016-12-18 17:03:12.874504
17645	6709	1919	2016-12-18 17:03:13.753799	2016-12-18 17:03:13.753799
17646	6710	1919	2016-12-18 17:03:14.593668	2016-12-18 17:03:14.593668
17647	6711	1919	2016-12-18 17:03:15.459047	2016-12-18 17:03:15.459047
17648	6684	1920	2016-12-18 17:03:17.414102	2016-12-18 17:03:17.414102
17649	6685	1920	2016-12-18 17:03:17.451378	2016-12-18 17:03:17.451378
17650	6686	1920	2016-12-18 17:03:17.493025	2016-12-18 17:03:17.493025
17651	6687	1920	2016-12-18 17:03:17.537529	2016-12-18 17:03:17.537529
17652	6688	1920	2016-12-18 17:03:17.592176	2016-12-18 17:03:17.592176
17653	6689	1920	2016-12-18 17:03:17.635906	2016-12-18 17:03:17.635906
17654	6690	1920	2016-12-18 17:03:17.675947	2016-12-18 17:03:17.675947
17655	6691	1920	2016-12-18 17:03:17.716575	2016-12-18 17:03:17.716575
17656	6692	1920	2016-12-18 17:03:17.762712	2016-12-18 17:03:17.762712
17657	6693	1920	2016-12-18 17:03:17.796451	2016-12-18 17:03:17.796451
17658	6694	1920	2016-12-18 17:03:17.845234	2016-12-18 17:03:17.845234
17659	6695	1920	2016-12-18 17:03:17.885676	2016-12-18 17:03:17.885676
17660	6696	1920	2016-12-18 17:03:17.93291	2016-12-18 17:03:17.93291
17661	6697	1920	2016-12-18 17:03:17.992764	2016-12-18 17:03:17.992764
17662	6698	1920	2016-12-18 17:03:18.050063	2016-12-18 17:03:18.050063
17663	6699	1920	2016-12-18 17:03:18.089652	2016-12-18 17:03:18.089652
17664	6700	1920	2016-12-18 17:03:18.15242	2016-12-18 17:03:18.15242
17665	6701	1920	2016-12-18 17:03:18.201413	2016-12-18 17:03:18.201413
17666	6702	1920	2016-12-18 17:03:18.245038	2016-12-18 17:03:18.245038
17667	6703	1920	2016-12-18 17:03:18.293053	2016-12-18 17:03:18.293053
17668	6704	1920	2016-12-18 17:03:19.714989	2016-12-18 17:03:19.714989
17669	6705	1920	2016-12-18 17:03:19.753162	2016-12-18 17:03:19.753162
17670	6706	1920	2016-12-18 17:03:19.788236	2016-12-18 17:03:19.788236
17671	6707	1920	2016-12-18 17:03:19.837734	2016-12-18 17:03:19.837734
17672	6708	1920	2016-12-18 17:03:19.879891	2016-12-18 17:03:19.879891
17673	6709	1920	2016-12-18 17:03:19.924073	2016-12-18 17:03:19.924073
17674	6710	1920	2016-12-18 17:03:19.96439	2016-12-18 17:03:19.96439
17675	6711	1920	2016-12-18 17:03:20.003444	2016-12-18 17:03:20.003444
17676	6712	1922	2016-12-18 17:03:22.517018	2016-12-18 17:03:22.517018
17677	6713	1922	2016-12-18 17:03:23.343577	2016-12-18 17:03:23.343577
17678	6714	1922	2016-12-18 17:03:24.342089	2016-12-18 17:03:24.342089
17679	6715	1922	2016-12-18 17:03:25.227792	2016-12-18 17:03:25.227792
17680	6716	1922	2016-12-18 17:03:26.03709	2016-12-18 17:03:26.03709
17681	6717	1922	2016-12-18 17:03:26.886691	2016-12-18 17:03:26.886691
17682	6718	1922	2016-12-18 17:03:27.68754	2016-12-18 17:03:27.68754
17683	6719	1922	2016-12-18 17:03:28.592222	2016-12-18 17:03:28.592222
17684	6720	1922	2016-12-18 17:03:29.432584	2016-12-18 17:03:29.432584
17685	6721	1922	2016-12-18 17:03:30.272956	2016-12-18 17:03:30.272956
17686	6722	1922	2016-12-18 17:03:31.108782	2016-12-18 17:03:31.108782
17687	6723	1922	2016-12-18 17:03:31.973818	2016-12-18 17:03:31.973818
17688	6724	1922	2016-12-18 17:03:32.767085	2016-12-18 17:03:32.767085
17689	6725	1922	2016-12-18 17:03:33.561375	2016-12-18 17:03:33.561375
17690	6726	1922	2016-12-18 17:03:35.021361	2016-12-18 17:03:35.021361
17691	6727	1922	2016-12-18 17:03:35.948613	2016-12-18 17:03:35.948613
17692	6728	1922	2016-12-18 17:03:36.817623	2016-12-18 17:03:36.817623
17693	6729	1922	2016-12-18 17:03:37.6487	2016-12-18 17:03:37.6487
17694	6730	1922	2016-12-18 17:03:38.510011	2016-12-18 17:03:38.510011
17695	6731	1922	2016-12-18 17:03:39.396014	2016-12-18 17:03:39.396014
17696	6732	1922	2016-12-18 17:03:42.306752	2016-12-18 17:03:42.306752
17697	6733	1922	2016-12-18 17:03:43.25259	2016-12-18 17:03:43.25259
17698	6734	1922	2016-12-18 17:03:44.081935	2016-12-18 17:03:44.081935
17699	6735	1922	2016-12-18 17:03:44.987848	2016-12-18 17:03:44.987848
17700	6736	1922	2016-12-18 17:03:45.829898	2016-12-18 17:03:45.829898
17701	6737	1922	2016-12-18 17:03:46.616372	2016-12-18 17:03:46.616372
17702	6738	1922	2016-12-18 17:03:47.454054	2016-12-18 17:03:47.454054
17703	6739	1922	2016-12-18 17:03:48.326487	2016-12-18 17:03:48.326487
17704	6740	1922	2016-12-18 17:03:49.186184	2016-12-18 17:03:49.186184
17705	6741	1922	2016-12-18 17:03:49.961065	2016-12-18 17:03:49.961065
17706	6742	1922	2016-12-18 17:03:52.787488	2016-12-18 17:03:52.787488
17707	6743	1922	2016-12-18 17:03:53.994977	2016-12-18 17:03:53.994977
17708	6744	1922	2016-12-18 17:03:55.121695	2016-12-18 17:03:55.121695
17709	6745	1922	2016-12-18 17:03:56.33701	2016-12-18 17:03:56.33701
17710	6746	1922	2016-12-18 17:03:57.493916	2016-12-18 17:03:57.493916
17711	6747	1922	2016-12-18 17:03:58.360614	2016-12-18 17:03:58.360614
17712	6748	1922	2016-12-18 17:03:59.13599	2016-12-18 17:03:59.13599
17713	6749	1922	2016-12-18 17:03:59.955186	2016-12-18 17:03:59.955186
17714	6750	1922	2016-12-18 17:04:00.913335	2016-12-18 17:04:00.913335
17715	6751	1922	2016-12-18 17:04:01.781831	2016-12-18 17:04:01.781831
17716	6752	1922	2016-12-18 17:04:03.930692	2016-12-18 17:04:03.930692
17717	6753	1922	2016-12-18 17:04:04.75348	2016-12-18 17:04:04.75348
17718	6754	1922	2016-12-18 17:04:05.632236	2016-12-18 17:04:05.632236
17719	6755	1923	2016-12-18 17:04:08.435819	2016-12-18 17:04:08.435819
17720	6756	1923	2016-12-18 17:04:09.385141	2016-12-18 17:04:09.385141
17721	6757	1923	2016-12-18 17:04:10.346708	2016-12-18 17:04:10.346708
17722	6758	1923	2016-12-18 17:04:11.220815	2016-12-18 17:04:11.220815
17723	6759	1923	2016-12-18 17:04:12.09726	2016-12-18 17:04:12.09726
17724	6760	1923	2016-12-18 17:04:13.022413	2016-12-18 17:04:13.022413
17725	6761	1923	2016-12-18 17:04:13.859935	2016-12-18 17:04:13.859935
17726	6762	1923	2016-12-18 17:04:14.808912	2016-12-18 17:04:14.808912
17727	6763	1923	2016-12-18 17:04:15.687441	2016-12-18 17:04:15.687441
17728	6764	1923	2016-12-18 17:04:16.613237	2016-12-18 17:04:16.613237
17729	6765	1923	2016-12-18 17:04:17.424401	2016-12-18 17:04:17.424401
17730	6766	1923	2016-12-18 17:04:18.27383	2016-12-18 17:04:18.27383
17731	6767	1923	2016-12-18 17:04:19.221047	2016-12-18 17:04:19.221047
17732	6768	1923	2016-12-18 17:04:20.074832	2016-12-18 17:04:20.074832
17733	6769	1923	2016-12-18 17:04:21.023562	2016-12-18 17:04:21.023562
17734	6770	1923	2016-12-18 17:04:21.899012	2016-12-18 17:04:21.899012
17735	6771	1923	2016-12-18 17:04:22.740072	2016-12-18 17:04:22.740072
17736	6772	1923	2016-12-18 17:04:23.981299	2016-12-18 17:04:23.981299
17737	6773	1923	2016-12-18 17:04:24.788132	2016-12-18 17:04:24.788132
17738	6774	1924	2016-12-18 17:04:27.357649	2016-12-18 17:04:27.357649
17739	6775	1924	2016-12-18 17:04:28.260293	2016-12-18 17:04:28.260293
17740	6776	1924	2016-12-18 17:04:29.372521	2016-12-18 17:04:29.372521
17741	6777	1924	2016-12-18 17:04:30.246901	2016-12-18 17:04:30.246901
17742	6734	1924	2016-12-18 17:04:30.324775	2016-12-18 17:04:30.324775
17743	6735	1924	2016-12-18 17:04:30.365967	2016-12-18 17:04:30.365967
17744	6778	1924	2016-12-18 17:04:31.247671	2016-12-18 17:04:31.247671
17745	6779	1924	2016-12-18 17:04:32.12318	2016-12-18 17:04:32.12318
17746	6780	1924	2016-12-18 17:04:33.11163	2016-12-18 17:04:33.11163
17747	6781	1924	2016-12-18 17:04:33.948841	2016-12-18 17:04:33.948841
17748	6782	1924	2016-12-18 17:04:34.832298	2016-12-18 17:04:34.832298
17749	6783	1924	2016-12-18 17:04:35.666831	2016-12-18 17:04:35.666831
17750	6784	1924	2016-12-18 17:04:36.565049	2016-12-18 17:04:36.565049
17751	6785	1924	2016-12-18 17:04:37.427594	2016-12-18 17:04:37.427594
17752	6786	1924	2016-12-18 17:04:38.343899	2016-12-18 17:04:38.343899
17753	6787	1925	2016-12-18 17:04:41.051332	2016-12-18 17:04:41.051332
17754	6788	1925	2016-12-18 17:04:42.070325	2016-12-18 17:04:42.070325
17755	6789	1925	2016-12-18 17:04:43.005077	2016-12-18 17:04:43.005077
17756	6790	1925	2016-12-18 17:04:43.942198	2016-12-18 17:04:43.942198
17757	6791	1925	2016-12-18 17:04:44.935036	2016-12-18 17:04:44.935036
17758	6792	1925	2016-12-18 17:04:45.846106	2016-12-18 17:04:45.846106
17759	6793	1925	2016-12-18 17:04:46.676953	2016-12-18 17:04:46.676953
17760	6794	1925	2016-12-18 17:04:47.552245	2016-12-18 17:04:47.552245
17761	6795	1925	2016-12-18 17:04:48.39976	2016-12-18 17:04:48.39976
17762	6796	1925	2016-12-18 17:04:49.287263	2016-12-18 17:04:49.287263
17763	6797	1925	2016-12-18 17:04:50.13907	2016-12-18 17:04:50.13907
17764	6798	1925	2016-12-18 17:04:51.028408	2016-12-18 17:04:51.028408
17765	6799	1925	2016-12-18 17:04:51.897763	2016-12-18 17:04:51.897763
17766	6800	1925	2016-12-18 17:04:52.750505	2016-12-18 17:04:52.750505
17767	6801	1925	2016-12-18 17:04:53.733802	2016-12-18 17:04:53.733802
17768	6802	1925	2016-12-18 17:04:54.563381	2016-12-18 17:04:54.563381
17769	6803	1925	2016-12-18 17:04:55.433083	2016-12-18 17:04:55.433083
17770	6804	1925	2016-12-18 17:04:56.252414	2016-12-18 17:04:56.252414
17771	6805	1925	2016-12-18 17:04:57.185063	2016-12-18 17:04:57.185063
17772	6806	1925	2016-12-18 17:04:58.028285	2016-12-18 17:04:58.028285
17773	6807	1925	2016-12-18 17:05:00.232287	2016-12-18 17:05:00.232287
17774	6808	1925	2016-12-18 17:05:01.102634	2016-12-18 17:05:01.102634
17775	6809	1925	2016-12-18 17:05:02.008738	2016-12-18 17:05:02.008738
17776	6810	1925	2016-12-18 17:05:03.200971	2016-12-18 17:05:03.200971
17777	6811	1925	2016-12-18 17:05:04.19973	2016-12-18 17:05:04.19973
17778	6812	1925	2016-12-18 17:05:05.3248	2016-12-18 17:05:05.3248
17779	6813	1925	2016-12-18 17:05:06.348357	2016-12-18 17:05:06.348357
17780	6814	1926	2016-12-18 17:05:10.031286	2016-12-18 17:05:10.031286
17781	6815	1926	2016-12-18 17:05:11.015757	2016-12-18 17:05:11.015757
17782	6816	1926	2016-12-18 17:05:11.948497	2016-12-18 17:05:11.948497
17783	6817	1926	2016-12-18 17:05:12.775843	2016-12-18 17:05:12.775843
17784	6735	1926	2016-12-18 17:05:12.811801	2016-12-18 17:05:12.811801
17785	6818	1926	2016-12-18 17:05:13.663828	2016-12-18 17:05:13.663828
17786	6819	1926	2016-12-18 17:05:14.536261	2016-12-18 17:05:14.536261
17787	6736	1926	2016-12-18 17:05:14.577771	2016-12-18 17:05:14.577771
17788	6820	1926	2016-12-18 17:05:16.043599	2016-12-18 17:05:16.043599
17789	6821	1926	2016-12-18 17:05:16.961656	2016-12-18 17:05:16.961656
17790	6822	1926	2016-12-18 17:05:17.757975	2016-12-18 17:05:17.757975
17791	6823	1926	2016-12-18 17:05:18.700361	2016-12-18 17:05:18.700361
17792	6824	1926	2016-12-18 17:05:19.548981	2016-12-18 17:05:19.548981
17793	6825	1926	2016-12-18 17:05:20.406882	2016-12-18 17:05:20.406882
17794	6826	1926	2016-12-18 17:05:21.379747	2016-12-18 17:05:21.379747
17795	6827	1926	2016-12-18 17:05:22.253565	2016-12-18 17:05:22.253565
17796	6419	1927	2016-12-18 17:05:24.381184	2016-12-18 17:05:24.381184
17797	6420	1927	2016-12-18 17:05:24.40973	2016-12-18 17:05:24.40973
17798	6421	1927	2016-12-18 17:05:24.447226	2016-12-18 17:05:24.447226
17799	6828	1927	2016-12-18 17:05:25.344749	2016-12-18 17:05:25.344749
17800	6423	1927	2016-12-18 17:05:25.386473	2016-12-18 17:05:25.386473
17801	6425	1927	2016-12-18 17:05:25.4269	2016-12-18 17:05:25.4269
17802	6426	1927	2016-12-18 17:05:25.494826	2016-12-18 17:05:25.494826
17803	6427	1927	2016-12-18 17:05:25.511045	2016-12-18 17:05:25.511045
17804	6428	1927	2016-12-18 17:05:25.544923	2016-12-18 17:05:25.544923
17805	6429	1927	2016-12-18 17:05:25.583911	2016-12-18 17:05:25.583911
17806	6431	1927	2016-12-18 17:05:25.61884	2016-12-18 17:05:25.61884
17807	6432	1927	2016-12-18 17:05:25.663928	2016-12-18 17:05:25.663928
17808	6490	1927	2016-12-18 17:05:25.695009	2016-12-18 17:05:25.695009
17809	6491	1927	2016-12-18 17:05:25.745121	2016-12-18 17:05:25.745121
17810	6437	1927	2016-12-18 17:05:25.763869	2016-12-18 17:05:25.763869
17811	6829	1927	2016-12-18 17:05:26.584496	2016-12-18 17:05:26.584496
17812	6439	1927	2016-12-18 17:05:26.624032	2016-12-18 17:05:26.624032
17813	6440	1927	2016-12-18 17:05:26.666419	2016-12-18 17:05:26.666419
17814	6441	1927	2016-12-18 17:05:26.716508	2016-12-18 17:05:26.716508
17815	6830	1927	2016-12-18 17:05:27.617349	2016-12-18 17:05:27.617349
17816	6831	1927	2016-12-18 17:05:29.762162	2016-12-18 17:05:29.762162
17817	6832	1927	2016-12-18 17:05:30.686948	2016-12-18 17:05:30.686948
17818	6833	1928	2016-12-18 17:05:35.584792	2016-12-18 17:05:35.584792
17819	6834	1928	2016-12-18 17:05:36.918385	2016-12-18 17:05:36.918385
17820	6835	1928	2016-12-18 17:05:38.143856	2016-12-18 17:05:38.143856
17821	6836	1928	2016-12-18 17:05:39.47826	2016-12-18 17:05:39.47826
17822	6837	1928	2016-12-18 17:05:40.753154	2016-12-18 17:05:40.753154
17823	6838	1928	2016-12-18 17:05:42.00117	2016-12-18 17:05:42.00117
17824	6839	1928	2016-12-18 17:05:42.839726	2016-12-18 17:05:42.839726
17825	6840	1928	2016-12-18 17:05:43.643166	2016-12-18 17:05:43.643166
17826	6841	1928	2016-12-18 17:05:44.548727	2016-12-18 17:05:44.548727
17827	6842	1928	2016-12-18 17:05:45.434246	2016-12-18 17:05:45.434246
17828	6828	1928	2016-12-18 17:05:45.475371	2016-12-18 17:05:45.475371
17829	6843	1928	2016-12-18 17:05:46.320317	2016-12-18 17:05:46.320317
17830	6844	1928	2016-12-18 17:05:47.277576	2016-12-18 17:05:47.277576
17831	6845	1928	2016-12-18 17:05:48.095568	2016-12-18 17:05:48.095568
17832	6846	1928	2016-12-18 17:05:48.870558	2016-12-18 17:05:48.870558
17833	6847	1928	2016-12-18 17:05:49.781818	2016-12-18 17:05:49.781818
17834	6502	1906	2016-12-18 17:05:54.204736	2016-12-18 17:05:54.204736
17835	6509	1906	2016-12-18 17:05:54.242812	2016-12-18 17:05:54.242812
17836	6510	1906	2016-12-18 17:05:54.287062	2016-12-18 17:05:54.287062
17837	6511	1906	2016-12-18 17:05:54.329081	2016-12-18 17:05:54.329081
17838	6512	1906	2016-12-18 17:05:54.367895	2016-12-18 17:05:54.367895
17839	6515	1906	2016-12-18 17:05:54.410341	2016-12-18 17:05:54.410341
17840	6516	1906	2016-12-18 17:05:54.470725	2016-12-18 17:05:54.470725
17841	6517	1906	2016-12-18 17:05:54.523948	2016-12-18 17:05:54.523948
17842	6518	1906	2016-12-18 17:05:54.566358	2016-12-18 17:05:54.566358
17843	6503	1906	2016-12-18 17:05:54.621479	2016-12-18 17:05:54.621479
17844	6581	1906	2016-12-18 17:05:54.660263	2016-12-18 17:05:54.660263
17845	6519	1906	2016-12-18 17:05:54.706522	2016-12-18 17:05:54.706522
17846	6504	1906	2016-12-18 17:05:54.738047	2016-12-18 17:05:54.738047
17847	6582	1906	2016-12-18 17:05:54.788234	2016-12-18 17:05:54.788234
17848	6520	1906	2016-12-18 17:05:54.828298	2016-12-18 17:05:54.828298
17849	6521	1906	2016-12-18 17:05:54.871906	2016-12-18 17:05:54.871906
17850	6522	1906	2016-12-18 17:05:54.905601	2016-12-18 17:05:54.905601
17851	6336	1906	2016-12-18 17:05:54.95078	2016-12-18 17:05:54.95078
17852	6523	1906	2016-12-18 17:05:54.985029	2016-12-18 17:05:54.985029
17853	6524	1906	2016-12-18 17:05:55.039616	2016-12-18 17:05:55.039616
17854	6525	1906	2016-12-18 17:05:58.081777	2016-12-18 17:05:58.081777
17855	6526	1906	2016-12-18 17:05:58.118372	2016-12-18 17:05:58.118372
17856	6527	1906	2016-12-18 17:05:58.146881	2016-12-18 17:05:58.146881
17857	6528	1906	2016-12-18 17:05:58.192244	2016-12-18 17:05:58.192244
17858	6529	1906	2016-12-18 17:05:58.234291	2016-12-18 17:05:58.234291
17859	6530	1906	2016-12-18 17:05:58.284118	2016-12-18 17:05:58.284118
17860	6531	1906	2016-12-18 17:05:58.330099	2016-12-18 17:05:58.330099
17861	6532	1906	2016-12-18 17:05:58.381496	2016-12-18 17:05:58.381496
17862	6533	1906	2016-12-18 17:05:58.443516	2016-12-18 17:05:58.443516
17863	6583	1906	2016-12-18 17:05:58.480738	2016-12-18 17:05:58.480738
17864	6534	1906	2016-12-18 17:05:58.503361	2016-12-18 17:05:58.503361
17865	6535	1906	2016-12-18 17:05:58.53947	2016-12-18 17:05:58.53947
17866	6584	1906	2016-12-18 17:05:58.58276	2016-12-18 17:05:58.58276
17867	6585	1906	2016-12-18 17:05:58.613114	2016-12-18 17:05:58.613114
17868	6586	1906	2016-12-18 17:05:58.666176	2016-12-18 17:05:58.666176
17869	6587	1906	2016-12-18 17:05:58.695486	2016-12-18 17:05:58.695486
17870	6588	1906	2016-12-18 17:05:58.734122	2016-12-18 17:05:58.734122
17871	6589	1906	2016-12-18 17:05:58.781062	2016-12-18 17:05:58.781062
17872	6590	1906	2016-12-18 17:05:58.816258	2016-12-18 17:05:58.816258
17873	6591	1906	2016-12-18 17:05:58.871067	2016-12-18 17:05:58.871067
17874	6592	1906	2016-12-18 17:06:01.776046	2016-12-18 17:06:01.776046
17875	6593	1906	2016-12-18 17:06:01.820944	2016-12-18 17:06:01.820944
17876	6594	1906	2016-12-18 17:06:01.876298	2016-12-18 17:06:01.876298
17877	6595	1906	2016-12-18 17:06:01.938657	2016-12-18 17:06:01.938657
17878	6505	1906	2016-12-18 17:06:01.983629	2016-12-18 17:06:01.983629
17879	6506	1906	2016-12-18 17:06:02.001732	2016-12-18 17:06:02.001732
17880	6507	1906	2016-12-18 17:06:02.035746	2016-12-18 17:06:02.035746
17881	6596	1906	2016-12-18 17:06:02.072143	2016-12-18 17:06:02.072143
17882	6597	1906	2016-12-18 17:06:02.113816	2016-12-18 17:06:02.113816
17883	6598	1906	2016-12-18 17:06:02.134307	2016-12-18 17:06:02.134307
17884	6599	1906	2016-12-18 17:06:02.205565	2016-12-18 17:06:02.205565
17885	6554	1906	2016-12-18 17:06:02.236683	2016-12-18 17:06:02.236683
17886	6555	1906	2016-12-18 17:06:02.257213	2016-12-18 17:06:02.257213
17887	6556	1906	2016-12-18 17:06:02.290902	2016-12-18 17:06:02.290902
17888	6557	1906	2016-12-18 17:06:02.337019	2016-12-18 17:06:02.337019
17889	6558	1906	2016-12-18 17:06:02.375819	2016-12-18 17:06:02.375819
17890	6340	1906	2016-12-18 17:06:02.413522	2016-12-18 17:06:02.413522
17891	6342	1906	2016-12-18 17:06:02.442492	2016-12-18 17:06:02.442492
17892	6640	1906	2016-12-18 17:06:02.503438	2016-12-18 17:06:02.503438
17893	6712	1906	2016-12-18 17:06:02.540873	2016-12-18 17:06:02.540873
17894	6713	1906	2016-12-18 17:06:04.781135	2016-12-18 17:06:04.781135
17895	6714	1906	2016-12-18 17:06:04.828882	2016-12-18 17:06:04.828882
17896	6715	1906	2016-12-18 17:06:04.864454	2016-12-18 17:06:04.864454
17897	6716	1906	2016-12-18 17:06:04.887684	2016-12-18 17:06:04.887684
17898	6717	1906	2016-12-18 17:06:04.959385	2016-12-18 17:06:04.959385
17899	6718	1906	2016-12-18 17:06:05.005163	2016-12-18 17:06:05.005163
17900	6719	1906	2016-12-18 17:06:05.039338	2016-12-18 17:06:05.039338
17901	6720	1906	2016-12-18 17:06:05.091509	2016-12-18 17:06:05.091509
17902	6721	1906	2016-12-18 17:06:05.124656	2016-12-18 17:06:05.124656
17903	6722	1906	2016-12-18 17:06:05.156435	2016-12-18 17:06:05.156435
17904	6723	1906	2016-12-18 17:06:05.180012	2016-12-18 17:06:05.180012
17905	6724	1906	2016-12-18 17:06:05.217179	2016-12-18 17:06:05.217179
17906	6725	1906	2016-12-18 17:06:05.249415	2016-12-18 17:06:05.249415
17907	6726	1906	2016-12-18 17:06:05.304822	2016-12-18 17:06:05.304822
17908	6727	1906	2016-12-18 17:06:05.337304	2016-12-18 17:06:05.337304
17909	6728	1906	2016-12-18 17:06:05.384479	2016-12-18 17:06:05.384479
17910	6729	1906	2016-12-18 17:06:05.424183	2016-12-18 17:06:05.424183
17911	6731	1906	2016-12-18 17:06:05.464726	2016-12-18 17:06:05.464726
17912	6732	1906	2016-12-18 17:06:05.49873	2016-12-18 17:06:05.49873
17913	6733	1906	2016-12-18 17:06:05.544919	2016-12-18 17:06:05.544919
17914	6736	1906	2016-12-18 17:06:08.205783	2016-12-18 17:06:08.205783
17915	6739	1906	2016-12-18 17:06:08.229256	2016-12-18 17:06:08.229256
17916	6742	1906	2016-12-18 17:06:08.261486	2016-12-18 17:06:08.261486
17917	6743	1906	2016-12-18 17:06:08.299393	2016-12-18 17:06:08.299393
17918	6744	1906	2016-12-18 17:06:08.351067	2016-12-18 17:06:08.351067
17919	6745	1906	2016-12-18 17:06:08.419504	2016-12-18 17:06:08.419504
17920	6623	1906	2016-12-18 17:06:08.457359	2016-12-18 17:06:08.457359
17921	6624	1906	2016-12-18 17:06:08.498147	2016-12-18 17:06:08.498147
17922	6625	1906	2016-12-18 17:06:08.532428	2016-12-18 17:06:08.532428
17923	6626	1906	2016-12-18 17:06:08.581338	2016-12-18 17:06:08.581338
17924	6627	1906	2016-12-18 17:06:08.600267	2016-12-18 17:06:08.600267
17925	6628	1906	2016-12-18 17:06:08.638901	2016-12-18 17:06:08.638901
17926	6629	1906	2016-12-18 17:06:08.683928	2016-12-18 17:06:08.683928
17927	6630	1906	2016-12-18 17:06:08.716927	2016-12-18 17:06:08.716927
17928	6631	1906	2016-12-18 17:06:08.762892	2016-12-18 17:06:08.762892
17929	6632	1906	2016-12-18 17:06:08.802598	2016-12-18 17:06:08.802598
17930	6637	1906	2016-12-18 17:06:08.845084	2016-12-18 17:06:08.845084
17931	6755	1906	2016-12-18 17:06:08.923893	2016-12-18 17:06:08.923893
17932	6756	1906	2016-12-18 17:06:08.964417	2016-12-18 17:06:08.964417
17933	6757	1906	2016-12-18 17:06:09.016616	2016-12-18 17:06:09.016616
17934	6758	1906	2016-12-18 17:06:11.419838	2016-12-18 17:06:11.419838
17935	6684	1906	2016-12-18 17:06:11.462547	2016-12-18 17:06:11.462547
17936	6685	1906	2016-12-18 17:06:11.508325	2016-12-18 17:06:11.508325
17937	6686	1906	2016-12-18 17:06:11.556598	2016-12-18 17:06:11.556598
17938	6759	1906	2016-12-18 17:06:11.596571	2016-12-18 17:06:11.596571
17939	6760	1906	2016-12-18 17:06:11.63619	2016-12-18 17:06:11.63619
17940	6761	1906	2016-12-18 17:06:11.682529	2016-12-18 17:06:11.682529
17941	6762	1906	2016-12-18 17:06:11.717667	2016-12-18 17:06:11.717667
17942	6687	1906	2016-12-18 17:06:11.76551	2016-12-18 17:06:11.76551
17943	6654	1906	2016-12-18 17:06:11.798881	2016-12-18 17:06:11.798881
17944	6655	1906	2016-12-18 17:06:11.838473	2016-12-18 17:06:11.838473
17945	6656	1906	2016-12-18 17:06:11.884362	2016-12-18 17:06:11.884362
17946	6763	1906	2016-12-18 17:06:11.914897	2016-12-18 17:06:11.914897
17947	6764	1906	2016-12-18 17:06:11.950581	2016-12-18 17:06:11.950581
17948	6765	1906	2016-12-18 17:06:11.969567	2016-12-18 17:06:11.969567
17949	6766	1906	2016-12-18 17:06:12.000771	2016-12-18 17:06:12.000771
17950	6767	1906	2016-12-18 17:06:12.044781	2016-12-18 17:06:12.044781
17951	6688	1906	2016-12-18 17:06:12.099841	2016-12-18 17:06:12.099841
17952	6689	1906	2016-12-18 17:06:12.142106	2016-12-18 17:06:12.142106
17953	6690	1906	2016-12-18 17:06:12.181058	2016-12-18 17:06:12.181058
17954	6691	1906	2016-12-18 17:06:14.67598	2016-12-18 17:06:14.67598
17955	6692	1906	2016-12-18 17:06:14.723279	2016-12-18 17:06:14.723279
17956	6693	1906	2016-12-18 17:06:14.757074	2016-12-18 17:06:14.757074
17957	6694	1906	2016-12-18 17:06:14.802069	2016-12-18 17:06:14.802069
17958	6695	1906	2016-12-18 17:06:14.841911	2016-12-18 17:06:14.841911
17959	6696	1906	2016-12-18 17:06:14.870862	2016-12-18 17:06:14.870862
17960	6697	1906	2016-12-18 17:06:14.913702	2016-12-18 17:06:14.913702
17961	6698	1906	2016-12-18 17:06:14.933358	2016-12-18 17:06:14.933358
17962	6699	1906	2016-12-18 17:06:14.966841	2016-12-18 17:06:14.966841
17963	6768	1906	2016-12-18 17:06:15.005726	2016-12-18 17:06:15.005726
17964	6702	1906	2016-12-18 17:06:15.052021	2016-12-18 17:06:15.052021
17965	6368	1906	2016-12-18 17:06:15.082485	2016-12-18 17:06:15.082485
17966	6369	1906	2016-12-18 17:06:15.131807	2016-12-18 17:06:15.131807
17967	6513	1906	2016-12-18 17:06:15.165563	2016-12-18 17:06:15.165563
17968	6514	1906	2016-12-18 17:06:15.227349	2016-12-18 17:06:15.227349
17969	6774	1906	2016-12-18 17:06:15.271275	2016-12-18 17:06:15.271275
17970	6775	1906	2016-12-18 17:06:15.30458	2016-12-18 17:06:15.30458
17971	6776	1906	2016-12-18 17:06:15.346567	2016-12-18 17:06:15.346567
17972	6779	1906	2016-12-18 17:06:15.396367	2016-12-18 17:06:15.396367
17973	6780	1906	2016-12-18 17:06:15.431692	2016-12-18 17:06:15.431692
17974	6786	1906	2016-12-18 17:06:17.391812	2016-12-18 17:06:17.391812
17975	6787	1906	2016-12-18 17:06:17.432218	2016-12-18 17:06:17.432218
17976	6788	1906	2016-12-18 17:06:17.4715	2016-12-18 17:06:17.4715
17977	6789	1906	2016-12-18 17:06:17.51092	2016-12-18 17:06:17.51092
17978	6790	1906	2016-12-18 17:06:17.548883	2016-12-18 17:06:17.548883
17979	6791	1906	2016-12-18 17:06:17.604517	2016-12-18 17:06:17.604517
17980	6793	1906	2016-12-18 17:06:17.642126	2016-12-18 17:06:17.642126
17981	6794	1906	2016-12-18 17:06:17.679582	2016-12-18 17:06:17.679582
17982	6833	1906	2016-12-18 17:06:17.724693	2016-12-18 17:06:17.724693
17983	6834	1906	2016-12-18 17:06:17.775152	2016-12-18 17:06:17.775152
17984	6835	1906	2016-12-18 17:06:17.814452	2016-12-18 17:06:17.814452
17985	6848	1906	2016-12-18 17:06:18.60876	2016-12-18 17:06:18.60876
17986	6836	1906	2016-12-18 17:06:18.648288	2016-12-18 17:06:18.648288
17987	6837	1906	2016-12-18 17:06:18.684513	2016-12-18 17:06:18.684513
17988	6838	1906	2016-12-18 17:06:18.709658	2016-12-18 17:06:18.709658
17989	6839	1906	2016-12-18 17:06:18.734637	2016-12-18 17:06:18.734637
17990	6840	1906	2016-12-18 17:06:18.795921	2016-12-18 17:06:18.795921
17991	6841	1906	2016-12-18 17:06:18.845872	2016-12-18 17:06:18.845872
17992	6842	1906	2016-12-18 17:06:18.914607	2016-12-18 17:06:18.914607
17993	6849	1906	2016-12-18 17:06:19.730216	2016-12-18 17:06:19.730216
17994	6850	1906	2016-12-18 17:06:23.011511	2016-12-18 17:06:23.011511
17995	6851	1906	2016-12-18 17:06:23.808545	2016-12-18 17:06:23.808545
17996	6815	1906	2016-12-18 17:06:23.817896	2016-12-18 17:06:23.817896
17997	6843	1906	2016-12-18 17:06:23.859648	2016-12-18 17:06:23.859648
17998	6844	1906	2016-12-18 17:06:23.904183	2016-12-18 17:06:23.904183
17999	6852	1906	2016-12-18 17:06:24.780671	2016-12-18 17:06:24.780671
18000	6853	1906	2016-12-18 17:06:25.742204	2016-12-18 17:06:25.742204
18001	6854	1906	2016-12-18 17:06:26.685697	2016-12-18 17:06:26.685697
18002	6855	1906	2016-12-18 17:06:27.525299	2016-12-18 17:06:27.525299
18003	6856	1906	2016-12-18 17:06:28.316648	2016-12-18 17:06:28.316648
18004	6857	1906	2016-12-18 17:06:29.227939	2016-12-18 17:06:29.227939
18005	6858	1906	2016-12-18 17:06:30.1203	2016-12-18 17:06:30.1203
18006	6859	1906	2016-12-18 17:06:30.94403	2016-12-18 17:06:30.94403
18007	6860	1906	2016-12-18 17:06:31.821838	2016-12-18 17:06:31.821838
18008	6861	1906	2016-12-18 17:06:32.638059	2016-12-18 17:06:32.638059
18009	6862	1906	2016-12-18 17:06:33.556741	2016-12-18 17:06:33.556741
18010	6863	1906	2016-12-18 17:06:34.414282	2016-12-18 17:06:34.414282
18011	6864	1906	2016-12-18 17:06:35.237125	2016-12-18 17:06:35.237125
18012	6865	1906	2016-12-18 17:06:36.073714	2016-12-18 17:06:36.073714
18013	6814	1906	2016-12-18 17:06:36.117754	2016-12-18 17:06:36.117754
18014	6792	1906	2016-12-18 17:06:38.737506	2016-12-18 17:06:38.737506
18015	6419	1906	2016-12-18 17:06:38.772085	2016-12-18 17:06:38.772085
18016	6420	1906	2016-12-18 17:06:38.816824	2016-12-18 17:06:38.816824
18017	6421	1906	2016-12-18 17:06:38.832518	2016-12-18 17:06:38.832518
18018	6828	1906	2016-12-18 17:06:38.869639	2016-12-18 17:06:38.869639
18019	6423	1906	2016-12-18 17:06:38.908876	2016-12-18 17:06:38.908876
18020	6425	1906	2016-12-18 17:06:38.94737	2016-12-18 17:06:38.94737
18021	6426	1906	2016-12-18 17:06:38.987361	2016-12-18 17:06:38.987361
18022	6427	1906	2016-12-18 17:06:39.002532	2016-12-18 17:06:39.002532
18023	6428	1906	2016-12-18 17:06:39.035601	2016-12-18 17:06:39.035601
18024	6429	1906	2016-12-18 17:06:39.064119	2016-12-18 17:06:39.064119
18025	6657	1906	2016-12-18 17:06:39.126113	2016-12-18 17:06:39.126113
18026	6700	1906	2016-12-18 17:06:39.189189	2016-12-18 17:06:39.189189
18027	6701	1906	2016-12-18 17:06:39.248278	2016-12-18 17:06:39.248278
18028	6769	1906	2016-12-18 17:06:39.295236	2016-12-18 17:06:39.295236
18029	6770	1906	2016-12-18 17:06:39.333225	2016-12-18 17:06:39.333225
18030	6508	1906	2016-12-18 17:06:39.36249	2016-12-18 17:06:39.36249
18031	6536	1906	2016-12-18 17:06:39.402875	2016-12-18 17:06:39.402875
18032	6537	1906	2016-12-18 17:06:39.450044	2016-12-18 17:06:39.450044
18033	6538	1906	2016-12-18 17:06:39.501169	2016-12-18 17:06:39.501169
18034	6539	1906	2016-12-18 17:06:43.792837	2016-12-18 17:06:43.792837
18035	6540	1906	2016-12-18 17:06:43.836342	2016-12-18 17:06:43.836342
18036	6541	1906	2016-12-18 17:06:43.87993	2016-12-18 17:06:43.87993
18037	6542	1906	2016-12-18 17:06:43.904476	2016-12-18 17:06:43.904476
18038	6543	1906	2016-12-18 17:06:43.948875	2016-12-18 17:06:43.948875
18039	6544	1906	2016-12-18 17:06:43.988757	2016-12-18 17:06:43.988757
18040	6545	1906	2016-12-18 17:06:44.031654	2016-12-18 17:06:44.031654
18041	6546	1906	2016-12-18 17:06:44.071007	2016-12-18 17:06:44.071007
18042	6547	1906	2016-12-18 17:06:44.123318	2016-12-18 17:06:44.123318
18043	6548	1906	2016-12-18 17:06:44.167074	2016-12-18 17:06:44.167074
18044	6549	1906	2016-12-18 17:06:44.226915	2016-12-18 17:06:44.226915
18045	6550	1906	2016-12-18 17:06:44.267869	2016-12-18 17:06:44.267869
18046	6551	1906	2016-12-18 17:06:44.30053	2016-12-18 17:06:44.30053
18047	6552	1906	2016-12-18 17:06:44.3596	2016-12-18 17:06:44.3596
18048	6553	1906	2016-12-18 17:06:44.381751	2016-12-18 17:06:44.381751
18049	6600	1906	2016-12-18 17:06:44.431347	2016-12-18 17:06:44.431347
18050	6730	1906	2016-12-18 17:06:44.46861	2016-12-18 17:06:44.46861
18051	6601	1906	2016-12-18 17:06:44.508549	2016-12-18 17:06:44.508549
18052	6602	1906	2016-12-18 17:06:44.568046	2016-12-18 17:06:44.568046
18053	6603	1906	2016-12-18 17:06:44.595066	2016-12-18 17:06:44.595066
18054	6604	1906	2016-12-18 17:06:48.338313	2016-12-18 17:06:48.338313
18055	6559	1906	2016-12-18 17:06:48.370333	2016-12-18 17:06:48.370333
18056	6560	1906	2016-12-18 17:06:48.407677	2016-12-18 17:06:48.407677
18057	6605	1906	2016-12-18 17:06:48.450617	2016-12-18 17:06:48.450617
18058	6606	1906	2016-12-18 17:06:48.499004	2016-12-18 17:06:48.499004
18059	6607	1906	2016-12-18 17:06:48.543823	2016-12-18 17:06:48.543823
18060	6608	1906	2016-12-18 17:06:48.581755	2016-12-18 17:06:48.581755
18061	6609	1906	2016-12-18 17:06:48.611656	2016-12-18 17:06:48.611656
18062	6610	1906	2016-12-18 17:06:48.628991	2016-12-18 17:06:48.628991
18063	6611	1906	2016-12-18 17:06:48.659033	2016-12-18 17:06:48.659033
18064	6612	1906	2016-12-18 17:06:48.713587	2016-12-18 17:06:48.713587
18065	6613	1906	2016-12-18 17:06:48.749575	2016-12-18 17:06:48.749575
18066	6614	1906	2016-12-18 17:06:48.789484	2016-12-18 17:06:48.789484
18067	6615	1906	2016-12-18 17:06:48.835181	2016-12-18 17:06:48.835181
18068	6616	1906	2016-12-18 17:06:48.869093	2016-12-18 17:06:48.869093
18069	6617	1906	2016-12-18 17:06:48.919809	2016-12-18 17:06:48.919809
18070	6633	1906	2016-12-18 17:06:48.970642	2016-12-18 17:06:48.970642
18071	6634	1906	2016-12-18 17:06:49.008613	2016-12-18 17:06:49.008613
18072	6635	1906	2016-12-18 17:06:49.044132	2016-12-18 17:06:49.044132
18073	6636	1906	2016-12-18 17:06:49.091137	2016-12-18 17:06:49.091137
18074	6431	1906	2016-12-18 17:06:52.344964	2016-12-18 17:06:52.344964
18075	6432	1906	2016-12-18 17:06:52.427219	2016-12-18 17:06:52.427219
18076	6490	1906	2016-12-18 17:06:52.471682	2016-12-18 17:06:52.471682
18077	6491	1906	2016-12-18 17:06:52.540589	2016-12-18 17:06:52.540589
18078	6845	1906	2016-12-18 17:06:52.590854	2016-12-18 17:06:52.590854
18079	6771	1906	2016-12-18 17:06:52.631519	2016-12-18 17:06:52.631519
18080	6658	1906	2016-12-18 17:06:52.676053	2016-12-18 17:06:52.676053
18081	6659	1906	2016-12-18 17:06:52.72307	2016-12-18 17:06:52.72307
18082	6660	1906	2016-12-18 17:06:52.762646	2016-12-18 17:06:52.762646
18083	6777	1906	2016-12-18 17:06:52.79177	2016-12-18 17:06:52.79177
18084	6648	1906	2016-12-18 17:06:52.829949	2016-12-18 17:06:52.829949
18085	6561	1906	2016-12-18 17:06:52.874019	2016-12-18 17:06:52.874019
18086	6562	1906	2016-12-18 17:06:52.931727	2016-12-18 17:06:52.931727
18087	6816	1906	2016-12-18 17:06:52.960592	2016-12-18 17:06:52.960592
18088	6817	1906	2016-12-18 17:06:52.999516	2016-12-18 17:06:52.999516
18089	6734	1906	2016-12-18 17:06:53.050675	2016-12-18 17:06:53.050675
18090	6735	1906	2016-12-18 17:06:53.095317	2016-12-18 17:06:53.095317
18091	6846	1906	2016-12-18 17:06:53.13449	2016-12-18 17:06:53.13449
18092	6818	1906	2016-12-18 17:06:53.171549	2016-12-18 17:06:53.171549
18093	6819	1906	2016-12-18 17:06:53.213423	2016-12-18 17:06:53.213423
18094	6778	1906	2016-12-18 17:06:55.608572	2016-12-18 17:06:55.608572
18095	6563	1906	2016-12-18 17:06:55.644507	2016-12-18 17:06:55.644507
18096	6781	1906	2016-12-18 17:06:55.706978	2016-12-18 17:06:55.706978
18097	6782	1906	2016-12-18 17:06:55.762186	2016-12-18 17:06:55.762186
18098	6783	1906	2016-12-18 17:06:55.809278	2016-12-18 17:06:55.809278
18099	6784	1906	2016-12-18 17:06:55.837993	2016-12-18 17:06:55.837993
18100	6785	1906	2016-12-18 17:06:55.882699	2016-12-18 17:06:55.882699
18101	6437	1906	2016-12-18 17:06:55.936845	2016-12-18 17:06:55.936845
18102	6737	1906	2016-12-18 17:06:55.977576	2016-12-18 17:06:55.977576
18103	6738	1906	2016-12-18 17:06:56.022002	2016-12-18 17:06:56.022002
18104	6740	1906	2016-12-18 17:06:56.091245	2016-12-18 17:06:56.091245
18105	6741	1906	2016-12-18 17:06:56.130818	2016-12-18 17:06:56.130818
18106	6795	1906	2016-12-18 17:06:56.174618	2016-12-18 17:06:56.174618
18107	6796	1906	2016-12-18 17:06:56.232957	2016-12-18 17:06:56.232957
18108	6797	1906	2016-12-18 17:06:56.29159	2016-12-18 17:06:56.29159
18109	6798	1906	2016-12-18 17:06:56.330115	2016-12-18 17:06:56.330115
18110	6799	1906	2016-12-18 17:06:56.380692	2016-12-18 17:06:56.380692
18111	6800	1906	2016-12-18 17:06:56.427634	2016-12-18 17:06:56.427634
18112	6801	1906	2016-12-18 17:06:56.469671	2016-12-18 17:06:56.469671
18113	6802	1906	2016-12-18 17:06:56.520439	2016-12-18 17:06:56.520439
18114	6746	1906	2016-12-18 17:06:59.352217	2016-12-18 17:06:59.352217
18115	6747	1906	2016-12-18 17:06:59.420324	2016-12-18 17:06:59.420324
18116	6748	1906	2016-12-18 17:06:59.461356	2016-12-18 17:06:59.461356
18117	6564	1906	2016-12-18 17:06:59.504701	2016-12-18 17:06:59.504701
18118	6565	1906	2016-12-18 17:06:59.539087	2016-12-18 17:06:59.539087
18119	6566	1906	2016-12-18 17:06:59.590876	2016-12-18 17:06:59.590876
18120	6567	1906	2016-12-18 17:06:59.626039	2016-12-18 17:06:59.626039
18121	6568	1906	2016-12-18 17:06:59.645479	2016-12-18 17:06:59.645479
18122	6569	1906	2016-12-18 17:06:59.689619	2016-12-18 17:06:59.689619
18123	6829	1906	2016-12-18 17:06:59.747921	2016-12-18 17:06:59.747921
18124	6439	1906	2016-12-18 17:06:59.794697	2016-12-18 17:06:59.794697
18125	6440	1906	2016-12-18 17:06:59.830886	2016-12-18 17:06:59.830886
18126	6441	1906	2016-12-18 17:06:59.890627	2016-12-18 17:06:59.890627
18127	6830	1906	2016-12-18 17:06:59.927245	2016-12-18 17:06:59.927245
18128	6803	1906	2016-12-18 17:06:59.960946	2016-12-18 17:06:59.960946
18129	6820	1906	2016-12-18 17:06:59.982916	2016-12-18 17:06:59.982916
18130	6772	1906	2016-12-18 17:07:00.021877	2016-12-18 17:07:00.021877
18131	6831	1906	2016-12-18 17:07:00.062896	2016-12-18 17:07:00.062896
18132	6821	1906	2016-12-18 17:07:00.123164	2016-12-18 17:07:00.123164
18133	6822	1906	2016-12-18 17:07:00.169115	2016-12-18 17:07:00.169115
18134	6638	1906	2016-12-18 17:07:04.501085	2016-12-18 17:07:04.501085
18135	6678	1906	2016-12-18 17:07:04.560051	2016-12-18 17:07:04.560051
18136	6679	1906	2016-12-18 17:07:04.607572	2016-12-18 17:07:04.607572
18137	6680	1906	2016-12-18 17:07:04.654082	2016-12-18 17:07:04.654082
18138	6749	1906	2016-12-18 17:07:04.702239	2016-12-18 17:07:04.702239
18139	6344	1906	2016-12-18 17:07:04.736154	2016-12-18 17:07:04.736154
18140	6618	1906	2016-12-18 17:07:04.772183	2016-12-18 17:07:04.772183
18141	6619	1906	2016-12-18 17:07:04.810177	2016-12-18 17:07:04.810177
18142	6620	1906	2016-12-18 17:07:04.85941	2016-12-18 17:07:04.85941
18143	6621	1906	2016-12-18 17:07:04.901352	2016-12-18 17:07:04.901352
18144	6570	1906	2016-12-18 17:07:04.945741	2016-12-18 17:07:04.945741
18145	6571	1906	2016-12-18 17:07:05.01438	2016-12-18 17:07:05.01438
18146	6572	1906	2016-12-18 17:07:05.051934	2016-12-18 17:07:05.051934
18147	6573	1906	2016-12-18 17:07:05.090738	2016-12-18 17:07:05.090738
18148	6575	1906	2016-12-18 17:07:05.141899	2016-12-18 17:07:05.141899
18149	6576	1906	2016-12-18 17:07:05.197409	2016-12-18 17:07:05.197409
18150	6577	1906	2016-12-18 17:07:05.256449	2016-12-18 17:07:05.256449
18151	6578	1906	2016-12-18 17:07:05.312054	2016-12-18 17:07:05.312054
18152	6579	1906	2016-12-18 17:07:05.344896	2016-12-18 17:07:05.344896
18153	6580	1906	2016-12-18 17:07:05.393633	2016-12-18 17:07:05.393633
18154	6622	1906	2016-12-18 17:07:07.651794	2016-12-18 17:07:07.651794
18155	6641	1906	2016-12-18 17:07:07.699722	2016-12-18 17:07:07.699722
18156	6750	1906	2016-12-18 17:07:07.774509	2016-12-18 17:07:07.774509
18157	6751	1906	2016-12-18 17:07:07.822446	2016-12-18 17:07:07.822446
18158	6752	1906	2016-12-18 17:07:07.860007	2016-12-18 17:07:07.860007
18159	6753	1906	2016-12-18 17:07:07.93582	2016-12-18 17:07:07.93582
18160	6643	1906	2016-12-18 17:07:07.978005	2016-12-18 17:07:07.978005
18161	6644	1906	2016-12-18 17:07:08.044213	2016-12-18 17:07:08.044213
18162	6711	1906	2016-12-18 17:07:08.095014	2016-12-18 17:07:08.095014
18163	6754	1906	2016-12-18 17:07:08.153101	2016-12-18 17:07:08.153101
18164	6806	1906	2016-12-18 17:07:08.214129	2016-12-18 17:07:08.214129
18165	6703	1906	2016-12-18 17:07:08.265955	2016-12-18 17:07:08.265955
18166	6704	1906	2016-12-18 17:07:08.319281	2016-12-18 17:07:08.319281
18167	6705	1906	2016-12-18 17:07:08.364331	2016-12-18 17:07:08.364331
18168	6645	1906	2016-12-18 17:07:08.443682	2016-12-18 17:07:08.443682
18169	6646	1906	2016-12-18 17:07:08.509733	2016-12-18 17:07:08.509733
18170	6706	1906	2016-12-18 17:07:08.559271	2016-12-18 17:07:08.559271
18171	6707	1906	2016-12-18 17:07:08.634786	2016-12-18 17:07:08.634786
18172	6708	1906	2016-12-18 17:07:08.703245	2016-12-18 17:07:08.703245
18173	6709	1906	2016-12-18 17:07:08.738003	2016-12-18 17:07:08.738003
18174	6773	1906	2016-12-18 17:07:10.967777	2016-12-18 17:07:10.967777
18175	6663	1906	2016-12-18 17:07:10.989887	2016-12-18 17:07:10.989887
18176	6574	1906	2016-12-18 17:07:11.063066	2016-12-18 17:07:11.063066
18177	6683	1906	2016-12-18 17:07:11.105479	2016-12-18 17:07:11.105479
18178	6804	1906	2016-12-18 17:07:11.141157	2016-12-18 17:07:11.141157
18179	6805	1906	2016-12-18 17:07:11.181924	2016-12-18 17:07:11.181924
18180	6807	1906	2016-12-18 17:07:11.225243	2016-12-18 17:07:11.225243
18181	6808	1906	2016-12-18 17:07:11.28085	2016-12-18 17:07:11.28085
18182	6809	1906	2016-12-18 17:07:11.32129	2016-12-18 17:07:11.32129
18183	6810	1906	2016-12-18 17:07:11.347988	2016-12-18 17:07:11.347988
18184	6811	1906	2016-12-18 17:07:11.390695	2016-12-18 17:07:11.390695
18185	6812	1906	2016-12-18 17:07:11.425256	2016-12-18 17:07:11.425256
18186	6823	1906	2016-12-18 17:07:11.481057	2016-12-18 17:07:11.481057
18187	6847	1906	2016-12-18 17:07:11.563142	2016-12-18 17:07:11.563142
18188	6832	1906	2016-12-18 17:07:11.61041	2016-12-18 17:07:11.61041
18189	6824	1906	2016-12-18 17:07:11.687617	2016-12-18 17:07:11.687617
18190	6825	1906	2016-12-18 17:07:11.730684	2016-12-18 17:07:11.730684
18191	6826	1906	2016-12-18 17:07:11.76815	2016-12-18 17:07:11.76815
18192	6827	1906	2016-12-18 17:07:11.824793	2016-12-18 17:07:11.824793
18193	6661	1906	2016-12-18 17:07:11.900149	2016-12-18 17:07:11.900149
18194	6813	1906	2016-12-18 17:07:13.766077	2016-12-18 17:07:13.766077
18195	6710	1906	2016-12-18 17:07:13.823341	2016-12-18 17:07:13.823341
18196	6639	1906	2016-12-18 17:07:13.871337	2016-12-18 17:07:13.871337
18197	6662	1906	2016-12-18 17:07:13.942298	2016-12-18 17:07:13.942298
18198	6647	1906	2016-12-18 17:07:13.969845	2016-12-18 17:07:13.969845
18199	6664	1906	2016-12-18 17:07:14.018042	2016-12-18 17:07:14.018042
18200	6681	1906	2016-12-18 17:07:14.080104	2016-12-18 17:07:14.080104
18201	6649	1906	2016-12-18 17:07:14.14362	2016-12-18 17:07:14.14362
18202	6665	1906	2016-12-18 17:07:14.179868	2016-12-18 17:07:14.179868
18203	6666	1906	2016-12-18 17:07:14.22591	2016-12-18 17:07:14.22591
18204	6667	1906	2016-12-18 17:07:14.278993	2016-12-18 17:07:14.278993
18205	6668	1906	2016-12-18 17:07:14.320614	2016-12-18 17:07:14.320614
18206	6669	1906	2016-12-18 17:07:14.358331	2016-12-18 17:07:14.358331
18207	6670	1906	2016-12-18 17:07:14.410662	2016-12-18 17:07:14.410662
18208	6671	1906	2016-12-18 17:07:14.457184	2016-12-18 17:07:14.457184
18209	6672	1906	2016-12-18 17:07:14.522059	2016-12-18 17:07:14.522059
18210	6673	1906	2016-12-18 17:07:14.559882	2016-12-18 17:07:14.559882
18211	6674	1906	2016-12-18 17:07:14.609932	2016-12-18 17:07:14.609932
18212	6675	1906	2016-12-18 17:07:14.661145	2016-12-18 17:07:14.661145
18213	6676	1906	2016-12-18 17:07:14.697756	2016-12-18 17:07:14.697756
18214	6677	1906	2016-12-18 17:07:16.666806	2016-12-18 17:07:16.666806
18215	6682	1906	2016-12-18 17:07:16.732008	2016-12-18 17:07:16.732008
18216	6642	1906	2016-12-18 17:07:16.767366	2016-12-18 17:07:16.767366
18217	6650	1906	2016-12-18 17:07:16.792451	2016-12-18 17:07:16.792451
18218	6651	1906	2016-12-18 17:07:16.831819	2016-12-18 17:07:16.831819
18219	6652	1906	2016-12-18 17:07:16.867537	2016-12-18 17:07:16.867537
18220	6653	1906	2016-12-18 17:07:16.896214	2016-12-18 17:07:16.896214
18221	6743	1921	2016-12-18 17:07:18.783174	2016-12-18 17:07:18.783174
18222	6744	1921	2016-12-18 17:07:18.833452	2016-12-18 17:07:18.833452
18223	6745	1921	2016-12-18 17:07:18.873925	2016-12-18 17:07:18.873925
18224	6786	1921	2016-12-18 17:07:18.910996	2016-12-18 17:07:18.910996
18225	6833	1921	2016-12-18 17:07:18.951152	2016-12-18 17:07:18.951152
18226	6834	1921	2016-12-18 17:07:18.988696	2016-12-18 17:07:18.988696
18227	6835	1921	2016-12-18 17:07:19.035008	2016-12-18 17:07:19.035008
18228	6787	1921	2016-12-18 17:07:19.074522	2016-12-18 17:07:19.074522
18229	6788	1921	2016-12-18 17:07:19.116943	2016-12-18 17:07:19.116943
18230	6790	1921	2016-12-18 17:07:19.150527	2016-12-18 17:07:19.150527
18231	6755	1921	2016-12-18 17:07:19.205664	2016-12-18 17:07:19.205664
18232	6756	1921	2016-12-18 17:07:19.233949	2016-12-18 17:07:19.233949
18233	6757	1921	2016-12-18 17:07:19.27422	2016-12-18 17:07:19.27422
18234	6758	1921	2016-12-18 17:07:19.32051	2016-12-18 17:07:19.32051
18235	6759	1921	2016-12-18 17:07:19.375318	2016-12-18 17:07:19.375318
18236	6760	1921	2016-12-18 17:07:19.410794	2016-12-18 17:07:19.410794
18237	6761	1921	2016-12-18 17:07:19.485602	2016-12-18 17:07:19.485602
18238	6762	1921	2016-12-18 17:07:19.527121	2016-12-18 17:07:19.527121
18239	6791	1921	2016-12-18 17:07:19.574767	2016-12-18 17:07:19.574767
18240	6789	1921	2016-12-18 17:07:19.612514	2016-12-18 17:07:19.612514
18241	6712	1921	2016-12-18 17:07:21.898279	2016-12-18 17:07:21.898279
18242	6713	1921	2016-12-18 17:07:21.939864	2016-12-18 17:07:21.939864
18243	6714	1921	2016-12-18 17:07:21.99023	2016-12-18 17:07:21.99023
18244	6848	1921	2016-12-18 17:07:22.012465	2016-12-18 17:07:22.012465
18245	6814	1921	2016-12-18 17:07:22.041927	2016-12-18 17:07:22.041927
18246	6792	1921	2016-12-18 17:07:22.084655	2016-12-18 17:07:22.084655
18247	6715	1921	2016-12-18 17:07:22.123263	2016-12-18 17:07:22.123263
18248	6419	1921	2016-12-18 17:07:22.161155	2016-12-18 17:07:22.161155
18249	6420	1921	2016-12-18 17:07:22.203221	2016-12-18 17:07:22.203221
18250	6421	1921	2016-12-18 17:07:22.25266	2016-12-18 17:07:22.25266
18251	6836	1921	2016-12-18 17:07:22.290271	2016-12-18 17:07:22.290271
18252	6837	1921	2016-12-18 17:07:22.3633	2016-12-18 17:07:22.3633
18253	6838	1921	2016-12-18 17:07:22.409926	2016-12-18 17:07:22.409926
18254	6839	1921	2016-12-18 17:07:22.438313	2016-12-18 17:07:22.438313
18255	6840	1921	2016-12-18 17:07:22.45853	2016-12-18 17:07:22.45853
18256	6841	1921	2016-12-18 17:07:22.496204	2016-12-18 17:07:22.496204
18257	6774	1921	2016-12-18 17:07:22.537708	2016-12-18 17:07:22.537708
18258	6763	1921	2016-12-18 17:07:22.56804	2016-12-18 17:07:22.56804
18259	6842	1921	2016-12-18 17:07:22.612307	2016-12-18 17:07:22.612307
18260	6828	1921	2016-12-18 17:07:22.656809	2016-12-18 17:07:22.656809
18261	6423	1921	2016-12-18 17:07:24.568986	2016-12-18 17:07:24.568986
18262	6425	1921	2016-12-18 17:07:24.597952	2016-12-18 17:07:24.597952
18263	6426	1921	2016-12-18 17:07:24.630022	2016-12-18 17:07:24.630022
18264	6427	1921	2016-12-18 17:07:24.700001	2016-12-18 17:07:24.700001
18265	6428	1921	2016-12-18 17:07:24.736235	2016-12-18 17:07:24.736235
18266	6429	1921	2016-12-18 17:07:24.786409	2016-12-18 17:07:24.786409
18267	6764	1921	2016-12-18 17:07:24.818369	2016-12-18 17:07:24.818369
18268	6716	1921	2016-12-18 17:07:24.839151	2016-12-18 17:07:24.839151
18269	6717	1921	2016-12-18 17:07:24.882183	2016-12-18 17:07:24.882183
18270	6718	1921	2016-12-18 17:07:24.920785	2016-12-18 17:07:24.920785
18271	6719	1921	2016-12-18 17:07:24.952643	2016-12-18 17:07:24.952643
18272	6765	1921	2016-12-18 17:07:24.983099	2016-12-18 17:07:24.983099
18273	6766	1921	2016-12-18 17:07:25.024341	2016-12-18 17:07:25.024341
18274	6849	1921	2016-12-18 17:07:25.065294	2016-12-18 17:07:25.065294
18275	6850	1921	2016-12-18 17:07:25.117498	2016-12-18 17:07:25.117498
18276	6767	1921	2016-12-18 17:07:25.164136	2016-12-18 17:07:25.164136
18277	6720	1921	2016-12-18 17:07:25.203031	2016-12-18 17:07:25.203031
18278	6721	1921	2016-12-18 17:07:25.233894	2016-12-18 17:07:25.233894
18279	6722	1921	2016-12-18 17:07:25.294171	2016-12-18 17:07:25.294171
18280	6723	1921	2016-12-18 17:07:25.330929	2016-12-18 17:07:25.330929
18281	6851	1921	2016-12-18 17:07:27.329348	2016-12-18 17:07:27.329348
18282	6724	1921	2016-12-18 17:07:27.368205	2016-12-18 17:07:27.368205
18283	6725	1921	2016-12-18 17:07:27.388742	2016-12-18 17:07:27.388742
18284	6815	1921	2016-12-18 17:07:27.428182	2016-12-18 17:07:27.428182
18285	6843	1921	2016-12-18 17:07:27.490067	2016-12-18 17:07:27.490067
18286	6844	1921	2016-12-18 17:07:27.512279	2016-12-18 17:07:27.512279
18287	6726	1921	2016-12-18 17:07:27.578751	2016-12-18 17:07:27.578751
18288	6727	1921	2016-12-18 17:07:27.627401	2016-12-18 17:07:27.627401
18289	6852	1921	2016-12-18 17:07:27.668993	2016-12-18 17:07:27.668993
18290	6853	1921	2016-12-18 17:07:27.715247	2016-12-18 17:07:27.715247
18291	6854	1921	2016-12-18 17:07:27.752793	2016-12-18 17:07:27.752793
18292	6855	1921	2016-12-18 17:07:27.790055	2016-12-18 17:07:27.790055
18293	6856	1921	2016-12-18 17:07:27.835173	2016-12-18 17:07:27.835173
18294	6728	1921	2016-12-18 17:07:27.862385	2016-12-18 17:07:27.862385
18295	6857	1921	2016-12-18 17:07:27.886908	2016-12-18 17:07:27.886908
18296	6858	1921	2016-12-18 17:07:27.948212	2016-12-18 17:07:27.948212
18297	6859	1921	2016-12-18 17:07:27.991763	2016-12-18 17:07:27.991763
18298	6860	1921	2016-12-18 17:07:28.031929	2016-12-18 17:07:28.031929
18299	6861	1921	2016-12-18 17:07:28.07377	2016-12-18 17:07:28.07377
18300	6862	1921	2016-12-18 17:07:28.093974	2016-12-18 17:07:28.093974
18301	6863	1921	2016-12-18 17:07:30.222872	2016-12-18 17:07:30.222872
18302	6864	1921	2016-12-18 17:07:30.281522	2016-12-18 17:07:30.281522
18303	6865	1921	2016-12-18 17:07:30.319642	2016-12-18 17:07:30.319642
18304	6729	1921	2016-12-18 17:07:30.367429	2016-12-18 17:07:30.367429
18305	6768	1921	2016-12-18 17:07:30.412256	2016-12-18 17:07:30.412256
18306	6769	1921	2016-12-18 17:07:30.450178	2016-12-18 17:07:30.450178
18307	6770	1921	2016-12-18 17:07:30.499089	2016-12-18 17:07:30.499089
18308	6775	1921	2016-12-18 17:07:30.5286	2016-12-18 17:07:30.5286
18309	6776	1921	2016-12-18 17:07:30.551045	2016-12-18 17:07:30.551045
18310	6730	1921	2016-12-18 17:07:30.586358	2016-12-18 17:07:30.586358
18311	6431	1921	2016-12-18 17:07:30.628863	2016-12-18 17:07:30.628863
18312	6432	1921	2016-12-18 17:07:30.689886	2016-12-18 17:07:30.689886
18313	6490	1921	2016-12-18 17:07:30.721552	2016-12-18 17:07:30.721552
18314	6491	1921	2016-12-18 17:07:30.759788	2016-12-18 17:07:30.759788
18315	6845	1921	2016-12-18 17:07:30.835681	2016-12-18 17:07:30.835681
18316	6771	1921	2016-12-18 17:07:30.877096	2016-12-18 17:07:30.877096
18317	6777	1921	2016-12-18 17:07:30.904355	2016-12-18 17:07:30.904355
18318	6793	1921	2016-12-18 17:07:30.951116	2016-12-18 17:07:30.951116
18319	6794	1921	2016-12-18 17:07:31.002825	2016-12-18 17:07:31.002825
18320	6731	1921	2016-12-18 17:07:31.041446	2016-12-18 17:07:31.041446
18321	6732	1921	2016-12-18 17:07:32.998902	2016-12-18 17:07:32.998902
18322	6733	1921	2016-12-18 17:07:33.037613	2016-12-18 17:07:33.037613
18323	6816	1921	2016-12-18 17:07:33.082989	2016-12-18 17:07:33.082989
18324	6817	1921	2016-12-18 17:07:33.138322	2016-12-18 17:07:33.138322
18325	6734	1921	2016-12-18 17:07:33.181259	2016-12-18 17:07:33.181259
18326	6735	1921	2016-12-18 17:07:33.241109	2016-12-18 17:07:33.241109
18327	6846	1921	2016-12-18 17:07:33.268673	2016-12-18 17:07:33.268673
18328	6818	1921	2016-12-18 17:07:33.334352	2016-12-18 17:07:33.334352
18329	6819	1921	2016-12-18 17:07:33.368341	2016-12-18 17:07:33.368341
18330	6778	1921	2016-12-18 17:07:33.390377	2016-12-18 17:07:33.390377
18331	6779	1921	2016-12-18 17:07:33.428285	2016-12-18 17:07:33.428285
18332	6780	1921	2016-12-18 17:07:33.488771	2016-12-18 17:07:33.488771
18333	6736	1921	2016-12-18 17:07:33.536551	2016-12-18 17:07:33.536551
18334	6781	1921	2016-12-18 17:07:33.575347	2016-12-18 17:07:33.575347
18335	6782	1921	2016-12-18 17:07:33.595554	2016-12-18 17:07:33.595554
18336	6783	1921	2016-12-18 17:07:33.63178	2016-12-18 17:07:33.63178
18337	6784	1921	2016-12-18 17:07:33.661828	2016-12-18 17:07:33.661828
18338	6785	1921	2016-12-18 17:07:33.718961	2016-12-18 17:07:33.718961
18339	6437	1921	2016-12-18 17:07:33.782137	2016-12-18 17:07:33.782137
18340	6737	1921	2016-12-18 17:07:33.805772	2016-12-18 17:07:33.805772
18341	6738	1921	2016-12-18 17:07:35.970739	2016-12-18 17:07:35.970739
18342	6739	1921	2016-12-18 17:07:36.016158	2016-12-18 17:07:36.016158
18343	6740	1921	2016-12-18 17:07:36.054844	2016-12-18 17:07:36.054844
18344	6741	1921	2016-12-18 17:07:36.097531	2016-12-18 17:07:36.097531
18345	6742	1921	2016-12-18 17:07:36.141093	2016-12-18 17:07:36.141093
18346	6795	1921	2016-12-18 17:07:36.206589	2016-12-18 17:07:36.206589
18347	6796	1921	2016-12-18 17:07:36.231164	2016-12-18 17:07:36.231164
18348	6797	1921	2016-12-18 17:07:36.270508	2016-12-18 17:07:36.270508
18349	6798	1921	2016-12-18 17:07:36.326914	2016-12-18 17:07:36.326914
18350	6799	1921	2016-12-18 17:07:36.369008	2016-12-18 17:07:36.369008
18351	6800	1921	2016-12-18 17:07:36.414672	2016-12-18 17:07:36.414672
18352	6801	1921	2016-12-18 17:07:36.457868	2016-12-18 17:07:36.457868
18353	6802	1921	2016-12-18 17:07:36.512299	2016-12-18 17:07:36.512299
18354	6746	1921	2016-12-18 17:07:36.560651	2016-12-18 17:07:36.560651
18355	6747	1921	2016-12-18 17:07:36.596702	2016-12-18 17:07:36.596702
18356	6748	1921	2016-12-18 17:07:36.636181	2016-12-18 17:07:36.636181
18357	6829	1921	2016-12-18 17:07:36.689271	2016-12-18 17:07:36.689271
18358	6439	1921	2016-12-18 17:07:36.72628	2016-12-18 17:07:36.72628
18359	6440	1921	2016-12-18 17:07:36.797995	2016-12-18 17:07:36.797995
18360	6441	1921	2016-12-18 17:07:36.812523	2016-12-18 17:07:36.812523
18361	6830	1921	2016-12-18 17:07:39.002185	2016-12-18 17:07:39.002185
18362	6803	1921	2016-12-18 17:07:39.040758	2016-12-18 17:07:39.040758
18363	6820	1921	2016-12-18 17:07:39.064677	2016-12-18 17:07:39.064677
18364	6772	1921	2016-12-18 17:07:39.131723	2016-12-18 17:07:39.131723
18365	6831	1921	2016-12-18 17:07:39.178838	2016-12-18 17:07:39.178838
18366	6821	1921	2016-12-18 17:07:39.223974	2016-12-18 17:07:39.223974
18367	6822	1921	2016-12-18 17:07:39.264836	2016-12-18 17:07:39.264836
18368	6749	1921	2016-12-18 17:07:39.304098	2016-12-18 17:07:39.304098
18369	6823	1921	2016-12-18 17:07:39.353511	2016-12-18 17:07:39.353511
18370	6847	1921	2016-12-18 17:07:39.390326	2016-12-18 17:07:39.390326
18371	6773	1921	2016-12-18 17:07:39.438243	2016-12-18 17:07:39.438243
18372	6811	1921	2016-12-18 17:07:39.480807	2016-12-18 17:07:39.480807
18373	6832	1921	2016-12-18 17:07:39.518261	2016-12-18 17:07:39.518261
18374	6750	1921	2016-12-18 17:07:39.557264	2016-12-18 17:07:39.557264
18375	6804	1921	2016-12-18 17:07:39.600159	2016-12-18 17:07:39.600159
18376	6805	1921	2016-12-18 17:07:39.63952	2016-12-18 17:07:39.63952
18377	6806	1921	2016-12-18 17:07:39.682054	2016-12-18 17:07:39.682054
18378	6812	1921	2016-12-18 17:07:39.731808	2016-12-18 17:07:39.731808
18379	6807	1921	2016-12-18 17:07:39.773154	2016-12-18 17:07:39.773154
18380	6808	1921	2016-12-18 17:07:39.833023	2016-12-18 17:07:39.833023
18381	6809	1921	2016-12-18 17:07:41.421802	2016-12-18 17:07:41.421802
18382	6810	1921	2016-12-18 17:07:41.467234	2016-12-18 17:07:41.467234
18383	6824	1921	2016-12-18 17:07:41.500704	2016-12-18 17:07:41.500704
18384	6813	1921	2016-12-18 17:07:41.543225	2016-12-18 17:07:41.543225
18385	6751	1921	2016-12-18 17:07:41.583151	2016-12-18 17:07:41.583151
18386	6752	1921	2016-12-18 17:07:41.607864	2016-12-18 17:07:41.607864
18387	6753	1921	2016-12-18 17:07:41.684457	2016-12-18 17:07:41.684457
18388	6825	1921	2016-12-18 17:07:41.7192	2016-12-18 17:07:41.7192
18389	6826	1921	2016-12-18 17:07:41.734758	2016-12-18 17:07:41.734758
18390	6827	1921	2016-12-18 17:07:41.770834	2016-12-18 17:07:41.770834
18391	6754	1921	2016-12-18 17:07:41.802882	2016-12-18 17:07:41.802882
18392	6852	1929	2016-12-18 17:07:43.276013	2016-12-18 17:07:43.276013
18393	6863	1929	2016-12-18 17:07:43.376467	2016-12-18 17:07:43.376467
18394	6854	1929	2016-12-18 17:07:43.422672	2016-12-18 17:07:43.422672
18395	6853	1929	2016-12-18 17:07:43.479082	2016-12-18 17:07:43.479082
18396	6862	1929	2016-12-18 17:07:43.516406	2016-12-18 17:07:43.516406
18397	6860	1929	2016-12-18 17:07:43.545494	2016-12-18 17:07:43.545494
18398	6858	1929	2016-12-18 17:07:43.596003	2016-12-18 17:07:43.596003
18399	6859	1929	2016-12-18 17:07:43.640708	2016-12-18 17:07:43.640708
18400	6865	1929	2016-12-18 17:07:43.676927	2016-12-18 17:07:43.676927
18401	6861	1929	2016-12-18 17:07:43.728669	2016-12-18 17:07:43.728669
18402	6855	1929	2016-12-18 17:07:43.763864	2016-12-18 17:07:43.763864
18403	6864	1929	2016-12-18 17:07:43.797752	2016-12-18 17:07:43.797752
18404	6856	1929	2016-12-18 17:07:43.842181	2016-12-18 17:07:43.842181
18405	6728	1929	2016-12-18 17:07:43.886229	2016-12-18 17:07:43.886229
18406	6857	1929	2016-12-18 17:07:43.916789	2016-12-18 17:07:43.916789
18407	6866	1932	2016-12-18 17:07:46.606146	2016-12-18 17:07:46.606146
18408	6867	1932	2016-12-18 17:07:47.475853	2016-12-18 17:07:47.475853
18409	6868	1932	2016-12-18 17:07:48.404685	2016-12-18 17:07:48.404685
18410	6869	1932	2016-12-18 17:07:49.279839	2016-12-18 17:07:49.279839
18411	6870	1932	2016-12-18 17:07:50.114765	2016-12-18 17:07:50.114765
18412	6871	1932	2016-12-18 17:07:50.976755	2016-12-18 17:07:50.976755
18413	6341	1932	2016-12-18 17:07:51.022188	2016-12-18 17:07:51.022188
18414	6872	1932	2016-12-18 17:07:51.965357	2016-12-18 17:07:51.965357
18415	6873	1932	2016-12-18 17:07:52.895302	2016-12-18 17:07:52.895302
18416	6874	1932	2016-12-18 17:07:53.779642	2016-12-18 17:07:53.779642
18417	6875	1932	2016-12-18 17:07:54.907994	2016-12-18 17:07:54.907994
18418	6876	1932	2016-12-18 17:07:55.731815	2016-12-18 17:07:55.731815
18419	6877	1932	2016-12-18 17:07:56.528245	2016-12-18 17:07:56.528245
18420	6878	1932	2016-12-18 17:07:57.366697	2016-12-18 17:07:57.366697
18421	6879	1932	2016-12-18 17:07:58.288851	2016-12-18 17:07:58.288851
18422	6880	1932	2016-12-18 17:07:59.193804	2016-12-18 17:07:59.193804
18423	6881	1932	2016-12-18 17:07:59.986848	2016-12-18 17:07:59.986848
18424	6882	1932	2016-12-18 17:08:00.892353	2016-12-18 17:08:00.892353
18425	6883	1932	2016-12-18 17:08:01.901159	2016-12-18 17:08:01.901159
18426	6884	1932	2016-12-18 17:08:02.777624	2016-12-18 17:08:02.777624
18427	6885	1932	2016-12-18 17:08:05.465268	2016-12-18 17:08:05.465268
18428	6886	1932	2016-12-18 17:08:06.418905	2016-12-18 17:08:06.418905
18429	6887	1932	2016-12-18 17:08:07.257793	2016-12-18 17:08:07.257793
18430	6888	1932	2016-12-18 17:08:08.126394	2016-12-18 17:08:08.126394
18431	6889	1932	2016-12-18 17:08:09.132873	2016-12-18 17:08:09.132873
18432	6890	1932	2016-12-18 17:08:09.994016	2016-12-18 17:08:09.994016
18433	6891	1932	2016-12-18 17:08:10.924635	2016-12-18 17:08:10.924635
18434	6892	1933	2016-12-18 17:08:13.662193	2016-12-18 17:08:13.662193
18435	6893	1933	2016-12-18 17:08:14.463044	2016-12-18 17:08:14.463044
18436	6894	1933	2016-12-18 17:08:15.377556	2016-12-18 17:08:15.377556
18437	6895	1933	2016-12-18 17:08:16.218516	2016-12-18 17:08:16.218516
18438	6896	1933	2016-12-18 17:08:17.090616	2016-12-18 17:08:17.090616
18439	6897	1933	2016-12-18 17:08:17.963508	2016-12-18 17:08:17.963508
18440	6898	1933	2016-12-18 17:08:18.803787	2016-12-18 17:08:18.803787
18441	6899	1933	2016-12-18 17:08:19.640026	2016-12-18 17:08:19.640026
18442	6900	1933	2016-12-18 17:08:22.600541	2016-12-18 17:08:22.600541
18443	6901	1933	2016-12-18 17:08:23.970432	2016-12-18 17:08:23.970432
18444	6902	1933	2016-12-18 17:08:25.258013	2016-12-18 17:08:25.258013
18445	6903	1933	2016-12-18 17:08:26.522614	2016-12-18 17:08:26.522614
18446	6904	1933	2016-12-18 17:08:27.418991	2016-12-18 17:08:27.418991
18447	6905	1933	2016-12-18 17:08:28.484833	2016-12-18 17:08:28.484833
18448	6906	1933	2016-12-18 17:08:29.356067	2016-12-18 17:08:29.356067
18449	6907	1933	2016-12-18 17:08:30.308979	2016-12-18 17:08:30.308979
18450	6908	1933	2016-12-18 17:08:31.148451	2016-12-18 17:08:31.148451
18451	6909	1933	2016-12-18 17:08:32.068469	2016-12-18 17:08:32.068469
18452	6910	1933	2016-12-18 17:08:32.934541	2016-12-18 17:08:32.934541
18453	6911	1933	2016-12-18 17:08:33.696872	2016-12-18 17:08:33.696872
18454	6912	1933	2016-12-18 17:08:35.686396	2016-12-18 17:08:35.686396
18455	6913	1933	2016-12-18 17:08:36.4833	2016-12-18 17:08:36.4833
18456	6914	1934	2016-12-18 17:08:39.204165	2016-12-18 17:08:39.204165
18457	6334	1934	2016-12-18 17:08:39.248624	2016-12-18 17:08:39.248624
18458	6915	1934	2016-12-18 17:08:40.077727	2016-12-18 17:08:40.077727
18459	6916	1934	2016-12-18 17:08:40.983421	2016-12-18 17:08:40.983421
18460	6917	1934	2016-12-18 17:08:41.830766	2016-12-18 17:08:41.830766
18461	6918	1934	2016-12-18 17:08:42.701277	2016-12-18 17:08:42.701277
18462	6919	1934	2016-12-18 17:08:43.575993	2016-12-18 17:08:43.575993
18463	6920	1934	2016-12-18 17:08:44.404787	2016-12-18 17:08:44.404787
18464	6921	1934	2016-12-18 17:08:45.247179	2016-12-18 17:08:45.247179
18465	6922	1934	2016-12-18 17:08:46.042958	2016-12-18 17:08:46.042958
18466	6923	1934	2016-12-18 17:08:46.823665	2016-12-18 17:08:46.823665
18467	6924	1934	2016-12-18 17:08:47.707235	2016-12-18 17:08:47.707235
18468	6925	1934	2016-12-18 17:08:48.52212	2016-12-18 17:08:48.52212
18469	6926	1934	2016-12-18 17:08:49.355753	2016-12-18 17:08:49.355753
18470	6927	1934	2016-12-18 17:08:50.246379	2016-12-18 17:08:50.246379
18471	6928	1934	2016-12-18 17:08:51.068026	2016-12-18 17:08:51.068026
18472	6929	1934	2016-12-18 17:08:51.994562	2016-12-18 17:08:51.994562
18473	6930	1934	2016-12-18 17:08:52.838961	2016-12-18 17:08:52.838961
18474	6931	1934	2016-12-18 17:08:53.635071	2016-12-18 17:08:53.635071
18475	6932	1934	2016-12-18 17:08:54.494756	2016-12-18 17:08:54.494756
18476	6933	1934	2016-12-18 17:08:57.124368	2016-12-18 17:08:57.124368
18477	6934	1934	2016-12-18 17:08:57.951671	2016-12-18 17:08:57.951671
18478	6935	1934	2016-12-18 17:08:58.84512	2016-12-18 17:08:58.84512
18479	6936	1934	2016-12-18 17:08:59.683379	2016-12-18 17:08:59.683379
18480	6937	1934	2016-12-18 17:09:00.540836	2016-12-18 17:09:00.540836
18481	6938	1934	2016-12-18 17:09:01.331617	2016-12-18 17:09:01.331617
18482	6939	1934	2016-12-18 17:09:02.303343	2016-12-18 17:09:02.303343
18483	6940	1934	2016-12-18 17:09:03.246176	2016-12-18 17:09:03.246176
18484	6941	1934	2016-12-18 17:09:04.092273	2016-12-18 17:09:04.092273
18485	6942	1934	2016-12-18 17:09:04.932425	2016-12-18 17:09:04.932425
18486	6943	1934	2016-12-18 17:09:05.762982	2016-12-18 17:09:05.762982
18487	6944	1934	2016-12-18 17:09:06.690909	2016-12-18 17:09:06.690909
18488	6945	1934	2016-12-18 17:09:07.718403	2016-12-18 17:09:07.718403
18489	6901	1934	2016-12-18 17:09:07.772141	2016-12-18 17:09:07.772141
18490	6946	1934	2016-12-18 17:09:08.690413	2016-12-18 17:09:08.690413
18491	6947	1934	2016-12-18 17:09:09.557033	2016-12-18 17:09:09.557033
18492	6948	1934	2016-12-18 17:09:10.47908	2016-12-18 17:09:10.47908
18493	6949	1934	2016-12-18 17:09:11.351671	2016-12-18 17:09:11.351671
18494	6950	1934	2016-12-18 17:09:12.14797	2016-12-18 17:09:12.14797
18495	6951	1934	2016-12-18 17:09:13.07029	2016-12-18 17:09:13.07029
18496	6952	1934	2016-12-18 17:09:15.893359	2016-12-18 17:09:15.893359
18497	6953	1934	2016-12-18 17:09:16.883988	2016-12-18 17:09:16.883988
18498	6954	1934	2016-12-18 17:09:17.743526	2016-12-18 17:09:17.743526
18499	6955	1934	2016-12-18 17:09:18.692478	2016-12-18 17:09:18.692478
18500	6956	1934	2016-12-18 17:09:19.489422	2016-12-18 17:09:19.489422
18501	6957	1934	2016-12-18 17:09:20.442556	2016-12-18 17:09:20.442556
18502	6958	1934	2016-12-18 17:09:21.367139	2016-12-18 17:09:21.367139
18503	6959	1934	2016-12-18 17:09:22.323795	2016-12-18 17:09:22.323795
18504	6960	1934	2016-12-18 17:09:23.327193	2016-12-18 17:09:23.327193
18505	6961	1934	2016-12-18 17:09:24.243717	2016-12-18 17:09:24.243717
18506	6962	1934	2016-12-18 17:09:25.195845	2016-12-18 17:09:25.195845
18507	6963	1934	2016-12-18 17:09:26.167886	2016-12-18 17:09:26.167886
18508	6964	1934	2016-12-18 17:09:27.028181	2016-12-18 17:09:27.028181
18509	6965	1934	2016-12-18 17:09:27.903898	2016-12-18 17:09:27.903898
18510	6966	1934	2016-12-18 17:09:28.721993	2016-12-18 17:09:28.721993
18511	6967	1934	2016-12-18 17:09:29.949978	2016-12-18 17:09:29.949978
18512	6331	1935	2016-12-18 17:09:31.37783	2016-12-18 17:09:31.37783
18513	6968	1935	2016-12-18 17:09:32.3329	2016-12-18 17:09:32.3329
18514	6969	1935	2016-12-18 17:09:33.120733	2016-12-18 17:09:33.120733
18515	6898	1935	2016-12-18 17:09:33.162033	2016-12-18 17:09:33.162033
18516	6970	1935	2016-12-18 17:09:34.048834	2016-12-18 17:09:34.048834
18517	6971	1935	2016-12-18 17:09:35.010529	2016-12-18 17:09:35.010529
18518	6972	1936	2016-12-18 17:09:37.031868	2016-12-18 17:09:37.031868
18519	6973	1936	2016-12-18 17:09:37.917231	2016-12-18 17:09:37.917231
18520	6974	1937	2016-12-18 17:09:40.182609	2016-12-18 17:09:40.182609
18521	6975	1937	2016-12-18 17:09:41.045005	2016-12-18 17:09:41.045005
18522	6976	1937	2016-12-18 17:09:42.008139	2016-12-18 17:09:42.008139
18523	6977	1937	2016-12-18 17:09:42.964204	2016-12-18 17:09:42.964204
18524	6978	1937	2016-12-18 17:09:43.80844	2016-12-18 17:09:43.80844
18525	6979	1937	2016-12-18 17:09:44.636449	2016-12-18 17:09:44.636449
18526	6980	1937	2016-12-18 17:09:45.521303	2016-12-18 17:09:45.521303
18527	6981	1937	2016-12-18 17:09:46.348105	2016-12-18 17:09:46.348105
18528	6982	1937	2016-12-18 17:09:47.220893	2016-12-18 17:09:47.220893
18529	6983	1937	2016-12-18 17:09:48.023107	2016-12-18 17:09:48.023107
18530	6984	1937	2016-12-18 17:09:48.84281	2016-12-18 17:09:48.84281
18531	6914	1931	2016-12-18 17:09:50.723276	2016-12-18 17:09:50.723276
18532	6331	1931	2016-12-18 17:09:50.76719	2016-12-18 17:09:50.76719
18533	6901	1931	2016-12-18 17:09:50.795672	2016-12-18 17:09:50.795672
18534	6930	1931	2016-12-18 17:09:50.834513	2016-12-18 17:09:50.834513
18535	6944	1931	2016-12-18 17:09:50.859153	2016-12-18 17:09:50.859153
18536	6972	1931	2016-12-18 17:09:50.899078	2016-12-18 17:09:50.899078
18537	6334	1931	2016-12-18 17:09:50.937407	2016-12-18 17:09:50.937407
18538	6866	1931	2016-12-18 17:09:50.983836	2016-12-18 17:09:50.983836
18539	6867	1931	2016-12-18 17:09:51.021299	2016-12-18 17:09:51.021299
18540	6892	1931	2016-12-18 17:09:51.064322	2016-12-18 17:09:51.064322
18541	6868	1931	2016-12-18 17:09:51.09696	2016-12-18 17:09:51.09696
18542	6985	1931	2016-12-18 17:09:51.961716	2016-12-18 17:09:51.961716
18543	6986	1931	2016-12-18 17:09:52.775224	2016-12-18 17:09:52.775224
18544	6915	1931	2016-12-18 17:09:52.821503	2016-12-18 17:09:52.821503
18545	6916	1931	2016-12-18 17:09:52.878919	2016-12-18 17:09:52.878919
18546	6893	1931	2016-12-18 17:09:52.947587	2016-12-18 17:09:52.947587
18547	6968	1931	2016-12-18 17:09:52.991862	2016-12-18 17:09:52.991862
18548	6917	1931	2016-12-18 17:09:53.028196	2016-12-18 17:09:53.028196
18549	6918	1931	2016-12-18 17:09:53.068748	2016-12-18 17:09:53.068748
18550	6919	1931	2016-12-18 17:09:53.109367	2016-12-18 17:09:53.109367
18551	6894	1931	2016-12-18 17:09:55.05943	2016-12-18 17:09:55.05943
18552	6869	1931	2016-12-18 17:09:55.108915	2016-12-18 17:09:55.108915
18553	6920	1931	2016-12-18 17:09:55.153091	2016-12-18 17:09:55.153091
18554	6969	1931	2016-12-18 17:09:55.187514	2016-12-18 17:09:55.187514
18555	6921	1931	2016-12-18 17:09:55.238289	2016-12-18 17:09:55.238289
18556	6974	1931	2016-12-18 17:09:55.302658	2016-12-18 17:09:55.302658
18557	6975	1931	2016-12-18 17:09:55.320277	2016-12-18 17:09:55.320277
18558	6976	1931	2016-12-18 17:09:55.357477	2016-12-18 17:09:55.357477
18559	6977	1931	2016-12-18 17:09:55.407437	2016-12-18 17:09:55.407437
18560	6895	1931	2016-12-18 17:09:55.46481	2016-12-18 17:09:55.46481
18561	6922	1931	2016-12-18 17:09:55.490705	2016-12-18 17:09:55.490705
18562	6923	1931	2016-12-18 17:09:55.528786	2016-12-18 17:09:55.528786
18563	6924	1931	2016-12-18 17:09:55.570513	2016-12-18 17:09:55.570513
18564	6925	1931	2016-12-18 17:09:55.600104	2016-12-18 17:09:55.600104
18565	6926	1931	2016-12-18 17:09:55.636807	2016-12-18 17:09:55.636807
18566	6927	1931	2016-12-18 17:09:55.680831	2016-12-18 17:09:55.680831
18567	6928	1931	2016-12-18 17:09:55.714525	2016-12-18 17:09:55.714525
18568	6929	1931	2016-12-18 17:09:55.740254	2016-12-18 17:09:55.740254
18569	6896	1931	2016-12-18 17:09:55.814351	2016-12-18 17:09:55.814351
18570	6931	1931	2016-12-18 17:09:55.848076	2016-12-18 17:09:55.848076
18571	6932	1931	2016-12-18 17:09:57.865271	2016-12-18 17:09:57.865271
18572	6933	1931	2016-12-18 17:09:57.898375	2016-12-18 17:09:57.898375
18573	6934	1931	2016-12-18 17:09:57.945901	2016-12-18 17:09:57.945901
18574	6897	1931	2016-12-18 17:09:57.975217	2016-12-18 17:09:57.975217
18575	6935	1931	2016-12-18 17:09:58.027404	2016-12-18 17:09:58.027404
18576	6936	1931	2016-12-18 17:09:58.064066	2016-12-18 17:09:58.064066
18577	6937	1931	2016-12-18 17:09:58.11277	2016-12-18 17:09:58.11277
18578	6938	1931	2016-12-18 17:09:58.146992	2016-12-18 17:09:58.146992
18579	6939	1931	2016-12-18 17:09:58.189491	2016-12-18 17:09:58.189491
18580	6940	1931	2016-12-18 17:09:58.230798	2016-12-18 17:09:58.230798
18581	6898	1931	2016-12-18 17:09:58.274516	2016-12-18 17:09:58.274516
18582	6899	1931	2016-12-18 17:09:58.310554	2016-12-18 17:09:58.310554
18583	6978	1931	2016-12-18 17:09:58.324398	2016-12-18 17:09:58.324398
18584	6979	1931	2016-12-18 17:09:58.362121	2016-12-18 17:09:58.362121
18585	6980	1931	2016-12-18 17:09:58.405584	2016-12-18 17:09:58.405584
18586	6981	1931	2016-12-18 17:09:58.447785	2016-12-18 17:09:58.447785
18587	6982	1931	2016-12-18 17:09:58.485122	2016-12-18 17:09:58.485122
18588	6983	1931	2016-12-18 17:09:58.517721	2016-12-18 17:09:58.517721
18589	6870	1931	2016-12-18 17:09:58.535899	2016-12-18 17:09:58.535899
18590	6871	1931	2016-12-18 17:09:58.598986	2016-12-18 17:09:58.598986
18591	6941	1931	2016-12-18 17:10:00.449612	2016-12-18 17:10:00.449612
18592	6900	1931	2016-12-18 17:10:00.487553	2016-12-18 17:10:00.487553
18593	6942	1931	2016-12-18 17:10:00.534662	2016-12-18 17:10:00.534662
18594	6943	1931	2016-12-18 17:10:00.569578	2016-12-18 17:10:00.569578
18595	6341	1931	2016-12-18 17:10:00.611322	2016-12-18 17:10:00.611322
18596	6945	1931	2016-12-18 17:10:00.683504	2016-12-18 17:10:00.683504
18597	6902	1931	2016-12-18 17:10:00.725452	2016-12-18 17:10:00.725452
18598	6946	1931	2016-12-18 17:10:00.762075	2016-12-18 17:10:00.762075
18599	6947	1931	2016-12-18 17:10:00.784602	2016-12-18 17:10:00.784602
18600	6872	1931	2016-12-18 17:10:00.822005	2016-12-18 17:10:00.822005
18601	6948	1931	2016-12-18 17:10:00.865018	2016-12-18 17:10:00.865018
18602	6949	1931	2016-12-18 17:10:00.931788	2016-12-18 17:10:00.931788
18603	6950	1931	2016-12-18 17:10:00.952336	2016-12-18 17:10:00.952336
18604	6951	1931	2016-12-18 17:10:00.980231	2016-12-18 17:10:00.980231
18605	6952	1931	2016-12-18 17:10:01.019425	2016-12-18 17:10:01.019425
18606	6953	1931	2016-12-18 17:10:01.054267	2016-12-18 17:10:01.054267
18607	6954	1931	2016-12-18 17:10:01.075946	2016-12-18 17:10:01.075946
18608	6955	1931	2016-12-18 17:10:01.112522	2016-12-18 17:10:01.112522
18609	6956	1931	2016-12-18 17:10:01.152334	2016-12-18 17:10:01.152334
18610	6957	1931	2016-12-18 17:10:01.202987	2016-12-18 17:10:01.202987
18611	6903	1931	2016-12-18 17:10:04.358078	2016-12-18 17:10:04.358078
18612	6904	1931	2016-12-18 17:10:04.39717	2016-12-18 17:10:04.39717
18613	6905	1931	2016-12-18 17:10:04.44641	2016-12-18 17:10:04.44641
18614	6906	1931	2016-12-18 17:10:04.481791	2016-12-18 17:10:04.481791
18615	6907	1931	2016-12-18 17:10:04.496917	2016-12-18 17:10:04.496917
18616	6908	1931	2016-12-18 17:10:04.533858	2016-12-18 17:10:04.533858
18617	6958	1931	2016-12-18 17:10:04.579699	2016-12-18 17:10:04.579699
18618	6959	1931	2016-12-18 17:10:04.64507	2016-12-18 17:10:04.64507
18619	6960	1931	2016-12-18 17:10:04.683164	2016-12-18 17:10:04.683164
18620	6961	1931	2016-12-18 17:10:04.74086	2016-12-18 17:10:04.74086
18621	6909	1931	2016-12-18 17:10:04.789043	2016-12-18 17:10:04.789043
18622	6910	1931	2016-12-18 17:10:04.83233	2016-12-18 17:10:04.83233
18623	6962	1931	2016-12-18 17:10:04.870038	2016-12-18 17:10:04.870038
18624	6963	1931	2016-12-18 17:10:04.914299	2016-12-18 17:10:04.914299
18625	6964	1931	2016-12-18 17:10:04.959035	2016-12-18 17:10:04.959035
18626	6873	1931	2016-12-18 17:10:05.035631	2016-12-18 17:10:05.035631
18627	6874	1931	2016-12-18 17:10:05.075428	2016-12-18 17:10:05.075428
18628	6786	1931	2016-12-18 17:10:05.119895	2016-12-18 17:10:05.119895
18629	6743	1931	2016-12-18 17:10:05.160305	2016-12-18 17:10:05.160305
18630	6744	1931	2016-12-18 17:10:05.200206	2016-12-18 17:10:05.200206
18631	6745	1931	2016-12-18 17:10:07.616221	2016-12-18 17:10:07.616221
18632	6875	1931	2016-12-18 17:10:07.662903	2016-12-18 17:10:07.662903
18633	6876	1931	2016-12-18 17:10:07.70081	2016-12-18 17:10:07.70081
18634	6965	1931	2016-12-18 17:10:07.747878	2016-12-18 17:10:07.747878
18635	6911	1931	2016-12-18 17:10:07.785315	2016-12-18 17:10:07.785315
18636	6970	1931	2016-12-18 17:10:07.811333	2016-12-18 17:10:07.811333
18637	6877	1931	2016-12-18 17:10:07.856733	2016-12-18 17:10:07.856733
18638	6878	1931	2016-12-18 17:10:07.894715	2016-12-18 17:10:07.894715
18639	6879	1931	2016-12-18 17:10:07.941301	2016-12-18 17:10:07.941301
18640	6880	1931	2016-12-18 17:10:08.023392	2016-12-18 17:10:08.023392
18641	6881	1931	2016-12-18 17:10:08.076434	2016-12-18 17:10:08.076434
18642	6882	1931	2016-12-18 17:10:08.105891	2016-12-18 17:10:08.105891
18643	6883	1931	2016-12-18 17:10:08.141208	2016-12-18 17:10:08.141208
18644	6884	1931	2016-12-18 17:10:08.164437	2016-12-18 17:10:08.164437
18645	6912	1931	2016-12-18 17:10:08.225639	2016-12-18 17:10:08.225639
18646	6966	1931	2016-12-18 17:10:08.251779	2016-12-18 17:10:08.251779
18647	6987	1931	2016-12-18 17:10:11.316038	2016-12-18 17:10:11.316038
18648	6885	1931	2016-12-18 17:10:11.370589	2016-12-18 17:10:11.370589
18649	6886	1931	2016-12-18 17:10:11.419056	2016-12-18 17:10:11.419056
18650	6887	1931	2016-12-18 17:10:11.462667	2016-12-18 17:10:11.462667
18651	6888	1931	2016-12-18 17:10:13.527292	2016-12-18 17:10:13.527292
18652	6889	1931	2016-12-18 17:10:13.569712	2016-12-18 17:10:13.569712
18653	6890	1931	2016-12-18 17:10:13.611685	2016-12-18 17:10:13.611685
18654	6967	1931	2016-12-18 17:10:13.652604	2016-12-18 17:10:13.652604
18655	6984	1931	2016-12-18 17:10:13.713618	2016-12-18 17:10:13.713618
18656	6913	1931	2016-12-18 17:10:13.784902	2016-12-18 17:10:13.784902
18657	6973	1931	2016-12-18 17:10:13.825094	2016-12-18 17:10:13.825094
18658	6971	1931	2016-12-18 17:10:13.876156	2016-12-18 17:10:13.876156
18659	6891	1931	2016-12-18 17:10:13.918325	2016-12-18 17:10:13.918325
18660	6986	1938	2016-12-18 17:10:15.082503	2016-12-18 17:10:15.082503
18661	6987	1938	2016-12-18 17:10:15.122653	2016-12-18 17:10:15.122653
18662	6988	1940	2016-12-18 17:10:18.469599	2016-12-18 17:10:18.469599
18663	6989	1940	2016-12-18 17:10:19.380008	2016-12-18 17:10:19.380008
18664	6990	1940	2016-12-18 17:10:20.241212	2016-12-18 17:10:20.241212
18665	6991	1940	2016-12-18 17:10:21.089474	2016-12-18 17:10:21.089474
18666	6992	1940	2016-12-18 17:10:21.929782	2016-12-18 17:10:21.929782
18667	6993	1940	2016-12-18 17:10:22.793625	2016-12-18 17:10:22.793625
18668	6994	1940	2016-12-18 17:10:23.601798	2016-12-18 17:10:23.601798
18669	6978	1940	2016-12-18 17:10:23.642466	2016-12-18 17:10:23.642466
18670	6979	1940	2016-12-18 17:10:23.67305	2016-12-18 17:10:23.67305
18671	6980	1940	2016-12-18 17:10:23.708769	2016-12-18 17:10:23.708769
18672	6981	1940	2016-12-18 17:10:23.745821	2016-12-18 17:10:23.745821
18673	6982	1940	2016-12-18 17:10:23.77925	2016-12-18 17:10:23.77925
18674	6983	1940	2016-12-18 17:10:23.809592	2016-12-18 17:10:23.809592
18675	6995	1940	2016-12-18 17:10:24.7136	2016-12-18 17:10:24.7136
18676	6996	1940	2016-12-18 17:10:25.597808	2016-12-18 17:10:25.597808
18677	6997	1940	2016-12-18 17:10:26.470275	2016-12-18 17:10:26.470275
18678	6998	1940	2016-12-18 17:10:27.301859	2016-12-18 17:10:27.301859
18679	6999	1940	2016-12-18 17:10:28.166626	2016-12-18 17:10:28.166626
18680	7000	1940	2016-12-18 17:10:29.018585	2016-12-18 17:10:29.018585
18681	7001	1940	2016-12-18 17:10:29.84276	2016-12-18 17:10:29.84276
18682	7002	1940	2016-12-18 17:10:31.941871	2016-12-18 17:10:31.941871
18683	6331	1941	2016-12-18 17:10:34.014205	2016-12-18 17:10:34.014205
18684	6330	1941	2016-12-18 17:10:34.068861	2016-12-18 17:10:34.068861
18685	7003	1941	2016-12-18 17:10:34.924268	2016-12-18 17:10:34.924268
18686	7004	1941	2016-12-18 17:10:35.791854	2016-12-18 17:10:35.791854
18687	7005	1941	2016-12-18 17:10:36.651012	2016-12-18 17:10:36.651012
18688	7006	1941	2016-12-18 17:10:37.560791	2016-12-18 17:10:37.560791
18689	7007	1941	2016-12-18 17:10:38.397739	2016-12-18 17:10:38.397739
18690	7008	1941	2016-12-18 17:10:39.235541	2016-12-18 17:10:39.235541
18691	7009	1941	2016-12-18 17:10:40.028866	2016-12-18 17:10:40.028866
18692	7010	1941	2016-12-18 17:10:40.895925	2016-12-18 17:10:40.895925
18693	7011	1941	2016-12-18 17:10:41.697976	2016-12-18 17:10:41.697976
18694	7012	1941	2016-12-18 17:10:42.628921	2016-12-18 17:10:42.628921
18695	7013	1941	2016-12-18 17:10:43.449539	2016-12-18 17:10:43.449539
18696	7014	1941	2016-12-18 17:10:44.28962	2016-12-18 17:10:44.28962
18697	7015	1941	2016-12-18 17:10:45.114546	2016-12-18 17:10:45.114546
18698	6337	1941	2016-12-18 17:10:45.149743	2016-12-18 17:10:45.149743
18699	7016	1941	2016-12-18 17:10:46.030188	2016-12-18 17:10:46.030188
18700	7017	1941	2016-12-18 17:10:46.90717	2016-12-18 17:10:46.90717
18701	6339	1941	2016-12-18 17:10:46.955106	2016-12-18 17:10:46.955106
18702	7018	1941	2016-12-18 17:10:48.099457	2016-12-18 17:10:48.099457
18703	7019	1941	2016-12-18 17:10:50.786418	2016-12-18 17:10:50.786418
18704	7020	1941	2016-12-18 17:10:51.615183	2016-12-18 17:10:51.615183
18705	7021	1941	2016-12-18 17:10:52.568104	2016-12-18 17:10:52.568104
18706	7022	1941	2016-12-18 17:10:53.415543	2016-12-18 17:10:53.415543
18707	7023	1941	2016-12-18 17:10:54.294025	2016-12-18 17:10:54.294025
18708	7024	1941	2016-12-18 17:10:55.272754	2016-12-18 17:10:55.272754
18709	7025	1941	2016-12-18 17:10:56.133356	2016-12-18 17:10:56.133356
18710	7026	1941	2016-12-18 17:10:57.082797	2016-12-18 17:10:57.082797
18711	7027	1941	2016-12-18 17:10:57.987665	2016-12-18 17:10:57.987665
18712	7028	1941	2016-12-18 17:10:59.290726	2016-12-18 17:10:59.290726
18713	7029	1941	2016-12-18 17:11:00.15319	2016-12-18 17:11:00.15319
18714	7030	1941	2016-12-18 17:11:01.088354	2016-12-18 17:11:01.088354
18715	7031	1941	2016-12-18 17:11:02.00125	2016-12-18 17:11:02.00125
18716	7032	1941	2016-12-18 17:11:02.925003	2016-12-18 17:11:02.925003
18717	7033	1941	2016-12-18 17:11:03.797587	2016-12-18 17:11:03.797587
18718	7034	1941	2016-12-18 17:11:04.760684	2016-12-18 17:11:04.760684
18719	7035	1941	2016-12-18 17:11:05.590998	2016-12-18 17:11:05.590998
18720	7036	1941	2016-12-18 17:11:06.558422	2016-12-18 17:11:06.558422
18721	6993	1942	2016-12-18 17:11:07.723688	2016-12-18 17:11:07.723688
18722	6993	1943	2016-12-18 17:11:08.791872	2016-12-18 17:11:08.791872
18723	6471	1943	2016-12-18 17:11:08.847372	2016-12-18 17:11:08.847372
18724	6331	1939	2016-12-18 17:11:10.887299	2016-12-18 17:11:10.887299
18725	6330	1939	2016-12-18 17:11:10.937616	2016-12-18 17:11:10.937616
18726	6988	1939	2016-12-18 17:11:10.978961	2016-12-18 17:11:10.978961
18727	6989	1939	2016-12-18 17:11:11.042078	2016-12-18 17:11:11.042078
18728	6991	1939	2016-12-18 17:11:11.084376	2016-12-18 17:11:11.084376
18729	6992	1939	2016-12-18 17:11:11.123407	2016-12-18 17:11:11.123407
18730	7003	1939	2016-12-18 17:11:11.148949	2016-12-18 17:11:11.148949
18731	7004	1939	2016-12-18 17:11:11.225671	2016-12-18 17:11:11.225671
18732	7005	1939	2016-12-18 17:11:11.272507	2016-12-18 17:11:11.272507
18733	7006	1939	2016-12-18 17:11:11.316119	2016-12-18 17:11:11.316119
18734	7007	1939	2016-12-18 17:11:11.357964	2016-12-18 17:11:11.357964
18735	7008	1939	2016-12-18 17:11:11.397469	2016-12-18 17:11:11.397469
18736	6993	1939	2016-12-18 17:11:11.434454	2016-12-18 17:11:11.434454
18737	6990	1939	2016-12-18 17:11:11.498972	2016-12-18 17:11:11.498972
18738	7009	1939	2016-12-18 17:11:11.522497	2016-12-18 17:11:11.522497
18739	7010	1939	2016-12-18 17:11:11.557833	2016-12-18 17:11:11.557833
18740	7011	1939	2016-12-18 17:11:11.59951	2016-12-18 17:11:11.59951
18741	7012	1939	2016-12-18 17:11:11.632882	2016-12-18 17:11:11.632882
18742	7013	1939	2016-12-18 17:11:11.67208	2016-12-18 17:11:11.67208
18743	7014	1939	2016-12-18 17:11:11.708717	2016-12-18 17:11:11.708717
18744	7015	1939	2016-12-18 17:11:13.855611	2016-12-18 17:11:13.855611
18745	6471	1939	2016-12-18 17:11:13.890324	2016-12-18 17:11:13.890324
18746	6994	1939	2016-12-18 17:11:13.920446	2016-12-18 17:11:13.920446
18747	6337	1939	2016-12-18 17:11:13.941089	2016-12-18 17:11:13.941089
18748	6978	1939	2016-12-18 17:11:13.975432	2016-12-18 17:11:13.975432
18749	6979	1939	2016-12-18 17:11:14.007187	2016-12-18 17:11:14.007187
18750	6980	1939	2016-12-18 17:11:14.04297	2016-12-18 17:11:14.04297
18751	6981	1939	2016-12-18 17:11:14.062291	2016-12-18 17:11:14.062291
18752	6982	1939	2016-12-18 17:11:14.098915	2016-12-18 17:11:14.098915
18753	6983	1939	2016-12-18 17:11:14.137913	2016-12-18 17:11:14.137913
18754	7016	1939	2016-12-18 17:11:14.177804	2016-12-18 17:11:14.177804
18755	7017	1939	2016-12-18 17:11:14.212037	2016-12-18 17:11:14.212037
18756	6339	1939	2016-12-18 17:11:14.241829	2016-12-18 17:11:14.241829
18757	7018	1939	2016-12-18 17:11:14.274559	2016-12-18 17:11:14.274559
18758	7019	1939	2016-12-18 17:11:14.314229	2016-12-18 17:11:14.314229
18759	7020	1939	2016-12-18 17:11:14.356569	2016-12-18 17:11:14.356569
18760	7021	1939	2016-12-18 17:11:14.396236	2016-12-18 17:11:14.396236
18761	6995	1939	2016-12-18 17:11:14.436679	2016-12-18 17:11:14.436679
18762	6996	1939	2016-12-18 17:11:14.480969	2016-12-18 17:11:14.480969
18763	6997	1939	2016-12-18 17:11:14.527866	2016-12-18 17:11:14.527866
18764	7022	1939	2016-12-18 17:11:16.483673	2016-12-18 17:11:16.483673
18765	7023	1939	2016-12-18 17:11:16.527526	2016-12-18 17:11:16.527526
18766	7024	1939	2016-12-18 17:11:16.565512	2016-12-18 17:11:16.565512
18767	7025	1939	2016-12-18 17:11:16.600322	2016-12-18 17:11:16.600322
18768	7026	1939	2016-12-18 17:11:16.64675	2016-12-18 17:11:16.64675
18769	7027	1939	2016-12-18 17:11:16.702662	2016-12-18 17:11:16.702662
18770	7028	1939	2016-12-18 17:11:16.770801	2016-12-18 17:11:16.770801
18771	6999	1939	2016-12-18 17:11:16.813544	2016-12-18 17:11:16.813544
18772	7000	1939	2016-12-18 17:11:16.853046	2016-12-18 17:11:16.853046
18773	7029	1939	2016-12-18 17:11:16.897687	2016-12-18 17:11:16.897687
18774	7030	1939	2016-12-18 17:11:16.938435	2016-12-18 17:11:16.938435
18775	7031	1939	2016-12-18 17:11:16.982661	2016-12-18 17:11:16.982661
18776	7032	1939	2016-12-18 17:11:17.02676	2016-12-18 17:11:17.02676
18777	7033	1939	2016-12-18 17:11:17.061393	2016-12-18 17:11:17.061393
18778	7034	1939	2016-12-18 17:11:17.102517	2016-12-18 17:11:17.102517
18779	7037	1939	2016-12-18 17:11:17.934899	2016-12-18 17:11:17.934899
18780	6998	1939	2016-12-18 17:11:17.97982	2016-12-18 17:11:17.97982
18781	7001	1939	2016-12-18 17:11:18.022501	2016-12-18 17:11:18.022501
18782	7002	1939	2016-12-18 17:11:18.064955	2016-12-18 17:11:18.064955
18783	7035	1939	2016-12-18 17:11:18.095454	2016-12-18 17:11:18.095454
18784	7036	1939	2016-12-18 17:11:19.297535	2016-12-18 17:11:19.297535
18785	7008	1944	2016-12-18 17:11:20.435702	2016-12-18 17:11:20.435702
18786	7037	1944	2016-12-18 17:11:20.499207	2016-12-18 17:11:20.499207
18787	7038	1945	2016-12-18 17:11:24.971031	2016-12-18 17:11:24.971031
18788	7039	1945	2016-12-18 17:11:25.826186	2016-12-18 17:11:25.826186
18789	7040	1945	2016-12-18 17:11:26.738236	2016-12-18 17:11:26.738236
18790	7041	1945	2016-12-18 17:11:27.636062	2016-12-18 17:11:27.636062
18791	7042	1945	2016-12-18 17:11:28.495801	2016-12-18 17:11:28.495801
18792	7043	1945	2016-12-18 17:11:29.329651	2016-12-18 17:11:29.329651
18793	7044	1945	2016-12-18 17:11:30.207266	2016-12-18 17:11:30.207266
18794	7045	1945	2016-12-18 17:11:31.119063	2016-12-18 17:11:31.119063
18795	7046	1945	2016-12-18 17:11:31.945322	2016-12-18 17:11:31.945322
18796	7047	1945	2016-12-18 17:11:32.85687	2016-12-18 17:11:32.85687
18797	7048	1945	2016-12-18 17:11:33.745939	2016-12-18 17:11:33.745939
18798	7049	1945	2016-12-18 17:11:35.737169	2016-12-18 17:11:35.737169
18799	7050	1945	2016-12-18 17:11:36.794896	2016-12-18 17:11:36.794896
18800	7051	1945	2016-12-18 17:11:37.826189	2016-12-18 17:11:37.826189
18801	6499	1945	2016-12-18 17:11:37.880978	2016-12-18 17:11:37.880978
18802	7052	1945	2016-12-18 17:11:38.884288	2016-12-18 17:11:38.884288
18803	7053	1945	2016-12-18 17:11:39.826586	2016-12-18 17:11:39.826586
18804	7054	1945	2016-12-18 17:11:40.82047	2016-12-18 17:11:40.82047
18805	7055	1945	2016-12-18 17:11:41.963369	2016-12-18 17:11:41.963369
18806	7056	1945	2016-12-18 17:11:42.986556	2016-12-18 17:11:42.986556
18807	7057	1945	2016-12-18 17:11:46.417579	2016-12-18 17:11:46.417579
18808	7058	1945	2016-12-18 17:11:47.350882	2016-12-18 17:11:47.350882
18809	7059	1945	2016-12-18 17:11:48.334646	2016-12-18 17:11:48.334646
18810	7060	1945	2016-12-18 17:11:49.348865	2016-12-18 17:11:49.348865
18811	7061	1945	2016-12-18 17:11:50.305648	2016-12-18 17:11:50.305648
18812	7062	1945	2016-12-18 17:11:51.426276	2016-12-18 17:11:51.426276
18813	7063	1945	2016-12-18 17:11:52.434584	2016-12-18 17:11:52.434584
18814	7064	1945	2016-12-18 17:11:53.372557	2016-12-18 17:11:53.372557
18815	7065	1945	2016-12-18 17:11:54.25968	2016-12-18 17:11:54.25968
18816	7066	1945	2016-12-18 17:11:55.091548	2016-12-18 17:11:55.091548
18817	7067	1945	2016-12-18 17:11:56.041213	2016-12-18 17:11:56.041213
18818	7068	1945	2016-12-18 17:11:57.013244	2016-12-18 17:11:57.013244
18819	7069	1945	2016-12-18 17:11:58.017791	2016-12-18 17:11:58.017791
18820	7070	1945	2016-12-18 17:11:59.026733	2016-12-18 17:11:59.026733
18821	7071	1945	2016-12-18 17:11:59.919564	2016-12-18 17:11:59.919564
18822	7072	1945	2016-12-18 17:12:05.465823	2016-12-18 17:12:05.465823
18823	7038	1946	2016-12-18 17:12:07.844361	2016-12-18 17:12:07.844361
18824	7058	1946	2016-12-18 17:12:07.904461	2016-12-18 17:12:07.904461
18825	7059	1946	2016-12-18 17:12:07.952108	2016-12-18 17:12:07.952108
18826	7062	1946	2016-12-18 17:12:07.995427	2016-12-18 17:12:07.995427
18827	7063	1946	2016-12-18 17:12:08.055405	2016-12-18 17:12:08.055405
18828	7066	1946	2016-12-18 17:12:08.100776	2016-12-18 17:12:08.100776
18829	7067	1946	2016-12-18 17:12:08.139775	2016-12-18 17:12:08.139775
18830	7068	1946	2016-12-18 17:12:08.156234	2016-12-18 17:12:08.156234
18831	7069	1946	2016-12-18 17:12:08.20221	2016-12-18 17:12:08.20221
18832	7070	1946	2016-12-18 17:12:08.229521	2016-12-18 17:12:08.229521
18833	7071	1946	2016-12-18 17:12:08.272859	2016-12-18 17:12:08.272859
18834	7072	1946	2016-12-18 17:12:08.315969	2016-12-18 17:12:08.315969
18835	7073	1947	2016-12-18 17:12:11.749036	2016-12-18 17:12:11.749036
18836	6581	1947	2016-12-18 17:12:11.789115	2016-12-18 17:12:11.789115
18837	6584	1947	2016-12-18 17:12:11.849899	2016-12-18 17:12:11.849899
18838	6585	1947	2016-12-18 17:12:11.897617	2016-12-18 17:12:11.897617
18839	6586	1947	2016-12-18 17:12:11.956345	2016-12-18 17:12:11.956345
18840	6587	1947	2016-12-18 17:12:11.994306	2016-12-18 17:12:11.994306
18841	7074	1947	2016-12-18 17:12:12.932289	2016-12-18 17:12:12.932289
18842	6601	1947	2016-12-18 17:12:12.973889	2016-12-18 17:12:12.973889
18843	6602	1947	2016-12-18 17:12:12.989644	2016-12-18 17:12:12.989644
18844	7073	1948	2016-12-18 17:12:14.952789	2016-12-18 17:12:14.952789
18845	6581	1948	2016-12-18 17:12:14.989771	2016-12-18 17:12:14.989771
18846	7074	1948	2016-12-18 17:12:15.040224	2016-12-18 17:12:15.040224
18847	6601	1948	2016-12-18 17:12:15.075504	2016-12-18 17:12:15.075504
18848	6602	1948	2016-12-18 17:12:15.112261	2016-12-18 17:12:15.112261
18849	6330	1950	2016-12-18 17:12:17.14436	2016-12-18 17:12:17.14436
18850	7075	1950	2016-12-18 17:12:17.989389	2016-12-18 17:12:17.989389
18851	7076	1950	2016-12-18 17:12:18.833508	2016-12-18 17:12:18.833508
18852	7077	1950	2016-12-18 17:12:19.715056	2016-12-18 17:12:19.715056
18853	7078	1950	2016-12-18 17:12:20.617002	2016-12-18 17:12:20.617002
18854	7079	1950	2016-12-18 17:12:21.524801	2016-12-18 17:12:21.524801
18855	7080	1950	2016-12-18 17:12:22.328039	2016-12-18 17:12:22.328039
18856	7081	1950	2016-12-18 17:12:23.364238	2016-12-18 17:12:23.364238
18857	7082	1950	2016-12-18 17:12:24.203674	2016-12-18 17:12:24.203674
18858	7083	1950	2016-12-18 17:12:25.085842	2016-12-18 17:12:25.085842
18859	7084	1950	2016-12-18 17:12:25.963685	2016-12-18 17:12:25.963685
18860	7085	1950	2016-12-18 17:12:26.906998	2016-12-18 17:12:26.906998
18861	7086	1950	2016-12-18 17:12:27.794396	2016-12-18 17:12:27.794396
18862	7087	1950	2016-12-18 17:12:28.629019	2016-12-18 17:12:28.629019
18863	7088	1950	2016-12-18 17:12:29.461174	2016-12-18 17:12:29.461174
18864	7089	1950	2016-12-18 17:12:30.334734	2016-12-18 17:12:30.334734
18865	7090	1950	2016-12-18 17:12:31.223742	2016-12-18 17:12:31.223742
18866	7091	1950	2016-12-18 17:12:32.220423	2016-12-18 17:12:32.220423
18867	7092	1950	2016-12-18 17:12:33.056167	2016-12-18 17:12:33.056167
18868	7093	1950	2016-12-18 17:12:33.974861	2016-12-18 17:12:33.974861
18869	7094	1950	2016-12-18 17:12:36.928216	2016-12-18 17:12:36.928216
18870	7095	1950	2016-12-18 17:12:37.983278	2016-12-18 17:12:37.983278
18871	7096	1950	2016-12-18 17:12:39.005951	2016-12-18 17:12:39.005951
18872	7097	1950	2016-12-18 17:12:39.968785	2016-12-18 17:12:39.968785
18873	7098	1950	2016-12-18 17:12:41.008789	2016-12-18 17:12:41.008789
18874	7099	1950	2016-12-18 17:12:41.997484	2016-12-18 17:12:41.997484
18875	7100	1950	2016-12-18 17:12:43.055002	2016-12-18 17:12:43.055002
18876	7101	1950	2016-12-18 17:12:43.983692	2016-12-18 17:12:43.983692
18877	7102	1950	2016-12-18 17:12:44.971011	2016-12-18 17:12:44.971011
18878	7103	1950	2016-12-18 17:12:45.976539	2016-12-18 17:12:45.976539
18879	7104	1950	2016-12-18 17:12:46.930494	2016-12-18 17:12:46.930494
18880	7105	1950	2016-12-18 17:12:47.989871	2016-12-18 17:12:47.989871
18881	7106	1950	2016-12-18 17:12:48.936114	2016-12-18 17:12:48.936114
18882	7107	1950	2016-12-18 17:12:49.88949	2016-12-18 17:12:49.88949
18883	7108	1950	2016-12-18 17:12:50.817903	2016-12-18 17:12:50.817903
18884	7109	1950	2016-12-18 17:12:51.815858	2016-12-18 17:12:51.815858
18885	7110	1950	2016-12-18 17:12:52.824237	2016-12-18 17:12:52.824237
18886	7111	1950	2016-12-18 17:12:53.782314	2016-12-18 17:12:53.782314
18887	7112	1950	2016-12-18 17:12:54.656191	2016-12-18 17:12:54.656191
18888	7113	1950	2016-12-18 17:12:55.602451	2016-12-18 17:12:55.602451
18889	7114	1950	2016-12-18 17:12:58.403091	2016-12-18 17:12:58.403091
18890	7115	1950	2016-12-18 17:12:59.289451	2016-12-18 17:12:59.289451
18891	7116	1950	2016-12-18 17:13:00.238944	2016-12-18 17:13:00.238944
18892	7117	1950	2016-12-18 17:13:01.071609	2016-12-18 17:13:01.071609
18893	7118	1950	2016-12-18 17:13:02.154894	2016-12-18 17:13:02.154894
18894	7119	1950	2016-12-18 17:13:03.038866	2016-12-18 17:13:03.038866
18895	7120	1950	2016-12-18 17:13:03.962019	2016-12-18 17:13:03.962019
18896	7121	1950	2016-12-18 17:13:05.075689	2016-12-18 17:13:05.075689
18897	7122	1950	2016-12-18 17:13:06.073898	2016-12-18 17:13:06.073898
18898	7123	1950	2016-12-18 17:13:07.001867	2016-12-18 17:13:07.001867
18899	7124	1950	2016-12-18 17:13:08.053634	2016-12-18 17:13:08.053634
18900	7125	1950	2016-12-18 17:13:08.998488	2016-12-18 17:13:08.998488
18901	7126	1950	2016-12-18 17:13:10.001728	2016-12-18 17:13:10.001728
18902	7127	1950	2016-12-18 17:13:11.009598	2016-12-18 17:13:11.009598
18903	7128	1950	2016-12-18 17:13:11.8301	2016-12-18 17:13:11.8301
18904	7129	1950	2016-12-18 17:13:12.757448	2016-12-18 17:13:12.757448
18905	7130	1950	2016-12-18 17:13:13.754985	2016-12-18 17:13:13.754985
18906	7131	1950	2016-12-18 17:13:14.560746	2016-12-18 17:13:14.560746
18907	7132	1950	2016-12-18 17:13:15.453736	2016-12-18 17:13:15.453736
18908	7133	1950	2016-12-18 17:13:16.387998	2016-12-18 17:13:16.387998
18909	7134	1950	2016-12-18 17:13:19.019087	2016-12-18 17:13:19.019087
18910	7135	1950	2016-12-18 17:13:19.896782	2016-12-18 17:13:19.896782
18911	7136	1950	2016-12-18 17:13:20.887566	2016-12-18 17:13:20.887566
18912	7137	1950	2016-12-18 17:13:21.834727	2016-12-18 17:13:21.834727
18913	7138	1950	2016-12-18 17:13:22.814723	2016-12-18 17:13:22.814723
18914	7139	1950	2016-12-18 17:13:23.674762	2016-12-18 17:13:23.674762
18915	7140	1950	2016-12-18 17:13:24.480407	2016-12-18 17:13:24.480407
18916	7141	1950	2016-12-18 17:13:25.436147	2016-12-18 17:13:25.436147
18917	7142	1950	2016-12-18 17:13:26.310748	2016-12-18 17:13:26.310748
18918	7143	1950	2016-12-18 17:13:27.197788	2016-12-18 17:13:27.197788
18919	7144	1950	2016-12-18 17:13:28.22468	2016-12-18 17:13:28.22468
18920	7145	1950	2016-12-18 17:13:29.056593	2016-12-18 17:13:29.056593
18921	7146	1950	2016-12-18 17:13:30.02022	2016-12-18 17:13:30.02022
18922	7147	1950	2016-12-18 17:13:31.053468	2016-12-18 17:13:31.053468
18923	6330	1949	2016-12-18 17:13:33.193763	2016-12-18 17:13:33.193763
18924	7075	1949	2016-12-18 17:13:33.236	2016-12-18 17:13:33.236
18925	7076	1949	2016-12-18 17:13:33.274732	2016-12-18 17:13:33.274732
18926	7077	1949	2016-12-18 17:13:33.315622	2016-12-18 17:13:33.315622
18927	7078	1949	2016-12-18 17:13:33.358558	2016-12-18 17:13:33.358558
18928	7079	1949	2016-12-18 17:13:33.401281	2016-12-18 17:13:33.401281
18929	7080	1949	2016-12-18 17:13:33.443799	2016-12-18 17:13:33.443799
18930	7081	1949	2016-12-18 17:13:33.495059	2016-12-18 17:13:33.495059
18931	7082	1949	2016-12-18 17:13:33.529078	2016-12-18 17:13:33.529078
18932	7083	1949	2016-12-18 17:13:33.563254	2016-12-18 17:13:33.563254
18933	7084	1949	2016-12-18 17:13:33.611379	2016-12-18 17:13:33.611379
18934	7085	1949	2016-12-18 17:13:33.651706	2016-12-18 17:13:33.651706
18935	7086	1949	2016-12-18 17:13:33.70255	2016-12-18 17:13:33.70255
18936	7087	1949	2016-12-18 17:13:33.764547	2016-12-18 17:13:33.764547
18937	7088	1949	2016-12-18 17:13:33.806894	2016-12-18 17:13:33.806894
18938	7089	1949	2016-12-18 17:13:33.827938	2016-12-18 17:13:33.827938
18939	7090	1949	2016-12-18 17:13:33.864612	2016-12-18 17:13:33.864612
18940	7091	1949	2016-12-18 17:13:33.897309	2016-12-18 17:13:33.897309
18941	7092	1949	2016-12-18 17:13:33.935651	2016-12-18 17:13:33.935651
18942	7093	1949	2016-12-18 17:13:33.990571	2016-12-18 17:13:33.990571
18943	7094	1949	2016-12-18 17:13:36.099261	2016-12-18 17:13:36.099261
18944	7095	1949	2016-12-18 17:13:36.121624	2016-12-18 17:13:36.121624
18945	7096	1949	2016-12-18 17:13:36.159758	2016-12-18 17:13:36.159758
18946	7097	1949	2016-12-18 17:13:36.206245	2016-12-18 17:13:36.206245
18947	7098	1949	2016-12-18 17:13:36.244051	2016-12-18 17:13:36.244051
18948	7099	1949	2016-12-18 17:13:36.290658	2016-12-18 17:13:36.290658
18949	7100	1949	2016-12-18 17:13:36.333119	2016-12-18 17:13:36.333119
18950	7101	1949	2016-12-18 17:13:36.374819	2016-12-18 17:13:36.374819
18951	7102	1949	2016-12-18 17:13:36.410757	2016-12-18 17:13:36.410757
18952	7103	1949	2016-12-18 17:13:36.449341	2016-12-18 17:13:36.449341
18953	7104	1949	2016-12-18 17:13:36.51939	2016-12-18 17:13:36.51939
18954	7105	1949	2016-12-18 17:13:36.560869	2016-12-18 17:13:36.560869
18955	7106	1949	2016-12-18 17:13:36.602375	2016-12-18 17:13:36.602375
18956	7107	1949	2016-12-18 17:13:36.629528	2016-12-18 17:13:36.629528
18957	7108	1949	2016-12-18 17:13:36.66712	2016-12-18 17:13:36.66712
18958	7109	1949	2016-12-18 17:13:36.728599	2016-12-18 17:13:36.728599
18959	7110	1949	2016-12-18 17:13:36.786684	2016-12-18 17:13:36.786684
18960	7111	1949	2016-12-18 17:13:36.824387	2016-12-18 17:13:36.824387
18961	7112	1949	2016-12-18 17:13:36.857977	2016-12-18 17:13:36.857977
18962	7113	1949	2016-12-18 17:13:36.904133	2016-12-18 17:13:36.904133
18963	7114	1949	2016-12-18 17:13:38.945034	2016-12-18 17:13:38.945034
18964	7115	1949	2016-12-18 17:13:38.995102	2016-12-18 17:13:38.995102
18965	7116	1949	2016-12-18 17:13:39.043576	2016-12-18 17:13:39.043576
18966	7117	1949	2016-12-18 17:13:39.106988	2016-12-18 17:13:39.106988
18967	7118	1949	2016-12-18 17:13:39.155102	2016-12-18 17:13:39.155102
18968	7119	1949	2016-12-18 17:13:39.187121	2016-12-18 17:13:39.187121
18969	7120	1949	2016-12-18 17:13:39.241385	2016-12-18 17:13:39.241385
18970	7121	1949	2016-12-18 17:13:39.284041	2016-12-18 17:13:39.284041
18971	7122	1949	2016-12-18 17:13:39.32276	2016-12-18 17:13:39.32276
18972	7123	1949	2016-12-18 17:13:39.3715	2016-12-18 17:13:39.3715
18973	7124	1949	2016-12-18 17:13:39.419707	2016-12-18 17:13:39.419707
18974	7125	1949	2016-12-18 17:13:39.460305	2016-12-18 17:13:39.460305
18975	7126	1949	2016-12-18 17:13:39.501616	2016-12-18 17:13:39.501616
18976	7127	1949	2016-12-18 17:13:39.537952	2016-12-18 17:13:39.537952
18977	7128	1949	2016-12-18 17:13:39.574774	2016-12-18 17:13:39.574774
18978	7129	1949	2016-12-18 17:13:39.620167	2016-12-18 17:13:39.620167
18979	7130	1949	2016-12-18 17:13:39.648579	2016-12-18 17:13:39.648579
18980	7131	1949	2016-12-18 17:13:39.683684	2016-12-18 17:13:39.683684
18981	7132	1949	2016-12-18 17:13:39.725705	2016-12-18 17:13:39.725705
18982	7133	1949	2016-12-18 17:13:39.750239	2016-12-18 17:13:39.750239
18983	6200	1949	2016-12-18 17:13:41.786337	2016-12-18 17:13:41.786337
18984	7134	1949	2016-12-18 17:13:41.813306	2016-12-18 17:13:41.813306
18985	7135	1949	2016-12-18 17:13:41.861444	2016-12-18 17:13:41.861444
18986	7136	1949	2016-12-18 17:13:41.902774	2016-12-18 17:13:41.902774
18987	7137	1949	2016-12-18 17:13:41.953409	2016-12-18 17:13:41.953409
18988	7138	1949	2016-12-18 17:13:41.996989	2016-12-18 17:13:41.996989
18989	7139	1949	2016-12-18 17:13:42.028648	2016-12-18 17:13:42.028648
18990	7140	1949	2016-12-18 17:13:42.079119	2016-12-18 17:13:42.079119
18991	7141	1949	2016-12-18 17:13:42.152545	2016-12-18 17:13:42.152545
18992	7142	1949	2016-12-18 17:13:42.2327	2016-12-18 17:13:42.2327
18993	7143	1949	2016-12-18 17:13:42.273184	2016-12-18 17:13:42.273184
18994	7144	1949	2016-12-18 17:13:42.335124	2016-12-18 17:13:42.335124
18995	7145	1949	2016-12-18 17:13:42.395605	2016-12-18 17:13:42.395605
18996	7146	1949	2016-12-18 17:13:42.413155	2016-12-18 17:13:42.413155
18997	7147	1949	2016-12-18 17:13:42.455701	2016-12-18 17:13:42.455701
18998	6914	1930	2016-12-18 17:13:44.660589	2016-12-18 17:13:44.660589
18999	6331	1930	2016-12-18 17:13:44.701097	2016-12-18 17:13:44.701097
19000	6330	1930	2016-12-18 17:13:44.737212	2016-12-18 17:13:44.737212
19001	6786	1930	2016-12-18 17:13:44.777596	2016-12-18 17:13:44.777596
19002	6743	1930	2016-12-18 17:13:44.82467	2016-12-18 17:13:44.82467
19003	6744	1930	2016-12-18 17:13:44.843309	2016-12-18 17:13:44.843309
19004	6745	1930	2016-12-18 17:13:44.902033	2016-12-18 17:13:44.902033
19005	7075	1930	2016-12-18 17:13:44.922962	2016-12-18 17:13:44.922962
19006	7076	1930	2016-12-18 17:13:44.988144	2016-12-18 17:13:44.988144
19007	7077	1930	2016-12-18 17:13:45.008114	2016-12-18 17:13:45.008114
19008	7078	1930	2016-12-18 17:13:45.046919	2016-12-18 17:13:45.046919
19009	7079	1930	2016-12-18 17:13:45.084236	2016-12-18 17:13:45.084236
19010	7080	1930	2016-12-18 17:13:45.129624	2016-12-18 17:13:45.129624
19011	7081	1930	2016-12-18 17:13:45.167461	2016-12-18 17:13:45.167461
19012	7082	1930	2016-12-18 17:13:45.208614	2016-12-18 17:13:45.208614
19013	7083	1930	2016-12-18 17:13:45.255715	2016-12-18 17:13:45.255715
19014	7084	1930	2016-12-18 17:13:45.291749	2016-12-18 17:13:45.291749
19015	7085	1930	2016-12-18 17:13:45.329225	2016-12-18 17:13:45.329225
19016	7086	1930	2016-12-18 17:13:45.37075	2016-12-18 17:13:45.37075
19017	7087	1930	2016-12-18 17:13:45.411519	2016-12-18 17:13:45.411519
19018	7088	1930	2016-12-18 17:13:47.716444	2016-12-18 17:13:47.716444
19019	7089	1930	2016-12-18 17:13:47.751868	2016-12-18 17:13:47.751868
19020	7090	1930	2016-12-18 17:13:47.778051	2016-12-18 17:13:47.778051
19021	7091	1930	2016-12-18 17:13:47.79773	2016-12-18 17:13:47.79773
19022	7092	1930	2016-12-18 17:13:47.827539	2016-12-18 17:13:47.827539
19023	6972	1930	2016-12-18 17:13:47.87252	2016-12-18 17:13:47.87252
19024	6334	1930	2016-12-18 17:13:47.926494	2016-12-18 17:13:47.926494
19025	6988	1930	2016-12-18 17:13:47.986035	2016-12-18 17:13:47.986035
19026	6989	1930	2016-12-18 17:13:48.010604	2016-12-18 17:13:48.010604
19027	7003	1930	2016-12-18 17:13:48.03616	2016-12-18 17:13:48.03616
19028	6866	1930	2016-12-18 17:13:48.092031	2016-12-18 17:13:48.092031
19029	6867	1930	2016-12-18 17:13:48.135565	2016-12-18 17:13:48.135565
19030	6892	1930	2016-12-18 17:13:48.178575	2016-12-18 17:13:48.178575
19031	7004	1930	2016-12-18 17:13:48.240481	2016-12-18 17:13:48.240481
19032	7008	1930	2016-12-18 17:13:48.284573	2016-12-18 17:13:48.284573
19033	6868	1930	2016-12-18 17:13:48.326111	2016-12-18 17:13:48.326111
19034	6985	1930	2016-12-18 17:13:48.361292	2016-12-18 17:13:48.361292
19035	6986	1930	2016-12-18 17:13:48.384811	2016-12-18 17:13:48.384811
19036	6915	1930	2016-12-18 17:13:48.423713	2016-12-18 17:13:48.423713
19037	6916	1930	2016-12-18 17:13:48.466611	2016-12-18 17:13:48.466611
19038	6893	1930	2016-12-18 17:13:50.586516	2016-12-18 17:13:50.586516
19039	6968	1930	2016-12-18 17:13:50.622206	2016-12-18 17:13:50.622206
19040	6917	1930	2016-12-18 17:13:50.636635	2016-12-18 17:13:50.636635
19041	6918	1930	2016-12-18 17:13:50.676483	2016-12-18 17:13:50.676483
19042	6993	1930	2016-12-18 17:13:50.740975	2016-12-18 17:13:50.740975
19043	6919	1930	2016-12-18 17:13:50.784762	2016-12-18 17:13:50.784762
19044	6894	1930	2016-12-18 17:13:50.816664	2016-12-18 17:13:50.816664
19045	6869	1930	2016-12-18 17:13:50.872473	2016-12-18 17:13:50.872473
19046	6920	1930	2016-12-18 17:13:50.912066	2016-12-18 17:13:50.912066
19047	6969	1930	2016-12-18 17:13:50.954468	2016-12-18 17:13:50.954468
19048	6990	1930	2016-12-18 17:13:50.991963	2016-12-18 17:13:50.991963
19049	7005	1930	2016-12-18 17:13:51.036153	2016-12-18 17:13:51.036153
19050	6921	1930	2016-12-18 17:13:51.078321	2016-12-18 17:13:51.078321
19051	6974	1930	2016-12-18 17:13:51.098418	2016-12-18 17:13:51.098418
19052	6975	1930	2016-12-18 17:13:51.133895	2016-12-18 17:13:51.133895
19053	7006	1930	2016-12-18 17:13:51.17205	2016-12-18 17:13:51.17205
19054	6976	1930	2016-12-18 17:13:51.214769	2016-12-18 17:13:51.214769
19055	6977	1930	2016-12-18 17:13:51.251834	2016-12-18 17:13:51.251834
19056	6895	1930	2016-12-18 17:13:51.2783	2016-12-18 17:13:51.2783
19057	6922	1930	2016-12-18 17:13:51.306066	2016-12-18 17:13:51.306066
19058	6923	1930	2016-12-18 17:13:53.907365	2016-12-18 17:13:53.907365
19059	6924	1930	2016-12-18 17:13:53.959564	2016-12-18 17:13:53.959564
19060	6925	1930	2016-12-18 17:13:54.01468	2016-12-18 17:13:54.01468
19061	6926	1930	2016-12-18 17:13:54.088663	2016-12-18 17:13:54.088663
19062	6927	1930	2016-12-18 17:13:54.152665	2016-12-18 17:13:54.152665
19063	6928	1930	2016-12-18 17:13:54.21462	2016-12-18 17:13:54.21462
19064	7007	1930	2016-12-18 17:13:54.263227	2016-12-18 17:13:54.263227
19065	6991	1930	2016-12-18 17:13:54.305658	2016-12-18 17:13:54.305658
19066	6992	1930	2016-12-18 17:13:54.343072	2016-12-18 17:13:54.343072
19067	6929	1930	2016-12-18 17:13:54.381774	2016-12-18 17:13:54.381774
19068	6896	1930	2016-12-18 17:13:54.4102	2016-12-18 17:13:54.4102
19069	6930	1930	2016-12-18 17:13:54.460624	2016-12-18 17:13:54.460624
19070	7073	1930	2016-12-18 17:13:54.496245	2016-12-18 17:13:54.496245
19071	6581	1930	2016-12-18 17:13:54.542365	2016-12-18 17:13:54.542365
19072	7009	1930	2016-12-18 17:13:54.574803	2016-12-18 17:13:54.574803
19073	6931	1930	2016-12-18 17:13:54.597879	2016-12-18 17:13:54.597879
19074	6932	1930	2016-12-18 17:13:54.63932	2016-12-18 17:13:54.63932
19075	7010	1930	2016-12-18 17:13:54.677303	2016-12-18 17:13:54.677303
19076	6933	1930	2016-12-18 17:13:54.707652	2016-12-18 17:13:54.707652
19077	6934	1930	2016-12-18 17:13:54.74967	2016-12-18 17:13:54.74967
19078	7011	1930	2016-12-18 17:13:56.961457	2016-12-18 17:13:56.961457
19079	6897	1930	2016-12-18 17:13:57.004693	2016-12-18 17:13:57.004693
19080	7012	1930	2016-12-18 17:13:57.037459	2016-12-18 17:13:57.037459
19081	6935	1930	2016-12-18 17:13:57.092945	2016-12-18 17:13:57.092945
19082	6936	1930	2016-12-18 17:13:57.124279	2016-12-18 17:13:57.124279
19083	7013	1930	2016-12-18 17:13:57.172448	2016-12-18 17:13:57.172448
19084	7014	1930	2016-12-18 17:13:57.242681	2016-12-18 17:13:57.242681
19085	7015	1930	2016-12-18 17:13:57.28879	2016-12-18 17:13:57.28879
19086	6937	1930	2016-12-18 17:13:57.332276	2016-12-18 17:13:57.332276
19087	6938	1930	2016-12-18 17:13:57.371501	2016-12-18 17:13:57.371501
19088	6939	1930	2016-12-18 17:13:57.394853	2016-12-18 17:13:57.394853
19089	6940	1930	2016-12-18 17:13:57.456947	2016-12-18 17:13:57.456947
19090	6898	1930	2016-12-18 17:13:57.510849	2016-12-18 17:13:57.510849
19091	6471	1930	2016-12-18 17:13:57.551067	2016-12-18 17:13:57.551067
19092	6994	1930	2016-12-18 17:13:57.593193	2016-12-18 17:13:57.593193
19093	6337	1930	2016-12-18 17:13:57.634649	2016-12-18 17:13:57.634649
19094	6899	1930	2016-12-18 17:13:57.67532	2016-12-18 17:13:57.67532
19095	7038	1930	2016-12-18 17:13:57.721122	2016-12-18 17:13:57.721122
19096	6978	1930	2016-12-18 17:13:57.759559	2016-12-18 17:13:57.759559
19097	6979	1930	2016-12-18 17:13:57.799017	2016-12-18 17:13:57.799017
19098	6980	1930	2016-12-18 17:13:59.793308	2016-12-18 17:13:59.793308
19099	6981	1930	2016-12-18 17:13:59.839048	2016-12-18 17:13:59.839048
19100	6982	1930	2016-12-18 17:13:59.853282	2016-12-18 17:13:59.853282
19101	6983	1930	2016-12-18 17:13:59.888546	2016-12-18 17:13:59.888546
19102	7016	1930	2016-12-18 17:13:59.936458	2016-12-18 17:13:59.936458
19103	6870	1930	2016-12-18 17:13:59.969679	2016-12-18 17:13:59.969679
19104	7039	1930	2016-12-18 17:14:00.005415	2016-12-18 17:14:00.005415
19105	7017	1930	2016-12-18 17:14:00.040928	2016-12-18 17:14:00.040928
19106	7148	1930	2016-12-18 17:14:00.857422	2016-12-18 17:14:00.857422
19107	6584	1930	2016-12-18 17:14:00.897113	2016-12-18 17:14:00.897113
19108	6585	1930	2016-12-18 17:14:00.938335	2016-12-18 17:14:00.938335
19109	6586	1930	2016-12-18 17:14:00.970474	2016-12-18 17:14:00.970474
19110	6587	1930	2016-12-18 17:14:01.012667	2016-12-18 17:14:01.012667
19111	7074	1930	2016-12-18 17:14:01.048422	2016-12-18 17:14:01.048422
19112	6871	1930	2016-12-18 17:14:01.066699	2016-12-18 17:14:01.066699
19113	7093	1930	2016-12-18 17:14:01.103707	2016-12-18 17:14:01.103707
19114	7094	1930	2016-12-18 17:14:01.153121	2016-12-18 17:14:01.153121
19115	7095	1930	2016-12-18 17:14:01.224822	2016-12-18 17:14:01.224822
19116	7096	1930	2016-12-18 17:14:01.268902	2016-12-18 17:14:01.268902
19117	7097	1930	2016-12-18 17:14:01.297085	2016-12-18 17:14:01.297085
19118	7098	1930	2016-12-18 17:14:03.979574	2016-12-18 17:14:03.979574
19119	7099	1930	2016-12-18 17:14:04.021838	2016-12-18 17:14:04.021838
19120	7100	1930	2016-12-18 17:14:04.0958	2016-12-18 17:14:04.0958
19121	7101	1930	2016-12-18 17:14:04.14078	2016-12-18 17:14:04.14078
19122	7102	1930	2016-12-18 17:14:04.180128	2016-12-18 17:14:04.180128
19123	7103	1930	2016-12-18 17:14:04.233198	2016-12-18 17:14:04.233198
19124	7104	1930	2016-12-18 17:14:04.27387	2016-12-18 17:14:04.27387
19125	7105	1930	2016-12-18 17:14:04.308341	2016-12-18 17:14:04.308341
19126	7106	1930	2016-12-18 17:14:04.35869	2016-12-18 17:14:04.35869
19127	7107	1930	2016-12-18 17:14:04.400692	2016-12-18 17:14:04.400692
19128	7108	1930	2016-12-18 17:14:04.437232	2016-12-18 17:14:04.437232
19129	7109	1930	2016-12-18 17:14:04.478109	2016-12-18 17:14:04.478109
19130	7110	1930	2016-12-18 17:14:04.515862	2016-12-18 17:14:04.515862
19131	7111	1930	2016-12-18 17:14:04.604849	2016-12-18 17:14:04.604849
19132	7112	1930	2016-12-18 17:14:04.634687	2016-12-18 17:14:04.634687
19133	7113	1930	2016-12-18 17:14:04.674273	2016-12-18 17:14:04.674273
19134	7114	1930	2016-12-18 17:14:04.717868	2016-12-18 17:14:04.717868
19135	7115	1930	2016-12-18 17:14:04.735608	2016-12-18 17:14:04.735608
19136	7116	1930	2016-12-18 17:14:04.769999	2016-12-18 17:14:04.769999
19137	7117	1930	2016-12-18 17:14:04.799998	2016-12-18 17:14:04.799998
19138	7118	1930	2016-12-18 17:14:07.262204	2016-12-18 17:14:07.262204
19139	7119	1930	2016-12-18 17:14:07.307671	2016-12-18 17:14:07.307671
19140	7120	1930	2016-12-18 17:14:07.357315	2016-12-18 17:14:07.357315
19141	7121	1930	2016-12-18 17:14:07.394114	2016-12-18 17:14:07.394114
19142	7122	1930	2016-12-18 17:14:07.43749	2016-12-18 17:14:07.43749
19143	7123	1930	2016-12-18 17:14:07.467392	2016-12-18 17:14:07.467392
19144	7124	1930	2016-12-18 17:14:07.519491	2016-12-18 17:14:07.519491
19145	7125	1930	2016-12-18 17:14:07.557069	2016-12-18 17:14:07.557069
19146	7126	1930	2016-12-18 17:14:07.605952	2016-12-18 17:14:07.605952
19147	7127	1930	2016-12-18 17:14:07.650804	2016-12-18 17:14:07.650804
19148	7128	1930	2016-12-18 17:14:07.691462	2016-12-18 17:14:07.691462
19149	7129	1930	2016-12-18 17:14:07.729224	2016-12-18 17:14:07.729224
19150	7130	1930	2016-12-18 17:14:07.76873	2016-12-18 17:14:07.76873
19151	7131	1930	2016-12-18 17:14:07.815047	2016-12-18 17:14:07.815047
19152	7132	1930	2016-12-18 17:14:07.851505	2016-12-18 17:14:07.851505
19153	7133	1930	2016-12-18 17:14:07.885467	2016-12-18 17:14:07.885467
19154	6601	1930	2016-12-18 17:14:07.926373	2016-12-18 17:14:07.926373
19155	6602	1930	2016-12-18 17:14:07.966	2016-12-18 17:14:07.966
19156	6941	1930	2016-12-18 17:14:08.012928	2016-12-18 17:14:08.012928
19157	6339	1930	2016-12-18 17:14:08.051472	2016-12-18 17:14:08.051472
19158	6900	1930	2016-12-18 17:14:11.40905	2016-12-18 17:14:11.40905
19159	6942	1930	2016-12-18 17:14:11.477648	2016-12-18 17:14:11.477648
19160	6943	1930	2016-12-18 17:14:11.519301	2016-12-18 17:14:11.519301
19161	7040	1930	2016-12-18 17:14:11.564834	2016-12-18 17:14:11.564834
19162	7041	1930	2016-12-18 17:14:11.612675	2016-12-18 17:14:11.612675
19163	7042	1930	2016-12-18 17:14:11.652392	2016-12-18 17:14:11.652392
19164	7043	1930	2016-12-18 17:14:11.722677	2016-12-18 17:14:11.722677
19165	7044	1930	2016-12-18 17:14:11.763677	2016-12-18 17:14:11.763677
19166	7045	1930	2016-12-18 17:14:11.784373	2016-12-18 17:14:11.784373
19167	7046	1930	2016-12-18 17:14:11.823693	2016-12-18 17:14:11.823693
19168	7047	1930	2016-12-18 17:14:11.864227	2016-12-18 17:14:11.864227
19169	7149	1930	2016-12-18 17:14:12.857014	2016-12-18 17:14:12.857014
19170	7048	1930	2016-12-18 17:14:12.91019	2016-12-18 17:14:12.91019
19171	7049	1930	2016-12-18 17:14:12.950899	2016-12-18 17:14:12.950899
19172	7050	1930	2016-12-18 17:14:12.990997	2016-12-18 17:14:12.990997
19173	7150	1930	2016-12-18 17:14:14.496081	2016-12-18 17:14:14.496081
19174	7051	1930	2016-12-18 17:14:14.536555	2016-12-18 17:14:14.536555
19175	6499	1930	2016-12-18 17:14:14.574505	2016-12-18 17:14:14.574505
19176	7052	1930	2016-12-18 17:14:14.613377	2016-12-18 17:14:14.613377
19177	7053	1930	2016-12-18 17:14:14.659807	2016-12-18 17:14:14.659807
19178	7054	1930	2016-12-18 17:14:17.743782	2016-12-18 17:14:17.743782
19179	7055	1930	2016-12-18 17:14:17.790201	2016-12-18 17:14:17.790201
19180	7056	1930	2016-12-18 17:14:17.826831	2016-12-18 17:14:17.826831
19181	7057	1930	2016-12-18 17:14:17.892286	2016-12-18 17:14:17.892286
19182	6341	1930	2016-12-18 17:14:17.91384	2016-12-18 17:14:17.91384
19183	6944	1930	2016-12-18 17:14:17.951321	2016-12-18 17:14:17.951321
19184	6945	1930	2016-12-18 17:14:18.017519	2016-12-18 17:14:18.017519
19185	6901	1930	2016-12-18 17:14:18.062138	2016-12-18 17:14:18.062138
19186	6902	1930	2016-12-18 17:14:18.099918	2016-12-18 17:14:18.099918
19187	6946	1930	2016-12-18 17:14:18.142101	2016-12-18 17:14:18.142101
19188	6947	1930	2016-12-18 17:14:18.190032	2016-12-18 17:14:18.190032
19189	6872	1930	2016-12-18 17:14:18.246233	2016-12-18 17:14:18.246233
19190	6948	1930	2016-12-18 17:14:18.283084	2016-12-18 17:14:18.283084
19191	6949	1930	2016-12-18 17:14:18.316439	2016-12-18 17:14:18.316439
19192	6950	1930	2016-12-18 17:14:18.371982	2016-12-18 17:14:18.371982
19193	6951	1930	2016-12-18 17:14:18.406821	2016-12-18 17:14:18.406821
19194	6952	1930	2016-12-18 17:14:18.452623	2016-12-18 17:14:18.452623
19195	6953	1930	2016-12-18 17:14:18.487806	2016-12-18 17:14:18.487806
19196	6954	1930	2016-12-18 17:14:18.5241	2016-12-18 17:14:18.5241
19197	6955	1930	2016-12-18 17:14:18.579997	2016-12-18 17:14:18.579997
19198	6956	1930	2016-12-18 17:14:22.367893	2016-12-18 17:14:22.367893
19199	6957	1930	2016-12-18 17:14:22.411642	2016-12-18 17:14:22.411642
19200	6903	1930	2016-12-18 17:14:22.452485	2016-12-18 17:14:22.452485
19201	6904	1930	2016-12-18 17:14:22.490646	2016-12-18 17:14:22.490646
19202	6905	1930	2016-12-18 17:14:22.535753	2016-12-18 17:14:22.535753
19203	6906	1930	2016-12-18 17:14:22.578606	2016-12-18 17:14:22.578606
19204	6907	1930	2016-12-18 17:14:22.623883	2016-12-18 17:14:22.623883
19205	6908	1930	2016-12-18 17:14:22.666249	2016-12-18 17:14:22.666249
19206	6958	1930	2016-12-18 17:14:22.706586	2016-12-18 17:14:22.706586
19207	6959	1930	2016-12-18 17:14:22.745403	2016-12-18 17:14:22.745403
19208	6960	1930	2016-12-18 17:14:22.786436	2016-12-18 17:14:22.786436
19209	6961	1930	2016-12-18 17:14:22.81901	2016-12-18 17:14:22.81901
19210	7018	1930	2016-12-18 17:14:22.85821	2016-12-18 17:14:22.85821
19211	6909	1930	2016-12-18 17:14:22.895157	2016-12-18 17:14:22.895157
19212	7019	1930	2016-12-18 17:14:22.920897	2016-12-18 17:14:22.920897
19213	6910	1930	2016-12-18 17:14:22.959773	2016-12-18 17:14:22.959773
19214	6962	1930	2016-12-18 17:14:23.004329	2016-12-18 17:14:23.004329
19215	6963	1930	2016-12-18 17:14:23.041792	2016-12-18 17:14:23.041792
19216	6964	1930	2016-12-18 17:14:23.071847	2016-12-18 17:14:23.071847
19217	6873	1930	2016-12-18 17:14:23.129977	2016-12-18 17:14:23.129977
19218	7020	1930	2016-12-18 17:14:25.484177	2016-12-18 17:14:25.484177
19219	6874	1930	2016-12-18 17:14:25.507514	2016-12-18 17:14:25.507514
19220	7021	1930	2016-12-18 17:14:25.56681	2016-12-18 17:14:25.56681
19221	6200	1930	2016-12-18 17:14:25.600247	2016-12-18 17:14:25.600247
19222	6875	1930	2016-12-18 17:14:25.632138	2016-12-18 17:14:25.632138
19223	6876	1930	2016-12-18 17:14:25.690398	2016-12-18 17:14:25.690398
19224	6965	1930	2016-12-18 17:14:25.723433	2016-12-18 17:14:25.723433
19225	6911	1930	2016-12-18 17:14:25.783153	2016-12-18 17:14:25.783153
19226	6995	1930	2016-12-18 17:14:25.824457	2016-12-18 17:14:25.824457
19227	6996	1930	2016-12-18 17:14:25.860066	2016-12-18 17:14:25.860066
19228	6997	1930	2016-12-18 17:14:25.883169	2016-12-18 17:14:25.883169
19229	7022	1930	2016-12-18 17:14:25.954241	2016-12-18 17:14:25.954241
19230	6970	1930	2016-12-18 17:14:25.987583	2016-12-18 17:14:25.987583
19231	6877	1930	2016-12-18 17:14:26.045446	2016-12-18 17:14:26.045446
19232	6878	1930	2016-12-18 17:14:26.090891	2016-12-18 17:14:26.090891
19233	6879	1930	2016-12-18 17:14:26.146538	2016-12-18 17:14:26.146538
19234	6880	1930	2016-12-18 17:14:26.173427	2016-12-18 17:14:26.173427
19235	6881	1930	2016-12-18 17:14:26.232175	2016-12-18 17:14:26.232175
19236	6882	1930	2016-12-18 17:14:26.274292	2016-12-18 17:14:26.274292
19237	6883	1930	2016-12-18 17:14:26.326037	2016-12-18 17:14:26.326037
19238	7023	1930	2016-12-18 17:14:28.713483	2016-12-18 17:14:28.713483
19239	7024	1930	2016-12-18 17:14:28.75637	2016-12-18 17:14:28.75637
19240	7025	1930	2016-12-18 17:14:28.797404	2016-12-18 17:14:28.797404
19241	7026	1930	2016-12-18 17:14:28.861352	2016-12-18 17:14:28.861352
19242	6884	1930	2016-12-18 17:14:28.903747	2016-12-18 17:14:28.903747
19243	6912	1930	2016-12-18 17:14:28.934214	2016-12-18 17:14:28.934214
19244	6966	1930	2016-12-18 17:14:28.985241	2016-12-18 17:14:28.985241
19245	6987	1930	2016-12-18 17:14:29.00941	2016-12-18 17:14:29.00941
19246	7058	1930	2016-12-18 17:14:29.068718	2016-12-18 17:14:29.068718
19247	7059	1930	2016-12-18 17:14:29.112821	2016-12-18 17:14:29.112821
19248	7027	1930	2016-12-18 17:14:29.150679	2016-12-18 17:14:29.150679
19249	7060	1930	2016-12-18 17:14:29.19272	2016-12-18 17:14:29.19272
19250	7061	1930	2016-12-18 17:14:29.216345	2016-12-18 17:14:29.216345
19251	7062	1930	2016-12-18 17:14:29.249	2016-12-18 17:14:29.249
19252	7063	1930	2016-12-18 17:14:29.291938	2016-12-18 17:14:29.291938
19253	7064	1930	2016-12-18 17:14:29.338656	2016-12-18 17:14:29.338656
19254	7065	1930	2016-12-18 17:14:29.3822	2016-12-18 17:14:29.3822
19255	7066	1930	2016-12-18 17:14:29.424177	2016-12-18 17:14:29.424177
19256	7067	1930	2016-12-18 17:14:29.466007	2016-12-18 17:14:29.466007
19257	7068	1930	2016-12-18 17:14:29.511773	2016-12-18 17:14:29.511773
19258	7069	1930	2016-12-18 17:14:32.297085	2016-12-18 17:14:32.297085
19259	7070	1930	2016-12-18 17:14:32.340426	2016-12-18 17:14:32.340426
19260	7071	1930	2016-12-18 17:14:32.420011	2016-12-18 17:14:32.420011
19261	7072	1930	2016-12-18 17:14:32.467717	2016-12-18 17:14:32.467717
19262	6885	1930	2016-12-18 17:14:32.513785	2016-12-18 17:14:32.513785
19263	7134	1930	2016-12-18 17:14:32.575815	2016-12-18 17:14:32.575815
19264	7135	1930	2016-12-18 17:14:32.631553	2016-12-18 17:14:32.631553
19265	7136	1930	2016-12-18 17:14:32.675875	2016-12-18 17:14:32.675875
19266	6886	1930	2016-12-18 17:14:32.718256	2016-12-18 17:14:32.718256
19267	6887	1930	2016-12-18 17:14:32.781114	2016-12-18 17:14:32.781114
19268	6888	1930	2016-12-18 17:14:32.824451	2016-12-18 17:14:32.824451
19269	6889	1930	2016-12-18 17:14:32.955049	2016-12-18 17:14:32.955049
19270	6890	1930	2016-12-18 17:14:33.008832	2016-12-18 17:14:33.008832
19271	6967	1930	2016-12-18 17:14:33.090401	2016-12-18 17:14:33.090401
19272	7028	1930	2016-12-18 17:14:33.134842	2016-12-18 17:14:33.134842
19273	7029	1930	2016-12-18 17:14:33.180249	2016-12-18 17:14:33.180249
19274	6998	1930	2016-12-18 17:14:33.272665	2016-12-18 17:14:33.272665
19275	7030	1930	2016-12-18 17:14:33.332876	2016-12-18 17:14:33.332876
19276	7031	1930	2016-12-18 17:14:33.402774	2016-12-18 17:14:33.402774
19277	6999	1930	2016-12-18 17:14:33.472901	2016-12-18 17:14:33.472901
19278	7032	1930	2016-12-18 17:14:35.584526	2016-12-18 17:14:35.584526
19279	7037	1930	2016-12-18 17:14:35.634607	2016-12-18 17:14:35.634607
19280	7033	1930	2016-12-18 17:14:35.681721	2016-12-18 17:14:35.681721
19281	7000	1930	2016-12-18 17:14:35.743087	2016-12-18 17:14:35.743087
19282	7034	1930	2016-12-18 17:14:35.806826	2016-12-18 17:14:35.806826
19283	7001	1930	2016-12-18 17:14:35.867851	2016-12-18 17:14:35.867851
19284	6984	1930	2016-12-18 17:14:35.929473	2016-12-18 17:14:35.929473
19285	6913	1930	2016-12-18 17:14:36.007233	2016-12-18 17:14:36.007233
19286	6973	1930	2016-12-18 17:14:36.055795	2016-12-18 17:14:36.055795
19287	7002	1930	2016-12-18 17:14:36.142134	2016-12-18 17:14:36.142134
19288	7035	1930	2016-12-18 17:14:36.219265	2016-12-18 17:14:36.219265
19289	7137	1930	2016-12-18 17:14:36.264859	2016-12-18 17:14:36.264859
19290	7138	1930	2016-12-18 17:14:36.341439	2016-12-18 17:14:36.341439
19291	7139	1930	2016-12-18 17:14:36.380015	2016-12-18 17:14:36.380015
19292	7140	1930	2016-12-18 17:14:36.424958	2016-12-18 17:14:36.424958
19293	7141	1930	2016-12-18 17:14:36.515567	2016-12-18 17:14:36.515567
19294	7142	1930	2016-12-18 17:14:36.582258	2016-12-18 17:14:36.582258
19295	7143	1930	2016-12-18 17:14:36.641241	2016-12-18 17:14:36.641241
19296	7144	1930	2016-12-18 17:14:36.714196	2016-12-18 17:14:36.714196
19297	7145	1930	2016-12-18 17:14:36.756535	2016-12-18 17:14:36.756535
19298	7146	1930	2016-12-18 17:14:38.333262	2016-12-18 17:14:38.333262
19299	7147	1930	2016-12-18 17:14:38.424581	2016-12-18 17:14:38.424581
19300	6971	1930	2016-12-18 17:14:38.477457	2016-12-18 17:14:38.477457
19301	6891	1930	2016-12-18 17:14:38.542422	2016-12-18 17:14:38.542422
19302	7036	1930	2016-12-18 17:14:38.600349	2016-12-18 17:14:38.600349
19303	7151	2012	2016-12-18 17:14:42.635891	2016-12-18 17:14:42.635891
19304	7152	2012	2016-12-18 17:14:43.595064	2016-12-18 17:14:43.595064
19305	7153	2012	2016-12-18 17:14:44.510403	2016-12-18 17:14:44.510403
19306	7154	2012	2016-12-18 17:14:45.429625	2016-12-18 17:14:45.429625
19307	7155	2012	2016-12-18 17:14:46.385702	2016-12-18 17:14:46.385702
19308	7156	2012	2016-12-18 17:14:47.293346	2016-12-18 17:14:47.293346
19309	7157	2012	2016-12-18 17:14:48.255868	2016-12-18 17:14:48.255868
19310	7158	2012	2016-12-18 17:14:49.09826	2016-12-18 17:14:49.09826
19311	7159	2012	2016-12-18 17:14:49.900444	2016-12-18 17:14:49.900444
19312	7160	2012	2016-12-18 17:14:50.781342	2016-12-18 17:14:50.781342
19313	7161	2012	2016-12-18 17:14:51.63947	2016-12-18 17:14:51.63947
19314	7162	2012	2016-12-18 17:14:52.523727	2016-12-18 17:14:52.523727
19315	7163	2012	2016-12-18 17:14:53.404375	2016-12-18 17:14:53.404375
19316	7164	2012	2016-12-18 17:14:54.302401	2016-12-18 17:14:54.302401
19317	7165	2012	2016-12-18 17:14:55.196103	2016-12-18 17:14:55.196103
19318	7166	2012	2016-12-18 17:14:56.066557	2016-12-18 17:14:56.066557
19319	7167	2012	2016-12-18 17:14:56.898172	2016-12-18 17:14:56.898172
19320	7168	2012	2016-12-18 17:14:57.812536	2016-12-18 17:14:57.812536
19321	7169	2012	2016-12-18 17:14:58.696623	2016-12-18 17:14:58.696623
19322	7170	2012	2016-12-18 17:14:59.622195	2016-12-18 17:14:59.622195
19323	7171	2012	2016-12-18 17:15:03.910436	2016-12-18 17:15:03.910436
19324	7172	2012	2016-12-18 17:15:04.855528	2016-12-18 17:15:04.855528
19325	7173	2012	2016-12-18 17:15:05.880854	2016-12-18 17:15:05.880854
19326	6465	2012	2016-12-18 17:15:05.918257	2016-12-18 17:15:05.918257
19327	7174	2012	2016-12-18 17:15:06.873325	2016-12-18 17:15:06.873325
19328	7175	2012	2016-12-18 17:15:07.876547	2016-12-18 17:15:07.876547
19329	7176	2012	2016-12-18 17:15:08.823183	2016-12-18 17:15:08.823183
19330	7177	2012	2016-12-18 17:15:09.836455	2016-12-18 17:15:09.836455
19331	7178	2012	2016-12-18 17:15:10.870025	2016-12-18 17:15:10.870025
19332	7179	2012	2016-12-18 17:15:11.809013	2016-12-18 17:15:11.809013
19333	7180	2012	2016-12-18 17:15:13.300882	2016-12-18 17:15:13.300882
19334	7181	2012	2016-12-18 17:15:14.295011	2016-12-18 17:15:14.295011
19335	7182	2012	2016-12-18 17:15:15.392038	2016-12-18 17:15:15.392038
19336	7183	2012	2016-12-18 17:15:16.830743	2016-12-18 17:15:16.830743
19337	6654	2012	2016-12-18 17:15:16.883908	2016-12-18 17:15:16.883908
19338	6655	2012	2016-12-18 17:15:16.963272	2016-12-18 17:15:16.963272
19339	6656	2012	2016-12-18 17:15:16.995076	2016-12-18 17:15:16.995076
19340	7184	2012	2016-12-18 17:15:17.962651	2016-12-18 17:15:17.962651
19341	7185	2012	2016-12-18 17:15:18.974849	2016-12-18 17:15:18.974849
19342	7186	2012	2016-12-18 17:15:19.918673	2016-12-18 17:15:19.918673
19343	7187	2012	2016-12-18 17:15:22.841247	2016-12-18 17:15:22.841247
19344	7188	2012	2016-12-18 17:15:23.757142	2016-12-18 17:15:23.757142
19345	7189	2012	2016-12-18 17:15:24.682683	2016-12-18 17:15:24.682683
19346	7190	2012	2016-12-18 17:15:25.553966	2016-12-18 17:15:25.553966
19347	7191	2012	2016-12-18 17:15:26.439994	2016-12-18 17:15:26.439994
19348	7192	2012	2016-12-18 17:15:27.394281	2016-12-18 17:15:27.394281
19349	7193	2012	2016-12-18 17:15:28.263301	2016-12-18 17:15:28.263301
19350	7194	2012	2016-12-18 17:15:29.149064	2016-12-18 17:15:29.149064
19351	7195	2012	2016-12-18 17:15:30.020164	2016-12-18 17:15:30.020164
19352	7196	2012	2016-12-18 17:15:30.88734	2016-12-18 17:15:30.88734
19353	6348	2012	2016-12-18 17:15:30.922874	2016-12-18 17:15:30.922874
19354	6251	2012	2016-12-18 17:15:30.953745	2016-12-18 17:15:30.953745
19355	7197	2012	2016-12-18 17:15:31.812387	2016-12-18 17:15:31.812387
19356	7198	2012	2016-12-18 17:15:32.774148	2016-12-18 17:15:32.774148
19357	6346	2012	2016-12-18 17:15:32.810085	2016-12-18 17:15:32.810085
19358	6345	2012	2016-12-18 17:15:32.863229	2016-12-18 17:15:32.863229
19359	7199	2012	2016-12-18 17:15:33.810716	2016-12-18 17:15:33.810716
19360	6350	2012	2016-12-18 17:15:33.852422	2016-12-18 17:15:33.852422
19361	6481	2012	2016-12-18 17:15:33.883381	2016-12-18 17:15:33.883381
19362	6482	2012	2016-12-18 17:15:33.929228	2016-12-18 17:15:33.929228
19363	7200	2012	2016-12-18 17:15:37.186915	2016-12-18 17:15:37.186915
19364	7201	2012	2016-12-18 17:15:38.069377	2016-12-18 17:15:38.069377
19365	6637	2012	2016-12-18 17:15:38.112935	2016-12-18 17:15:38.112935
19366	7202	2012	2016-12-18 17:15:39.028026	2016-12-18 17:15:39.028026
19367	7203	2012	2016-12-18 17:15:39.944378	2016-12-18 17:15:39.944378
19368	7204	2012	2016-12-18 17:15:40.946348	2016-12-18 17:15:40.946348
19369	7205	2012	2016-12-18 17:15:41.847273	2016-12-18 17:15:41.847273
19370	7206	2012	2016-12-18 17:15:42.853909	2016-12-18 17:15:42.853909
19371	7207	2012	2016-12-18 17:15:43.736657	2016-12-18 17:15:43.736657
19372	7208	2012	2016-12-18 17:15:44.657744	2016-12-18 17:15:44.657744
19373	6381	2012	2016-12-18 17:15:44.703443	2016-12-18 17:15:44.703443
19374	7209	2012	2016-12-18 17:15:45.611548	2016-12-18 17:15:45.611548
19375	6365	2012	2016-12-18 17:15:45.643107	2016-12-18 17:15:45.643107
19376	7210	2012	2016-12-18 17:15:46.5723	2016-12-18 17:15:46.5723
19377	7211	2012	2016-12-18 17:15:47.500005	2016-12-18 17:15:47.500005
19378	6356	2012	2016-12-18 17:15:47.536196	2016-12-18 17:15:47.536196
19379	6357	2012	2016-12-18 17:15:47.568069	2016-12-18 17:15:47.568069
19380	6358	2012	2016-12-18 17:15:47.611138	2016-12-18 17:15:47.611138
19381	6355	2012	2016-12-18 17:15:47.650246	2016-12-18 17:15:47.650246
19382	6353	2012	2016-12-18 17:15:47.670838	2016-12-18 17:15:47.670838
19383	6351	2012	2016-12-18 17:15:49.790442	2016-12-18 17:15:49.790442
19384	6354	2012	2016-12-18 17:15:49.83373	2016-12-18 17:15:49.83373
19385	6352	2012	2016-12-18 17:15:49.865568	2016-12-18 17:15:49.865568
19386	6349	2012	2016-12-18 17:15:49.903484	2016-12-18 17:15:49.903484
19387	7212	2012	2016-12-18 17:15:50.750513	2016-12-18 17:15:50.750513
19388	6347	2012	2016-12-18 17:15:50.788461	2016-12-18 17:15:50.788461
19389	7213	2012	2016-12-18 17:15:51.829398	2016-12-18 17:15:51.829398
19390	6382	2012	2016-12-18 17:15:51.871691	2016-12-18 17:15:51.871691
19391	6200	2012	2016-12-18 17:15:51.906622	2016-12-18 17:15:51.906622
19392	7214	2012	2016-12-18 17:15:52.755053	2016-12-18 17:15:52.755053
19393	7215	2012	2016-12-18 17:15:53.62752	2016-12-18 17:15:53.62752
19394	7216	2012	2016-12-18 17:15:54.502235	2016-12-18 17:15:54.502235
19395	7217	2012	2016-12-18 17:15:55.386493	2016-12-18 17:15:55.386493
19396	7218	2012	2016-12-18 17:15:56.259557	2016-12-18 17:15:56.259557
19397	7219	2012	2016-12-18 17:15:57.123931	2016-12-18 17:15:57.123931
19398	7220	2012	2016-12-18 17:15:58.005996	2016-12-18 17:15:58.005996
19399	7221	2012	2016-12-18 17:15:58.849066	2016-12-18 17:15:58.849066
19400	7222	2012	2016-12-18 17:15:59.788403	2016-12-18 17:15:59.788403
19401	7223	2012	2016-12-18 17:16:00.711466	2016-12-18 17:16:00.711466
19402	7224	2012	2016-12-18 17:16:01.618341	2016-12-18 17:16:01.618341
19403	7225	2012	2016-12-18 17:16:05.001232	2016-12-18 17:16:05.001232
19404	7226	2012	2016-12-18 17:16:05.995202	2016-12-18 17:16:05.995202
19405	7227	2012	2016-12-18 17:16:07.100938	2016-12-18 17:16:07.100938
19406	7228	2012	2016-12-18 17:16:08.192218	2016-12-18 17:16:08.192218
19407	7229	2012	2016-12-18 17:16:09.150968	2016-12-18 17:16:09.150968
19408	7230	2012	2016-12-18 17:16:10.145743	2016-12-18 17:16:10.145743
19409	7231	2012	2016-12-18 17:16:11.043346	2016-12-18 17:16:11.043346
19410	7148	1952	2016-12-18 17:16:16.013159	2016-12-18 17:16:16.013159
19411	7040	1952	2016-12-18 17:16:16.049312	2016-12-18 17:16:16.049312
19412	7054	1952	2016-12-18 17:16:16.096923	2016-12-18 17:16:16.096923
19413	7055	1952	2016-12-18 17:16:16.138451	2016-12-18 17:16:16.138451
19414	7052	1952	2016-12-18 17:16:16.172078	2016-12-18 17:16:16.172078
19415	7053	1952	2016-12-18 17:16:16.199626	2016-12-18 17:16:16.199626
19416	7043	1952	2016-12-18 17:16:16.24659	2016-12-18 17:16:16.24659
19417	7048	1952	2016-12-18 17:16:16.282651	2016-12-18 17:16:16.282651
19418	7041	1952	2016-12-18 17:16:16.321307	2016-12-18 17:16:16.321307
19419	7049	1952	2016-12-18 17:16:16.38739	2016-12-18 17:16:16.38739
19420	7046	1952	2016-12-18 17:16:16.406861	2016-12-18 17:16:16.406861
19421	7047	1952	2016-12-18 17:16:16.444342	2016-12-18 17:16:16.444342
19422	7045	1952	2016-12-18 17:16:16.486226	2016-12-18 17:16:16.486226
19423	7051	1952	2016-12-18 17:16:16.526902	2016-12-18 17:16:16.526902
19424	6499	1952	2016-12-18 17:16:16.567408	2016-12-18 17:16:16.567408
19425	7050	1952	2016-12-18 17:16:16.604072	2016-12-18 17:16:16.604072
19426	7044	1952	2016-12-18 17:16:16.648782	2016-12-18 17:16:16.648782
19427	7042	1952	2016-12-18 17:16:16.688631	2016-12-18 17:16:16.688631
19428	7056	1952	2016-12-18 17:16:16.719823	2016-12-18 17:16:16.719823
19429	7057	1952	2016-12-18 17:16:16.761734	2016-12-18 17:16:16.761734
19430	7149	1952	2016-12-18 17:16:18.140958	2016-12-18 17:16:18.140958
19431	7150	1952	2016-12-18 17:16:18.222282	2016-12-18 17:16:18.222282
19432	5920	1955	2016-12-18 17:16:19.69698	2016-12-18 17:16:19.69698
19433	5922	1955	2016-12-18 17:16:19.737829	2016-12-18 17:16:19.737829
19434	5921	1955	2016-12-18 17:16:19.774653	2016-12-18 17:16:19.774653
19435	6206	1955	2016-12-18 17:16:19.822899	2016-12-18 17:16:19.822899
19436	6203	1955	2016-12-18 17:16:19.86227	2016-12-18 17:16:19.86227
19437	6207	1955	2016-12-18 17:16:19.8949	2016-12-18 17:16:19.8949
19438	6204	1955	2016-12-18 17:16:19.938119	2016-12-18 17:16:19.938119
19439	6208	1955	2016-12-18 17:16:19.987367	2016-12-18 17:16:19.987367
19440	6205	1955	2016-12-18 17:16:20.013271	2016-12-18 17:16:20.013271
19441	5964	1956	2016-12-18 17:16:21.564465	2016-12-18 17:16:21.564465
19442	5963	1956	2016-12-18 17:16:21.606466	2016-12-18 17:16:21.606466
19443	5962	1956	2016-12-18 17:16:21.652695	2016-12-18 17:16:21.652695
19444	5931	1956	2016-12-18 17:16:21.692404	2016-12-18 17:16:21.692404
19445	5929	1956	2016-12-18 17:16:21.727442	2016-12-18 17:16:21.727442
19446	5927	1956	2016-12-18 17:16:21.768343	2016-12-18 17:16:21.768343
19447	5930	1956	2016-12-18 17:16:21.812273	2016-12-18 17:16:21.812273
19448	5928	1956	2016-12-18 17:16:21.868327	2016-12-18 17:16:21.868327
19449	6278	1956	2016-12-18 17:16:21.909962	2016-12-18 17:16:21.909962
19450	5964	1954	2016-12-18 17:16:23.689175	2016-12-18 17:16:23.689175
19451	5963	1954	2016-12-18 17:16:23.729088	2016-12-18 17:16:23.729088
19452	5962	1954	2016-12-18 17:16:23.746915	2016-12-18 17:16:23.746915
19453	5785	1954	2016-12-18 17:16:23.80177	2016-12-18 17:16:23.80177
19454	6015	1954	2016-12-18 17:16:23.829201	2016-12-18 17:16:23.829201
19455	5920	1954	2016-12-18 17:16:23.895735	2016-12-18 17:16:23.895735
19456	5821	1954	2016-12-18 17:16:23.923773	2016-12-18 17:16:23.923773
19457	5820	1954	2016-12-18 17:16:23.952025	2016-12-18 17:16:23.952025
19458	5922	1954	2016-12-18 17:16:23.994604	2016-12-18 17:16:23.994604
19459	5921	1954	2016-12-18 17:16:24.035622	2016-12-18 17:16:24.035622
19460	6206	1954	2016-12-18 17:16:24.071828	2016-12-18 17:16:24.071828
19461	6203	1954	2016-12-18 17:16:24.11251	2016-12-18 17:16:24.11251
19462	6207	1954	2016-12-18 17:16:24.155829	2016-12-18 17:16:24.155829
19463	6204	1954	2016-12-18 17:16:24.191932	2016-12-18 17:16:24.191932
19464	6208	1954	2016-12-18 17:16:24.23471	2016-12-18 17:16:24.23471
19465	6205	1954	2016-12-18 17:16:24.271479	2016-12-18 17:16:24.271479
19466	5931	1954	2016-12-18 17:16:24.313961	2016-12-18 17:16:24.313961
19467	5929	1954	2016-12-18 17:16:24.359947	2016-12-18 17:16:24.359947
19468	5927	1954	2016-12-18 17:16:24.403124	2016-12-18 17:16:24.403124
19469	5930	1954	2016-12-18 17:16:24.438247	2016-12-18 17:16:24.438247
19470	5928	1954	2016-12-18 17:16:27.610244	2016-12-18 17:16:27.610244
19471	6278	1954	2016-12-18 17:16:27.659002	2016-12-18 17:16:27.659002
19472	6307	1954	2016-12-18 17:16:27.708231	2016-12-18 17:16:27.708231
19473	6308	1954	2016-12-18 17:16:27.748993	2016-12-18 17:16:27.748993
19474	6324	1954	2016-12-18 17:16:27.787977	2016-12-18 17:16:27.787977
19475	5785	1957	2016-12-18 17:16:29.119823	2016-12-18 17:16:29.119823
19476	6015	1957	2016-12-18 17:16:29.150271	2016-12-18 17:16:29.150271
19477	5821	1957	2016-12-18 17:16:29.196379	2016-12-18 17:16:29.196379
19478	5820	1957	2016-12-18 17:16:29.245284	2016-12-18 17:16:29.245284
19479	6307	1957	2016-12-18 17:16:29.289368	2016-12-18 17:16:29.289368
19480	6308	1957	2016-12-18 17:16:29.329042	2016-12-18 17:16:29.329042
19481	6324	1957	2016-12-18 17:16:29.36053	2016-12-18 17:16:29.36053
19482	5937	1959	2016-12-18 17:16:31.379938	2016-12-18 17:16:31.379938
19483	5877	1959	2016-12-18 17:16:31.418026	2016-12-18 17:16:31.418026
19484	5856	1959	2016-12-18 17:16:31.458853	2016-12-18 17:16:31.458853
19485	6082	1959	2016-12-18 17:16:31.504359	2016-12-18 17:16:31.504359
19486	6085	1959	2016-12-18 17:16:31.537218	2016-12-18 17:16:31.537218
19487	6084	1959	2016-12-18 17:16:31.574024	2016-12-18 17:16:31.574024
19488	6080	1959	2016-12-18 17:16:31.61281	2016-12-18 17:16:31.61281
19489	6081	1959	2016-12-18 17:16:31.655347	2016-12-18 17:16:31.655347
19490	6079	1959	2016-12-18 17:16:31.704715	2016-12-18 17:16:31.704715
19491	6089	1959	2016-12-18 17:16:31.743827	2016-12-18 17:16:31.743827
19492	6083	1959	2016-12-18 17:16:31.759093	2016-12-18 17:16:31.759093
19493	6087	1959	2016-12-18 17:16:31.816544	2016-12-18 17:16:31.816544
19494	5859	1959	2016-12-18 17:16:31.874134	2016-12-18 17:16:31.874134
19495	7232	1959	2016-12-18 17:16:33.186926	2016-12-18 17:16:33.186926
19496	6197	1959	2016-12-18 17:16:33.216326	2016-12-18 17:16:33.216326
19497	6196	1959	2016-12-18 17:16:33.278374	2016-12-18 17:16:33.278374
19498	6280	1959	2016-12-18 17:16:33.315737	2016-12-18 17:16:33.315737
19499	6085	1960	2016-12-18 17:16:35.064004	2016-12-18 17:16:35.064004
19500	6084	1960	2016-12-18 17:16:35.084211	2016-12-18 17:16:35.084211
19501	6080	1960	2016-12-18 17:16:35.123891	2016-12-18 17:16:35.123891
19502	6089	1960	2016-12-18 17:16:35.161825	2016-12-18 17:16:35.161825
19503	6040	1960	2016-12-18 17:16:35.215112	2016-12-18 17:16:35.215112
19504	6037	1960	2016-12-18 17:16:35.2442	2016-12-18 17:16:35.2442
19505	6039	1960	2016-12-18 17:16:35.28276	2016-12-18 17:16:35.28276
19506	6052	1960	2016-12-18 17:16:35.32465	2016-12-18 17:16:35.32465
19507	6047	1960	2016-12-18 17:16:35.367399	2016-12-18 17:16:35.367399
19508	6048	1960	2016-12-18 17:16:35.409927	2016-12-18 17:16:35.409927
19509	6050	1960	2016-12-18 17:16:35.448395	2016-12-18 17:16:35.448395
19510	6051	1960	2016-12-18 17:16:35.469809	2016-12-18 17:16:35.469809
19511	6035	1960	2016-12-18 17:16:35.505486	2016-12-18 17:16:35.505486
19512	6036	1960	2016-12-18 17:16:35.548587	2016-12-18 17:16:35.548587
19513	5957	1960	2016-12-18 17:16:35.614002	2016-12-18 17:16:35.614002
19514	5958	1960	2016-12-18 17:16:35.627263	2016-12-18 17:16:35.627263
19515	5959	1960	2016-12-18 17:16:35.667965	2016-12-18 17:16:35.667965
19516	5946	1960	2016-12-18 17:16:35.70955	2016-12-18 17:16:35.70955
19517	5870	1961	2016-12-18 17:16:37.327878	2016-12-18 17:16:37.327878
19518	6017	1961	2016-12-18 17:16:37.344711	2016-12-18 17:16:37.344711
19519	5942	1961	2016-12-18 17:16:37.397814	2016-12-18 17:16:37.397814
19520	6169	1961	2016-12-18 17:16:37.46055	2016-12-18 17:16:37.46055
19521	6170	1961	2016-12-18 17:16:37.508359	2016-12-18 17:16:37.508359
19522	6040	1961	2016-12-18 17:16:37.545993	2016-12-18 17:16:37.545993
19523	5858	1961	2016-12-18 17:16:37.576466	2016-12-18 17:16:37.576466
19524	5756	1961	2016-12-18 17:16:37.629083	2016-12-18 17:16:37.629083
19525	6086	1961	2016-12-18 17:16:37.665048	2016-12-18 17:16:37.665048
19526	6309	1961	2016-12-18 17:16:37.705734	2016-12-18 17:16:37.705734
19527	6301	1961	2016-12-18 17:16:37.744154	2016-12-18 17:16:37.744154
19528	5965	1962	2016-12-18 17:16:39.226144	2016-12-18 17:16:39.226144
19529	5968	1962	2016-12-18 17:16:39.279216	2016-12-18 17:16:39.279216
19530	5967	1962	2016-12-18 17:16:39.299821	2016-12-18 17:16:39.299821
19531	6157	1962	2016-12-18 17:16:39.327177	2016-12-18 17:16:39.327177
19532	6155	1962	2016-12-18 17:16:39.372012	2016-12-18 17:16:39.372012
19533	6156	1962	2016-12-18 17:16:39.424546	2016-12-18 17:16:39.424546
19534	5966	1962	2016-12-18 17:16:39.451343	2016-12-18 17:16:39.451343
19535	6038	1962	2016-12-18 17:16:39.494905	2016-12-18 17:16:39.494905
19536	5857	1962	2016-12-18 17:16:39.526813	2016-12-18 17:16:39.526813
19537	6229	1962	2016-12-18 17:16:39.551702	2016-12-18 17:16:39.551702
19538	6230	1962	2016-12-18 17:16:39.58627	2016-12-18 17:16:39.58627
19539	6311	1962	2016-12-18 17:16:39.626803	2016-12-18 17:16:39.626803
19540	6045	1958	2016-12-18 17:16:41.507561	2016-12-18 17:16:41.507561
19541	5936	1958	2016-12-18 17:16:41.53916	2016-12-18 17:16:41.53916
19542	5937	1958	2016-12-18 17:16:41.573511	2016-12-18 17:16:41.573511
19543	5877	1958	2016-12-18 17:16:41.596752	2016-12-18 17:16:41.596752
19544	5854	1958	2016-12-18 17:16:41.660563	2016-12-18 17:16:41.660563
19545	5870	1958	2016-12-18 17:16:41.714075	2016-12-18 17:16:41.714075
19546	6041	1958	2016-12-18 17:16:41.750102	2016-12-18 17:16:41.750102
19547	6043	1958	2016-12-18 17:16:41.78929	2016-12-18 17:16:41.78929
19548	6046	1958	2016-12-18 17:16:41.830268	2016-12-18 17:16:41.830268
19549	6017	1958	2016-12-18 17:16:41.847513	2016-12-18 17:16:41.847513
19550	5941	1958	2016-12-18 17:16:41.89997	2016-12-18 17:16:41.89997
19551	5901	1958	2016-12-18 17:16:41.928792	2016-12-18 17:16:41.928792
19552	5900	1958	2016-12-18 17:16:41.996926	2016-12-18 17:16:41.996926
19553	5942	1958	2016-12-18 17:16:42.047665	2016-12-18 17:16:42.047665
19554	5856	1958	2016-12-18 17:16:42.087866	2016-12-18 17:16:42.087866
19555	6163	1958	2016-12-18 17:16:42.148603	2016-12-18 17:16:42.148603
19556	6167	1958	2016-12-18 17:16:42.201827	2016-12-18 17:16:42.201827
19557	6168	1958	2016-12-18 17:16:42.255827	2016-12-18 17:16:42.255827
19558	6164	1958	2016-12-18 17:16:42.330827	2016-12-18 17:16:42.330827
19559	6162	1958	2016-12-18 17:16:42.351309	2016-12-18 17:16:42.351309
19560	6161	1958	2016-12-18 17:16:44.123922	2016-12-18 17:16:44.123922
19561	6159	1958	2016-12-18 17:16:44.201624	2016-12-18 17:16:44.201624
19562	6160	1958	2016-12-18 17:16:44.238051	2016-12-18 17:16:44.238051
19563	6169	1958	2016-12-18 17:16:44.292421	2016-12-18 17:16:44.292421
19564	6170	1958	2016-12-18 17:16:44.337314	2016-12-18 17:16:44.337314
19565	5965	1958	2016-12-18 17:16:44.374148	2016-12-18 17:16:44.374148
19566	5968	1958	2016-12-18 17:16:44.428716	2016-12-18 17:16:44.428716
19567	5967	1958	2016-12-18 17:16:44.472533	2016-12-18 17:16:44.472533
19568	6165	1958	2016-12-18 17:16:44.513181	2016-12-18 17:16:44.513181
19569	6166	1958	2016-12-18 17:16:44.578554	2016-12-18 17:16:44.578554
19570	6157	1958	2016-12-18 17:16:44.601417	2016-12-18 17:16:44.601417
19571	6155	1958	2016-12-18 17:16:44.646265	2016-12-18 17:16:44.646265
19572	6156	1958	2016-12-18 17:16:44.692042	2016-12-18 17:16:44.692042
19573	6158	1958	2016-12-18 17:16:44.727747	2016-12-18 17:16:44.727747
19574	5966	1958	2016-12-18 17:16:44.811508	2016-12-18 17:16:44.811508
19575	6202	1958	2016-12-18 17:16:44.866727	2016-12-18 17:16:44.866727
19576	6019	1958	2016-12-18 17:16:44.894775	2016-12-18 17:16:44.894775
19577	6091	1958	2016-12-18 17:16:44.931735	2016-12-18 17:16:44.931735
19578	6082	1958	2016-12-18 17:16:44.977296	2016-12-18 17:16:44.977296
19579	6085	1958	2016-12-18 17:16:45.019106	2016-12-18 17:16:45.019106
19580	6084	1958	2016-12-18 17:16:47.047128	2016-12-18 17:16:47.047128
19581	6080	1958	2016-12-18 17:16:47.103282	2016-12-18 17:16:47.103282
19582	6081	1958	2016-12-18 17:16:47.141822	2016-12-18 17:16:47.141822
19583	6079	1958	2016-12-18 17:16:47.180749	2016-12-18 17:16:47.180749
19584	6089	1958	2016-12-18 17:16:47.224222	2016-12-18 17:16:47.224222
19585	6083	1958	2016-12-18 17:16:47.264329	2016-12-18 17:16:47.264329
19586	6087	1958	2016-12-18 17:16:47.313162	2016-12-18 17:16:47.313162
19587	5757	1958	2016-12-18 17:16:47.394679	2016-12-18 17:16:47.394679
19588	6180	1958	2016-12-18 17:16:47.431282	2016-12-18 17:16:47.431282
19589	6040	1958	2016-12-18 17:16:47.476571	2016-12-18 17:16:47.476571
19590	6037	1958	2016-12-18 17:16:47.51908	2016-12-18 17:16:47.51908
19591	6038	1958	2016-12-18 17:16:47.555635	2016-12-18 17:16:47.555635
19592	6039	1958	2016-12-18 17:16:47.600007	2016-12-18 17:16:47.600007
19593	6018	1958	2016-12-18 17:16:47.638817	2016-12-18 17:16:47.638817
19594	5859	1958	2016-12-18 17:16:47.714364	2016-12-18 17:16:47.714364
19595	6052	1958	2016-12-18 17:16:47.730633	2016-12-18 17:16:47.730633
19596	6047	1958	2016-12-18 17:16:47.771719	2016-12-18 17:16:47.771719
19597	6049	1958	2016-12-18 17:16:47.835176	2016-12-18 17:16:47.835176
19598	6048	1958	2016-12-18 17:16:47.883767	2016-12-18 17:16:47.883767
19599	6050	1958	2016-12-18 17:16:47.925772	2016-12-18 17:16:47.925772
19600	6051	1958	2016-12-18 17:16:50.022053	2016-12-18 17:16:50.022053
19601	5843	1958	2016-12-18 17:16:50.060744	2016-12-18 17:16:50.060744
19602	7232	1958	2016-12-18 17:16:50.10272	2016-12-18 17:16:50.10272
19603	6034	1958	2016-12-18 17:16:50.142495	2016-12-18 17:16:50.142495
19604	5857	1958	2016-12-18 17:16:50.190318	2016-12-18 17:16:50.190318
19605	6035	1958	2016-12-18 17:16:50.263807	2016-12-18 17:16:50.263807
19606	6036	1958	2016-12-18 17:16:50.3006	2016-12-18 17:16:50.3006
19607	5957	1958	2016-12-18 17:16:50.353428	2016-12-18 17:16:50.353428
19608	5958	1958	2016-12-18 17:16:50.418295	2016-12-18 17:16:50.418295
19609	5959	1958	2016-12-18 17:16:50.47417	2016-12-18 17:16:50.47417
19610	6088	1958	2016-12-18 17:16:50.539706	2016-12-18 17:16:50.539706
19611	6090	1958	2016-12-18 17:16:50.593133	2016-12-18 17:16:50.593133
19612	5902	1958	2016-12-18 17:16:50.607821	2016-12-18 17:16:50.607821
19613	6229	1958	2016-12-18 17:16:50.665927	2016-12-18 17:16:50.665927
19614	6230	1958	2016-12-18 17:16:50.729316	2016-12-18 17:16:50.729316
19615	6178	1958	2016-12-18 17:16:50.766763	2016-12-18 17:16:50.766763
19616	6179	1958	2016-12-18 17:16:50.806443	2016-12-18 17:16:50.806443
19617	6175	1958	2016-12-18 17:16:50.842575	2016-12-18 17:16:50.842575
19618	6197	1958	2016-12-18 17:16:50.887353	2016-12-18 17:16:50.887353
19619	6196	1958	2016-12-18 17:16:50.917818	2016-12-18 17:16:50.917818
19620	5858	1958	2016-12-18 17:16:53.003696	2016-12-18 17:16:53.003696
19621	6200	1958	2016-12-18 17:16:53.091277	2016-12-18 17:16:53.091277
19622	5756	1958	2016-12-18 17:16:53.133052	2016-12-18 17:16:53.133052
19623	5946	1958	2016-12-18 17:16:53.150085	2016-12-18 17:16:53.150085
19624	5839	1958	2016-12-18 17:16:53.185683	2016-12-18 17:16:53.185683
19625	5841	1958	2016-12-18 17:16:53.218654	2016-12-18 17:16:53.218654
19626	5838	1958	2016-12-18 17:16:53.253632	2016-12-18 17:16:53.253632
19627	5836	1958	2016-12-18 17:16:53.274859	2016-12-18 17:16:53.274859
19628	5840	1958	2016-12-18 17:16:53.306538	2016-12-18 17:16:53.306538
19629	5842	1958	2016-12-18 17:16:53.335366	2016-12-18 17:16:53.335366
19630	5837	1958	2016-12-18 17:16:53.357279	2016-12-18 17:16:53.357279
19631	5835	1958	2016-12-18 17:16:53.392106	2016-12-18 17:16:53.392106
19632	5833	1958	2016-12-18 17:16:53.421962	2016-12-18 17:16:53.421962
19633	5834	1958	2016-12-18 17:16:53.478974	2016-12-18 17:16:53.478974
19634	5819	1958	2016-12-18 17:16:53.526891	2016-12-18 17:16:53.526891
19635	5879	1958	2016-12-18 17:16:53.565719	2016-12-18 17:16:53.565719
19636	5824	1958	2016-12-18 17:16:53.593317	2016-12-18 17:16:53.593317
19637	6093	1958	2016-12-18 17:16:53.634531	2016-12-18 17:16:53.634531
19638	6086	1958	2016-12-18 17:16:53.681307	2016-12-18 17:16:53.681307
19639	6316	1958	2016-12-18 17:16:53.726584	2016-12-18 17:16:53.726584
19640	6325	1958	2016-12-18 17:16:55.503964	2016-12-18 17:16:55.503964
19641	6326	1958	2016-12-18 17:16:55.527712	2016-12-18 17:16:55.527712
19642	6280	1958	2016-12-18 17:16:55.585552	2016-12-18 17:16:55.585552
19643	6311	1958	2016-12-18 17:16:55.631603	2016-12-18 17:16:55.631603
19644	6306	1958	2016-12-18 17:16:55.672693	2016-12-18 17:16:55.672693
19645	6315	1958	2016-12-18 17:16:55.687319	2016-12-18 17:16:55.687319
19646	6309	1958	2016-12-18 17:16:55.764797	2016-12-18 17:16:55.764797
19647	6300	1958	2016-12-18 17:16:55.78977	2016-12-18 17:16:55.78977
19648	6302	1958	2016-12-18 17:16:55.819476	2016-12-18 17:16:55.819476
19649	6287	1958	2016-12-18 17:16:55.853077	2016-12-18 17:16:55.853077
19650	6286	1958	2016-12-18 17:16:55.892487	2016-12-18 17:16:55.892487
19651	6301	1958	2016-12-18 17:16:55.926608	2016-12-18 17:16:55.926608
19652	6321	1958	2016-12-18 17:16:55.976595	2016-12-18 17:16:55.976595
19653	6163	1963	2016-12-18 17:16:57.688292	2016-12-18 17:16:57.688292
19654	6167	1963	2016-12-18 17:16:57.719126	2016-12-18 17:16:57.719126
19655	6168	1963	2016-12-18 17:16:57.755355	2016-12-18 17:16:57.755355
19656	6164	1963	2016-12-18 17:16:57.79963	2016-12-18 17:16:57.79963
19657	6162	1963	2016-12-18 17:16:57.846815	2016-12-18 17:16:57.846815
19658	6161	1963	2016-12-18 17:16:57.879308	2016-12-18 17:16:57.879308
19659	6159	1963	2016-12-18 17:16:57.928501	2016-12-18 17:16:57.928501
19660	6160	1963	2016-12-18 17:16:57.959117	2016-12-18 17:16:57.959117
19661	6165	1963	2016-12-18 17:16:58.01076	2016-12-18 17:16:58.01076
19662	6166	1963	2016-12-18 17:16:58.094998	2016-12-18 17:16:58.094998
19663	6158	1963	2016-12-18 17:16:58.132389	2016-12-18 17:16:58.132389
19664	6202	1963	2016-12-18 17:16:58.179864	2016-12-18 17:16:58.179864
19665	6019	1963	2016-12-18 17:16:58.231586	2016-12-18 17:16:58.231586
19666	6091	1963	2016-12-18 17:16:58.264448	2016-12-18 17:16:58.264448
19667	6085	1963	2016-12-18 17:16:58.292932	2016-12-18 17:16:58.292932
19668	6084	1963	2016-12-18 17:16:58.320291	2016-12-18 17:16:58.320291
19669	6080	1963	2016-12-18 17:16:58.351703	2016-12-18 17:16:58.351703
19670	6081	1963	2016-12-18 17:16:58.38538	2016-12-18 17:16:58.38538
19671	6079	1963	2016-12-18 17:16:58.433748	2016-12-18 17:16:58.433748
19672	6089	1963	2016-12-18 17:16:58.468254	2016-12-18 17:16:58.468254
19673	6083	1963	2016-12-18 17:17:00.511719	2016-12-18 17:17:00.511719
19674	6087	1963	2016-12-18 17:17:00.567762	2016-12-18 17:17:00.567762
19675	5757	1963	2016-12-18 17:17:00.604153	2016-12-18 17:17:00.604153
19676	6180	1963	2016-12-18 17:17:00.620203	2016-12-18 17:17:00.620203
19677	6037	1963	2016-12-18 17:17:00.656801	2016-12-18 17:17:00.656801
19678	6038	1963	2016-12-18 17:17:00.688486	2016-12-18 17:17:00.688486
19679	6039	1963	2016-12-18 17:17:00.735943	2016-12-18 17:17:00.735943
19680	6018	1963	2016-12-18 17:17:00.775348	2016-12-18 17:17:00.775348
19681	5859	1963	2016-12-18 17:17:00.8245	2016-12-18 17:17:00.8245
19682	6049	1963	2016-12-18 17:17:00.860326	2016-12-18 17:17:00.860326
19683	5843	1963	2016-12-18 17:17:00.902258	2016-12-18 17:17:00.902258
19684	6088	1963	2016-12-18 17:17:00.948073	2016-12-18 17:17:00.948073
19685	6090	1963	2016-12-18 17:17:00.991639	2016-12-18 17:17:00.991639
19686	5902	1963	2016-12-18 17:17:01.019117	2016-12-18 17:17:01.019117
19687	6178	1963	2016-12-18 17:17:01.061978	2016-12-18 17:17:01.061978
19688	6179	1963	2016-12-18 17:17:01.099112	2016-12-18 17:17:01.099112
19689	6175	1963	2016-12-18 17:17:01.118161	2016-12-18 17:17:01.118161
19690	5839	1963	2016-12-18 17:17:01.155936	2016-12-18 17:17:01.155936
19691	5841	1963	2016-12-18 17:17:01.194781	2016-12-18 17:17:01.194781
19692	5838	1963	2016-12-18 17:17:01.234345	2016-12-18 17:17:01.234345
19693	5836	1963	2016-12-18 17:17:02.984728	2016-12-18 17:17:02.984728
19694	5840	1963	2016-12-18 17:17:03.045513	2016-12-18 17:17:03.045513
19695	5842	1963	2016-12-18 17:17:03.076999	2016-12-18 17:17:03.076999
19696	5837	1963	2016-12-18 17:17:03.110409	2016-12-18 17:17:03.110409
19697	5835	1963	2016-12-18 17:17:03.156314	2016-12-18 17:17:03.156314
19698	5833	1963	2016-12-18 17:17:03.199826	2016-12-18 17:17:03.199826
19699	5834	1963	2016-12-18 17:17:03.234508	2016-12-18 17:17:03.234508
19700	5879	1963	2016-12-18 17:17:03.274664	2016-12-18 17:17:03.274664
19701	5824	1963	2016-12-18 17:17:03.313628	2016-12-18 17:17:03.313628
19702	6093	1963	2016-12-18 17:17:03.362102	2016-12-18 17:17:03.362102
19703	6321	1963	2016-12-18 17:17:03.394155	2016-12-18 17:17:03.394155
19704	6276	1965	2016-12-18 17:17:05.054198	2016-12-18 17:17:05.054198
19705	6251	1965	2016-12-18 17:17:05.076038	2016-12-18 17:17:05.076038
19706	6003	1965	2016-12-18 17:17:05.104677	2016-12-18 17:17:05.104677
19707	6002	1965	2016-12-18 17:17:05.142338	2016-12-18 17:17:05.142338
19708	6000	1965	2016-12-18 17:17:05.194939	2016-12-18 17:17:05.194939
19709	6001	1965	2016-12-18 17:17:05.257932	2016-12-18 17:17:05.257932
19710	5996	1965	2016-12-18 17:17:05.285682	2016-12-18 17:17:05.285682
19711	5995	1965	2016-12-18 17:17:05.313295	2016-12-18 17:17:05.313295
19712	6218	1965	2016-12-18 17:17:05.35371	2016-12-18 17:17:05.35371
19713	6220	1965	2016-12-18 17:17:05.399611	2016-12-18 17:17:05.399611
19714	6217	1965	2016-12-18 17:17:05.442396	2016-12-18 17:17:05.442396
19715	6219	1965	2016-12-18 17:17:05.478254	2016-12-18 17:17:05.478254
19716	6216	1965	2016-12-18 17:17:05.521249	2016-12-18 17:17:05.521249
19717	6215	1965	2016-12-18 17:17:05.567063	2016-12-18 17:17:05.567063
19718	6272	1966	2016-12-18 17:17:08.047718	2016-12-18 17:17:08.047718
19719	6271	1966	2016-12-18 17:17:08.115001	2016-12-18 17:17:08.115001
19720	6176	1966	2016-12-18 17:17:08.144578	2016-12-18 17:17:08.144578
19721	6177	1966	2016-12-18 17:17:08.190379	2016-12-18 17:17:08.190379
19722	6214	1966	2016-12-18 17:17:08.228252	2016-12-18 17:17:08.228252
19723	6213	1966	2016-12-18 17:17:08.249341	2016-12-18 17:17:08.249341
19724	5932	1966	2016-12-18 17:17:08.282899	2016-12-18 17:17:08.282899
19725	5935	1966	2016-12-18 17:17:08.308884	2016-12-18 17:17:08.308884
19726	5934	1966	2016-12-18 17:17:08.345243	2016-12-18 17:17:08.345243
19727	6210	1966	2016-12-18 17:17:08.37224	2016-12-18 17:17:08.37224
19728	6211	1966	2016-12-18 17:17:08.398517	2016-12-18 17:17:08.398517
19729	6212	1966	2016-12-18 17:17:08.44154	2016-12-18 17:17:08.44154
19730	5933	1966	2016-12-18 17:17:08.484711	2016-12-18 17:17:08.484711
19731	6123	1967	2016-12-18 17:17:09.774225	2016-12-18 17:17:09.774225
19732	6222	1967	2016-12-18 17:17:09.7876	2016-12-18 17:17:09.7876
19733	6223	1967	2016-12-18 17:17:09.82478	2016-12-18 17:17:09.82478
19734	6221	1967	2016-12-18 17:17:09.874644	2016-12-18 17:17:09.874644
19735	6224	1967	2016-12-18 17:17:09.943245	2016-12-18 17:17:09.943245
19736	6225	1967	2016-12-18 17:17:09.981211	2016-12-18 17:17:09.981211
19737	5905	1968	2016-12-18 17:17:11.569478	2016-12-18 17:17:11.569478
19738	5904	1968	2016-12-18 17:17:11.585722	2016-12-18 17:17:11.585722
19739	5906	1968	2016-12-18 17:17:11.627439	2016-12-18 17:17:11.627439
19740	5903	1968	2016-12-18 17:17:11.669678	2016-12-18 17:17:11.669678
19741	5908	1968	2016-12-18 17:17:11.710417	2016-12-18 17:17:11.710417
19742	5907	1968	2016-12-18 17:17:11.752061	2016-12-18 17:17:11.752061
19743	5910	1968	2016-12-18 17:17:11.786524	2016-12-18 17:17:11.786524
19744	5909	1968	2016-12-18 17:17:11.827694	2016-12-18 17:17:11.827694
19745	5880	1968	2016-12-18 17:17:11.854176	2016-12-18 17:17:11.854176
19746	6308	1969	2016-12-18 17:17:13.03435	2016-12-18 17:17:13.03435
19747	6324	1969	2016-12-18 17:17:13.076228	2016-12-18 17:17:13.076228
19748	6003	1964	2016-12-18 17:17:14.755838	2016-12-18 17:17:14.755838
19749	6001	1964	2016-12-18 17:17:14.795038	2016-12-18 17:17:14.795038
19750	6272	1964	2016-12-18 17:17:14.853846	2016-12-18 17:17:14.853846
19751	6271	1964	2016-12-18 17:17:14.898612	2016-12-18 17:17:14.898612
19752	5905	1964	2016-12-18 17:17:14.923284	2016-12-18 17:17:14.923284
19753	5904	1964	2016-12-18 17:17:14.96282	2016-12-18 17:17:14.96282
19754	6276	1964	2016-12-18 17:17:15.003674	2016-12-18 17:17:15.003674
19755	5926	1964	2016-12-18 17:17:15.042015	2016-12-18 17:17:15.042015
19756	5906	1964	2016-12-18 17:17:15.107218	2016-12-18 17:17:15.107218
19757	5903	1964	2016-12-18 17:17:15.141097	2016-12-18 17:17:15.141097
19758	5908	1964	2016-12-18 17:17:15.188894	2016-12-18 17:17:15.188894
19759	5907	1964	2016-12-18 17:17:15.211817	2016-12-18 17:17:15.211817
19760	6270	1964	2016-12-18 17:17:15.245711	2016-12-18 17:17:15.245711
19761	5910	1964	2016-12-18 17:17:15.292483	2016-12-18 17:17:15.292483
19762	5909	1964	2016-12-18 17:17:15.324615	2016-12-18 17:17:15.324615
19763	6235	1964	2016-12-18 17:17:15.361101	2016-12-18 17:17:15.361101
19764	6121	1964	2016-12-18 17:17:15.409713	2016-12-18 17:17:15.409713
19765	6268	1964	2016-12-18 17:17:15.4409	2016-12-18 17:17:15.4409
19766	6267	1964	2016-12-18 17:17:15.481953	2016-12-18 17:17:15.481953
19767	6251	1964	2016-12-18 17:17:15.499597	2016-12-18 17:17:15.499597
19768	6248	1964	2016-12-18 17:17:17.365449	2016-12-18 17:17:17.365449
19769	6246	1964	2016-12-18 17:17:17.418008	2016-12-18 17:17:17.418008
19770	6244	1964	2016-12-18 17:17:17.451549	2016-12-18 17:17:17.451549
19771	6242	1964	2016-12-18 17:17:17.467739	2016-12-18 17:17:17.467739
19772	6250	1964	2016-12-18 17:17:17.505508	2016-12-18 17:17:17.505508
19773	6249	1964	2016-12-18 17:17:17.539496	2016-12-18 17:17:17.539496
19774	6247	1964	2016-12-18 17:17:17.575371	2016-12-18 17:17:17.575371
19775	6245	1964	2016-12-18 17:17:17.612982	2016-12-18 17:17:17.612982
19776	6243	1964	2016-12-18 17:17:17.65061	2016-12-18 17:17:17.65061
19777	6241	1964	2016-12-18 17:17:17.673226	2016-12-18 17:17:17.673226
19778	5880	1964	2016-12-18 17:17:17.736526	2016-12-18 17:17:17.736526
19779	6176	1964	2016-12-18 17:17:17.753289	2016-12-18 17:17:17.753289
19780	6177	1964	2016-12-18 17:17:17.793128	2016-12-18 17:17:17.793128
19781	5855	1964	2016-12-18 17:17:17.841147	2016-12-18 17:17:17.841147
19782	6007	1964	2016-12-18 17:17:17.916469	2016-12-18 17:17:17.916469
19783	6006	1964	2016-12-18 17:17:17.94896	2016-12-18 17:17:17.94896
19784	6005	1964	2016-12-18 17:17:17.985165	2016-12-18 17:17:17.985165
19785	5981	1964	2016-12-18 17:17:18.009876	2016-12-18 17:17:18.009876
19786	5982	1964	2016-12-18 17:17:18.050942	2016-12-18 17:17:18.050942
19787	5980	1964	2016-12-18 17:17:18.122589	2016-12-18 17:17:18.122589
19788	5979	1964	2016-12-18 17:17:19.918178	2016-12-18 17:17:19.918178
19789	6002	1964	2016-12-18 17:17:19.957068	2016-12-18 17:17:19.957068
19790	6000	1964	2016-12-18 17:17:19.990182	2016-12-18 17:17:19.990182
19791	5996	1964	2016-12-18 17:17:20.012405	2016-12-18 17:17:20.012405
19792	5995	1964	2016-12-18 17:17:20.074747	2016-12-18 17:17:20.074747
19793	5999	1964	2016-12-18 17:17:20.09492	2016-12-18 17:17:20.09492
19794	5997	1964	2016-12-18 17:17:20.119587	2016-12-18 17:17:20.119587
19795	5998	1964	2016-12-18 17:17:20.157849	2016-12-18 17:17:20.157849
19796	5861	1964	2016-12-18 17:17:20.208079	2016-12-18 17:17:20.208079
19797	6234	1964	2016-12-18 17:17:20.235586	2016-12-18 17:17:20.235586
19798	6231	1964	2016-12-18 17:17:20.25724	2016-12-18 17:17:20.25724
19799	6232	1964	2016-12-18 17:17:20.288907	2016-12-18 17:17:20.288907
19800	6233	1964	2016-12-18 17:17:20.319296	2016-12-18 17:17:20.319296
19801	6226	1964	2016-12-18 17:17:20.340454	2016-12-18 17:17:20.340454
19802	6227	1964	2016-12-18 17:17:20.367327	2016-12-18 17:17:20.367327
19803	6228	1964	2016-12-18 17:17:20.387605	2016-12-18 17:17:20.387605
19804	5916	1964	2016-12-18 17:17:20.452173	2016-12-18 17:17:20.452173
19805	6078	1964	2016-12-18 17:17:20.467965	2016-12-18 17:17:20.467965
19806	6123	1964	2016-12-18 17:17:20.505995	2016-12-18 17:17:20.505995
19807	6218	1964	2016-12-18 17:17:20.541459	2016-12-18 17:17:20.541459
19808	6220	1964	2016-12-18 17:17:23.159146	2016-12-18 17:17:23.159146
19809	6217	1964	2016-12-18 17:17:23.190158	2016-12-18 17:17:23.190158
19810	6219	1964	2016-12-18 17:17:23.22477	2016-12-18 17:17:23.22477
19811	6216	1964	2016-12-18 17:17:23.259936	2016-12-18 17:17:23.259936
19812	6214	1964	2016-12-18 17:17:23.300536	2016-12-18 17:17:23.300536
19813	6215	1964	2016-12-18 17:17:23.342725	2016-12-18 17:17:23.342725
19814	6213	1964	2016-12-18 17:17:23.375062	2016-12-18 17:17:23.375062
19815	6222	1964	2016-12-18 17:17:23.407705	2016-12-18 17:17:23.407705
19816	6223	1964	2016-12-18 17:17:23.43283	2016-12-18 17:17:23.43283
19817	6221	1964	2016-12-18 17:17:23.471665	2016-12-18 17:17:23.471665
19818	5932	1964	2016-12-18 17:17:23.506966	2016-12-18 17:17:23.506966
19819	5935	1964	2016-12-18 17:17:23.551631	2016-12-18 17:17:23.551631
19820	5934	1964	2016-12-18 17:17:23.580717	2016-12-18 17:17:23.580717
19821	6224	1964	2016-12-18 17:17:23.61694	2016-12-18 17:17:23.61694
19822	6225	1964	2016-12-18 17:17:23.641706	2016-12-18 17:17:23.641706
19823	6210	1964	2016-12-18 17:17:23.681521	2016-12-18 17:17:23.681521
19824	6211	1964	2016-12-18 17:17:23.744196	2016-12-18 17:17:23.744196
19825	6212	1964	2016-12-18 17:17:23.763812	2016-12-18 17:17:23.763812
19826	5933	1964	2016-12-18 17:17:23.80687	2016-12-18 17:17:23.80687
19827	6308	1964	2016-12-18 17:17:23.871073	2016-12-18 17:17:23.871073
19828	6324	1964	2016-12-18 17:17:25.161201	2016-12-18 17:17:25.161201
19829	6285	1964	2016-12-18 17:17:25.2031	2016-12-18 17:17:25.2031
19830	6304	1964	2016-12-18 17:17:25.247999	2016-12-18 17:17:25.247999
19831	6305	1964	2016-12-18 17:17:25.29641	2016-12-18 17:17:25.29641
19832	5926	1970	2016-12-18 17:17:27.039871	2016-12-18 17:17:27.039871
19833	6235	1970	2016-12-18 17:17:27.059484	2016-12-18 17:17:27.059484
19834	6121	1970	2016-12-18 17:17:27.102941	2016-12-18 17:17:27.102941
19835	6268	1970	2016-12-18 17:17:27.165572	2016-12-18 17:17:27.165572
19836	6267	1970	2016-12-18 17:17:27.205524	2016-12-18 17:17:27.205524
19837	6248	1970	2016-12-18 17:17:27.248178	2016-12-18 17:17:27.248178
19838	6246	1970	2016-12-18 17:17:27.270554	2016-12-18 17:17:27.270554
19839	6244	1970	2016-12-18 17:17:27.335291	2016-12-18 17:17:27.335291
19840	6242	1970	2016-12-18 17:17:27.377189	2016-12-18 17:17:27.377189
19841	6250	1970	2016-12-18 17:17:27.424161	2016-12-18 17:17:27.424161
19842	6249	1970	2016-12-18 17:17:27.456457	2016-12-18 17:17:27.456457
19843	6247	1970	2016-12-18 17:17:27.477788	2016-12-18 17:17:27.477788
19844	6245	1970	2016-12-18 17:17:27.542191	2016-12-18 17:17:27.542191
19845	6243	1970	2016-12-18 17:17:27.59749	2016-12-18 17:17:27.59749
19846	6241	1970	2016-12-18 17:17:27.62559	2016-12-18 17:17:27.62559
19847	6007	1970	2016-12-18 17:17:27.665337	2016-12-18 17:17:27.665337
19848	6006	1970	2016-12-18 17:17:27.718753	2016-12-18 17:17:27.718753
19849	6005	1970	2016-12-18 17:17:27.761546	2016-12-18 17:17:27.761546
19850	5981	1970	2016-12-18 17:17:27.790821	2016-12-18 17:17:27.790821
19851	5982	1970	2016-12-18 17:17:27.826155	2016-12-18 17:17:27.826155
19852	5980	1970	2016-12-18 17:17:29.594697	2016-12-18 17:17:29.594697
19853	5979	1970	2016-12-18 17:17:29.632972	2016-12-18 17:17:29.632972
19854	5999	1970	2016-12-18 17:17:29.685105	2016-12-18 17:17:29.685105
19855	5997	1970	2016-12-18 17:17:29.715032	2016-12-18 17:17:29.715032
19856	5998	1970	2016-12-18 17:17:29.767398	2016-12-18 17:17:29.767398
19857	5861	1970	2016-12-18 17:17:29.804423	2016-12-18 17:17:29.804423
19858	6234	1970	2016-12-18 17:17:29.8503	2016-12-18 17:17:29.8503
19859	6231	1970	2016-12-18 17:17:29.8892	2016-12-18 17:17:29.8892
19860	6232	1970	2016-12-18 17:17:29.937994	2016-12-18 17:17:29.937994
19861	6233	1970	2016-12-18 17:17:29.97807	2016-12-18 17:17:29.97807
19862	6226	1970	2016-12-18 17:17:30.039738	2016-12-18 17:17:30.039738
19863	6227	1970	2016-12-18 17:17:30.06454	2016-12-18 17:17:30.06454
19864	6228	1970	2016-12-18 17:17:30.115156	2016-12-18 17:17:30.115156
19865	6078	1970	2016-12-18 17:17:30.172657	2016-12-18 17:17:30.172657
19866	6285	1970	2016-12-18 17:17:30.224968	2016-12-18 17:17:30.224968
19867	6304	1970	2016-12-18 17:17:30.264308	2016-12-18 17:17:30.264308
19868	6305	1970	2016-12-18 17:17:30.304353	2016-12-18 17:17:30.304353
19869	6262	1971	2016-12-18 17:17:32.257378	2016-12-18 17:17:32.257378
19870	5881	1971	2016-12-18 17:17:32.310977	2016-12-18 17:17:32.310977
19871	6172	1971	2016-12-18 17:17:32.349442	2016-12-18 17:17:32.349442
19872	6173	1971	2016-12-18 17:17:32.392514	2016-12-18 17:17:32.392514
19873	5993	1971	2016-12-18 17:17:32.43164	2016-12-18 17:17:32.43164
19874	6254	1971	2016-12-18 17:17:32.467721	2016-12-18 17:17:32.467721
19875	6253	1971	2016-12-18 17:17:32.502269	2016-12-18 17:17:32.502269
19876	6252	1971	2016-12-18 17:17:32.545531	2016-12-18 17:17:32.545531
19877	5883	1971	2016-12-18 17:17:32.587014	2016-12-18 17:17:32.587014
19878	5882	1971	2016-12-18 17:17:32.634342	2016-12-18 17:17:32.634342
19879	5884	1971	2016-12-18 17:17:32.666898	2016-12-18 17:17:32.666898
19880	6122	1971	2016-12-18 17:17:32.710374	2016-12-18 17:17:32.710374
19881	6004	1971	2016-12-18 17:17:32.727435	2016-12-18 17:17:32.727435
19882	6181	1971	2016-12-18 17:17:32.770339	2016-12-18 17:17:32.770339
19883	6174	1971	2016-12-18 17:17:32.812987	2016-12-18 17:17:32.812987
19884	6201	1971	2016-12-18 17:17:32.852636	2016-12-18 17:17:32.852636
19885	5832	1971	2016-12-18 17:17:32.886388	2016-12-18 17:17:32.886388
19886	5828	1971	2016-12-18 17:17:32.907778	2016-12-18 17:17:32.907778
19887	6076	1971	2016-12-18 17:17:32.936684	2016-12-18 17:17:32.936684
19888	6077	1971	2016-12-18 17:17:32.98258	2016-12-18 17:17:32.98258
19889	6238	1971	2016-12-18 17:17:34.60427	2016-12-18 17:17:34.60427
19890	6239	1971	2016-12-18 17:17:34.646291	2016-12-18 17:17:34.646291
19891	6240	1971	2016-12-18 17:17:34.686431	2016-12-18 17:17:34.686431
19892	5868	1971	2016-12-18 17:17:34.718832	2016-12-18 17:17:34.718832
19893	5885	1971	2016-12-18 17:17:34.772405	2016-12-18 17:17:34.772405
19894	6296	1971	2016-12-18 17:17:34.804677	2016-12-18 17:17:34.804677
19895	6328	1971	2016-12-18 17:17:34.843886	2016-12-18 17:17:34.843886
19896	6327	1971	2016-12-18 17:17:34.892483	2016-12-18 17:17:34.892483
19897	6313	1971	2016-12-18 17:17:34.929498	2016-12-18 17:17:34.929498
19898	6295	1971	2016-12-18 17:17:34.981344	2016-12-18 17:17:34.981344
19899	6262	1972	2016-12-18 17:17:36.882884	2016-12-18 17:17:36.882884
19900	5881	1972	2016-12-18 17:17:36.931537	2016-12-18 17:17:36.931537
19901	6172	1972	2016-12-18 17:17:36.972918	2016-12-18 17:17:36.972918
19902	6173	1972	2016-12-18 17:17:37.018655	2016-12-18 17:17:37.018655
19903	5993	1972	2016-12-18 17:17:37.063574	2016-12-18 17:17:37.063574
19904	6254	1972	2016-12-18 17:17:37.107894	2016-12-18 17:17:37.107894
19905	6253	1972	2016-12-18 17:17:37.146055	2016-12-18 17:17:37.146055
19906	6252	1972	2016-12-18 17:17:37.186609	2016-12-18 17:17:37.186609
19907	5883	1972	2016-12-18 17:17:37.226058	2016-12-18 17:17:37.226058
19908	5882	1972	2016-12-18 17:17:37.250109	2016-12-18 17:17:37.250109
19909	5884	1972	2016-12-18 17:17:37.295919	2016-12-18 17:17:37.295919
19910	6122	1972	2016-12-18 17:17:37.363052	2016-12-18 17:17:37.363052
19911	6201	1972	2016-12-18 17:17:37.423678	2016-12-18 17:17:37.423678
19912	6076	1972	2016-12-18 17:17:37.442858	2016-12-18 17:17:37.442858
19913	6077	1972	2016-12-18 17:17:37.474134	2016-12-18 17:17:37.474134
19914	6238	1972	2016-12-18 17:17:37.500924	2016-12-18 17:17:37.500924
19915	6239	1972	2016-12-18 17:17:37.526007	2016-12-18 17:17:37.526007
19916	6240	1972	2016-12-18 17:17:37.566859	2016-12-18 17:17:37.566859
19917	5868	1972	2016-12-18 17:17:37.607421	2016-12-18 17:17:37.607421
19918	5885	1972	2016-12-18 17:17:37.641488	2016-12-18 17:17:37.641488
19919	6327	1972	2016-12-18 17:17:38.93398	2016-12-18 17:17:38.93398
19920	6296	1972	2016-12-18 17:17:38.989415	2016-12-18 17:17:38.989415
19921	6328	1972	2016-12-18 17:17:39.022698	2016-12-18 17:17:39.022698
19922	6295	1972	2016-12-18 17:17:39.048521	2016-12-18 17:17:39.048521
19923	6011	1974	2016-12-18 17:17:40.637856	2016-12-18 17:17:40.637856
19924	5926	1974	2016-12-18 17:17:40.684422	2016-12-18 17:17:40.684422
19925	5984	1974	2016-12-18 17:17:40.719898	2016-12-18 17:17:40.719898
19926	6010	1974	2016-12-18 17:17:40.737556	2016-12-18 17:17:40.737556
19927	5866	1974	2016-12-18 17:17:40.770729	2016-12-18 17:17:40.770729
19928	5867	1974	2016-12-18 17:17:40.81834	2016-12-18 17:17:40.81834
19929	5865	1974	2016-12-18 17:17:40.862744	2016-12-18 17:17:40.862744
19930	5864	1974	2016-12-18 17:17:40.903886	2016-12-18 17:17:40.903886
19931	5983	1974	2016-12-18 17:17:40.944509	2016-12-18 17:17:40.944509
19932	6303	1974	2016-12-18 17:17:41.013351	2016-12-18 17:17:41.013351
19933	5926	1973	2016-12-18 17:17:43.10109	2016-12-18 17:17:43.10109
19934	5984	1973	2016-12-18 17:17:43.128319	2016-12-18 17:17:43.128319
19935	5983	1973	2016-12-18 17:17:43.159768	2016-12-18 17:17:43.159768
19936	6258	1973	2016-12-18 17:17:43.199895	2016-12-18 17:17:43.199895
19937	5822	1973	2016-12-18 17:17:43.266237	2016-12-18 17:17:43.266237
19938	5938	1973	2016-12-18 17:17:43.286552	2016-12-18 17:17:43.286552
19939	6011	1973	2016-12-18 17:17:43.342976	2016-12-18 17:17:43.342976
19940	5871	1973	2016-12-18 17:17:43.366295	2016-12-18 17:17:43.366295
19941	6154	1973	2016-12-18 17:17:43.406483	2016-12-18 17:17:43.406483
19942	6259	1973	2016-12-18 17:17:43.447286	2016-12-18 17:17:43.447286
19943	6261	1973	2016-12-18 17:17:43.484142	2016-12-18 17:17:43.484142
19944	6260	1973	2016-12-18 17:17:43.529995	2016-12-18 17:17:43.529995
19945	6044	1973	2016-12-18 17:17:43.567083	2016-12-18 17:17:43.567083
19946	6199	1973	2016-12-18 17:17:43.608583	2016-12-18 17:17:43.608583
19947	6275	1973	2016-12-18 17:17:43.647165	2016-12-18 17:17:43.647165
19948	6277	1973	2016-12-18 17:17:43.70031	2016-12-18 17:17:43.70031
19949	5758	1973	2016-12-18 17:17:43.740662	2016-12-18 17:17:43.740662
19950	6010	1973	2016-12-18 17:17:43.783886	2016-12-18 17:17:43.783886
19951	5969	1973	2016-12-18 17:17:43.855029	2016-12-18 17:17:43.855029
19952	5878	1973	2016-12-18 17:17:43.898074	2016-12-18 17:17:43.898074
19953	5825	1973	2016-12-18 17:17:45.761886	2016-12-18 17:17:45.761886
19954	5866	1973	2016-12-18 17:17:45.806454	2016-12-18 17:17:45.806454
19955	5867	1973	2016-12-18 17:17:45.855631	2016-12-18 17:17:45.855631
19956	5865	1973	2016-12-18 17:17:45.953869	2016-12-18 17:17:45.953869
19957	5864	1973	2016-12-18 17:17:46.014987	2016-12-18 17:17:46.014987
19958	5816	1973	2016-12-18 17:17:46.098118	2016-12-18 17:17:46.098118
19959	5829	1973	2016-12-18 17:17:46.154096	2016-12-18 17:17:46.154096
19960	6236	1973	2016-12-18 17:17:46.23001	2016-12-18 17:17:46.23001
19961	6053	1973	2016-12-18 17:17:46.282446	2016-12-18 17:17:46.282446
19962	5939	1973	2016-12-18 17:17:46.366908	2016-12-18 17:17:46.366908
19963	5940	1973	2016-12-18 17:17:46.434663	2016-12-18 17:17:46.434663
19964	6303	1973	2016-12-18 17:17:46.492246	2016-12-18 17:17:46.492246
19965	6320	1973	2016-12-18 17:17:46.529831	2016-12-18 17:17:46.529831
19966	6297	1973	2016-12-18 17:17:46.60494	2016-12-18 17:17:46.60494
19967	6299	1973	2016-12-18 17:17:46.661893	2016-12-18 17:17:46.661893
19968	6282	1973	2016-12-18 17:17:46.703422	2016-12-18 17:17:46.703422
19969	6293	1973	2016-12-18 17:17:46.742864	2016-12-18 17:17:46.742864
19970	6292	1973	2016-12-18 17:17:46.809917	2016-12-18 17:17:46.809917
19971	6258	1975	2016-12-18 17:17:48.621323	2016-12-18 17:17:48.621323
19972	5822	1975	2016-12-18 17:17:48.7013	2016-12-18 17:17:48.7013
19973	5938	1975	2016-12-18 17:17:48.748053	2016-12-18 17:17:48.748053
19974	5871	1975	2016-12-18 17:17:48.812868	2016-12-18 17:17:48.812868
19975	6154	1975	2016-12-18 17:17:48.871428	2016-12-18 17:17:48.871428
19976	6259	1975	2016-12-18 17:17:48.906429	2016-12-18 17:17:48.906429
19977	6261	1975	2016-12-18 17:17:48.947966	2016-12-18 17:17:48.947966
19978	6260	1975	2016-12-18 17:17:49.034782	2016-12-18 17:17:49.034782
19979	6044	1975	2016-12-18 17:17:49.076033	2016-12-18 17:17:49.076033
19980	6199	1975	2016-12-18 17:17:49.116359	2016-12-18 17:17:49.116359
19981	6275	1975	2016-12-18 17:17:49.169014	2016-12-18 17:17:49.169014
19982	6277	1975	2016-12-18 17:17:49.248108	2016-12-18 17:17:49.248108
19983	5758	1975	2016-12-18 17:17:49.287208	2016-12-18 17:17:49.287208
19984	5969	1975	2016-12-18 17:17:49.332407	2016-12-18 17:17:49.332407
19985	5878	1975	2016-12-18 17:17:49.369559	2016-12-18 17:17:49.369559
19986	5825	1975	2016-12-18 17:17:49.416183	2016-12-18 17:17:49.416183
19987	5816	1975	2016-12-18 17:17:49.479325	2016-12-18 17:17:49.479325
19988	5829	1975	2016-12-18 17:17:49.531544	2016-12-18 17:17:49.531544
19989	6236	1975	2016-12-18 17:17:49.581475	2016-12-18 17:17:49.581475
19990	5939	1975	2016-12-18 17:17:49.620096	2016-12-18 17:17:49.620096
19991	5940	1975	2016-12-18 17:17:51.032422	2016-12-18 17:17:51.032422
19992	6320	1975	2016-12-18 17:17:51.093609	2016-12-18 17:17:51.093609
19993	6297	1975	2016-12-18 17:17:51.143288	2016-12-18 17:17:51.143288
19994	6299	1975	2016-12-18 17:17:51.186817	2016-12-18 17:17:51.186817
19995	6282	1975	2016-12-18 17:17:51.226578	2016-12-18 17:17:51.226578
19996	6293	1975	2016-12-18 17:17:51.288507	2016-12-18 17:17:51.288507
19997	6292	1975	2016-12-18 17:17:51.350613	2016-12-18 17:17:51.350613
19998	5826	1976	2016-12-18 17:17:52.659163	2016-12-18 17:17:52.659163
19999	5831	1976	2016-12-18 17:17:52.708679	2016-12-18 17:17:52.708679
20000	6263	1976	2016-12-18 17:17:52.763061	2016-12-18 17:17:52.763061
20001	6264	1976	2016-12-18 17:17:52.793069	2016-12-18 17:17:52.793069
20002	6319	1976	2016-12-18 17:17:52.856715	2016-12-18 17:17:52.856715
20003	7232	1953	2016-12-18 17:17:54.827455	2016-12-18 17:17:54.827455
20004	6258	1953	2016-12-18 17:17:54.918213	2016-12-18 17:17:54.918213
20005	5822	1953	2016-12-18 17:17:54.983433	2016-12-18 17:17:54.983433
20006	5964	1953	2016-12-18 17:17:55.020669	2016-12-18 17:17:55.020669
20007	5963	1953	2016-12-18 17:17:55.065407	2016-12-18 17:17:55.065407
20008	5962	1953	2016-12-18 17:17:55.085372	2016-12-18 17:17:55.085372
20009	6045	1953	2016-12-18 17:17:55.151821	2016-12-18 17:17:55.151821
20010	5936	1953	2016-12-18 17:17:55.200175	2016-12-18 17:17:55.200175
20011	5938	1953	2016-12-18 17:17:55.243152	2016-12-18 17:17:55.243152
20012	6276	1953	2016-12-18 17:17:55.267719	2016-12-18 17:17:55.267719
20013	6272	1953	2016-12-18 17:17:55.318364	2016-12-18 17:17:55.318364
20014	6271	1953	2016-12-18 17:17:55.372697	2016-12-18 17:17:55.372697
20015	5937	1953	2016-12-18 17:17:55.407691	2016-12-18 17:17:55.407691
20016	6262	1953	2016-12-18 17:17:55.446843	2016-12-18 17:17:55.446843
20017	6044	1953	2016-12-18 17:17:55.487994	2016-12-18 17:17:55.487994
20018	5877	1953	2016-12-18 17:17:55.526479	2016-12-18 17:17:55.526479
20019	6011	1953	2016-12-18 17:17:55.587206	2016-12-18 17:17:55.587206
20020	5871	1953	2016-12-18 17:17:55.630047	2016-12-18 17:17:55.630047
20021	6154	1953	2016-12-18 17:17:55.668542	2016-12-18 17:17:55.668542
20022	5881	1953	2016-12-18 17:17:55.713681	2016-12-18 17:17:55.713681
20023	5926	1953	2016-12-18 17:17:57.829435	2016-12-18 17:17:57.829435
20024	5854	1953	2016-12-18 17:17:57.867804	2016-12-18 17:17:57.867804
20025	5870	1953	2016-12-18 17:17:57.909313	2016-12-18 17:17:57.909313
20026	6041	1953	2016-12-18 17:17:57.923631	2016-12-18 17:17:57.923631
20027	6172	1953	2016-12-18 17:17:57.989426	2016-12-18 17:17:57.989426
20028	6173	1953	2016-12-18 17:17:58.031795	2016-12-18 17:17:58.031795
20029	6259	1953	2016-12-18 17:17:58.081019	2016-12-18 17:17:58.081019
20030	6261	1953	2016-12-18 17:17:58.124985	2016-12-18 17:17:58.124985
20031	6260	1953	2016-12-18 17:17:58.157355	2016-12-18 17:17:58.157355
20032	5785	1953	2016-12-18 17:17:58.214103	2016-12-18 17:17:58.214103
20033	6043	1953	2016-12-18 17:17:58.246086	2016-12-18 17:17:58.246086
20034	6046	1953	2016-12-18 17:17:58.280225	2016-12-18 17:17:58.280225
20035	5993	1953	2016-12-18 17:17:58.297409	2016-12-18 17:17:58.297409
20036	6270	1953	2016-12-18 17:17:58.331274	2016-12-18 17:17:58.331274
20037	5905	1953	2016-12-18 17:17:58.359656	2016-12-18 17:17:58.359656
20038	5904	1953	2016-12-18 17:17:58.400376	2016-12-18 17:17:58.400376
20039	5906	1953	2016-12-18 17:17:58.442514	2016-12-18 17:17:58.442514
20040	6015	1953	2016-12-18 17:17:58.460106	2016-12-18 17:17:58.460106
20041	5903	1953	2016-12-18 17:17:58.49932	2016-12-18 17:17:58.49932
20042	5908	1953	2016-12-18 17:17:58.535285	2016-12-18 17:17:58.535285
20043	5907	1953	2016-12-18 17:18:00.549866	2016-12-18 17:18:00.549866
20044	6199	1953	2016-12-18 17:18:00.590271	2016-12-18 17:18:00.590271
20045	6017	1953	2016-12-18 17:18:00.66481	2016-12-18 17:18:00.66481
20046	5910	1953	2016-12-18 17:18:00.70986	2016-12-18 17:18:00.70986
20047	5909	1953	2016-12-18 17:18:00.752292	2016-12-18 17:18:00.752292
20048	6275	1953	2016-12-18 17:18:00.783292	2016-12-18 17:18:00.783292
20049	6277	1953	2016-12-18 17:18:00.832256	2016-12-18 17:18:00.832256
20050	5758	1953	2016-12-18 17:18:00.879079	2016-12-18 17:18:00.879079
20051	5920	1953	2016-12-18 17:18:00.923222	2016-12-18 17:18:00.923222
20052	6235	1953	2016-12-18 17:18:00.955424	2016-12-18 17:18:00.955424
20053	5941	1953	2016-12-18 17:18:00.998867	2016-12-18 17:18:00.998867
20054	6121	1953	2016-12-18 17:18:01.034878	2016-12-18 17:18:01.034878
20055	6268	1953	2016-12-18 17:18:01.079038	2016-12-18 17:18:01.079038
20056	6267	1953	2016-12-18 17:18:01.136073	2016-12-18 17:18:01.136073
20057	5901	1953	2016-12-18 17:18:01.205852	2016-12-18 17:18:01.205852
20058	5900	1953	2016-12-18 17:18:01.253706	2016-12-18 17:18:01.253706
20059	5984	1953	2016-12-18 17:18:01.288654	2016-12-18 17:18:01.288654
20060	5942	1953	2016-12-18 17:18:01.319881	2016-12-18 17:18:01.319881
20061	5856	1953	2016-12-18 17:18:01.344239	2016-12-18 17:18:01.344239
20062	6163	1953	2016-12-18 17:18:01.379918	2016-12-18 17:18:01.379918
20063	6167	1953	2016-12-18 17:18:03.54736	2016-12-18 17:18:03.54736
20064	6168	1953	2016-12-18 17:18:03.589567	2016-12-18 17:18:03.589567
20065	6164	1953	2016-12-18 17:18:03.617558	2016-12-18 17:18:03.617558
20066	6162	1953	2016-12-18 17:18:03.658664	2016-12-18 17:18:03.658664
20067	6161	1953	2016-12-18 17:18:03.71479	2016-12-18 17:18:03.71479
20068	6159	1953	2016-12-18 17:18:03.75342	2016-12-18 17:18:03.75342
20069	6160	1953	2016-12-18 17:18:03.792285	2016-12-18 17:18:03.792285
20070	6169	1953	2016-12-18 17:18:03.84148	2016-12-18 17:18:03.84148
20071	6170	1953	2016-12-18 17:18:03.915323	2016-12-18 17:18:03.915323
20072	5965	1953	2016-12-18 17:18:03.930116	2016-12-18 17:18:03.930116
20073	5968	1953	2016-12-18 17:18:03.962651	2016-12-18 17:18:03.962651
20074	5967	1953	2016-12-18 17:18:03.992877	2016-12-18 17:18:03.992877
20075	6165	1953	2016-12-18 17:18:04.037761	2016-12-18 17:18:04.037761
20076	6166	1953	2016-12-18 17:18:04.059296	2016-12-18 17:18:04.059296
20077	6157	1953	2016-12-18 17:18:04.094769	2016-12-18 17:18:04.094769
20078	6155	1953	2016-12-18 17:18:04.129685	2016-12-18 17:18:04.129685
20079	6156	1953	2016-12-18 17:18:04.162657	2016-12-18 17:18:04.162657
20080	6158	1953	2016-12-18 17:18:04.201857	2016-12-18 17:18:04.201857
20081	5966	1953	2016-12-18 17:18:04.241532	2016-12-18 17:18:04.241532
20082	6202	1953	2016-12-18 17:18:04.259371	2016-12-18 17:18:04.259371
20083	6251	1953	2016-12-18 17:18:06.503063	2016-12-18 17:18:06.503063
20084	6254	1953	2016-12-18 17:18:06.584372	2016-12-18 17:18:06.584372
20085	6253	1953	2016-12-18 17:18:06.625512	2016-12-18 17:18:06.625512
20086	6252	1953	2016-12-18 17:18:06.656563	2016-12-18 17:18:06.656563
20087	5883	1953	2016-12-18 17:18:06.682897	2016-12-18 17:18:06.682897
20088	5882	1953	2016-12-18 17:18:06.718852	2016-12-18 17:18:06.718852
20089	5884	1953	2016-12-18 17:18:06.760257	2016-12-18 17:18:06.760257
20090	6248	1953	2016-12-18 17:18:06.806883	2016-12-18 17:18:06.806883
20091	6246	1953	2016-12-18 17:18:06.846767	2016-12-18 17:18:06.846767
20092	6244	1953	2016-12-18 17:18:06.882177	2016-12-18 17:18:06.882177
20093	6242	1953	2016-12-18 17:18:06.910114	2016-12-18 17:18:06.910114
20094	6250	1953	2016-12-18 17:18:06.965008	2016-12-18 17:18:06.965008
20095	6249	1953	2016-12-18 17:18:07.011337	2016-12-18 17:18:07.011337
20096	6247	1953	2016-12-18 17:18:07.043272	2016-12-18 17:18:07.043272
20097	6245	1953	2016-12-18 17:18:07.059333	2016-12-18 17:18:07.059333
20098	6243	1953	2016-12-18 17:18:07.101086	2016-12-18 17:18:07.101086
20099	6241	1953	2016-12-18 17:18:07.135042	2016-12-18 17:18:07.135042
20100	6019	1953	2016-12-18 17:18:07.181922	2016-12-18 17:18:07.181922
20101	6091	1953	2016-12-18 17:18:07.249453	2016-12-18 17:18:07.249453
20102	6082	1953	2016-12-18 17:18:07.283184	2016-12-18 17:18:07.283184
20103	6085	1953	2016-12-18 17:18:09.430967	2016-12-18 17:18:09.430967
20104	6084	1953	2016-12-18 17:18:09.516167	2016-12-18 17:18:09.516167
20105	6080	1953	2016-12-18 17:18:09.548969	2016-12-18 17:18:09.548969
20106	6081	1953	2016-12-18 17:18:09.589085	2016-12-18 17:18:09.589085
20107	6079	1953	2016-12-18 17:18:09.633938	2016-12-18 17:18:09.633938
20108	6089	1953	2016-12-18 17:18:09.678456	2016-12-18 17:18:09.678456
20109	6083	1953	2016-12-18 17:18:09.716355	2016-12-18 17:18:09.716355
20110	6087	1953	2016-12-18 17:18:09.760003	2016-12-18 17:18:09.760003
20111	5880	1953	2016-12-18 17:18:09.79026	2016-12-18 17:18:09.79026
20112	5757	1953	2016-12-18 17:18:09.820898	2016-12-18 17:18:09.820898
20113	6180	1953	2016-12-18 17:18:09.873199	2016-12-18 17:18:09.873199
20114	6010	1953	2016-12-18 17:18:09.890361	2016-12-18 17:18:09.890361
20115	5821	1953	2016-12-18 17:18:09.949368	2016-12-18 17:18:09.949368
20116	5820	1953	2016-12-18 17:18:09.974878	2016-12-18 17:18:09.974878
20117	6040	1953	2016-12-18 17:18:10.016038	2016-12-18 17:18:10.016038
20118	5969	1953	2016-12-18 17:18:10.060148	2016-12-18 17:18:10.060148
20119	6122	1953	2016-12-18 17:18:10.103975	2016-12-18 17:18:10.103975
20120	6037	1953	2016-12-18 17:18:10.143113	2016-12-18 17:18:10.143113
20121	6038	1953	2016-12-18 17:18:10.179299	2016-12-18 17:18:10.179299
20122	6039	1953	2016-12-18 17:18:10.227709	2016-12-18 17:18:10.227709
20123	5878	1953	2016-12-18 17:18:12.580133	2016-12-18 17:18:12.580133
20124	6004	1953	2016-12-18 17:18:12.602249	2016-12-18 17:18:12.602249
20125	6018	1953	2016-12-18 17:18:12.663188	2016-12-18 17:18:12.663188
20126	5825	1953	2016-12-18 17:18:12.707438	2016-12-18 17:18:12.707438
20127	6176	1953	2016-12-18 17:18:12.730669	2016-12-18 17:18:12.730669
20128	6177	1953	2016-12-18 17:18:12.7601	2016-12-18 17:18:12.7601
20129	5859	1953	2016-12-18 17:18:12.796495	2016-12-18 17:18:12.796495
20130	5922	1953	2016-12-18 17:18:12.867502	2016-12-18 17:18:12.867502
20131	5921	1953	2016-12-18 17:18:12.93014	2016-12-18 17:18:12.93014
20132	6052	1953	2016-12-18 17:18:12.969268	2016-12-18 17:18:12.969268
20133	6047	1953	2016-12-18 17:18:13.006835	2016-12-18 17:18:13.006835
20134	6049	1953	2016-12-18 17:18:13.058105	2016-12-18 17:18:13.058105
20135	6048	1953	2016-12-18 17:18:13.104519	2016-12-18 17:18:13.104519
20136	6050	1953	2016-12-18 17:18:13.146144	2016-12-18 17:18:13.146144
20137	6051	1953	2016-12-18 17:18:13.177937	2016-12-18 17:18:13.177937
20138	5843	1953	2016-12-18 17:18:13.218603	2016-12-18 17:18:13.218603
20139	6016	1953	2016-12-18 17:18:13.258261	2016-12-18 17:18:13.258261
20140	5855	1953	2016-12-18 17:18:13.294597	2016-12-18 17:18:13.294597
20141	6007	1953	2016-12-18 17:18:13.324529	2016-12-18 17:18:13.324529
20142	6006	1953	2016-12-18 17:18:13.377342	2016-12-18 17:18:13.377342
20143	6005	1953	2016-12-18 17:18:15.377489	2016-12-18 17:18:15.377489
20144	5862	1953	2016-12-18 17:18:15.423563	2016-12-18 17:18:15.423563
20145	5863	1953	2016-12-18 17:18:15.480819	2016-12-18 17:18:15.480819
20146	6206	1953	2016-12-18 17:18:15.515376	2016-12-18 17:18:15.515376
20147	6203	1953	2016-12-18 17:18:15.548617	2016-12-18 17:18:15.548617
20148	6207	1953	2016-12-18 17:18:15.598817	2016-12-18 17:18:15.598817
20149	6204	1953	2016-12-18 17:18:15.630646	2016-12-18 17:18:15.630646
20150	6208	1953	2016-12-18 17:18:15.666474	2016-12-18 17:18:15.666474
20151	6205	1953	2016-12-18 17:18:15.689315	2016-12-18 17:18:15.689315
20152	6034	1953	2016-12-18 17:18:15.725411	2016-12-18 17:18:15.725411
20153	5857	1953	2016-12-18 17:18:15.769148	2016-12-18 17:18:15.769148
20154	6181	1953	2016-12-18 17:18:15.804084	2016-12-18 17:18:15.804084
20155	6174	1953	2016-12-18 17:18:15.840569	2016-12-18 17:18:15.840569
20156	5981	1953	2016-12-18 17:18:15.857215	2016-12-18 17:18:15.857215
20157	5982	1953	2016-12-18 17:18:15.909289	2016-12-18 17:18:15.909289
20158	5980	1953	2016-12-18 17:18:15.963961	2016-12-18 17:18:15.963961
20159	5979	1953	2016-12-18 17:18:16.00065	2016-12-18 17:18:16.00065
20160	6201	1953	2016-12-18 17:18:16.055296	2016-12-18 17:18:16.055296
20161	6003	1953	2016-12-18 17:18:16.104808	2016-12-18 17:18:16.104808
20162	6002	1953	2016-12-18 17:18:16.146281	2016-12-18 17:18:16.146281
20163	6000	1953	2016-12-18 17:18:18.09293	2016-12-18 17:18:18.09293
20164	6001	1953	2016-12-18 17:18:18.170724	2016-12-18 17:18:18.170724
20165	5996	1953	2016-12-18 17:18:18.213549	2016-12-18 17:18:18.213549
20166	5995	1953	2016-12-18 17:18:18.272844	2016-12-18 17:18:18.272844
20167	5999	1953	2016-12-18 17:18:18.339075	2016-12-18 17:18:18.339075
20168	5997	1953	2016-12-18 17:18:18.378199	2016-12-18 17:18:18.378199
20169	5998	1953	2016-12-18 17:18:18.442508	2016-12-18 17:18:18.442508
20170	5861	1953	2016-12-18 17:18:18.482286	2016-12-18 17:18:18.482286
20171	6035	1953	2016-12-18 17:18:18.521007	2016-12-18 17:18:18.521007
20172	6036	1953	2016-12-18 17:18:18.549048	2016-12-18 17:18:18.549048
20173	5957	1953	2016-12-18 17:18:18.591479	2016-12-18 17:18:18.591479
20174	5958	1953	2016-12-18 17:18:18.639645	2016-12-18 17:18:18.639645
20175	5959	1953	2016-12-18 17:18:18.688185	2016-12-18 17:18:18.688185
20176	6088	1953	2016-12-18 17:18:18.728713	2016-12-18 17:18:18.728713
20177	6090	1953	2016-12-18 17:18:18.763162	2016-12-18 17:18:18.763162
20178	5902	1953	2016-12-18 17:18:18.807788	2016-12-18 17:18:18.807788
20179	6234	1953	2016-12-18 17:18:18.847965	2016-12-18 17:18:18.847965
20180	6231	1953	2016-12-18 17:18:18.890873	2016-12-18 17:18:18.890873
20181	6232	1953	2016-12-18 17:18:18.927959	2016-12-18 17:18:18.927959
20182	6233	1953	2016-12-18 17:18:18.945023	2016-12-18 17:18:18.945023
20183	6226	1953	2016-12-18 17:18:20.900827	2016-12-18 17:18:20.900827
20184	6229	1953	2016-12-18 17:18:20.962103	2016-12-18 17:18:20.962103
20185	6230	1953	2016-12-18 17:18:21.010081	2016-12-18 17:18:21.010081
20186	6227	1953	2016-12-18 17:18:21.045867	2016-12-18 17:18:21.045867
20187	6228	1953	2016-12-18 17:18:21.10111	2016-12-18 17:18:21.10111
20188	6178	1953	2016-12-18 17:18:21.13609	2016-12-18 17:18:21.13609
20189	6179	1953	2016-12-18 17:18:21.186667	2016-12-18 17:18:21.186667
20190	6175	1953	2016-12-18 17:18:21.228305	2016-12-18 17:18:21.228305
20191	5866	1953	2016-12-18 17:18:21.266572	2016-12-18 17:18:21.266572
20192	5867	1953	2016-12-18 17:18:21.318915	2016-12-18 17:18:21.318915
20193	5865	1953	2016-12-18 17:18:21.35909	2016-12-18 17:18:21.35909
20194	5864	1953	2016-12-18 17:18:21.400066	2016-12-18 17:18:21.400066
20195	5816	1953	2016-12-18 17:18:21.43966	2016-12-18 17:18:21.43966
20196	5916	1953	2016-12-18 17:18:21.488374	2016-12-18 17:18:21.488374
20197	5829	1953	2016-12-18 17:18:21.549815	2016-12-18 17:18:21.549815
20198	5826	1953	2016-12-18 17:18:21.572065	2016-12-18 17:18:21.572065
20199	5831	1953	2016-12-18 17:18:21.609592	2016-12-18 17:18:21.609592
20200	5832	1953	2016-12-18 17:18:21.678889	2016-12-18 17:18:21.678889
20201	5828	1953	2016-12-18 17:18:21.717061	2016-12-18 17:18:21.717061
20202	6197	1953	2016-12-18 17:18:21.739271	2016-12-18 17:18:21.739271
20203	6196	1953	2016-12-18 17:18:23.944395	2016-12-18 17:18:23.944395
20204	5858	1953	2016-12-18 17:18:23.974136	2016-12-18 17:18:23.974136
20205	6078	1953	2016-12-18 17:18:24.007103	2016-12-18 17:18:24.007103
20206	6076	1953	2016-12-18 17:18:24.054752	2016-12-18 17:18:24.054752
20207	6077	1953	2016-12-18 17:18:24.103838	2016-12-18 17:18:24.103838
20208	6236	1953	2016-12-18 17:18:24.143093	2016-12-18 17:18:24.143093
20209	6238	1953	2016-12-18 17:18:24.180232	2016-12-18 17:18:24.180232
20210	6239	1953	2016-12-18 17:18:24.225284	2016-12-18 17:18:24.225284
20211	6240	1953	2016-12-18 17:18:24.258276	2016-12-18 17:18:24.258276
20212	6200	1953	2016-12-18 17:18:24.281261	2016-12-18 17:18:24.281261
20213	5756	1953	2016-12-18 17:18:24.32004	2016-12-18 17:18:24.32004
20214	5868	1953	2016-12-18 17:18:24.360594	2016-12-18 17:18:24.360594
20215	5885	1953	2016-12-18 17:18:24.392405	2016-12-18 17:18:24.392405
20216	5946	1953	2016-12-18 17:18:24.433451	2016-12-18 17:18:24.433451
20217	6123	1953	2016-12-18 17:18:24.469786	2016-12-18 17:18:24.469786
20218	5983	1953	2016-12-18 17:18:24.508891	2016-12-18 17:18:24.508891
20219	5839	1953	2016-12-18 17:18:24.55259	2016-12-18 17:18:24.55259
20220	5841	1953	2016-12-18 17:18:24.570441	2016-12-18 17:18:24.570441
20221	5838	1953	2016-12-18 17:18:24.615919	2016-12-18 17:18:24.615919
20222	5836	1953	2016-12-18 17:18:24.652164	2016-12-18 17:18:24.652164
20223	5840	1953	2016-12-18 17:18:26.689708	2016-12-18 17:18:26.689708
20224	5842	1953	2016-12-18 17:18:26.732221	2016-12-18 17:18:26.732221
20225	5837	1953	2016-12-18 17:18:26.775061	2016-12-18 17:18:26.775061
20226	5835	1953	2016-12-18 17:18:26.817331	2016-12-18 17:18:26.817331
20227	5833	1953	2016-12-18 17:18:26.8463	2016-12-18 17:18:26.8463
20228	5834	1953	2016-12-18 17:18:26.868338	2016-12-18 17:18:26.868338
20229	5819	1953	2016-12-18 17:18:26.907123	2016-12-18 17:18:26.907123
20230	6053	1953	2016-12-18 17:18:26.939697	2016-12-18 17:18:26.939697
20231	6263	1953	2016-12-18 17:18:26.974978	2016-12-18 17:18:26.974978
20232	6264	1953	2016-12-18 17:18:27.004589	2016-12-18 17:18:27.004589
20233	5939	1953	2016-12-18 17:18:27.031074	2016-12-18 17:18:27.031074
20234	5940	1953	2016-12-18 17:18:27.064725	2016-12-18 17:18:27.064725
20235	6218	1953	2016-12-18 17:18:27.109506	2016-12-18 17:18:27.109506
20236	6220	1953	2016-12-18 17:18:27.143059	2016-12-18 17:18:27.143059
20237	6217	1953	2016-12-18 17:18:27.176064	2016-12-18 17:18:27.176064
20238	6219	1953	2016-12-18 17:18:27.201972	2016-12-18 17:18:27.201972
20239	6216	1953	2016-12-18 17:18:27.268501	2016-12-18 17:18:27.268501
20240	6214	1953	2016-12-18 17:18:27.30808	2016-12-18 17:18:27.30808
20241	6215	1953	2016-12-18 17:18:27.357769	2016-12-18 17:18:27.357769
20242	6213	1953	2016-12-18 17:18:27.385558	2016-12-18 17:18:27.385558
20243	6222	1953	2016-12-18 17:18:30.071842	2016-12-18 17:18:30.071842
20244	6223	1953	2016-12-18 17:18:30.139013	2016-12-18 17:18:30.139013
20245	6221	1953	2016-12-18 17:18:30.16326	2016-12-18 17:18:30.16326
20246	5931	1953	2016-12-18 17:18:30.198275	2016-12-18 17:18:30.198275
20247	5929	1953	2016-12-18 17:18:30.232664	2016-12-18 17:18:30.232664
20248	5927	1953	2016-12-18 17:18:30.269058	2016-12-18 17:18:30.269058
20249	5932	1953	2016-12-18 17:18:30.288799	2016-12-18 17:18:30.288799
20250	5935	1953	2016-12-18 17:18:30.330665	2016-12-18 17:18:30.330665
20251	5934	1953	2016-12-18 17:18:30.36969	2016-12-18 17:18:30.36969
20252	5930	1953	2016-12-18 17:18:30.408122	2016-12-18 17:18:30.408122
20253	5928	1953	2016-12-18 17:18:30.44519	2016-12-18 17:18:30.44519
20254	6224	1953	2016-12-18 17:18:30.489445	2016-12-18 17:18:30.489445
20255	6225	1953	2016-12-18 17:18:30.519985	2016-12-18 17:18:30.519985
20256	5879	1953	2016-12-18 17:18:30.562453	2016-12-18 17:18:30.562453
20257	5824	1953	2016-12-18 17:18:30.591709	2016-12-18 17:18:30.591709
20258	6093	1953	2016-12-18 17:18:30.617369	2016-12-18 17:18:30.617369
20259	6086	1953	2016-12-18 17:18:30.649505	2016-12-18 17:18:30.649505
20260	6210	1953	2016-12-18 17:18:30.691786	2016-12-18 17:18:30.691786
20261	6211	1953	2016-12-18 17:18:30.722597	2016-12-18 17:18:30.722597
20262	6212	1953	2016-12-18 17:18:30.742768	2016-12-18 17:18:30.742768
20263	5933	1953	2016-12-18 17:18:32.826128	2016-12-18 17:18:32.826128
20264	6320	1953	2016-12-18 17:18:32.860608	2016-12-18 17:18:32.860608
20265	6297	1953	2016-12-18 17:18:32.905135	2016-12-18 17:18:32.905135
20266	6319	1953	2016-12-18 17:18:32.93538	2016-12-18 17:18:32.93538
20267	6285	1953	2016-12-18 17:18:32.991896	2016-12-18 17:18:32.991896
20268	6299	1953	2016-12-18 17:18:33.019011	2016-12-18 17:18:33.019011
20269	6282	1953	2016-12-18 17:18:33.063191	2016-12-18 17:18:33.063191
20270	6327	1953	2016-12-18 17:18:33.108955	2016-12-18 17:18:33.108955
20271	6313	1953	2016-12-18 17:18:33.147718	2016-12-18 17:18:33.147718
20272	6293	1953	2016-12-18 17:18:33.198021	2016-12-18 17:18:33.198021
20273	6304	1953	2016-12-18 17:18:33.235405	2016-12-18 17:18:33.235405
20274	6305	1953	2016-12-18 17:18:33.278181	2016-12-18 17:18:33.278181
20275	6278	1953	2016-12-18 17:18:33.313528	2016-12-18 17:18:33.313528
20276	6307	1953	2016-12-18 17:18:33.332254	2016-12-18 17:18:33.332254
20277	6292	1953	2016-12-18 17:18:33.365506	2016-12-18 17:18:33.365506
20278	6316	1953	2016-12-18 17:18:33.403429	2016-12-18 17:18:33.403429
20279	6325	1953	2016-12-18 17:18:33.446123	2016-12-18 17:18:33.446123
20280	6326	1953	2016-12-18 17:18:33.46123	2016-12-18 17:18:33.46123
20281	6280	1953	2016-12-18 17:18:33.499261	2016-12-18 17:18:33.499261
20282	6311	1953	2016-12-18 17:18:33.528036	2016-12-18 17:18:33.528036
20283	6306	1953	2016-12-18 17:18:35.249125	2016-12-18 17:18:35.249125
20284	6296	1953	2016-12-18 17:18:35.281304	2016-12-18 17:18:35.281304
20285	6315	1953	2016-12-18 17:18:35.315949	2016-12-18 17:18:35.315949
20286	6328	1953	2016-12-18 17:18:35.367771	2016-12-18 17:18:35.367771
20287	6308	1953	2016-12-18 17:18:35.410224	2016-12-18 17:18:35.410224
20288	6324	1953	2016-12-18 17:18:35.455855	2016-12-18 17:18:35.455855
20289	6309	1953	2016-12-18 17:18:35.492661	2016-12-18 17:18:35.492661
20290	6300	1953	2016-12-18 17:18:35.535059	2016-12-18 17:18:35.535059
20291	6302	1953	2016-12-18 17:18:35.601577	2016-12-18 17:18:35.601577
20292	6295	1953	2016-12-18 17:18:35.629196	2016-12-18 17:18:35.629196
20293	6287	1953	2016-12-18 17:18:35.668382	2016-12-18 17:18:35.668382
20294	6286	1953	2016-12-18 17:18:35.731443	2016-12-18 17:18:35.731443
20295	6301	1953	2016-12-18 17:18:35.777447	2016-12-18 17:18:35.777447
20296	6321	1953	2016-12-18 17:18:35.812788	2016-12-18 17:18:35.812788
20297	6303	1953	2016-12-18 17:18:35.831407	2016-12-18 17:18:35.831407
20298	5862	1977	2016-12-18 17:18:36.946332	2016-12-18 17:18:36.946332
20299	5863	1977	2016-12-18 17:18:36.982955	2016-12-18 17:18:36.982955
20300	5976	1981	2016-12-18 17:18:39.076819	2016-12-18 17:18:39.076819
20301	6298	1981	2016-12-18 17:18:39.121583	2016-12-18 17:18:39.121583
20302	5893	1982	2016-12-18 17:18:41.073365	2016-12-18 17:18:41.073365
20303	5894	1982	2016-12-18 17:18:41.092653	2016-12-18 17:18:41.092653
20304	5895	1982	2016-12-18 17:18:41.157313	2016-12-18 17:18:41.157313
20305	5897	1982	2016-12-18 17:18:41.205743	2016-12-18 17:18:41.205743
20306	5896	1982	2016-12-18 17:18:41.241296	2016-12-18 17:18:41.241296
20307	5898	1982	2016-12-18 17:18:41.29121	2016-12-18 17:18:41.29121
20308	5970	1982	2016-12-18 17:18:41.326947	2016-12-18 17:18:41.326947
20309	5971	1982	2016-12-18 17:18:41.371615	2016-12-18 17:18:41.371615
20310	5973	1982	2016-12-18 17:18:41.425301	2016-12-18 17:18:41.425301
20311	5972	1982	2016-12-18 17:18:41.465414	2016-12-18 17:18:41.465414
20312	5974	1982	2016-12-18 17:18:41.49888	2016-12-18 17:18:41.49888
20313	5975	1982	2016-12-18 17:18:41.544238	2016-12-18 17:18:41.544238
20314	6140	1982	2016-12-18 17:18:41.583255	2016-12-18 17:18:41.583255
20315	6139	1982	2016-12-18 17:18:41.618646	2016-12-18 17:18:41.618646
20316	6151	1982	2016-12-18 17:18:41.659636	2016-12-18 17:18:41.659636
20317	5759	1982	2016-12-18 17:18:41.711003	2016-12-18 17:18:41.711003
20318	5765	1982	2016-12-18 17:18:41.748063	2016-12-18 17:18:41.748063
20319	5764	1982	2016-12-18 17:18:41.79353	2016-12-18 17:18:41.79353
20320	5767	1982	2016-12-18 17:18:41.832437	2016-12-18 17:18:41.832437
20321	5766	1982	2016-12-18 17:18:41.869803	2016-12-18 17:18:41.869803
20322	5784	1982	2016-12-18 17:18:43.61893	2016-12-18 17:18:43.61893
20323	5775	1982	2016-12-18 17:18:43.670941	2016-12-18 17:18:43.670941
20324	5777	1982	2016-12-18 17:18:43.71045	2016-12-18 17:18:43.71045
20325	5776	1982	2016-12-18 17:18:43.747145	2016-12-18 17:18:43.747145
20326	5762	1982	2016-12-18 17:18:43.762439	2016-12-18 17:18:43.762439
20327	5761	1982	2016-12-18 17:18:43.834556	2016-12-18 17:18:43.834556
20328	5763	1982	2016-12-18 17:18:43.881057	2016-12-18 17:18:43.881057
20329	5783	1982	2016-12-18 17:18:43.954945	2016-12-18 17:18:43.954945
20330	5782	1982	2016-12-18 17:18:43.986108	2016-12-18 17:18:43.986108
20331	5778	1982	2016-12-18 17:18:44.020855	2016-12-18 17:18:44.020855
20332	5780	1982	2016-12-18 17:18:44.051908	2016-12-18 17:18:44.051908
20333	5781	1982	2016-12-18 17:18:44.124436	2016-12-18 17:18:44.124436
20334	5779	1982	2016-12-18 17:18:44.177419	2016-12-18 17:18:44.177419
20335	6124	1982	2016-12-18 17:18:44.207621	2016-12-18 17:18:44.207621
20336	5736	1982	2016-12-18 17:18:44.281973	2016-12-18 17:18:44.281973
20337	5860	1983	2016-12-18 17:18:45.494312	2016-12-18 17:18:45.494312
20338	6283	1983	2016-12-18 17:18:45.535655	2016-12-18 17:18:45.535655
20339	6117	1984	2016-12-18 17:18:46.719127	2016-12-18 17:18:46.719127
20340	5918	1984	2016-12-18 17:18:46.758145	2016-12-18 17:18:46.758145
20341	5919	1984	2016-12-18 17:18:46.802017	2016-12-18 17:18:46.802017
20342	5917	1984	2016-12-18 17:18:46.860808	2016-12-18 17:18:46.860808
20343	6113	1985	2016-12-18 17:18:48.635692	2016-12-18 17:18:48.635692
20344	5845	1985	2016-12-18 17:18:48.675694	2016-12-18 17:18:48.675694
20345	5844	1985	2016-12-18 17:18:48.722676	2016-12-18 17:18:48.722676
20346	5848	1985	2016-12-18 17:18:48.776575	2016-12-18 17:18:48.776575
20347	6273	1985	2016-12-18 17:18:48.804625	2016-12-18 17:18:48.804625
20348	6274	1985	2016-12-18 17:18:48.843615	2016-12-18 17:18:48.843615
20349	5817	1985	2016-12-18 17:18:48.891125	2016-12-18 17:18:48.891125
20350	5818	1985	2016-12-18 17:18:48.92412	2016-12-18 17:18:48.92412
20351	5760	1985	2016-12-18 17:18:48.965247	2016-12-18 17:18:48.965247
20352	5773	1985	2016-12-18 17:18:49.001489	2016-12-18 17:18:49.001489
20353	5772	1985	2016-12-18 17:18:49.049222	2016-12-18 17:18:49.049222
20354	5830	1985	2016-12-18 17:18:49.090984	2016-12-18 17:18:49.090984
20355	5827	1985	2016-12-18 17:18:49.130748	2016-12-18 17:18:49.130748
20356	6092	1985	2016-12-18 17:18:49.166321	2016-12-18 17:18:49.166321
20357	6279	1985	2016-12-18 17:18:49.21311	2016-12-18 17:18:49.21311
20358	6291	1985	2016-12-18 17:18:49.253902	2016-12-18 17:18:49.253902
20359	6281	1985	2016-12-18 17:18:49.285661	2016-12-18 17:18:49.285661
20360	6312	1985	2016-12-18 17:18:49.329044	2016-12-18 17:18:49.329044
20361	6284	1985	2016-12-18 17:18:49.367097	2016-12-18 17:18:49.367097
20362	6113	1980	2016-12-18 17:18:51.251705	2016-12-18 17:18:51.251705
20363	5847	1980	2016-12-18 17:18:51.28512	2016-12-18 17:18:51.28512
20364	5846	1980	2016-12-18 17:18:51.303274	2016-12-18 17:18:51.303274
20365	5845	1980	2016-12-18 17:18:51.344554	2016-12-18 17:18:51.344554
20366	5844	1980	2016-12-18 17:18:51.384503	2016-12-18 17:18:51.384503
20367	5848	1980	2016-12-18 17:18:51.429484	2016-12-18 17:18:51.429484
20368	6269	1980	2016-12-18 17:18:51.455365	2016-12-18 17:18:51.455365
20369	6273	1980	2016-12-18 17:18:51.513035	2016-12-18 17:18:51.513035
20370	6274	1980	2016-12-18 17:18:51.539873	2016-12-18 17:18:51.539873
20371	5893	1980	2016-12-18 17:18:51.583855	2016-12-18 17:18:51.583855
20372	5894	1980	2016-12-18 17:18:51.622179	2016-12-18 17:18:51.622179
20373	5895	1980	2016-12-18 17:18:51.659722	2016-12-18 17:18:51.659722
20374	5897	1980	2016-12-18 17:18:51.680522	2016-12-18 17:18:51.680522
20375	5896	1980	2016-12-18 17:18:51.715989	2016-12-18 17:18:51.715989
20376	5898	1980	2016-12-18 17:18:51.755558	2016-12-18 17:18:51.755558
20377	5984	1980	2016-12-18 17:18:51.805103	2016-12-18 17:18:51.805103
20378	5817	1980	2016-12-18 17:18:51.84122	2016-12-18 17:18:51.84122
20379	5818	1980	2016-12-18 17:18:51.880973	2016-12-18 17:18:51.880973
20380	6117	1980	2016-12-18 17:18:51.900073	2016-12-18 17:18:51.900073
20381	5970	1980	2016-12-18 17:18:51.957002	2016-12-18 17:18:51.957002
20382	5971	1980	2016-12-18 17:18:53.991028	2016-12-18 17:18:53.991028
20383	5973	1980	2016-12-18 17:18:54.022163	2016-12-18 17:18:54.022163
20384	5972	1980	2016-12-18 17:18:54.061376	2016-12-18 17:18:54.061376
20385	5974	1980	2016-12-18 17:18:54.102983	2016-12-18 17:18:54.102983
20386	5975	1980	2016-12-18 17:18:54.165935	2016-12-18 17:18:54.165935
20387	5801	1980	2016-12-18 17:18:54.229714	2016-12-18 17:18:54.229714
20388	5797	1980	2016-12-18 17:18:54.270542	2016-12-18 17:18:54.270542
20389	5798	1980	2016-12-18 17:18:54.308209	2016-12-18 17:18:54.308209
20390	5796	1980	2016-12-18 17:18:54.348784	2016-12-18 17:18:54.348784
20391	5799	1980	2016-12-18 17:18:54.395642	2016-12-18 17:18:54.395642
20392	5800	1980	2016-12-18 17:18:54.429778	2016-12-18 17:18:54.429778
20393	5809	1980	2016-12-18 17:18:54.472702	2016-12-18 17:18:54.472702
20394	5802	1980	2016-12-18 17:18:54.515843	2016-12-18 17:18:54.515843
20395	5806	1980	2016-12-18 17:18:54.5595	2016-12-18 17:18:54.5595
20396	5804	1980	2016-12-18 17:18:54.589322	2016-12-18 17:18:54.589322
20397	5805	1980	2016-12-18 17:18:54.624085	2016-12-18 17:18:54.624085
20398	5807	1980	2016-12-18 17:18:54.64849	2016-12-18 17:18:54.64849
20399	5808	1980	2016-12-18 17:18:54.721219	2016-12-18 17:18:54.721219
20400	5810	1980	2016-12-18 17:18:54.756607	2016-12-18 17:18:54.756607
20401	5789	1980	2016-12-18 17:18:54.800667	2016-12-18 17:18:54.800667
20402	5788	1980	2016-12-18 17:18:56.726222	2016-12-18 17:18:56.726222
20403	5803	1980	2016-12-18 17:18:56.76355	2016-12-18 17:18:56.76355
20404	5793	1980	2016-12-18 17:18:56.793199	2016-12-18 17:18:56.793199
20405	5792	1980	2016-12-18 17:18:56.813362	2016-12-18 17:18:56.813362
20406	5791	1980	2016-12-18 17:18:56.84853	2016-12-18 17:18:56.84853
20407	5790	1980	2016-12-18 17:18:56.918829	2016-12-18 17:18:56.918829
20408	5794	1980	2016-12-18 17:18:56.959921	2016-12-18 17:18:56.959921
20409	5795	1980	2016-12-18 17:18:56.981818	2016-12-18 17:18:56.981818
20410	5811	1980	2016-12-18 17:18:57.02213	2016-12-18 17:18:57.02213
20411	5786	1980	2016-12-18 17:18:57.049879	2016-12-18 17:18:57.049879
20412	5787	1980	2016-12-18 17:18:57.088955	2016-12-18 17:18:57.088955
20413	6140	1980	2016-12-18 17:18:57.136085	2016-12-18 17:18:57.136085
20414	6139	1980	2016-12-18 17:18:57.171995	2016-12-18 17:18:57.171995
20415	6151	1980	2016-12-18 17:18:57.215892	2016-12-18 17:18:57.215892
20416	5860	1980	2016-12-18 17:18:57.252136	2016-12-18 17:18:57.252136
20417	5760	1980	2016-12-18 17:18:57.274787	2016-12-18 17:18:57.274787
20418	5773	1980	2016-12-18 17:18:57.316968	2016-12-18 17:18:57.316968
20419	5772	1980	2016-12-18 17:18:57.373022	2016-12-18 17:18:57.373022
20420	5759	1980	2016-12-18 17:18:57.400617	2016-12-18 17:18:57.400617
20421	5765	1980	2016-12-18 17:18:57.436736	2016-12-18 17:18:57.436736
20422	5764	1980	2016-12-18 17:18:59.386989	2016-12-18 17:18:59.386989
20423	5767	1980	2016-12-18 17:18:59.431946	2016-12-18 17:18:59.431946
20424	5766	1980	2016-12-18 17:18:59.470914	2016-12-18 17:18:59.470914
20425	5784	1980	2016-12-18 17:18:59.510946	2016-12-18 17:18:59.510946
20426	5775	1980	2016-12-18 17:18:59.545585	2016-12-18 17:18:59.545585
20427	5777	1980	2016-12-18 17:18:59.561457	2016-12-18 17:18:59.561457
20428	5776	1980	2016-12-18 17:18:59.5896	2016-12-18 17:18:59.5896
20429	5762	1980	2016-12-18 17:18:59.639718	2016-12-18 17:18:59.639718
20430	5761	1980	2016-12-18 17:18:59.671367	2016-12-18 17:18:59.671367
20431	5763	1980	2016-12-18 17:18:59.716743	2016-12-18 17:18:59.716743
20432	5783	1980	2016-12-18 17:18:59.76449	2016-12-18 17:18:59.76449
20433	5782	1980	2016-12-18 17:18:59.79282	2016-12-18 17:18:59.79282
20434	5778	1980	2016-12-18 17:18:59.815001	2016-12-18 17:18:59.815001
20435	5780	1980	2016-12-18 17:18:59.858201	2016-12-18 17:18:59.858201
20436	5781	1980	2016-12-18 17:18:59.890573	2016-12-18 17:18:59.890573
20437	5779	1980	2016-12-18 17:18:59.922915	2016-12-18 17:18:59.922915
20438	5853	1980	2016-12-18 17:18:59.959117	2016-12-18 17:18:59.959117
20439	6124	1980	2016-12-18 17:18:59.988439	2016-12-18 17:18:59.988439
20440	5976	1980	2016-12-18 17:19:00.047246	2016-12-18 17:19:00.047246
20441	6171	1980	2016-12-18 17:19:00.076432	2016-12-18 17:19:00.076432
20442	6105	1980	2016-12-18 17:19:02.147937	2016-12-18 17:19:02.147937
20443	6104	1980	2016-12-18 17:19:02.191428	2016-12-18 17:19:02.191428
20444	6004	1980	2016-12-18 17:19:02.227369	2016-12-18 17:19:02.227369
20445	5990	1980	2016-12-18 17:19:02.275984	2016-12-18 17:19:02.275984
20446	5872	1980	2016-12-18 17:19:02.309626	2016-12-18 17:19:02.309626
20447	5743	1980	2016-12-18 17:19:02.342611	2016-12-18 17:19:02.342611
20448	5742	1980	2016-12-18 17:19:02.382134	2016-12-18 17:19:02.382134
20449	5745	1980	2016-12-18 17:19:02.427003	2016-12-18 17:19:02.427003
20450	5744	1980	2016-12-18 17:19:02.477726	2016-12-18 17:19:02.477726
20451	5741	1980	2016-12-18 17:19:02.52585	2016-12-18 17:19:02.52585
20452	5739	1980	2016-12-18 17:19:02.560931	2016-12-18 17:19:02.560931
20453	5740	1980	2016-12-18 17:19:02.650198	2016-12-18 17:19:02.650198
20454	5736	1980	2016-12-18 17:19:02.689107	2016-12-18 17:19:02.689107
20455	5830	1980	2016-12-18 17:19:02.722501	2016-12-18 17:19:02.722501
20456	5827	1980	2016-12-18 17:19:02.772983	2016-12-18 17:19:02.772983
20457	5918	1980	2016-12-18 17:19:02.812157	2016-12-18 17:19:02.812157
20458	5919	1980	2016-12-18 17:19:02.854997	2016-12-18 17:19:02.854997
20459	5917	1980	2016-12-18 17:19:02.897791	2016-12-18 17:19:02.897791
20460	6020	1980	2016-12-18 17:19:02.936835	2016-12-18 17:19:02.936835
20461	6021	1980	2016-12-18 17:19:02.970949	2016-12-18 17:19:02.970949
20462	6028	1980	2016-12-18 17:19:04.777969	2016-12-18 17:19:04.777969
20463	6022	1980	2016-12-18 17:19:04.822811	2016-12-18 17:19:04.822811
20464	6033	1980	2016-12-18 17:19:04.860805	2016-12-18 17:19:04.860805
20465	6032	1980	2016-12-18 17:19:04.889854	2016-12-18 17:19:04.889854
20466	6029	1980	2016-12-18 17:19:04.941262	2016-12-18 17:19:04.941262
20467	6031	1980	2016-12-18 17:19:04.984819	2016-12-18 17:19:04.984819
20468	6030	1980	2016-12-18 17:19:05.018189	2016-12-18 17:19:05.018189
20469	6026	1980	2016-12-18 17:19:05.047897	2016-12-18 17:19:05.047897
20470	6024	1980	2016-12-18 17:19:05.068321	2016-12-18 17:19:05.068321
20471	6025	1980	2016-12-18 17:19:05.103885	2016-12-18 17:19:05.103885
20472	6027	1980	2016-12-18 17:19:05.149767	2016-12-18 17:19:05.149767
20473	6023	1980	2016-12-18 17:19:05.185934	2016-12-18 17:19:05.185934
20474	6092	1980	2016-12-18 17:19:05.219024	2016-12-18 17:19:05.219024
20475	6279	1980	2016-12-18 17:19:05.236599	2016-12-18 17:19:05.236599
20476	6291	1980	2016-12-18 17:19:05.271665	2016-12-18 17:19:05.271665
20477	6281	1980	2016-12-18 17:19:05.300075	2016-12-18 17:19:05.300075
20478	6298	1980	2016-12-18 17:19:05.321425	2016-12-18 17:19:05.321425
20479	6312	1980	2016-12-18 17:19:05.358925	2016-12-18 17:19:05.358925
20480	6284	1980	2016-12-18 17:19:05.392158	2016-12-18 17:19:05.392158
20481	6283	1980	2016-12-18 17:19:05.406979	2016-12-18 17:19:05.406979
20482	5847	1986	2016-12-18 17:19:06.597821	2016-12-18 17:19:06.597821
20483	5846	1986	2016-12-18 17:19:06.616785	2016-12-18 17:19:06.616785
20484	6075	1988	2016-12-18 17:19:07.69852	2016-12-18 17:19:07.69852
20485	5815	1989	2016-12-18 17:19:09.251708	2016-12-18 17:19:09.251708
20486	5814	1989	2016-12-18 17:19:09.286829	2016-12-18 17:19:09.286829
20487	5812	1989	2016-12-18 17:19:09.325985	2016-12-18 17:19:09.325985
20488	5985	1989	2016-12-18 17:19:09.364444	2016-12-18 17:19:09.364444
20489	5986	1989	2016-12-18 17:19:09.410251	2016-12-18 17:19:09.410251
20490	5813	1989	2016-12-18 17:19:09.436235	2016-12-18 17:19:09.436235
20491	6137	1989	2016-12-18 17:19:09.48037	2016-12-18 17:19:09.48037
20492	6136	1989	2016-12-18 17:19:09.520451	2016-12-18 17:19:09.520451
20493	6135	1989	2016-12-18 17:19:09.567293	2016-12-18 17:19:09.567293
20494	6134	1989	2016-12-18 17:19:09.611334	2016-12-18 17:19:09.611334
20495	6130	1989	2016-12-18 17:19:09.653232	2016-12-18 17:19:09.653232
20496	6074	1990	2016-12-18 17:19:10.701899	2016-12-18 17:19:10.701899
20497	5873	1987	2016-12-18 17:19:12.453235	2016-12-18 17:19:12.453235
20498	5875	1987	2016-12-18 17:19:12.490483	2016-12-18 17:19:12.490483
20499	5876	1987	2016-12-18 17:19:12.523399	2016-12-18 17:19:12.523399
20500	5874	1987	2016-12-18 17:19:12.538816	2016-12-18 17:19:12.538816
20501	6075	1987	2016-12-18 17:19:12.580793	2016-12-18 17:19:12.580793
20502	5815	1987	2016-12-18 17:19:12.643094	2016-12-18 17:19:12.643094
20503	5814	1987	2016-12-18 17:19:12.660605	2016-12-18 17:19:12.660605
20504	5812	1987	2016-12-18 17:19:12.696682	2016-12-18 17:19:12.696682
20505	6095	1987	2016-12-18 17:19:12.733608	2016-12-18 17:19:12.733608
20506	6074	1987	2016-12-18 17:19:12.756412	2016-12-18 17:19:12.756412
20507	5985	1987	2016-12-18 17:19:12.788147	2016-12-18 17:19:12.788147
20508	5986	1987	2016-12-18 17:19:12.833514	2016-12-18 17:19:12.833514
20509	5813	1987	2016-12-18 17:19:12.871726	2016-12-18 17:19:12.871726
20510	6137	1987	2016-12-18 17:19:12.906614	2016-12-18 17:19:12.906614
20511	6136	1987	2016-12-18 17:19:12.934999	2016-12-18 17:19:12.934999
20512	6135	1987	2016-12-18 17:19:12.985015	2016-12-18 17:19:12.985015
20513	6134	1987	2016-12-18 17:19:13.026692	2016-12-18 17:19:13.026692
20514	6130	1987	2016-12-18 17:19:13.058085	2016-12-18 17:19:13.058085
20515	6095	1991	2016-12-18 17:19:14.102636	2016-12-18 17:19:14.102636
20516	5774	1993	2016-12-18 17:19:15.609696	2016-12-18 17:19:15.609696
20517	5899	1993	2016-12-18 17:19:15.659512	2016-12-18 17:19:15.659512
20518	6101	1993	2016-12-18 17:19:15.706722	2016-12-18 17:19:15.706722
20519	6102	1993	2016-12-18 17:19:15.757341	2016-12-18 17:19:15.757341
20520	6118	1993	2016-12-18 17:19:15.808499	2016-12-18 17:19:15.808499
20521	6119	1993	2016-12-18 17:19:15.833837	2016-12-18 17:19:15.833837
20522	6189	1993	2016-12-18 17:19:15.875805	2016-12-18 17:19:15.875805
20523	6190	1993	2016-12-18 17:19:15.926678	2016-12-18 17:19:15.926678
20524	6191	1993	2016-12-18 17:19:15.970535	2016-12-18 17:19:15.970535
20525	6192	1993	2016-12-18 17:19:15.996824	2016-12-18 17:19:15.996824
20526	6193	1993	2016-12-18 17:19:16.062441	2016-12-18 17:19:16.062441
20527	6194	1993	2016-12-18 17:19:16.085651	2016-12-18 17:19:16.085651
20528	5771	1994	2016-12-18 17:19:17.775252	2016-12-18 17:19:17.775252
20529	5889	1994	2016-12-18 17:19:17.814831	2016-12-18 17:19:17.814831
20530	5890	1994	2016-12-18 17:19:17.863411	2016-12-18 17:19:17.863411
20531	5947	1994	2016-12-18 17:19:17.902538	2016-12-18 17:19:17.902538
20532	5950	1994	2016-12-18 17:19:17.918542	2016-12-18 17:19:17.918542
20533	5755	1994	2016-12-18 17:19:17.95378	2016-12-18 17:19:17.95378
20534	6096	1994	2016-12-18 17:19:17.988066	2016-12-18 17:19:17.988066
20535	6115	1994	2016-12-18 17:19:18.003563	2016-12-18 17:19:18.003563
20536	6143	1994	2016-12-18 17:19:18.041227	2016-12-18 17:19:18.041227
20537	6144	1994	2016-12-18 17:19:18.077067	2016-12-18 17:19:18.077067
20538	6145	1994	2016-12-18 17:19:18.114886	2016-12-18 17:19:18.114886
20539	6183	1994	2016-12-18 17:19:18.159309	2016-12-18 17:19:18.159309
20540	6184	1994	2016-12-18 17:19:18.208347	2016-12-18 17:19:18.208347
20541	6185	1994	2016-12-18 17:19:18.280414	2016-12-18 17:19:18.280414
20542	6186	1994	2016-12-18 17:19:18.319869	2016-12-18 17:19:18.319869
20543	6187	1994	2016-12-18 17:19:18.363542	2016-12-18 17:19:18.363542
20544	6188	1994	2016-12-18 17:19:18.401319	2016-12-18 17:19:18.401319
20545	6195	1994	2016-12-18 17:19:18.454379	2016-12-18 17:19:18.454379
20546	5769	1995	2016-12-18 17:19:20.576018	2016-12-18 17:19:20.576018
20547	5770	1995	2016-12-18 17:19:20.588916	2016-12-18 17:19:20.588916
20548	5911	1995	2016-12-18 17:19:20.661702	2016-12-18 17:19:20.661702
20549	5913	1995	2016-12-18 17:19:20.709276	2016-12-18 17:19:20.709276
20550	5914	1995	2016-12-18 17:19:20.751281	2016-12-18 17:19:20.751281
20551	5943	1995	2016-12-18 17:19:20.793271	2016-12-18 17:19:20.793271
20552	5944	1995	2016-12-18 17:19:20.834591	2016-12-18 17:19:20.834591
20553	5945	1995	2016-12-18 17:19:20.874334	2016-12-18 17:19:20.874334
20554	5951	1995	2016-12-18 17:19:20.91234	2016-12-18 17:19:20.91234
20555	5952	1995	2016-12-18 17:19:20.945748	2016-12-18 17:19:20.945748
20556	5953	1995	2016-12-18 17:19:20.982363	2016-12-18 17:19:20.982363
20557	5954	1995	2016-12-18 17:19:21.002705	2016-12-18 17:19:21.002705
20558	5955	1995	2016-12-18 17:19:21.034477	2016-12-18 17:19:21.034477
20559	5960	1995	2016-12-18 17:19:21.070303	2016-12-18 17:19:21.070303
20560	5747	1995	2016-12-18 17:19:21.083815	2016-12-18 17:19:21.083815
20561	5751	1995	2016-12-18 17:19:21.125411	2016-12-18 17:19:21.125411
20562	5752	1995	2016-12-18 17:19:21.167819	2016-12-18 17:19:21.167819
20563	5754	1995	2016-12-18 17:19:21.210051	2016-12-18 17:19:21.210051
20564	6013	1995	2016-12-18 17:19:21.246007	2016-12-18 17:19:21.246007
20565	6014	1995	2016-12-18 17:19:21.276894	2016-12-18 17:19:21.276894
20566	6054	1995	2016-12-18 17:19:22.965725	2016-12-18 17:19:22.965725
20567	6063	1995	2016-12-18 17:19:23.033472	2016-12-18 17:19:23.033472
20568	6064	1995	2016-12-18 17:19:23.073468	2016-12-18 17:19:23.073468
20569	6065	1995	2016-12-18 17:19:23.089512	2016-12-18 17:19:23.089512
20570	6066	1995	2016-12-18 17:19:23.12786	2016-12-18 17:19:23.12786
20571	6067	1995	2016-12-18 17:19:23.171963	2016-12-18 17:19:23.171963
20572	6072	1995	2016-12-18 17:19:23.217926	2016-12-18 17:19:23.217926
20573	6094	1995	2016-12-18 17:19:23.278905	2016-12-18 17:19:23.278905
20574	6125	1995	2016-12-18 17:19:23.316437	2016-12-18 17:19:23.316437
20575	6198	1995	2016-12-18 17:19:23.342955	2016-12-18 17:19:23.342955
20576	6237	1995	2016-12-18 17:19:23.408264	2016-12-18 17:19:23.408264
20577	6290	1995	2016-12-18 17:19:23.450878	2016-12-18 17:19:23.450878
20578	6310	1995	2016-12-18 17:19:23.464803	2016-12-18 17:19:23.464803
20579	6314	1995	2016-12-18 17:19:23.504912	2016-12-18 17:19:23.504912
20580	6317	1995	2016-12-18 17:19:23.545796	2016-12-18 17:19:23.545796
20581	5912	1996	2016-12-18 17:19:24.920344	2016-12-18 17:19:24.920344
20582	5948	1996	2016-12-18 17:19:24.963385	2016-12-18 17:19:24.963385
20583	5949	1996	2016-12-18 17:19:25.030481	2016-12-18 17:19:25.030481
20584	5750	1996	2016-12-18 17:19:25.08697	2016-12-18 17:19:25.08697
20585	6008	1996	2016-12-18 17:19:25.1245	2016-12-18 17:19:25.1245
20586	6009	1996	2016-12-18 17:19:25.168274	2016-12-18 17:19:25.168274
20587	6060	1996	2016-12-18 17:19:25.208139	2016-12-18 17:19:25.208139
20588	6061	1996	2016-12-18 17:19:25.239543	2016-12-18 17:19:25.239543
20589	5849	1997	2016-12-18 17:19:26.614823	2016-12-18 17:19:26.614823
20590	5850	1997	2016-12-18 17:19:26.631528	2016-12-18 17:19:26.631528
20591	5851	1997	2016-12-18 17:19:26.665843	2016-12-18 17:19:26.665843
20592	5852	1997	2016-12-18 17:19:26.683558	2016-12-18 17:19:26.683558
20593	6097	1997	2016-12-18 17:19:26.712123	2016-12-18 17:19:26.712123
20594	6098	1997	2016-12-18 17:19:26.761793	2016-12-18 17:19:26.761793
20595	6129	1997	2016-12-18 17:19:26.797735	2016-12-18 17:19:26.797735
20596	6153	1997	2016-12-18 17:19:26.823344	2016-12-18 17:19:26.823344
20597	5911	1998	2016-12-18 17:19:27.970941	2016-12-18 17:19:27.970941
20598	6120	1998	2016-12-18 17:19:28.012146	2016-12-18 17:19:28.012146
20599	5924	1999	2016-12-18 17:19:29.511501	2016-12-18 17:19:29.511501
20600	5925	1999	2016-12-18 17:19:29.546084	2016-12-18 17:19:29.546084
20601	5748	1999	2016-12-18 17:19:29.575901	2016-12-18 17:19:29.575901
20602	5753	1999	2016-12-18 17:19:29.623412	2016-12-18 17:19:29.623412
20603	6062	1999	2016-12-18 17:19:29.665587	2016-12-18 17:19:29.665587
20604	6069	1999	2016-12-18 17:19:29.698839	2016-12-18 17:19:29.698839
20605	6114	1999	2016-12-18 17:19:29.730773	2016-12-18 17:19:29.730773
20606	6128	1999	2016-12-18 17:19:29.761108	2016-12-18 17:19:29.761108
20607	6146	1999	2016-12-18 17:19:29.80402	2016-12-18 17:19:29.80402
20608	6147	1999	2016-12-18 17:19:29.887026	2016-12-18 17:19:29.887026
20609	6148	1999	2016-12-18 17:19:29.927182	2016-12-18 17:19:29.927182
20610	6149	1999	2016-12-18 17:19:29.963224	2016-12-18 17:19:29.963224
20611	6323	1999	2016-12-18 17:19:30.001048	2016-12-18 17:19:30.001048
20612	5768	2000	2016-12-18 17:19:31.837152	2016-12-18 17:19:31.837152
20613	5961	2000	2016-12-18 17:19:31.883236	2016-12-18 17:19:31.883236
20614	5989	2000	2016-12-18 17:19:31.928116	2016-12-18 17:19:31.928116
20615	5992	2000	2016-12-18 17:19:31.994927	2016-12-18 17:19:31.994927
20616	5749	2000	2016-12-18 17:19:32.034288	2016-12-18 17:19:32.034288
20617	6057	2000	2016-12-18 17:19:32.058945	2016-12-18 17:19:32.058945
20618	6058	2000	2016-12-18 17:19:32.095168	2016-12-18 17:19:32.095168
20619	6059	2000	2016-12-18 17:19:32.136547	2016-12-18 17:19:32.136547
20620	6107	2000	2016-12-18 17:19:32.207579	2016-12-18 17:19:32.207579
20621	6108	2000	2016-12-18 17:19:32.258602	2016-12-18 17:19:32.258602
20622	6109	2000	2016-12-18 17:19:32.286535	2016-12-18 17:19:32.286535
20623	6127	2000	2016-12-18 17:19:32.324174	2016-12-18 17:19:32.324174
20624	6131	2000	2016-12-18 17:19:32.349812	2016-12-18 17:19:32.349812
20625	6132	2000	2016-12-18 17:19:32.404609	2016-12-18 17:19:32.404609
20626	6133	2000	2016-12-18 17:19:32.433668	2016-12-18 17:19:32.433668
20627	6150	2000	2016-12-18 17:19:32.496156	2016-12-18 17:19:32.496156
20628	5823	2001	2016-12-18 17:19:34.424445	2016-12-18 17:19:34.424445
20629	5869	2001	2016-12-18 17:19:34.475662	2016-12-18 17:19:34.475662
20630	5886	2001	2016-12-18 17:19:34.520269	2016-12-18 17:19:34.520269
20631	5887	2001	2016-12-18 17:19:34.586911	2016-12-18 17:19:34.586911
20632	5888	2001	2016-12-18 17:19:34.613309	2016-12-18 17:19:34.613309
20633	5891	2001	2016-12-18 17:19:34.64112	2016-12-18 17:19:34.64112
20634	5923	2001	2016-12-18 17:19:34.680756	2016-12-18 17:19:34.680756
20635	5737	2001	2016-12-18 17:19:34.723918	2016-12-18 17:19:34.723918
20636	5956	2001	2016-12-18 17:19:34.78364	2016-12-18 17:19:34.78364
20637	5977	2001	2016-12-18 17:19:34.810801	2016-12-18 17:19:34.810801
20638	5988	2001	2016-12-18 17:19:34.864585	2016-12-18 17:19:34.864585
20639	5991	2001	2016-12-18 17:19:34.889059	2016-12-18 17:19:34.889059
20640	5994	2001	2016-12-18 17:19:34.929109	2016-12-18 17:19:34.929109
20641	5746	2001	2016-12-18 17:19:34.968705	2016-12-18 17:19:34.968705
20642	6042	2001	2016-12-18 17:19:35.014532	2016-12-18 17:19:35.014532
20643	6068	2001	2016-12-18 17:19:35.056693	2016-12-18 17:19:35.056693
20644	6100	2001	2016-12-18 17:19:35.099324	2016-12-18 17:19:35.099324
20645	6106	2001	2016-12-18 17:19:35.140992	2016-12-18 17:19:35.140992
20646	6110	2001	2016-12-18 17:19:35.180352	2016-12-18 17:19:35.180352
20647	6116	2001	2016-12-18 17:19:35.223518	2016-12-18 17:19:35.223518
20648	6138	2001	2016-12-18 17:19:36.715717	2016-12-18 17:19:36.715717
20649	6141	2001	2016-12-18 17:19:36.733091	2016-12-18 17:19:36.733091
20650	6142	2001	2016-12-18 17:19:36.798597	2016-12-18 17:19:36.798597
20651	6152	2001	2016-12-18 17:19:36.823369	2016-12-18 17:19:36.823369
20652	6182	2001	2016-12-18 17:19:36.879996	2016-12-18 17:19:36.879996
20653	6288	2001	2016-12-18 17:19:36.97276	2016-12-18 17:19:36.97276
20654	6294	2001	2016-12-18 17:19:37.020512	2016-12-18 17:19:37.020512
20655	6322	2001	2016-12-18 17:19:37.054737	2016-12-18 17:19:37.054737
20656	6209	2002	2016-12-18 17:19:38.135069	2016-12-18 17:19:38.135069
20657	6289	2002	2016-12-18 17:19:38.171252	2016-12-18 17:19:38.171252
20658	6266	2003	2016-12-18 17:19:39.209772	2016-12-18 17:19:39.209772
20659	6055	2004	2016-12-18 17:19:40.564774	2016-12-18 17:19:40.564774
20660	6056	2004	2016-12-18 17:19:40.61941	2016-12-18 17:19:40.61941
20661	6070	2004	2016-12-18 17:19:40.648237	2016-12-18 17:19:40.648237
20662	6071	2004	2016-12-18 17:19:40.683134	2016-12-18 17:19:40.683134
20663	6073	2004	2016-12-18 17:19:40.772022	2016-12-18 17:19:40.772022
20664	6126	2004	2016-12-18 17:19:40.805548	2016-12-18 17:19:40.805548
20665	5978	2005	2016-12-18 17:19:42.026014	2016-12-18 17:19:42.026014
20666	6103	2005	2016-12-18 17:19:42.066463	2016-12-18 17:19:42.066463
20667	6318	2005	2016-12-18 17:19:42.104845	2016-12-18 17:19:42.104845
20668	6265	2006	2016-12-18 17:19:43.256369	2016-12-18 17:19:43.256369
20669	5873	1979	2016-12-18 17:19:45.264777	2016-12-18 17:19:45.264777
20670	5911	1979	2016-12-18 17:19:45.306368	2016-12-18 17:19:45.306368
20671	6004	1979	2016-12-18 17:19:45.358254	2016-12-18 17:19:45.358254
20672	6102	1979	2016-12-18 17:19:45.398996	2016-12-18 17:19:45.398996
20673	6101	1979	2016-12-18 17:19:45.440367	2016-12-18 17:19:45.440367
20674	6116	1979	2016-12-18 17:19:45.482574	2016-12-18 17:19:45.482574
20675	6113	1979	2016-12-18 17:19:45.520269	2016-12-18 17:19:45.520269
20676	6115	1979	2016-12-18 17:19:45.569262	2016-12-18 17:19:45.569262
20677	5875	1979	2016-12-18 17:19:45.599573	2016-12-18 17:19:45.599573
20678	5876	1979	2016-12-18 17:19:45.634429	2016-12-18 17:19:45.634429
20679	5874	1979	2016-12-18 17:19:45.674215	2016-12-18 17:19:45.674215
20680	6209	1979	2016-12-18 17:19:45.690054	2016-12-18 17:19:45.690054
20681	6198	1979	2016-12-18 17:19:45.725558	2016-12-18 17:19:45.725558
20682	6042	1979	2016-12-18 17:19:45.761917	2016-12-18 17:19:45.761917
20683	6266	1979	2016-12-18 17:19:45.805938	2016-12-18 17:19:45.805938
20684	5977	1979	2016-12-18 17:19:45.847041	2016-12-18 17:19:45.847041
20685	5978	1979	2016-12-18 17:19:45.890571	2016-12-18 17:19:45.890571
20686	6075	1979	2016-12-18 17:19:45.926637	2016-12-18 17:19:45.926637
20687	5815	1979	2016-12-18 17:19:45.966546	2016-12-18 17:19:45.966546
20688	5749	1979	2016-12-18 17:19:46.012074	2016-12-18 17:19:46.012074
20689	5750	1979	2016-12-18 17:19:47.990393	2016-12-18 17:19:47.990393
20690	5753	1979	2016-12-18 17:19:48.029688	2016-12-18 17:19:48.029688
20691	5751	1979	2016-12-18 17:19:48.072491	2016-12-18 17:19:48.072491
20692	5754	1979	2016-12-18 17:19:48.115699	2016-12-18 17:19:48.115699
20693	5752	1979	2016-12-18 17:19:48.151897	2016-12-18 17:19:48.151897
20694	5755	1979	2016-12-18 17:19:48.1786	2016-12-18 17:19:48.1786
20695	6057	1979	2016-12-18 17:19:48.223134	2016-12-18 17:19:48.223134
20696	6058	1979	2016-12-18 17:19:48.261407	2016-12-18 17:19:48.261407
20697	6059	1979	2016-12-18 17:19:48.305148	2016-12-18 17:19:48.305148
20698	6069	1979	2016-12-18 17:19:48.338174	2016-12-18 17:19:48.338174
20699	6060	1979	2016-12-18 17:19:48.3857	2016-12-18 17:19:48.3857
20700	6061	1979	2016-12-18 17:19:48.426243	2016-12-18 17:19:48.426243
20701	6071	1979	2016-12-18 17:19:48.475965	2016-12-18 17:19:48.475965
20702	6073	1979	2016-12-18 17:19:48.490746	2016-12-18 17:19:48.490746
20703	6067	1979	2016-12-18 17:19:48.554357	2016-12-18 17:19:48.554357
20704	6070	1979	2016-12-18 17:19:48.572879	2016-12-18 17:19:48.572879
20705	6064	1979	2016-12-18 17:19:48.60672	2016-12-18 17:19:48.60672
20706	6062	1979	2016-12-18 17:19:48.639285	2016-12-18 17:19:48.639285
20707	6063	1979	2016-12-18 17:19:48.680548	2016-12-18 17:19:48.680548
20708	6066	1979	2016-12-18 17:19:48.71934	2016-12-18 17:19:48.71934
20709	6072	1979	2016-12-18 17:19:50.822053	2016-12-18 17:19:50.822053
20710	6065	1979	2016-12-18 17:19:50.863834	2016-12-18 17:19:50.863834
20711	5814	1979	2016-12-18 17:19:50.907119	2016-12-18 17:19:50.907119
20712	6194	1979	2016-12-18 17:19:50.946559	2016-12-18 17:19:50.946559
20713	6192	1979	2016-12-18 17:19:50.985091	2016-12-18 17:19:50.985091
20714	6193	1979	2016-12-18 17:19:51.03528	2016-12-18 17:19:51.03528
20715	6189	1979	2016-12-18 17:19:51.116671	2016-12-18 17:19:51.116671
20716	6190	1979	2016-12-18 17:19:51.199084	2016-12-18 17:19:51.199084
20717	6191	1979	2016-12-18 17:19:51.233825	2016-12-18 17:19:51.233825
20718	6185	1979	2016-12-18 17:19:51.260061	2016-12-18 17:19:51.260061
20719	6184	1979	2016-12-18 17:19:51.282563	2016-12-18 17:19:51.282563
20720	6183	1979	2016-12-18 17:19:51.31832	2016-12-18 17:19:51.31832
20721	6186	1979	2016-12-18 17:19:51.352181	2016-12-18 17:19:51.352181
20722	6187	1979	2016-12-18 17:19:51.38954	2016-12-18 17:19:51.38954
20723	6188	1979	2016-12-18 17:19:51.433935	2016-12-18 17:19:51.433935
20724	6195	1979	2016-12-18 17:19:51.467269	2016-12-18 17:19:51.467269
20725	6182	1979	2016-12-18 17:19:51.488988	2016-12-18 17:19:51.488988
20726	5847	1979	2016-12-18 17:19:51.528545	2016-12-18 17:19:51.528545
20727	5846	1979	2016-12-18 17:19:51.568465	2016-12-18 17:19:51.568465
20728	5845	1979	2016-12-18 17:19:51.60254	2016-12-18 17:19:51.60254
20729	5844	1979	2016-12-18 17:19:53.539485	2016-12-18 17:19:53.539485
20730	5848	1979	2016-12-18 17:19:53.59764	2016-12-18 17:19:53.59764
20731	6269	1979	2016-12-18 17:19:53.622996	2016-12-18 17:19:53.622996
20732	6094	1979	2016-12-18 17:19:53.662139	2016-12-18 17:19:53.662139
20733	5812	1979	2016-12-18 17:19:53.706134	2016-12-18 17:19:53.706134
20734	6096	1979	2016-12-18 17:19:53.782468	2016-12-18 17:19:53.782468
20735	6097	1979	2016-12-18 17:19:53.824345	2016-12-18 17:19:53.824345
20736	6098	1979	2016-12-18 17:19:53.849088	2016-12-18 17:19:53.849088
20737	6095	1979	2016-12-18 17:19:53.889871	2016-12-18 17:19:53.889871
20738	6273	1979	2016-12-18 17:19:53.933358	2016-12-18 17:19:53.933358
20739	6274	1979	2016-12-18 17:19:53.953401	2016-12-18 17:19:53.953401
20740	5899	1979	2016-12-18 17:19:53.986775	2016-12-18 17:19:53.986775
20741	5893	1979	2016-12-18 17:19:54.03171	2016-12-18 17:19:54.03171
20742	5894	1979	2016-12-18 17:19:54.059404	2016-12-18 17:19:54.059404
20743	5895	1979	2016-12-18 17:19:54.079887	2016-12-18 17:19:54.079887
20744	5897	1979	2016-12-18 17:19:54.116718	2016-12-18 17:19:54.116718
20745	5896	1979	2016-12-18 17:19:54.154998	2016-12-18 17:19:54.154998
20746	5898	1979	2016-12-18 17:19:54.190591	2016-12-18 17:19:54.190591
20747	5984	1979	2016-12-18 17:19:54.206289	2016-12-18 17:19:54.206289
20748	6008	1979	2016-12-18 17:19:54.245044	2016-12-18 17:19:54.245044
20749	6009	1979	2016-12-18 17:19:56.157738	2016-12-18 17:19:56.157738
20750	5892	1979	2016-12-18 17:19:56.203886	2016-12-18 17:19:56.203886
20751	6012	1979	2016-12-18 17:19:56.244273	2016-12-18 17:19:56.244273
20752	6138	1979	2016-12-18 17:19:56.274132	2016-12-18 17:19:56.274132
20753	6147	1979	2016-12-18 17:19:56.320596	2016-12-18 17:19:56.320596
20754	6148	1979	2016-12-18 17:19:56.370765	2016-12-18 17:19:56.370765
20755	6149	1979	2016-12-18 17:19:56.415342	2016-12-18 17:19:56.415342
20756	6144	1979	2016-12-18 17:19:56.476359	2016-12-18 17:19:56.476359
20757	6145	1979	2016-12-18 17:19:56.520534	2016-12-18 17:19:56.520534
20758	5817	1979	2016-12-18 17:19:56.534998	2016-12-18 17:19:56.534998
20759	5818	1979	2016-12-18 17:19:56.57478	2016-12-18 17:19:56.57478
20760	6074	1979	2016-12-18 17:19:56.611181	2016-12-18 17:19:56.611181
20761	6108	1979	2016-12-18 17:19:56.632032	2016-12-18 17:19:56.632032
20762	6107	1979	2016-12-18 17:19:56.698628	2016-12-18 17:19:56.698628
20763	6109	1979	2016-12-18 17:19:56.746584	2016-12-18 17:19:56.746584
20764	6117	1979	2016-12-18 17:19:56.790547	2016-12-18 17:19:56.790547
20765	6114	1979	2016-12-18 17:19:56.8309	2016-12-18 17:19:56.8309
20766	6106	1979	2016-12-18 17:19:56.890459	2016-12-18 17:19:56.890459
20767	6119	1979	2016-12-18 17:19:56.91384	2016-12-18 17:19:56.91384
20768	6118	1979	2016-12-18 17:19:56.948129	2016-12-18 17:19:56.948129
20769	6112	1979	2016-12-18 17:19:58.854205	2016-12-18 17:19:58.854205
20770	6111	1979	2016-12-18 17:19:58.876704	2016-12-18 17:19:58.876704
20771	6110	1979	2016-12-18 17:19:58.951524	2016-12-18 17:19:58.951524
20772	5970	1979	2016-12-18 17:19:58.99346	2016-12-18 17:19:58.99346
20773	5971	1979	2016-12-18 17:19:59.03816	2016-12-18 17:19:59.03816
20774	5973	1979	2016-12-18 17:19:59.080859	2016-12-18 17:19:59.080859
20775	5972	1979	2016-12-18 17:19:59.146405	2016-12-18 17:19:59.146405
20776	5974	1979	2016-12-18 17:19:59.163973	2016-12-18 17:19:59.163973
20777	5975	1979	2016-12-18 17:19:59.21364	2016-12-18 17:19:59.21364
20778	5801	1979	2016-12-18 17:19:59.247864	2016-12-18 17:19:59.247864
20779	5797	1979	2016-12-18 17:19:59.288359	2016-12-18 17:19:59.288359
20780	5798	1979	2016-12-18 17:19:59.354436	2016-12-18 17:19:59.354436
20781	5796	1979	2016-12-18 17:19:59.404725	2016-12-18 17:19:59.404725
20782	5799	1979	2016-12-18 17:19:59.441555	2016-12-18 17:19:59.441555
20783	5800	1979	2016-12-18 17:19:59.475836	2016-12-18 17:19:59.475836
20784	5809	1979	2016-12-18 17:19:59.529808	2016-12-18 17:19:59.529808
20785	5802	1979	2016-12-18 17:19:59.565798	2016-12-18 17:19:59.565798
20786	5806	1979	2016-12-18 17:19:59.604715	2016-12-18 17:19:59.604715
20787	5804	1979	2016-12-18 17:19:59.652641	2016-12-18 17:19:59.652641
20788	5805	1979	2016-12-18 17:19:59.694482	2016-12-18 17:19:59.694482
20789	5807	1979	2016-12-18 17:20:01.833386	2016-12-18 17:20:01.833386
20790	5808	1979	2016-12-18 17:20:01.879046	2016-12-18 17:20:01.879046
20791	5810	1979	2016-12-18 17:20:01.908005	2016-12-18 17:20:01.908005
20792	5789	1979	2016-12-18 17:20:01.95902	2016-12-18 17:20:01.95902
20793	5788	1979	2016-12-18 17:20:02.002131	2016-12-18 17:20:02.002131
20794	5803	1979	2016-12-18 17:20:02.071287	2016-12-18 17:20:02.071287
20795	5793	1979	2016-12-18 17:20:02.108504	2016-12-18 17:20:02.108504
20796	5792	1979	2016-12-18 17:20:02.149587	2016-12-18 17:20:02.149587
20797	5791	1979	2016-12-18 17:20:02.172762	2016-12-18 17:20:02.172762
20798	5790	1979	2016-12-18 17:20:02.242109	2016-12-18 17:20:02.242109
20799	5794	1979	2016-12-18 17:20:02.273381	2016-12-18 17:20:02.273381
20800	5795	1979	2016-12-18 17:20:02.298121	2016-12-18 17:20:02.298121
20801	5811	1979	2016-12-18 17:20:02.356212	2016-12-18 17:20:02.356212
20802	5786	1979	2016-12-18 17:20:02.39989	2016-12-18 17:20:02.39989
20803	5787	1979	2016-12-18 17:20:02.417833	2016-12-18 17:20:02.417833
20804	6128	1979	2016-12-18 17:20:02.454005	2016-12-18 17:20:02.454005
20805	6146	1979	2016-12-18 17:20:02.47536	2016-12-18 17:20:02.47536
20806	5994	1979	2016-12-18 17:20:02.501199	2016-12-18 17:20:02.501199
20807	6120	1979	2016-12-18 17:20:02.53617	2016-12-18 17:20:02.53617
20808	6129	1979	2016-12-18 17:20:02.58239	2016-12-18 17:20:02.58239
20809	6152	1979	2016-12-18 17:20:05.091495	2016-12-18 17:20:05.091495
20810	6140	1979	2016-12-18 17:20:05.129842	2016-12-18 17:20:05.129842
20811	6139	1979	2016-12-18 17:20:05.171076	2016-12-18 17:20:05.171076
20812	6151	1979	2016-12-18 17:20:05.211809	2016-12-18 17:20:05.211809
20813	6153	1979	2016-12-18 17:20:05.282303	2016-12-18 17:20:05.282303
20814	6150	1979	2016-12-18 17:20:05.315161	2016-12-18 17:20:05.315161
20815	5985	1979	2016-12-18 17:20:05.336878	2016-12-18 17:20:05.336878
20816	5986	1979	2016-12-18 17:20:05.365334	2016-12-18 17:20:05.365334
20817	5860	1979	2016-12-18 17:20:05.384483	2016-12-18 17:20:05.384483
20818	5760	1979	2016-12-18 17:20:05.421407	2016-12-18 17:20:05.421407
20819	5773	1979	2016-12-18 17:20:05.488497	2016-12-18 17:20:05.488497
20820	5772	1979	2016-12-18 17:20:05.526697	2016-12-18 17:20:05.526697
20821	5768	1979	2016-12-18 17:20:05.574131	2016-12-18 17:20:05.574131
20822	5771	1979	2016-12-18 17:20:05.599573	2016-12-18 17:20:05.599573
20823	5770	1979	2016-12-18 17:20:05.658606	2016-12-18 17:20:05.658606
20824	5769	1979	2016-12-18 17:20:05.693691	2016-12-18 17:20:05.693691
20825	5774	1979	2016-12-18 17:20:05.712508	2016-12-18 17:20:05.712508
20826	5759	1979	2016-12-18 17:20:05.751441	2016-12-18 17:20:05.751441
20827	5765	1979	2016-12-18 17:20:05.796367	2016-12-18 17:20:05.796367
20828	5764	1979	2016-12-18 17:20:05.859287	2016-12-18 17:20:05.859287
20829	5767	1979	2016-12-18 17:20:08.509783	2016-12-18 17:20:08.509783
20830	5766	1979	2016-12-18 17:20:08.553188	2016-12-18 17:20:08.553188
20831	5784	1979	2016-12-18 17:20:08.625208	2016-12-18 17:20:08.625208
20832	5775	1979	2016-12-18 17:20:08.676281	2016-12-18 17:20:08.676281
20833	5777	1979	2016-12-18 17:20:08.704478	2016-12-18 17:20:08.704478
20834	5776	1979	2016-12-18 17:20:08.757775	2016-12-18 17:20:08.757775
20835	5762	1979	2016-12-18 17:20:08.801558	2016-12-18 17:20:08.801558
20836	5761	1979	2016-12-18 17:20:08.842839	2016-12-18 17:20:08.842839
20837	5763	1979	2016-12-18 17:20:08.905243	2016-12-18 17:20:08.905243
20838	5783	1979	2016-12-18 17:20:08.957466	2016-12-18 17:20:08.957466
20839	5782	1979	2016-12-18 17:20:08.987882	2016-12-18 17:20:08.987882
20840	5778	1979	2016-12-18 17:20:09.009868	2016-12-18 17:20:09.009868
20841	5780	1979	2016-12-18 17:20:09.048222	2016-12-18 17:20:09.048222
20842	5781	1979	2016-12-18 17:20:09.084438	2016-12-18 17:20:09.084438
20843	5779	1979	2016-12-18 17:20:09.15611	2016-12-18 17:20:09.15611
20844	6125	1979	2016-12-18 17:20:09.205633	2016-12-18 17:20:09.205633
20845	5852	1979	2016-12-18 17:20:09.260609	2016-12-18 17:20:09.260609
20846	5850	1979	2016-12-18 17:20:09.300143	2016-12-18 17:20:09.300143
20847	5853	1979	2016-12-18 17:20:09.341968	2016-12-18 17:20:09.341968
20848	6126	1979	2016-12-18 17:20:09.381043	2016-12-18 17:20:09.381043
20849	5851	1979	2016-12-18 17:20:11.673927	2016-12-18 17:20:11.673927
20850	5849	1979	2016-12-18 17:20:11.71466	2016-12-18 17:20:11.71466
20851	6124	1979	2016-12-18 17:20:11.75305	2016-12-18 17:20:11.75305
20852	5813	1979	2016-12-18 17:20:11.80367	2016-12-18 17:20:11.80367
20853	6265	1979	2016-12-18 17:20:11.845797	2016-12-18 17:20:11.845797
20854	5976	1979	2016-12-18 17:20:11.885184	2016-12-18 17:20:11.885184
20855	6171	1979	2016-12-18 17:20:11.92311	2016-12-18 17:20:11.92311
20856	5914	1979	2016-12-18 17:20:11.957395	2016-12-18 17:20:11.957395
20857	5913	1979	2016-12-18 17:20:12.000978	2016-12-18 17:20:12.000978
20858	5912	1979	2016-12-18 17:20:12.042223	2016-12-18 17:20:12.042223
20859	5915	1979	2016-12-18 17:20:12.090334	2016-12-18 17:20:12.090334
20860	6099	1979	2016-12-18 17:20:12.137242	2016-12-18 17:20:12.137242
20861	6100	1979	2016-12-18 17:20:12.200394	2016-12-18 17:20:12.200394
20862	6103	1979	2016-12-18 17:20:12.245615	2016-12-18 17:20:12.245615
20863	6105	1979	2016-12-18 17:20:12.280989	2016-12-18 17:20:12.280989
20864	6104	1979	2016-12-18 17:20:12.301569	2016-12-18 17:20:12.301569
20865	6255	1979	2016-12-18 17:20:12.343737	2016-12-18 17:20:12.343737
20866	5923	1979	2016-12-18 17:20:12.374286	2016-12-18 17:20:12.374286
20867	5990	1979	2016-12-18 17:20:12.426091	2016-12-18 17:20:12.426091
20868	5992	1979	2016-12-18 17:20:12.45794	2016-12-18 17:20:12.45794
20869	5987	1979	2016-12-18 17:20:14.54631	2016-12-18 17:20:14.54631
20870	5924	1979	2016-12-18 17:20:14.596228	2016-12-18 17:20:14.596228
20871	5925	1979	2016-12-18 17:20:14.632857	2016-12-18 17:20:14.632857
20872	5989	1979	2016-12-18 17:20:14.670971	2016-12-18 17:20:14.670971
20873	5991	1979	2016-12-18 17:20:14.714636	2016-12-18 17:20:14.714636
20874	5988	1979	2016-12-18 17:20:14.752097	2016-12-18 17:20:14.752097
20875	6256	1979	2016-12-18 17:20:14.767289	2016-12-18 17:20:14.767289
20876	6257	1979	2016-12-18 17:20:14.800824	2016-12-18 17:20:14.800824
20877	6132	1979	2016-12-18 17:20:14.836254	2016-12-18 17:20:14.836254
20878	6133	1979	2016-12-18 17:20:14.851598	2016-12-18 17:20:14.851598
20879	5869	1979	2016-12-18 17:20:14.911237	2016-12-18 17:20:14.911237
20880	5949	1979	2016-12-18 17:20:14.934266	2016-12-18 17:20:14.934266
20881	5948	1979	2016-12-18 17:20:14.990946	2016-12-18 17:20:14.990946
20882	5961	1979	2016-12-18 17:20:15.011836	2016-12-18 17:20:15.011836
20883	5950	1979	2016-12-18 17:20:15.050274	2016-12-18 17:20:15.050274
20884	5947	1979	2016-12-18 17:20:15.096527	2016-12-18 17:20:15.096527
20885	5954	1979	2016-12-18 17:20:15.132327	2016-12-18 17:20:15.132327
20886	5953	1979	2016-12-18 17:20:15.15949	2016-12-18 17:20:15.15949
20887	5951	1979	2016-12-18 17:20:15.201483	2016-12-18 17:20:15.201483
20888	5960	1979	2016-12-18 17:20:15.227036	2016-12-18 17:20:15.227036
20889	5956	1979	2016-12-18 17:20:19.513567	2016-12-18 17:20:19.513567
20890	5955	1979	2016-12-18 17:20:19.558899	2016-12-18 17:20:19.558899
20891	5888	1979	2016-12-18 17:20:19.603889	2016-12-18 17:20:19.603889
20892	5886	1979	2016-12-18 17:20:19.639659	2016-12-18 17:20:19.639659
20893	5890	1979	2016-12-18 17:20:19.681167	2016-12-18 17:20:19.681167
20894	5889	1979	2016-12-18 17:20:19.723145	2016-12-18 17:20:19.723145
20895	5891	1979	2016-12-18 17:20:19.764437	2016-12-18 17:20:19.764437
20896	5887	1979	2016-12-18 17:20:19.808358	2016-12-18 17:20:19.808358
20897	5872	1979	2016-12-18 17:20:19.846023	2016-12-18 17:20:19.846023
20898	5952	1979	2016-12-18 17:20:19.898324	2016-12-18 17:20:19.898324
20899	5743	1979	2016-12-18 17:20:19.935038	2016-12-18 17:20:19.935038
20900	5742	1979	2016-12-18 17:20:19.974533	2016-12-18 17:20:19.974533
20901	5745	1979	2016-12-18 17:20:20.002879	2016-12-18 17:20:20.002879
20902	5744	1979	2016-12-18 17:20:20.047405	2016-12-18 17:20:20.047405
20903	5737	1979	2016-12-18 17:20:20.087746	2016-12-18 17:20:20.087746
20904	5738	1979	2016-12-18 17:20:20.104884	2016-12-18 17:20:20.104884
20905	5741	1979	2016-12-18 17:20:20.148542	2016-12-18 17:20:20.148542
20906	5739	1979	2016-12-18 17:20:20.223208	2016-12-18 17:20:20.223208
20907	5740	1979	2016-12-18 17:20:20.273431	2016-12-18 17:20:20.273431
20908	5736	1979	2016-12-18 17:20:20.311716	2016-12-18 17:20:20.311716
20909	6142	1979	2016-12-18 17:20:22.969735	2016-12-18 17:20:22.969735
20910	6143	1979	2016-12-18 17:20:22.988851	2016-12-18 17:20:22.988851
20911	6141	1979	2016-12-18 17:20:23.025039	2016-12-18 17:20:23.025039
20912	5823	1979	2016-12-18 17:20:23.061242	2016-12-18 17:20:23.061242
20913	5830	1979	2016-12-18 17:20:23.100173	2016-12-18 17:20:23.100173
20914	5827	1979	2016-12-18 17:20:23.143347	2016-12-18 17:20:23.143347
20915	5944	1979	2016-12-18 17:20:23.207465	2016-12-18 17:20:23.207465
20916	5945	1979	2016-12-18 17:20:23.251971	2016-12-18 17:20:23.251971
20917	5943	1979	2016-12-18 17:20:23.294978	2016-12-18 17:20:23.294978
20918	6068	1979	2016-12-18 17:20:23.340719	2016-12-18 17:20:23.340719
20919	6054	1979	2016-12-18 17:20:23.389765	2016-12-18 17:20:23.389765
20920	6056	1979	2016-12-18 17:20:23.434017	2016-12-18 17:20:23.434017
20921	6055	1979	2016-12-18 17:20:23.460418	2016-12-18 17:20:23.460418
20922	5746	1979	2016-12-18 17:20:23.481102	2016-12-18 17:20:23.481102
20923	5747	1979	2016-12-18 17:20:23.518675	2016-12-18 17:20:23.518675
20924	5748	1979	2016-12-18 17:20:23.561201	2016-12-18 17:20:23.561201
20925	5918	1979	2016-12-18 17:20:23.603907	2016-12-18 17:20:23.603907
20926	5919	1979	2016-12-18 17:20:23.644396	2016-12-18 17:20:23.644396
20927	5917	1979	2016-12-18 17:20:23.672249	2016-12-18 17:20:23.672249
20928	6020	1979	2016-12-18 17:20:23.713505	2016-12-18 17:20:23.713505
20929	6021	1979	2016-12-18 17:20:26.399353	2016-12-18 17:20:26.399353
20930	6028	1979	2016-12-18 17:20:26.442154	2016-12-18 17:20:26.442154
20931	6022	1979	2016-12-18 17:20:26.48651	2016-12-18 17:20:26.48651
20932	6033	1979	2016-12-18 17:20:26.52657	2016-12-18 17:20:26.52657
20933	6032	1979	2016-12-18 17:20:26.569217	2016-12-18 17:20:26.569217
20934	6029	1979	2016-12-18 17:20:26.611494	2016-12-18 17:20:26.611494
20935	6031	1979	2016-12-18 17:20:26.642909	2016-12-18 17:20:26.642909
20936	6030	1979	2016-12-18 17:20:26.678735	2016-12-18 17:20:26.678735
20937	6026	1979	2016-12-18 17:20:26.731137	2016-12-18 17:20:26.731137
20938	6024	1979	2016-12-18 17:20:26.77523	2016-12-18 17:20:26.77523
20939	6025	1979	2016-12-18 17:20:26.817725	2016-12-18 17:20:26.817725
20940	6027	1979	2016-12-18 17:20:26.854752	2016-12-18 17:20:26.854752
20941	6023	1979	2016-12-18 17:20:26.893411	2016-12-18 17:20:26.893411
20942	6092	1979	2016-12-18 17:20:26.935034	2016-12-18 17:20:26.935034
20943	6137	1979	2016-12-18 17:20:26.98499	2016-12-18 17:20:26.98499
20944	6136	1979	2016-12-18 17:20:27.014735	2016-12-18 17:20:27.014735
20945	6135	1979	2016-12-18 17:20:27.051407	2016-12-18 17:20:27.051407
20946	6134	1979	2016-12-18 17:20:27.098993	2016-12-18 17:20:27.098993
20947	6130	1979	2016-12-18 17:20:27.144038	2016-12-18 17:20:27.144038
20948	6131	1979	2016-12-18 17:20:27.194146	2016-12-18 17:20:27.194146
20949	6127	1979	2016-12-18 17:20:29.823229	2016-12-18 17:20:29.823229
20950	5819	1979	2016-12-18 17:20:29.863408	2016-12-18 17:20:29.863408
20951	6237	1979	2016-12-18 17:20:29.905222	2016-12-18 17:20:29.905222
20952	6013	1979	2016-12-18 17:20:29.946234	2016-12-18 17:20:29.946234
20953	6014	1979	2016-12-18 17:20:29.993375	2016-12-18 17:20:29.993375
20954	6290	1979	2016-12-18 17:20:30.069895	2016-12-18 17:20:30.069895
20955	6310	1979	2016-12-18 17:20:30.11238	2016-12-18 17:20:30.11238
20956	6279	1979	2016-12-18 17:20:30.175976	2016-12-18 17:20:30.175976
20957	6317	1979	2016-12-18 17:20:30.235627	2016-12-18 17:20:30.235627
20958	6291	1979	2016-12-18 17:20:30.28304	2016-12-18 17:20:30.28304
20959	6322	1979	2016-12-18 17:20:30.321054	2016-12-18 17:20:30.321054
20960	6318	1979	2016-12-18 17:20:30.391506	2016-12-18 17:20:30.391506
20961	6323	1979	2016-12-18 17:20:30.40964	2016-12-18 17:20:30.40964
20962	6281	1979	2016-12-18 17:20:30.468521	2016-12-18 17:20:30.468521
20963	6314	1979	2016-12-18 17:20:30.512519	2016-12-18 17:20:30.512519
20964	6298	1979	2016-12-18 17:20:30.57137	2016-12-18 17:20:30.57137
20965	6289	1979	2016-12-18 17:20:30.650355	2016-12-18 17:20:30.650355
20966	6288	1979	2016-12-18 17:20:30.730003	2016-12-18 17:20:30.730003
20967	6312	1979	2016-12-18 17:20:30.778094	2016-12-18 17:20:30.778094
20968	6294	1979	2016-12-18 17:20:30.818057	2016-12-18 17:20:30.818057
20969	6284	1979	2016-12-18 17:20:32.266412	2016-12-18 17:20:32.266412
20970	6283	1979	2016-12-18 17:20:32.308767	2016-12-18 17:20:32.308767
20971	5911	1992	2016-12-18 17:20:34.316246	2016-12-18 17:20:34.316246
20972	5869	1992	2016-12-18 17:20:34.351457	2016-12-18 17:20:34.351457
20973	6102	1992	2016-12-18 17:20:34.409575	2016-12-18 17:20:34.409575
20974	6101	1992	2016-12-18 17:20:34.454688	2016-12-18 17:20:34.454688
20975	6116	1992	2016-12-18 17:20:34.518641	2016-12-18 17:20:34.518641
20976	6115	1992	2016-12-18 17:20:34.554225	2016-12-18 17:20:34.554225
20977	6209	1992	2016-12-18 17:20:34.615014	2016-12-18 17:20:34.615014
20978	6198	1992	2016-12-18 17:20:34.658101	2016-12-18 17:20:34.658101
20979	6042	1992	2016-12-18 17:20:34.700051	2016-12-18 17:20:34.700051
20980	6266	1992	2016-12-18 17:20:34.738045	2016-12-18 17:20:34.738045
20981	5977	1992	2016-12-18 17:20:34.818466	2016-12-18 17:20:34.818466
20982	5978	1992	2016-12-18 17:20:34.86349	2016-12-18 17:20:34.86349
20983	5749	1992	2016-12-18 17:20:34.910239	2016-12-18 17:20:34.910239
20984	5750	1992	2016-12-18 17:20:34.949447	2016-12-18 17:20:34.949447
20985	5753	1992	2016-12-18 17:20:34.985996	2016-12-18 17:20:34.985996
20986	5751	1992	2016-12-18 17:20:35.028264	2016-12-18 17:20:35.028264
20987	5754	1992	2016-12-18 17:20:35.097615	2016-12-18 17:20:35.097615
20988	5752	1992	2016-12-18 17:20:35.135674	2016-12-18 17:20:35.135674
20989	5755	1992	2016-12-18 17:20:35.159245	2016-12-18 17:20:35.159245
20990	6057	1992	2016-12-18 17:20:35.22346	2016-12-18 17:20:35.22346
20991	6058	1992	2016-12-18 17:20:37.145007	2016-12-18 17:20:37.145007
20992	6059	1992	2016-12-18 17:20:37.199391	2016-12-18 17:20:37.199391
20993	6069	1992	2016-12-18 17:20:37.235393	2016-12-18 17:20:37.235393
20994	6060	1992	2016-12-18 17:20:37.278175	2016-12-18 17:20:37.278175
20995	6061	1992	2016-12-18 17:20:37.326121	2016-12-18 17:20:37.326121
20996	6071	1992	2016-12-18 17:20:37.362135	2016-12-18 17:20:37.362135
20997	6073	1992	2016-12-18 17:20:37.389902	2016-12-18 17:20:37.389902
20998	6067	1992	2016-12-18 17:20:37.437988	2016-12-18 17:20:37.437988
20999	6070	1992	2016-12-18 17:20:37.477217	2016-12-18 17:20:37.477217
21000	6064	1992	2016-12-18 17:20:37.564897	2016-12-18 17:20:37.564897
21001	6062	1992	2016-12-18 17:20:37.581008	2016-12-18 17:20:37.581008
21002	6063	1992	2016-12-18 17:20:37.638622	2016-12-18 17:20:37.638622
21003	6066	1992	2016-12-18 17:20:37.689056	2016-12-18 17:20:37.689056
21004	6072	1992	2016-12-18 17:20:37.713757	2016-12-18 17:20:37.713757
21005	6065	1992	2016-12-18 17:20:37.740075	2016-12-18 17:20:37.740075
21006	6194	1992	2016-12-18 17:20:37.789606	2016-12-18 17:20:37.789606
21007	6192	1992	2016-12-18 17:20:37.832871	2016-12-18 17:20:37.832871
21008	6193	1992	2016-12-18 17:20:37.892363	2016-12-18 17:20:37.892363
21009	6189	1992	2016-12-18 17:20:37.935905	2016-12-18 17:20:37.935905
21010	6190	1992	2016-12-18 17:20:37.976623	2016-12-18 17:20:37.976623
21011	6191	1992	2016-12-18 17:20:40.333447	2016-12-18 17:20:40.333447
21012	6185	1992	2016-12-18 17:20:40.392973	2016-12-18 17:20:40.392973
21013	6184	1992	2016-12-18 17:20:40.418076	2016-12-18 17:20:40.418076
21014	6183	1992	2016-12-18 17:20:40.467028	2016-12-18 17:20:40.467028
21015	6186	1992	2016-12-18 17:20:40.525145	2016-12-18 17:20:40.525145
21016	6187	1992	2016-12-18 17:20:40.567383	2016-12-18 17:20:40.567383
21017	6188	1992	2016-12-18 17:20:40.583649	2016-12-18 17:20:40.583649
21018	6195	1992	2016-12-18 17:20:40.617578	2016-12-18 17:20:40.617578
21019	6182	1992	2016-12-18 17:20:40.667184	2016-12-18 17:20:40.667184
21020	6094	1992	2016-12-18 17:20:40.746411	2016-12-18 17:20:40.746411
21021	6096	1992	2016-12-18 17:20:40.824061	2016-12-18 17:20:40.824061
21022	6097	1992	2016-12-18 17:20:40.859792	2016-12-18 17:20:40.859792
21023	6098	1992	2016-12-18 17:20:40.914047	2016-12-18 17:20:40.914047
21024	5899	1992	2016-12-18 17:20:40.949469	2016-12-18 17:20:40.949469
21025	6008	1992	2016-12-18 17:20:40.988819	2016-12-18 17:20:40.988819
21026	6009	1992	2016-12-18 17:20:41.002946	2016-12-18 17:20:41.002946
21027	5892	1992	2016-12-18 17:20:41.068793	2016-12-18 17:20:41.068793
21028	6012	1992	2016-12-18 17:20:41.108468	2016-12-18 17:20:41.108468
21029	6138	1992	2016-12-18 17:20:41.144155	2016-12-18 17:20:41.144155
21030	6147	1992	2016-12-18 17:20:41.186955	2016-12-18 17:20:41.186955
21031	6148	1992	2016-12-18 17:20:43.334055	2016-12-18 17:20:43.334055
21032	6149	1992	2016-12-18 17:20:43.374347	2016-12-18 17:20:43.374347
21033	6144	1992	2016-12-18 17:20:43.412049	2016-12-18 17:20:43.412049
21034	6145	1992	2016-12-18 17:20:43.45416	2016-12-18 17:20:43.45416
21035	6108	1992	2016-12-18 17:20:43.533183	2016-12-18 17:20:43.533183
21036	6107	1992	2016-12-18 17:20:43.5676	2016-12-18 17:20:43.5676
21037	6109	1992	2016-12-18 17:20:43.605716	2016-12-18 17:20:43.605716
21038	6114	1992	2016-12-18 17:20:43.660947	2016-12-18 17:20:43.660947
21039	6106	1992	2016-12-18 17:20:43.704379	2016-12-18 17:20:43.704379
21040	6119	1992	2016-12-18 17:20:43.751085	2016-12-18 17:20:43.751085
21041	6118	1992	2016-12-18 17:20:43.788728	2016-12-18 17:20:43.788728
21042	6112	1992	2016-12-18 17:20:43.835363	2016-12-18 17:20:43.835363
21043	6111	1992	2016-12-18 17:20:43.898816	2016-12-18 17:20:43.898816
21044	6110	1992	2016-12-18 17:20:43.918991	2016-12-18 17:20:43.918991
21045	6128	1992	2016-12-18 17:20:43.956597	2016-12-18 17:20:43.956597
21046	6146	1992	2016-12-18 17:20:44.001158	2016-12-18 17:20:44.001158
21047	5994	1992	2016-12-18 17:20:44.042988	2016-12-18 17:20:44.042988
21048	6120	1992	2016-12-18 17:20:44.085728	2016-12-18 17:20:44.085728
21049	6129	1992	2016-12-18 17:20:44.147303	2016-12-18 17:20:44.147303
21050	6152	1992	2016-12-18 17:20:44.165683	2016-12-18 17:20:44.165683
21051	6153	1992	2016-12-18 17:20:46.297426	2016-12-18 17:20:46.297426
21052	6150	1992	2016-12-18 17:20:46.366578	2016-12-18 17:20:46.366578
21053	5768	1992	2016-12-18 17:20:46.380339	2016-12-18 17:20:46.380339
21054	5771	1992	2016-12-18 17:20:46.415772	2016-12-18 17:20:46.415772
21055	5770	1992	2016-12-18 17:20:46.453889	2016-12-18 17:20:46.453889
21056	5769	1992	2016-12-18 17:20:46.491567	2016-12-18 17:20:46.491567
21057	5774	1992	2016-12-18 17:20:46.507738	2016-12-18 17:20:46.507738
21058	6125	1992	2016-12-18 17:20:46.543599	2016-12-18 17:20:46.543599
21059	5852	1992	2016-12-18 17:20:46.580723	2016-12-18 17:20:46.580723
21060	5850	1992	2016-12-18 17:20:46.613598	2016-12-18 17:20:46.613598
21061	6126	1992	2016-12-18 17:20:46.662738	2016-12-18 17:20:46.662738
21062	5851	1992	2016-12-18 17:20:46.699737	2016-12-18 17:20:46.699737
21063	5849	1992	2016-12-18 17:20:46.713544	2016-12-18 17:20:46.713544
21064	6265	1992	2016-12-18 17:20:46.750515	2016-12-18 17:20:46.750515
21065	5914	1992	2016-12-18 17:20:46.794147	2016-12-18 17:20:46.794147
21066	5913	1992	2016-12-18 17:20:46.837485	2016-12-18 17:20:46.837485
21067	5912	1992	2016-12-18 17:20:46.866207	2016-12-18 17:20:46.866207
21068	6099	1992	2016-12-18 17:20:46.909153	2016-12-18 17:20:46.909153
21069	6100	1992	2016-12-18 17:20:46.943275	2016-12-18 17:20:46.943275
21070	6103	1992	2016-12-18 17:20:46.984581	2016-12-18 17:20:46.984581
21071	5923	1992	2016-12-18 17:20:49.093368	2016-12-18 17:20:49.093368
21072	5992	1992	2016-12-18 17:20:49.151266	2016-12-18 17:20:49.151266
21073	5987	1992	2016-12-18 17:20:49.198703	2016-12-18 17:20:49.198703
21074	5924	1992	2016-12-18 17:20:49.219293	2016-12-18 17:20:49.219293
21075	5925	1992	2016-12-18 17:20:49.260787	2016-12-18 17:20:49.260787
21076	5989	1992	2016-12-18 17:20:49.3162	2016-12-18 17:20:49.3162
21077	5991	1992	2016-12-18 17:20:49.339867	2016-12-18 17:20:49.339867
21078	5988	1992	2016-12-18 17:20:49.409455	2016-12-18 17:20:49.409455
21079	6132	1992	2016-12-18 17:20:49.446292	2016-12-18 17:20:49.446292
21080	6133	1992	2016-12-18 17:20:49.490604	2016-12-18 17:20:49.490604
21081	5949	1992	2016-12-18 17:20:49.516593	2016-12-18 17:20:49.516593
21082	5948	1992	2016-12-18 17:20:49.549189	2016-12-18 17:20:49.549189
21083	5961	1992	2016-12-18 17:20:49.580483	2016-12-18 17:20:49.580483
21084	5950	1992	2016-12-18 17:20:49.621851	2016-12-18 17:20:49.621851
21085	5947	1992	2016-12-18 17:20:49.709289	2016-12-18 17:20:49.709289
21086	5954	1992	2016-12-18 17:20:49.737876	2016-12-18 17:20:49.737876
21087	5953	1992	2016-12-18 17:20:49.794119	2016-12-18 17:20:49.794119
21088	5951	1992	2016-12-18 17:20:49.833805	2016-12-18 17:20:49.833805
21089	5960	1992	2016-12-18 17:20:49.888953	2016-12-18 17:20:49.888953
21090	5956	1992	2016-12-18 17:20:49.928444	2016-12-18 17:20:49.928444
21091	5955	1992	2016-12-18 17:20:51.906636	2016-12-18 17:20:51.906636
21092	5888	1992	2016-12-18 17:20:51.954093	2016-12-18 17:20:51.954093
21093	5886	1992	2016-12-18 17:20:51.988109	2016-12-18 17:20:51.988109
21094	5890	1992	2016-12-18 17:20:52.012839	2016-12-18 17:20:52.012839
21095	5889	1992	2016-12-18 17:20:52.07314	2016-12-18 17:20:52.07314
21096	5891	1992	2016-12-18 17:20:52.112593	2016-12-18 17:20:52.112593
21097	5887	1992	2016-12-18 17:20:52.138565	2016-12-18 17:20:52.138565
21098	5952	1992	2016-12-18 17:20:52.172895	2016-12-18 17:20:52.172895
21099	5737	1992	2016-12-18 17:20:52.214434	2016-12-18 17:20:52.214434
21100	5738	1992	2016-12-18 17:20:52.25791	2016-12-18 17:20:52.25791
21101	6142	1992	2016-12-18 17:20:52.290757	2016-12-18 17:20:52.290757
21102	6143	1992	2016-12-18 17:20:52.30553	2016-12-18 17:20:52.30553
21103	6141	1992	2016-12-18 17:20:52.336566	2016-12-18 17:20:52.336566
21104	5823	1992	2016-12-18 17:20:52.372965	2016-12-18 17:20:52.372965
21105	5944	1992	2016-12-18 17:20:52.400157	2016-12-18 17:20:52.400157
21106	5945	1992	2016-12-18 17:20:52.429432	2016-12-18 17:20:52.429432
21107	5943	1992	2016-12-18 17:20:52.465292	2016-12-18 17:20:52.465292
21108	6068	1992	2016-12-18 17:20:52.495332	2016-12-18 17:20:52.495332
21109	6054	1992	2016-12-18 17:20:52.513018	2016-12-18 17:20:52.513018
21110	6056	1992	2016-12-18 17:20:52.5515	2016-12-18 17:20:52.5515
21111	6055	1992	2016-12-18 17:20:54.451522	2016-12-18 17:20:54.451522
21112	5746	1992	2016-12-18 17:20:54.506335	2016-12-18 17:20:54.506335
21113	5747	1992	2016-12-18 17:20:54.552526	2016-12-18 17:20:54.552526
21114	5748	1992	2016-12-18 17:20:54.585641	2016-12-18 17:20:54.585641
21115	6131	1992	2016-12-18 17:20:54.629754	2016-12-18 17:20:54.629754
21116	6127	1992	2016-12-18 17:20:54.667136	2016-12-18 17:20:54.667136
21117	5819	1992	2016-12-18 17:20:54.715854	2016-12-18 17:20:54.715854
21118	6237	1992	2016-12-18 17:20:54.745901	2016-12-18 17:20:54.745901
21119	6013	1992	2016-12-18 17:20:54.764609	2016-12-18 17:20:54.764609
21120	6014	1992	2016-12-18 17:20:54.802923	2016-12-18 17:20:54.802923
21121	6290	1992	2016-12-18 17:20:54.841273	2016-12-18 17:20:54.841273
21122	6310	1992	2016-12-18 17:20:54.869074	2016-12-18 17:20:54.869074
21123	6317	1992	2016-12-18 17:20:54.890062	2016-12-18 17:20:54.890062
21124	6322	1992	2016-12-18 17:20:54.921839	2016-12-18 17:20:54.921839
21125	6318	1992	2016-12-18 17:20:54.952816	2016-12-18 17:20:54.952816
21126	6323	1992	2016-12-18 17:20:55.003183	2016-12-18 17:20:55.003183
21127	6314	1992	2016-12-18 17:20:55.081825	2016-12-18 17:20:55.081825
21128	6289	1992	2016-12-18 17:20:55.120367	2016-12-18 17:20:55.120367
21129	6288	1992	2016-12-18 17:20:55.211806	2016-12-18 17:20:55.211806
21130	6294	1992	2016-12-18 17:20:55.255642	2016-12-18 17:20:55.255642
21131	6012	2007	2016-12-18 17:20:56.445106	2016-12-18 17:20:56.445106
21132	6368	2009	2016-12-18 17:20:57.640864	2016-12-18 17:20:57.640864
21133	7233	2010	2016-12-18 17:20:59.639139	2016-12-18 17:20:59.639139
21134	7234	2010	2016-12-18 17:21:00.548884	2016-12-18 17:21:00.548884
21135	7235	2010	2016-12-18 17:21:01.437151	2016-12-18 17:21:01.437151
21136	7236	2010	2016-12-18 17:21:02.349985	2016-12-18 17:21:02.349985
21137	7237	2010	2016-12-18 17:21:03.217941	2016-12-18 17:21:03.217941
21138	7233	2008	2016-12-18 17:21:05.274948	2016-12-18 17:21:05.274948
21139	7234	2008	2016-12-18 17:21:05.351401	2016-12-18 17:21:05.351401
21140	6276	2008	2016-12-18 17:21:05.393523	2016-12-18 17:21:05.393523
21141	7238	2008	2016-12-18 17:21:06.269081	2016-12-18 17:21:06.269081
21142	7239	2008	2016-12-18 17:21:07.145712	2016-12-18 17:21:07.145712
21143	7240	2008	2016-12-18 17:21:08.07035	2016-12-18 17:21:08.07035
21144	7241	2008	2016-12-18 17:21:09.015206	2016-12-18 17:21:09.015206
21145	7242	2008	2016-12-18 17:21:09.879885	2016-12-18 17:21:09.879885
21146	7243	2008	2016-12-18 17:21:10.739111	2016-12-18 17:21:10.739111
21147	7244	2008	2016-12-18 17:21:11.641252	2016-12-18 17:21:11.641252
21148	7245	2008	2016-12-18 17:21:12.473444	2016-12-18 17:21:12.473444
21149	7246	2008	2016-12-18 17:21:13.343389	2016-12-18 17:21:13.343389
21150	7247	2008	2016-12-18 17:21:14.358583	2016-12-18 17:21:14.358583
21151	7248	2008	2016-12-18 17:21:15.314949	2016-12-18 17:21:15.314949
21152	7249	2008	2016-12-18 17:21:16.182333	2016-12-18 17:21:16.182333
21153	7250	2008	2016-12-18 17:21:17.024819	2016-12-18 17:21:17.024819
21154	7251	2008	2016-12-18 17:21:17.99157	2016-12-18 17:21:17.99157
21155	7252	2008	2016-12-18 17:21:18.858924	2016-12-18 17:21:18.858924
21156	7253	2008	2016-12-18 17:21:19.783546	2016-12-18 17:21:19.783546
21157	7254	2008	2016-12-18 17:21:20.657443	2016-12-18 17:21:20.657443
21158	7255	2008	2016-12-18 17:21:24.161312	2016-12-18 17:21:24.161312
21159	7256	2008	2016-12-18 17:21:25.107255	2016-12-18 17:21:25.107255
21160	7257	2008	2016-12-18 17:21:26.082761	2016-12-18 17:21:26.082761
21161	7258	2008	2016-12-18 17:21:27.004845	2016-12-18 17:21:27.004845
21162	7259	2008	2016-12-18 17:21:27.965267	2016-12-18 17:21:27.965267
21163	6370	2008	2016-12-18 17:21:28.007037	2016-12-18 17:21:28.007037
21164	6378	2008	2016-12-18 17:21:28.045348	2016-12-18 17:21:28.045348
21165	6379	2008	2016-12-18 17:21:28.089849	2016-12-18 17:21:28.089849
21166	6373	2008	2016-12-18 17:21:28.154966	2016-12-18 17:21:28.154966
21167	6374	2008	2016-12-18 17:21:28.2011	2016-12-18 17:21:28.2011
21168	6372	2008	2016-12-18 17:21:28.244328	2016-12-18 17:21:28.244328
21169	6371	2008	2016-12-18 17:21:28.273255	2016-12-18 17:21:28.273255
21170	6375	2008	2016-12-18 17:21:28.32863	2016-12-18 17:21:28.32863
21171	6362	2008	2016-12-18 17:21:28.358432	2016-12-18 17:21:28.358432
21172	6363	2008	2016-12-18 17:21:28.41214	2016-12-18 17:21:28.41214
21173	6368	2008	2016-12-18 17:21:28.449444	2016-12-18 17:21:28.449444
21174	6369	2008	2016-12-18 17:21:28.492279	2016-12-18 17:21:28.492279
21175	6364	2008	2016-12-18 17:21:28.530519	2016-12-18 17:21:28.530519
21176	6380	2008	2016-12-18 17:21:28.577368	2016-12-18 17:21:28.577368
21177	6376	2008	2016-12-18 17:21:28.611872	2016-12-18 17:21:28.611872
21178	6377	2008	2016-12-18 17:21:30.253614	2016-12-18 17:21:30.253614
21179	6367	2008	2016-12-18 17:21:30.299223	2016-12-18 17:21:30.299223
21180	6366	2008	2016-12-18 17:21:30.333758	2016-12-18 17:21:30.333758
21181	6361	2008	2016-12-18 17:21:30.361583	2016-12-18 17:21:30.361583
21182	6360	2008	2016-12-18 17:21:30.382949	2016-12-18 17:21:30.382949
21183	6359	2008	2016-12-18 17:21:30.432016	2016-12-18 17:21:30.432016
21184	7235	2008	2016-12-18 17:21:30.458357	2016-12-18 17:21:30.458357
21185	7236	2008	2016-12-18 17:21:30.49696	2016-12-18 17:21:30.49696
21186	7237	2008	2016-12-18 17:21:30.53425	2016-12-18 17:21:30.53425
21187	7260	2008	2016-12-18 17:21:31.379123	2016-12-18 17:21:31.379123
21188	6276	2011	2016-12-18 17:21:33.245051	2016-12-18 17:21:33.245051
21189	7238	2011	2016-12-18 17:21:33.281926	2016-12-18 17:21:33.281926
21190	7239	2011	2016-12-18 17:21:33.324783	2016-12-18 17:21:33.324783
21191	7240	2011	2016-12-18 17:21:33.365066	2016-12-18 17:21:33.365066
21192	7241	2011	2016-12-18 17:21:33.408422	2016-12-18 17:21:33.408422
21193	7242	2011	2016-12-18 17:21:33.450739	2016-12-18 17:21:33.450739
21194	7243	2011	2016-12-18 17:21:33.493336	2016-12-18 17:21:33.493336
21195	7244	2011	2016-12-18 17:21:33.532119	2016-12-18 17:21:33.532119
21196	7245	2011	2016-12-18 17:21:33.587587	2016-12-18 17:21:33.587587
21197	7246	2011	2016-12-18 17:21:33.627613	2016-12-18 17:21:33.627613
21198	7247	2011	2016-12-18 17:21:33.667797	2016-12-18 17:21:33.667797
21199	7248	2011	2016-12-18 17:21:33.711417	2016-12-18 17:21:33.711417
21200	7249	2011	2016-12-18 17:21:33.760169	2016-12-18 17:21:33.760169
21201	7250	2011	2016-12-18 17:21:33.794612	2016-12-18 17:21:33.794612
21202	7251	2011	2016-12-18 17:21:33.839238	2016-12-18 17:21:33.839238
21203	7252	2011	2016-12-18 17:21:33.870414	2016-12-18 17:21:33.870414
21204	7253	2011	2016-12-18 17:21:33.904399	2016-12-18 17:21:33.904399
21205	7254	2011	2016-12-18 17:21:33.955343	2016-12-18 17:21:33.955343
21206	7255	2011	2016-12-18 17:21:33.996427	2016-12-18 17:21:33.996427
21207	7256	2011	2016-12-18 17:21:34.03056	2016-12-18 17:21:34.03056
21208	7257	2011	2016-12-18 17:21:36.720212	2016-12-18 17:21:36.720212
21209	7258	2011	2016-12-18 17:21:36.762052	2016-12-18 17:21:36.762052
21210	7259	2011	2016-12-18 17:21:36.797939	2016-12-18 17:21:36.797939
21211	6370	2011	2016-12-18 17:21:36.836106	2016-12-18 17:21:36.836106
21212	6378	2011	2016-12-18 17:21:36.859608	2016-12-18 17:21:36.859608
21213	6379	2011	2016-12-18 17:21:36.917292	2016-12-18 17:21:36.917292
21214	6373	2011	2016-12-18 17:21:36.950291	2016-12-18 17:21:36.950291
21215	6374	2011	2016-12-18 17:21:36.984791	2016-12-18 17:21:36.984791
21216	6372	2011	2016-12-18 17:21:37.031417	2016-12-18 17:21:37.031417
21217	6371	2011	2016-12-18 17:21:37.056651	2016-12-18 17:21:37.056651
21218	6375	2011	2016-12-18 17:21:37.112338	2016-12-18 17:21:37.112338
21219	6362	2011	2016-12-18 17:21:37.139478	2016-12-18 17:21:37.139478
21220	6363	2011	2016-12-18 17:21:37.204625	2016-12-18 17:21:37.204625
21221	6368	2011	2016-12-18 17:21:37.252525	2016-12-18 17:21:37.252525
21222	6369	2011	2016-12-18 17:21:37.298202	2016-12-18 17:21:37.298202
21223	6364	2011	2016-12-18 17:21:37.337499	2016-12-18 17:21:37.337499
21224	6380	2011	2016-12-18 17:21:37.386149	2016-12-18 17:21:37.386149
21225	6376	2011	2016-12-18 17:21:37.428632	2016-12-18 17:21:37.428632
21226	6377	2011	2016-12-18 17:21:37.466515	2016-12-18 17:21:37.466515
21227	6367	2011	2016-12-18 17:21:37.510129	2016-12-18 17:21:37.510129
21228	6366	2011	2016-12-18 17:21:39.005318	2016-12-18 17:21:39.005318
21229	6361	2011	2016-12-18 17:21:39.049394	2016-12-18 17:21:39.049394
21230	6360	2011	2016-12-18 17:21:39.085366	2016-12-18 17:21:39.085366
21231	6359	2011	2016-12-18 17:21:39.123171	2016-12-18 17:21:39.123171
21232	7260	2011	2016-12-18 17:21:39.162464	2016-12-18 17:21:39.162464
21233	7168	2015	2016-12-18 17:21:40.468065	2016-12-18 17:21:40.468065
21234	7169	2015	2016-12-18 17:21:40.502822	2016-12-18 17:21:40.502822
21235	7170	2015	2016-12-18 17:21:40.536686	2016-12-18 17:21:40.536686
21236	7171	2015	2016-12-18 17:21:40.587405	2016-12-18 17:21:40.587405
21237	7172	2015	2016-12-18 17:21:40.634438	2016-12-18 17:21:40.634438
21238	7173	2015	2016-12-18 17:21:40.675844	2016-12-18 17:21:40.675844
21239	7230	2015	2016-12-18 17:21:40.718257	2016-12-18 17:21:40.718257
21240	6348	2017	2016-12-18 17:21:43.727579	2016-12-18 17:21:43.727579
21241	6346	2017	2016-12-18 17:21:43.768953	2016-12-18 17:21:43.768953
21242	6345	2017	2016-12-18 17:21:43.812422	2016-12-18 17:21:43.812422
21243	6350	2017	2016-12-18 17:21:43.848012	2016-12-18 17:21:43.848012
21244	6381	2017	2016-12-18 17:21:43.884334	2016-12-18 17:21:43.884334
21245	6365	2017	2016-12-18 17:21:43.91643	2016-12-18 17:21:43.91643
21246	6356	2017	2016-12-18 17:21:43.937134	2016-12-18 17:21:43.937134
21247	6357	2017	2016-12-18 17:21:43.978035	2016-12-18 17:21:43.978035
21248	6358	2017	2016-12-18 17:21:44.003448	2016-12-18 17:21:44.003448
21249	6355	2017	2016-12-18 17:21:44.033254	2016-12-18 17:21:44.033254
21250	6353	2017	2016-12-18 17:21:44.065068	2016-12-18 17:21:44.065068
21251	6351	2017	2016-12-18 17:21:44.116305	2016-12-18 17:21:44.116305
21252	6354	2017	2016-12-18 17:21:44.144192	2016-12-18 17:21:44.144192
21253	6352	2017	2016-12-18 17:21:44.180394	2016-12-18 17:21:44.180394
21254	6349	2017	2016-12-18 17:21:44.212916	2016-12-18 17:21:44.212916
21255	6347	2017	2016-12-18 17:21:44.252572	2016-12-18 17:21:44.252572
21256	6382	2017	2016-12-18 17:21:44.296733	2016-12-18 17:21:44.296733
21257	7167	2018	2016-12-18 17:21:45.518005	2016-12-18 17:21:45.518005
21258	7188	2018	2016-12-18 17:21:45.551643	2016-12-18 17:21:45.551643
21259	7189	2018	2016-12-18 17:21:45.584097	2016-12-18 17:21:45.584097
21260	7168	2013	2016-12-18 17:21:48.043967	2016-12-18 17:21:48.043967
21261	7169	2013	2016-12-18 17:21:48.104247	2016-12-18 17:21:48.104247
21262	7170	2013	2016-12-18 17:21:48.147505	2016-12-18 17:21:48.147505
21263	7171	2013	2016-12-18 17:21:48.218157	2016-12-18 17:21:48.218157
21264	7172	2013	2016-12-18 17:21:48.252302	2016-12-18 17:21:48.252302
21265	7173	2013	2016-12-18 17:21:48.275068	2016-12-18 17:21:48.275068
21266	7174	2013	2016-12-18 17:21:48.312958	2016-12-18 17:21:48.312958
21267	7167	2013	2016-12-18 17:21:48.354309	2016-12-18 17:21:48.354309
21268	7178	2013	2016-12-18 17:21:48.396671	2016-12-18 17:21:48.396671
21269	7179	2013	2016-12-18 17:21:48.427742	2016-12-18 17:21:48.427742
21270	7180	2013	2016-12-18 17:21:48.473187	2016-12-18 17:21:48.473187
21271	7181	2013	2016-12-18 17:21:48.512027	2016-12-18 17:21:48.512027
21272	7182	2013	2016-12-18 17:21:48.557121	2016-12-18 17:21:48.557121
21273	7183	2013	2016-12-18 17:21:48.579095	2016-12-18 17:21:48.579095
21274	7188	2013	2016-12-18 17:21:48.606282	2016-12-18 17:21:48.606282
21275	7189	2013	2016-12-18 17:21:48.645996	2016-12-18 17:21:48.645996
21276	6348	2013	2016-12-18 17:21:48.691644	2016-12-18 17:21:48.691644
21277	6346	2013	2016-12-18 17:21:48.727839	2016-12-18 17:21:48.727839
21278	6345	2013	2016-12-18 17:21:48.794849	2016-12-18 17:21:48.794849
21279	6350	2013	2016-12-18 17:21:48.817751	2016-12-18 17:21:48.817751
21280	7200	2013	2016-12-18 17:21:51.21849	2016-12-18 17:21:51.21849
21281	7201	2013	2016-12-18 17:21:51.254593	2016-12-18 17:21:51.254593
21282	6381	2013	2016-12-18 17:21:51.275401	2016-12-18 17:21:51.275401
21283	6365	2013	2016-12-18 17:21:51.313811	2016-12-18 17:21:51.313811
21284	7210	2013	2016-12-18 17:21:51.361825	2016-12-18 17:21:51.361825
21285	7211	2013	2016-12-18 17:21:51.400513	2016-12-18 17:21:51.400513
21286	6356	2013	2016-12-18 17:21:51.432882	2016-12-18 17:21:51.432882
21287	6357	2013	2016-12-18 17:21:51.463574	2016-12-18 17:21:51.463574
21288	6358	2013	2016-12-18 17:21:51.484199	2016-12-18 17:21:51.484199
21289	6355	2013	2016-12-18 17:21:51.528605	2016-12-18 17:21:51.528605
21290	6353	2013	2016-12-18 17:21:51.561709	2016-12-18 17:21:51.561709
21291	6351	2013	2016-12-18 17:21:51.609614	2016-12-18 17:21:51.609614
21292	6354	2013	2016-12-18 17:21:51.633535	2016-12-18 17:21:51.633535
21293	6352	2013	2016-12-18 17:21:51.661669	2016-12-18 17:21:51.661669
21294	6349	2013	2016-12-18 17:21:51.694205	2016-12-18 17:21:51.694205
21295	6347	2013	2016-12-18 17:21:51.73245	2016-12-18 17:21:51.73245
21296	6382	2013	2016-12-18 17:21:51.766736	2016-12-18 17:21:51.766736
21297	7215	2013	2016-12-18 17:21:51.81793	2016-12-18 17:21:51.81793
21298	7216	2013	2016-12-18 17:21:51.848387	2016-12-18 17:21:51.848387
21299	7217	2013	2016-12-18 17:21:51.888276	2016-12-18 17:21:51.888276
21300	7218	2013	2016-12-18 17:21:53.764511	2016-12-18 17:21:53.764511
21301	7222	2013	2016-12-18 17:21:53.81354	2016-12-18 17:21:53.81354
21302	7223	2013	2016-12-18 17:21:53.864848	2016-12-18 17:21:53.864848
21303	7224	2013	2016-12-18 17:21:53.900966	2016-12-18 17:21:53.900966
21304	7225	2013	2016-12-18 17:21:53.940504	2016-12-18 17:21:53.940504
21305	7226	2013	2016-12-18 17:21:53.97731	2016-12-18 17:21:53.97731
21306	7227	2013	2016-12-18 17:21:54.025754	2016-12-18 17:21:54.025754
21307	7230	2013	2016-12-18 17:21:54.068416	2016-12-18 17:21:54.068416
21308	7174	2019	2016-12-18 17:21:57.322611	2016-12-18 17:21:57.322611
21309	7178	2019	2016-12-18 17:21:57.407536	2016-12-18 17:21:57.407536
21310	7179	2019	2016-12-18 17:21:57.447336	2016-12-18 17:21:57.447336
21311	7180	2019	2016-12-18 17:21:57.49252	2016-12-18 17:21:57.49252
21312	7181	2019	2016-12-18 17:21:57.553593	2016-12-18 17:21:57.553593
21313	7182	2019	2016-12-18 17:21:57.61667	2016-12-18 17:21:57.61667
21314	7183	2019	2016-12-18 17:21:57.662321	2016-12-18 17:21:57.662321
21315	7200	2019	2016-12-18 17:21:57.731427	2016-12-18 17:21:57.731427
21316	7201	2019	2016-12-18 17:21:57.768403	2016-12-18 17:21:57.768403
21317	7210	2019	2016-12-18 17:21:57.791289	2016-12-18 17:21:57.791289
21318	7211	2019	2016-12-18 17:21:57.823827	2016-12-18 17:21:57.823827
21319	7215	2019	2016-12-18 17:21:57.873348	2016-12-18 17:21:57.873348
21320	7216	2019	2016-12-18 17:21:57.947712	2016-12-18 17:21:57.947712
21321	7217	2019	2016-12-18 17:21:57.989584	2016-12-18 17:21:57.989584
21322	7218	2019	2016-12-18 17:21:58.055056	2016-12-18 17:21:58.055056
21323	7222	2019	2016-12-18 17:21:58.097839	2016-12-18 17:21:58.097839
21324	7223	2019	2016-12-18 17:21:58.153133	2016-12-18 17:21:58.153133
21325	7224	2019	2016-12-18 17:21:58.239799	2016-12-18 17:21:58.239799
21326	7225	2019	2016-12-18 17:21:58.278695	2016-12-18 17:21:58.278695
21327	7226	2019	2016-12-18 17:21:58.324188	2016-12-18 17:21:58.324188
21328	7227	2019	2016-12-18 17:21:59.770352	2016-12-18 17:21:59.770352
21329	6465	2021	2016-12-18 17:22:00.984007	2016-12-18 17:22:00.984007
21330	7197	2022	2016-12-18 17:22:03.49619	2016-12-18 17:22:03.49619
21331	7198	2022	2016-12-18 17:22:03.535047	2016-12-18 17:22:03.535047
21332	7199	2022	2016-12-18 17:22:03.565826	2016-12-18 17:22:03.565826
21333	6481	2022	2016-12-18 17:22:03.613407	2016-12-18 17:22:03.613407
21334	6482	2022	2016-12-18 17:22:03.658278	2016-12-18 17:22:03.658278
21335	7213	2022	2016-12-18 17:22:03.688954	2016-12-18 17:22:03.688954
21336	7214	2022	2016-12-18 17:22:03.740779	2016-12-18 17:22:03.740779
21337	7220	2022	2016-12-18 17:22:03.784299	2016-12-18 17:22:03.784299
21338	7221	2022	2016-12-18 17:22:03.828063	2016-12-18 17:22:03.828063
21339	7202	2022	2016-12-18 17:22:03.87422	2016-12-18 17:22:03.87422
21340	7203	2022	2016-12-18 17:22:03.910251	2016-12-18 17:22:03.910251
21341	7228	2022	2016-12-18 17:22:03.947421	2016-12-18 17:22:03.947421
21342	6465	2020	2016-12-18 17:22:06.186396	2016-12-18 17:22:06.186396
21343	6251	2020	2016-12-18 17:22:06.2484	2016-12-18 17:22:06.2484
21344	7197	2020	2016-12-18 17:22:06.294347	2016-12-18 17:22:06.294347
21345	7198	2020	2016-12-18 17:22:06.351902	2016-12-18 17:22:06.351902
21346	7199	2020	2016-12-18 17:22:06.398115	2016-12-18 17:22:06.398115
21347	6481	2020	2016-12-18 17:22:06.418748	2016-12-18 17:22:06.418748
21348	6482	2020	2016-12-18 17:22:06.457922	2016-12-18 17:22:06.457922
21349	6637	2020	2016-12-18 17:22:06.493159	2016-12-18 17:22:06.493159
21350	7213	2020	2016-12-18 17:22:06.530939	2016-12-18 17:22:06.530939
21351	6200	2020	2016-12-18 17:22:06.571619	2016-12-18 17:22:06.571619
21352	7214	2020	2016-12-18 17:22:06.604721	2016-12-18 17:22:06.604721
21353	7220	2020	2016-12-18 17:22:06.630831	2016-12-18 17:22:06.630831
21354	7221	2020	2016-12-18 17:22:06.670452	2016-12-18 17:22:06.670452
21355	7202	2020	2016-12-18 17:22:06.710064	2016-12-18 17:22:06.710064
21356	7203	2020	2016-12-18 17:22:06.747113	2016-12-18 17:22:06.747113
21357	7228	2020	2016-12-18 17:22:06.786141	2016-12-18 17:22:06.786141
21358	7231	2020	2016-12-18 17:22:06.814043	2016-12-18 17:22:06.814043
21359	7231	2023	2016-12-18 17:22:07.910871	2016-12-18 17:22:07.910871
21360	7153	2024	2016-12-18 17:22:09.118804	2016-12-18 17:22:09.118804
21361	7209	2024	2016-12-18 17:22:10.700251	2016-12-18 17:22:10.700251
21362	7229	2024	2016-12-18 17:22:10.749774	2016-12-18 17:22:10.749774
21363	7153	2025	2016-12-18 17:22:11.901967	2016-12-18 17:22:11.901967
21364	7209	2025	2016-12-18 17:22:11.955802	2016-12-18 17:22:11.955802
21365	7151	2026	2016-12-18 17:22:13.819406	2016-12-18 17:22:13.819406
21366	7152	2026	2016-12-18 17:22:14.45484	2016-12-18 17:22:14.45484
21367	7154	2026	2016-12-18 17:22:14.466603	2016-12-18 17:22:14.466603
21368	7155	2026	2016-12-18 17:22:14.484434	2016-12-18 17:22:14.484434
21369	7156	2026	2016-12-18 17:22:14.514104	2016-12-18 17:22:14.514104
21370	7157	2026	2016-12-18 17:22:14.533518	2016-12-18 17:22:14.533518
21371	7158	2026	2016-12-18 17:22:14.550232	2016-12-18 17:22:14.550232
21372	7159	2026	2016-12-18 17:22:15.087701	2016-12-18 17:22:15.087701
21373	7160	2026	2016-12-18 17:22:15.100377	2016-12-18 17:22:15.100377
21374	7161	2026	2016-12-18 17:22:15.123345	2016-12-18 17:22:15.123345
21375	7162	2026	2016-12-18 17:22:15.156228	2016-12-18 17:22:15.156228
21376	7163	2026	2016-12-18 17:22:15.177873	2016-12-18 17:22:15.177873
21377	7164	2026	2016-12-18 17:22:15.199817	2016-12-18 17:22:15.199817
21378	7165	2026	2016-12-18 17:22:15.240907	2016-12-18 17:22:15.240907
21379	7166	2026	2016-12-18 17:22:15.264047	2016-12-18 17:22:15.264047
21380	7175	2026	2016-12-18 17:22:15.290891	2016-12-18 17:22:15.290891
21381	7176	2026	2016-12-18 17:22:15.316775	2016-12-18 17:22:15.316775
21382	7177	2026	2016-12-18 17:22:15.356645	2016-12-18 17:22:15.356645
21383	6654	2026	2016-12-18 17:22:15.36878	2016-12-18 17:22:15.36878
21384	6655	2026	2016-12-18 17:22:15.386988	2016-12-18 17:22:15.386988
21385	6656	2026	2016-12-18 17:22:17.265903	2016-12-18 17:22:17.265903
21386	7184	2026	2016-12-18 17:22:17.339222	2016-12-18 17:22:17.339222
21387	7185	2026	2016-12-18 17:22:17.360902	2016-12-18 17:22:17.360902
21388	7186	2026	2016-12-18 17:22:17.39011	2016-12-18 17:22:17.39011
21389	7187	2026	2016-12-18 17:22:17.431049	2016-12-18 17:22:17.431049
21390	7190	2026	2016-12-18 17:22:17.475841	2016-12-18 17:22:17.475841
21391	7191	2026	2016-12-18 17:22:17.520334	2016-12-18 17:22:17.520334
21392	7192	2026	2016-12-18 17:22:17.560117	2016-12-18 17:22:17.560117
21393	7193	2026	2016-12-18 17:22:17.603073	2016-12-18 17:22:17.603073
21394	7194	2026	2016-12-18 17:22:17.651639	2016-12-18 17:22:17.651639
21395	7195	2026	2016-12-18 17:22:17.695702	2016-12-18 17:22:17.695702
21396	7196	2026	2016-12-18 17:22:17.73137	2016-12-18 17:22:17.73137
21397	7204	2026	2016-12-18 17:22:17.772425	2016-12-18 17:22:17.772425
21398	7205	2026	2016-12-18 17:22:17.818705	2016-12-18 17:22:17.818705
21399	7206	2026	2016-12-18 17:22:17.858309	2016-12-18 17:22:17.858309
21400	7207	2026	2016-12-18 17:22:17.898112	2016-12-18 17:22:17.898112
21401	7208	2026	2016-12-18 17:22:17.940672	2016-12-18 17:22:17.940672
21402	7219	2026	2016-12-18 17:22:17.984052	2016-12-18 17:22:17.984052
21403	7261	2029	2016-12-18 17:22:20.356533	2016-12-18 17:22:20.356533
21404	7262	2029	2016-12-18 17:22:21.276346	2016-12-18 17:22:21.276346
21405	7263	2029	2016-12-18 17:22:22.157576	2016-12-18 17:22:22.157576
21406	7264	2029	2016-12-18 17:22:22.977586	2016-12-18 17:22:22.977586
21407	7265	2029	2016-12-18 17:22:23.851146	2016-12-18 17:22:23.851146
21408	7266	2029	2016-12-18 17:22:24.853794	2016-12-18 17:22:24.853794
21409	7267	2029	2016-12-18 17:22:25.761858	2016-12-18 17:22:25.761858
21410	7268	2029	2016-12-18 17:22:26.656031	2016-12-18 17:22:26.656031
21411	7269	2029	2016-12-18 17:22:27.640598	2016-12-18 17:22:27.640598
21412	7270	2029	2016-12-18 17:22:28.531442	2016-12-18 17:22:28.531442
21413	7271	2029	2016-12-18 17:22:29.457037	2016-12-18 17:22:29.457037
21414	7272	2028	2016-12-18 17:22:32.107076	2016-12-18 17:22:32.107076
21415	7273	2028	2016-12-18 17:22:33.061777	2016-12-18 17:22:33.061777
21416	7274	2028	2016-12-18 17:22:33.907654	2016-12-18 17:22:33.907654
21417	7275	2028	2016-12-18 17:22:34.782687	2016-12-18 17:22:34.782687
21418	7276	2028	2016-12-18 17:22:35.744845	2016-12-18 17:22:35.744845
21419	7277	2028	2016-12-18 17:22:36.794797	2016-12-18 17:22:36.794797
21420	7278	2028	2016-12-18 17:22:37.750702	2016-12-18 17:22:37.750702
21421	7279	2028	2016-12-18 17:22:38.584173	2016-12-18 17:22:38.584173
21422	7280	2028	2016-12-18 17:22:39.455827	2016-12-18 17:22:39.455827
21423	7281	2028	2016-12-18 17:22:40.303012	2016-12-18 17:22:40.303012
21424	7282	2028	2016-12-18 17:22:41.174837	2016-12-18 17:22:41.174837
21425	7283	2028	2016-12-18 17:22:42.105054	2016-12-18 17:22:42.105054
21426	7284	2028	2016-12-18 17:22:43.038239	2016-12-18 17:22:43.038239
21427	7285	2028	2016-12-18 17:22:43.887541	2016-12-18 17:22:43.887541
21428	7286	2028	2016-12-18 17:22:44.715557	2016-12-18 17:22:44.715557
21429	7287	2028	2016-12-18 17:22:45.543582	2016-12-18 17:22:45.543582
21430	7288	2028	2016-12-18 17:22:46.464824	2016-12-18 17:22:46.464824
21431	7289	2028	2016-12-18 17:22:47.339681	2016-12-18 17:22:47.339681
21432	7290	2028	2016-12-18 17:22:48.290835	2016-12-18 17:22:48.290835
21433	7291	2028	2016-12-18 17:22:49.13424	2016-12-18 17:22:49.13424
21434	7292	2028	2016-12-18 17:22:54.474837	2016-12-18 17:22:54.474837
21435	7293	2028	2016-12-18 17:22:55.676847	2016-12-18 17:22:55.676847
21436	7294	2028	2016-12-18 17:22:56.557382	2016-12-18 17:22:56.557382
21437	7295	2028	2016-12-18 17:22:57.426168	2016-12-18 17:22:57.426168
21438	7296	2028	2016-12-18 17:22:58.27014	2016-12-18 17:22:58.27014
21439	7297	2028	2016-12-18 17:22:59.101717	2016-12-18 17:22:59.101717
21440	7298	2028	2016-12-18 17:23:00.025336	2016-12-18 17:23:00.025336
21441	7299	2028	2016-12-18 17:23:00.940067	2016-12-18 17:23:00.940067
21442	7261	2028	2016-12-18 17:23:01.016897	2016-12-18 17:23:01.016897
21443	7262	2028	2016-12-18 17:23:01.064692	2016-12-18 17:23:01.064692
21444	7300	2028	2016-12-18 17:23:02.067488	2016-12-18 17:23:02.067488
21445	7263	2028	2016-12-18 17:23:02.107674	2016-12-18 17:23:02.107674
21446	7264	2028	2016-12-18 17:23:02.135662	2016-12-18 17:23:02.135662
21447	7265	2028	2016-12-18 17:23:02.180176	2016-12-18 17:23:02.180176
21448	7266	2028	2016-12-18 17:23:02.240243	2016-12-18 17:23:02.240243
21449	7267	2028	2016-12-18 17:23:02.30375	2016-12-18 17:23:02.30375
21450	7268	2028	2016-12-18 17:23:02.343042	2016-12-18 17:23:02.343042
21451	7269	2028	2016-12-18 17:23:02.398688	2016-12-18 17:23:02.398688
21452	7270	2028	2016-12-18 17:23:02.432235	2016-12-18 17:23:02.432235
21453	7271	2028	2016-12-18 17:23:02.474391	2016-12-18 17:23:02.474391
21454	7272	2030	2016-12-18 17:23:04.600211	2016-12-18 17:23:04.600211
21455	7273	2030	2016-12-18 17:23:04.698449	2016-12-18 17:23:04.698449
21456	7274	2030	2016-12-18 17:23:04.766018	2016-12-18 17:23:04.766018
21457	7275	2030	2016-12-18 17:23:04.804923	2016-12-18 17:23:04.804923
21458	7276	2030	2016-12-18 17:23:04.862702	2016-12-18 17:23:04.862702
21459	7277	2030	2016-12-18 17:23:04.909566	2016-12-18 17:23:04.909566
21460	7278	2030	2016-12-18 17:23:04.971122	2016-12-18 17:23:04.971122
21461	7279	2030	2016-12-18 17:23:05.010154	2016-12-18 17:23:05.010154
21462	7280	2030	2016-12-18 17:23:05.055822	2016-12-18 17:23:05.055822
21463	7281	2030	2016-12-18 17:23:05.075762	2016-12-18 17:23:05.075762
21464	7282	2030	2016-12-18 17:23:05.141157	2016-12-18 17:23:05.141157
21465	7283	2030	2016-12-18 17:23:05.163347	2016-12-18 17:23:05.163347
21466	7284	2030	2016-12-18 17:23:05.209892	2016-12-18 17:23:05.209892
21467	7285	2030	2016-12-18 17:23:05.23707	2016-12-18 17:23:05.23707
21468	7286	2030	2016-12-18 17:23:05.273585	2016-12-18 17:23:05.273585
21469	7287	2030	2016-12-18 17:23:05.308264	2016-12-18 17:23:05.308264
21470	7288	2030	2016-12-18 17:23:05.348304	2016-12-18 17:23:05.348304
21471	7289	2030	2016-12-18 17:23:05.379818	2016-12-18 17:23:05.379818
21472	7290	2030	2016-12-18 17:23:05.409213	2016-12-18 17:23:05.409213
21473	7291	2030	2016-12-18 17:23:05.47301	2016-12-18 17:23:05.47301
21474	7292	2030	2016-12-18 17:23:06.903179	2016-12-18 17:23:06.903179
21475	7293	2030	2016-12-18 17:23:06.951594	2016-12-18 17:23:06.951594
21476	7294	2030	2016-12-18 17:23:06.992578	2016-12-18 17:23:06.992578
21477	7295	2030	2016-12-18 17:23:07.030645	2016-12-18 17:23:07.030645
21478	7296	2030	2016-12-18 17:23:07.068166	2016-12-18 17:23:07.068166
21479	7297	2030	2016-12-18 17:23:07.103069	2016-12-18 17:23:07.103069
21480	7298	2030	2016-12-18 17:23:07.154879	2016-12-18 17:23:07.154879
21481	7299	2030	2016-12-18 17:23:07.181176	2016-12-18 17:23:07.181176
21482	7301	2027	2016-12-18 17:23:10.055521	2016-12-18 17:23:10.055521
21483	5920	2027	2016-12-18 17:23:10.081596	2016-12-18 17:23:10.081596
21484	7272	2027	2016-12-18 17:23:10.117376	2016-12-18 17:23:10.117376
21485	7273	2027	2016-12-18 17:23:10.158088	2016-12-18 17:23:10.158088
21486	7274	2027	2016-12-18 17:23:10.227333	2016-12-18 17:23:10.227333
21487	7275	2027	2016-12-18 17:23:10.243373	2016-12-18 17:23:10.243373
21488	7276	2027	2016-12-18 17:23:10.281154	2016-12-18 17:23:10.281154
21489	7277	2027	2016-12-18 17:23:10.324189	2016-12-18 17:23:10.324189
21490	7278	2027	2016-12-18 17:23:10.361933	2016-12-18 17:23:10.361933
21491	7279	2027	2016-12-18 17:23:10.405055	2016-12-18 17:23:10.405055
21492	7280	2027	2016-12-18 17:23:10.432227	2016-12-18 17:23:10.432227
21493	7281	2027	2016-12-18 17:23:10.468176	2016-12-18 17:23:10.468176
21494	7282	2027	2016-12-18 17:23:10.530896	2016-12-18 17:23:10.530896
21495	7283	2027	2016-12-18 17:23:10.56579	2016-12-18 17:23:10.56579
21496	7284	2027	2016-12-18 17:23:10.606033	2016-12-18 17:23:10.606033
21497	7285	2027	2016-12-18 17:23:10.640521	2016-12-18 17:23:10.640521
21498	7286	2027	2016-12-18 17:23:10.659964	2016-12-18 17:23:10.659964
21499	7287	2027	2016-12-18 17:23:10.698771	2016-12-18 17:23:10.698771
21500	7288	2027	2016-12-18 17:23:10.743308	2016-12-18 17:23:10.743308
21501	7289	2027	2016-12-18 17:23:10.792257	2016-12-18 17:23:10.792257
21502	7290	2027	2016-12-18 17:23:12.582136	2016-12-18 17:23:12.582136
21503	7291	2027	2016-12-18 17:23:12.625794	2016-12-18 17:23:12.625794
21504	7292	2027	2016-12-18 17:23:12.687014	2016-12-18 17:23:12.687014
21505	7293	2027	2016-12-18 17:23:12.708132	2016-12-18 17:23:12.708132
21506	7294	2027	2016-12-18 17:23:12.742047	2016-12-18 17:23:12.742047
21507	7295	2027	2016-12-18 17:23:12.776364	2016-12-18 17:23:12.776364
21508	7296	2027	2016-12-18 17:23:12.814072	2016-12-18 17:23:12.814072
21509	7297	2027	2016-12-18 17:23:12.843068	2016-12-18 17:23:12.843068
21510	7298	2027	2016-12-18 17:23:12.87645	2016-12-18 17:23:12.87645
21511	7299	2027	2016-12-18 17:23:12.911243	2016-12-18 17:23:12.911243
21512	7302	2027	2016-12-18 17:23:13.741452	2016-12-18 17:23:13.741452
21513	7303	2027	2016-12-18 17:23:14.610415	2016-12-18 17:23:14.610415
21514	7304	2027	2016-12-18 17:23:15.498966	2016-12-18 17:23:15.498966
21515	7305	2027	2016-12-18 17:23:16.420794	2016-12-18 17:23:16.420794
21516	7306	2027	2016-12-18 17:23:17.289383	2016-12-18 17:23:17.289383
21517	7307	2027	2016-12-18 17:23:18.122969	2016-12-18 17:23:18.122969
21518	7308	2027	2016-12-18 17:23:18.965728	2016-12-18 17:23:18.965728
21519	7261	2027	2016-12-18 17:23:18.999266	2016-12-18 17:23:18.999266
21520	7262	2027	2016-12-18 17:23:19.035002	2016-12-18 17:23:19.035002
21521	7300	2027	2016-12-18 17:23:19.06391	2016-12-18 17:23:19.06391
21522	7263	2027	2016-12-18 17:23:20.712762	2016-12-18 17:23:20.712762
21523	7264	2027	2016-12-18 17:23:20.77707	2016-12-18 17:23:20.77707
21524	7265	2027	2016-12-18 17:23:20.817633	2016-12-18 17:23:20.817633
21525	7266	2027	2016-12-18 17:23:20.864604	2016-12-18 17:23:20.864604
21526	7267	2027	2016-12-18 17:23:20.900133	2016-12-18 17:23:20.900133
21527	7268	2027	2016-12-18 17:23:20.947419	2016-12-18 17:23:20.947419
21528	7269	2027	2016-12-18 17:23:20.985333	2016-12-18 17:23:20.985333
21529	7270	2027	2016-12-18 17:23:21.032221	2016-12-18 17:23:21.032221
21530	7271	2027	2016-12-18 17:23:21.04749	2016-12-18 17:23:21.04749
21531	7309	2027	2016-12-18 17:23:21.901941	2016-12-18 17:23:21.901941
21532	7310	2027	2016-12-18 17:23:22.719657	2016-12-18 17:23:22.719657
21533	7311	2027	2016-12-18 17:23:23.630671	2016-12-18 17:23:23.630671
21534	5920	2031	2016-12-18 17:23:24.870921	2016-12-18 17:23:24.870921
21535	7302	2031	2016-12-18 17:23:24.919824	2016-12-18 17:23:24.919824
21536	5785	2032	2016-12-18 17:23:27.084507	2016-12-18 17:23:27.084507
21537	7254	2032	2016-12-18 17:23:27.175065	2016-12-18 17:23:27.175065
21538	5786	2032	2016-12-18 17:23:27.215691	2016-12-18 17:23:27.215691
21539	5787	2032	2016-12-18 17:23:27.255548	2016-12-18 17:23:27.255548
21540	5789	2032	2016-12-18 17:23:27.296419	2016-12-18 17:23:27.296419
21541	5791	2032	2016-12-18 17:23:27.323818	2016-12-18 17:23:27.323818
21542	5793	2032	2016-12-18 17:23:27.34414	2016-12-18 17:23:27.34414
21543	5795	2032	2016-12-18 17:23:27.373683	2016-12-18 17:23:27.373683
21544	5796	2032	2016-12-18 17:23:27.413106	2016-12-18 17:23:27.413106
21545	5799	2032	2016-12-18 17:23:27.451868	2016-12-18 17:23:27.451868
21546	5800	2032	2016-12-18 17:23:27.474136	2016-12-18 17:23:27.474136
21547	5801	2032	2016-12-18 17:23:27.515551	2016-12-18 17:23:27.515551
21548	5802	2032	2016-12-18 17:23:27.552661	2016-12-18 17:23:27.552661
21549	5804	2032	2016-12-18 17:23:27.57937	2016-12-18 17:23:27.57937
21550	5806	2032	2016-12-18 17:23:27.613501	2016-12-18 17:23:27.613501
21551	5807	2032	2016-12-18 17:23:27.639178	2016-12-18 17:23:27.639178
21552	5811	2032	2016-12-18 17:23:27.681672	2016-12-18 17:23:27.681672
21553	7245	2032	2016-12-18 17:23:27.7241	2016-12-18 17:23:27.7241
21554	7244	2032	2016-12-18 17:23:27.756774	2016-12-18 17:23:27.756774
21555	7238	2032	2016-12-18 17:23:27.797719	2016-12-18 17:23:27.797719
21556	7239	2032	2016-12-18 17:23:29.806194	2016-12-18 17:23:29.806194
21557	7241	2032	2016-12-18 17:23:29.841945	2016-12-18 17:23:29.841945
21558	6764	2032	2016-12-18 17:23:29.875012	2016-12-18 17:23:29.875012
21559	6849	2032	2016-12-18 17:23:29.909822	2016-12-18 17:23:29.909822
21560	6766	2032	2016-12-18 17:23:29.946875	2016-12-18 17:23:29.946875
21561	6850	2032	2016-12-18 17:23:29.972649	2016-12-18 17:23:29.972649
21562	6765	2032	2016-12-18 17:23:30.036447	2016-12-18 17:23:30.036447
21563	6767	2032	2016-12-18 17:23:30.07714	2016-12-18 17:23:30.07714
21564	6755	2032	2016-12-18 17:23:30.10956	2016-12-18 17:23:30.10956
21565	6761	2032	2016-12-18 17:23:30.131998	2016-12-18 17:23:30.131998
21566	6756	2032	2016-12-18 17:23:30.170158	2016-12-18 17:23:30.170158
21567	6757	2032	2016-12-18 17:23:30.216665	2016-12-18 17:23:30.216665
21568	6760	2032	2016-12-18 17:23:30.270172	2016-12-18 17:23:30.270172
21569	6759	2032	2016-12-18 17:23:30.304172	2016-12-18 17:23:30.304172
21570	5828	2032	2016-12-18 17:23:30.339022	2016-12-18 17:23:30.339022
21571	6423	2032	2016-12-18 17:23:30.374677	2016-12-18 17:23:30.374677
21572	6427	2032	2016-12-18 17:23:30.421499	2016-12-18 17:23:30.421499
21573	6428	2032	2016-12-18 17:23:30.435081	2016-12-18 17:23:30.435081
21574	6828	2032	2016-12-18 17:23:30.492857	2016-12-18 17:23:30.492857
21575	6842	2032	2016-12-18 17:23:30.516287	2016-12-18 17:23:30.516287
21576	6424	2032	2016-12-18 17:23:32.440396	2016-12-18 17:23:32.440396
21577	6422	2032	2016-12-18 17:23:32.49863	2016-12-18 17:23:32.49863
21578	6429	2032	2016-12-18 17:23:32.550987	2016-12-18 17:23:32.550987
21579	6390	2032	2016-12-18 17:23:32.584653	2016-12-18 17:23:32.584653
21580	6389	2032	2016-12-18 17:23:32.638499	2016-12-18 17:23:32.638499
21581	6418	2032	2016-12-18 17:23:32.673964	2016-12-18 17:23:32.673964
21582	6417	2032	2016-12-18 17:23:32.718398	2016-12-18 17:23:32.718398
21583	6348	2032	2016-12-18 17:23:32.754581	2016-12-18 17:23:32.754581
21584	5854	2032	2016-12-18 17:23:32.804346	2016-12-18 17:23:32.804346
21585	6837	2032	2016-12-18 17:23:32.851655	2016-12-18 17:23:32.851655
21586	6836	2032	2016-12-18 17:23:32.887223	2016-12-18 17:23:32.887223
21587	6419	2032	2016-12-18 17:23:32.9271	2016-12-18 17:23:32.9271
21588	6420	2032	2016-12-18 17:23:32.956608	2016-12-18 17:23:32.956608
21589	6399	2032	2016-12-18 17:23:32.995408	2016-12-18 17:23:32.995408
21590	6400	2032	2016-12-18 17:23:33.021042	2016-12-18 17:23:33.021042
21591	6840	2032	2016-12-18 17:23:33.055443	2016-12-18 17:23:33.055443
21592	6841	2032	2016-12-18 17:23:33.093595	2016-12-18 17:23:33.093595
21593	6839	2032	2016-12-18 17:23:33.136131	2016-12-18 17:23:33.136131
21594	6838	2032	2016-12-18 17:23:33.176382	2016-12-18 17:23:33.176382
21595	6350	2032	2016-12-18 17:23:33.211576	2016-12-18 17:23:33.211576
21596	6437	2032	2016-12-18 17:23:36.772676	2016-12-18 17:23:36.772676
21597	6520	2032	2016-12-18 17:23:36.812183	2016-12-18 17:23:36.812183
21598	6510	2032	2016-12-18 17:23:36.891502	2016-12-18 17:23:36.891502
21599	6515	2032	2016-12-18 17:23:36.931722	2016-12-18 17:23:36.931722
21600	6521	2032	2016-12-18 17:23:36.972449	2016-12-18 17:23:36.972449
21601	6516	2032	2016-12-18 17:23:37.007208	2016-12-18 17:23:37.007208
21602	6522	2032	2016-12-18 17:23:37.051742	2016-12-18 17:23:37.051742
21603	6518	2032	2016-12-18 17:23:37.087394	2016-12-18 17:23:37.087394
21604	6517	2032	2016-12-18 17:23:37.107165	2016-12-18 17:23:37.107165
21605	6463	2032	2016-12-18 17:23:37.134953	2016-12-18 17:23:37.134953
21606	5881	2032	2016-12-18 17:23:37.168718	2016-12-18 17:23:37.168718
21607	6494	2032	2016-12-18 17:23:37.216728	2016-12-18 17:23:37.216728
21608	5893	2032	2016-12-18 17:23:37.233067	2016-12-18 17:23:37.233067
21609	5894	2032	2016-12-18 17:23:37.269408	2016-12-18 17:23:37.269408
21610	5896	2032	2016-12-18 17:23:37.301783	2016-12-18 17:23:37.301783
21611	5901	2032	2016-12-18 17:23:37.316665	2016-12-18 17:23:37.316665
21612	7073	2032	2016-12-18 17:23:37.34681	2016-12-18 17:23:37.34681
21613	6845	2032	2016-12-18 17:23:37.383405	2016-12-18 17:23:37.383405
21614	5926	2032	2016-12-18 17:23:37.420445	2016-12-18 17:23:37.420445
21615	6519	2032	2016-12-18 17:23:37.461373	2016-12-18 17:23:37.461373
21616	6789	2032	2016-12-18 17:23:39.89173	2016-12-18 17:23:39.89173
21617	6471	2032	2016-12-18 17:23:39.926314	2016-12-18 17:23:39.926314
21618	6335	2032	2016-12-18 17:23:39.966077	2016-12-18 17:23:39.966077
21619	6602	2032	2016-12-18 17:23:40.002721	2016-12-18 17:23:40.002721
21620	6601	2032	2016-12-18 17:23:40.023017	2016-12-18 17:23:40.023017
21621	6584	2032	2016-12-18 17:23:40.050371	2016-12-18 17:23:40.050371
21622	6585	2032	2016-12-18 17:23:40.069806	2016-12-18 17:23:40.069806
21623	6586	2032	2016-12-18 17:23:40.099512	2016-12-18 17:23:40.099512
21624	6587	2032	2016-12-18 17:23:40.136706	2016-12-18 17:23:40.136706
21625	6604	2032	2016-12-18 17:23:40.178958	2016-12-18 17:23:40.178958
21626	6603	2032	2016-12-18 17:23:40.223962	2016-12-18 17:23:40.223962
21627	5978	2032	2016-12-18 17:23:40.258525	2016-12-18 17:23:40.258525
21628	6657	2032	2016-12-18 17:23:40.275787	2016-12-18 17:23:40.275787
21629	6648	2032	2016-12-18 17:23:40.311783	2016-12-18 17:23:40.311783
21630	5984	2032	2016-12-18 17:23:40.340686	2016-12-18 17:23:40.340686
21631	7169	2032	2016-12-18 17:23:40.360157	2016-12-18 17:23:40.360157
21632	7171	2032	2016-12-18 17:23:40.39724	2016-12-18 17:23:40.39724
21633	7173	2032	2016-12-18 17:23:40.4369	2016-12-18 17:23:40.4369
21634	7172	2032	2016-12-18 17:23:40.47264	2016-12-18 17:23:40.47264
21635	5993	2032	2016-12-18 17:23:40.504453	2016-12-18 17:23:40.504453
21636	6834	2032	2016-12-18 17:23:42.316121	2016-12-18 17:23:42.316121
21637	6004	2032	2016-12-18 17:23:42.385085	2016-12-18 17:23:42.385085
21638	6008	2032	2016-12-18 17:23:42.463744	2016-12-18 17:23:42.463744
21639	6009	2032	2016-12-18 17:23:42.515713	2016-12-18 17:23:42.515713
21640	6012	2032	2016-12-18 17:23:42.557934	2016-12-18 17:23:42.557934
21641	7082	2032	2016-12-18 17:23:42.598544	2016-12-18 17:23:42.598544
21642	7084	2032	2016-12-18 17:23:42.636505	2016-12-18 17:23:42.636505
21643	7083	2032	2016-12-18 17:23:42.685478	2016-12-18 17:23:42.685478
21644	7081	2032	2016-12-18 17:23:42.735157	2016-12-18 17:23:42.735157
21645	7090	2032	2016-12-18 17:23:42.798974	2016-12-18 17:23:42.798974
21646	7091	2032	2016-12-18 17:23:42.841402	2016-12-18 17:23:42.841402
21647	7089	2032	2016-12-18 17:23:42.864215	2016-12-18 17:23:42.864215
21648	7092	2032	2016-12-18 17:23:42.901875	2016-12-18 17:23:42.901875
21649	7076	2032	2016-12-18 17:23:42.94358	2016-12-18 17:23:42.94358
21650	7075	2032	2016-12-18 17:23:42.980397	2016-12-18 17:23:42.980397
21651	6015	2032	2016-12-18 17:23:43.009989	2016-12-18 17:23:43.009989
21652	6790	2032	2016-12-18 17:23:43.041169	2016-12-18 17:23:43.041169
21653	6815	2032	2016-12-18 17:23:43.070605	2016-12-18 17:23:43.070605
21654	6017	2032	2016-12-18 17:23:43.105618	2016-12-18 17:23:43.105618
21655	7005	2032	2016-12-18 17:23:43.134906	2016-12-18 17:23:43.134906
21656	6041	2032	2016-12-18 17:23:45.240151	2016-12-18 17:23:45.240151
21657	6044	2032	2016-12-18 17:23:45.308528	2016-12-18 17:23:45.308528
21658	6045	2032	2016-12-18 17:23:45.341864	2016-12-18 17:23:45.341864
21659	6106	2032	2016-12-18 17:23:45.363477	2016-12-18 17:23:45.363477
21660	6107	2032	2016-12-18 17:23:45.446464	2016-12-18 17:23:45.446464
21661	6108	2032	2016-12-18 17:23:45.485745	2016-12-18 17:23:45.485745
21662	6109	2032	2016-12-18 17:23:45.532796	2016-12-18 17:23:45.532796
21663	6110	2032	2016-12-18 17:23:45.573074	2016-12-18 17:23:45.573074
21664	6111	2032	2016-12-18 17:23:45.60972	2016-12-18 17:23:45.60972
21665	6112	2032	2016-12-18 17:23:45.654042	2016-12-18 17:23:45.654042
21666	6114	2032	2016-12-18 17:23:45.690721	2016-12-18 17:23:45.690721
21667	6116	2032	2016-12-18 17:23:45.717372	2016-12-18 17:23:45.717372
21668	6117	2032	2016-12-18 17:23:45.765589	2016-12-18 17:23:45.765589
21669	6119	2032	2016-12-18 17:23:45.803769	2016-12-18 17:23:45.803769
21670	6138	2032	2016-12-18 17:23:45.819775	2016-12-18 17:23:45.819775
21671	6147	2032	2016-12-18 17:23:45.858595	2016-12-18 17:23:45.858595
21672	6148	2032	2016-12-18 17:23:45.889196	2016-12-18 17:23:45.889196
21673	6149	2032	2016-12-18 17:23:45.926979	2016-12-18 17:23:45.926979
21674	6610	2032	2016-12-18 17:23:45.991804	2016-12-18 17:23:45.991804
21675	6609	2032	2016-12-18 17:23:46.050902	2016-12-18 17:23:46.050902
21676	6560	2032	2016-12-18 17:23:48.326874	2016-12-18 17:23:48.326874
21677	6559	2032	2016-12-18 17:23:48.392087	2016-12-18 17:23:48.392087
21678	6198	2032	2016-12-18 17:23:48.429321	2016-12-18 17:23:48.429321
21679	6994	2032	2016-12-18 17:23:48.452014	2016-12-18 17:23:48.452014
21680	6199	2032	2016-12-18 17:23:48.518441	2016-12-18 17:23:48.518441
21681	6202	2032	2016-12-18 17:23:48.555277	2016-12-18 17:23:48.555277
21682	6402	2032	2016-12-18 17:23:48.598669	2016-12-18 17:23:48.598669
21683	6774	2032	2016-12-18 17:23:48.618602	2016-12-18 17:23:48.618602
21684	6403	2032	2016-12-18 17:23:48.653443	2016-12-18 17:23:48.653443
21685	6720	2032	2016-12-18 17:23:48.699644	2016-12-18 17:23:48.699644
21686	6722	2032	2016-12-18 17:23:48.740044	2016-12-18 17:23:48.740044
21687	6209	2032	2016-12-18 17:23:48.776835	2016-12-18 17:23:48.776835
21688	6236	2032	2016-12-18 17:23:48.813711	2016-12-18 17:23:48.813711
21689	6492	2032	2016-12-18 17:23:48.837324	2016-12-18 17:23:48.837324
21690	7189	2032	2016-12-18 17:23:48.894924	2016-12-18 17:23:48.894924
21691	7188	2032	2016-12-18 17:23:48.940267	2016-12-18 17:23:48.940267
21692	6258	2032	2016-12-18 17:23:48.980753	2016-12-18 17:23:48.980753
21693	6259	2032	2016-12-18 17:23:48.995577	2016-12-18 17:23:48.995577
21694	6260	2032	2016-12-18 17:23:49.03172	2016-12-18 17:23:49.03172
21695	6261	2032	2016-12-18 17:23:49.067617	2016-12-18 17:23:49.067617
21696	6972	2032	2016-12-18 17:23:51.289068	2016-12-18 17:23:51.289068
21697	6333	2032	2016-12-18 17:23:51.356394	2016-12-18 17:23:51.356394
21698	6617	2032	2016-12-18 17:23:51.387496	2016-12-18 17:23:51.387496
21699	6262	2032	2016-12-18 17:23:51.437107	2016-12-18 17:23:51.437107
21700	7233	2032	2016-12-18 17:23:51.472492	2016-12-18 17:23:51.472492
21701	7234	2032	2016-12-18 17:23:51.493849	2016-12-18 17:23:51.493849
21702	6269	2032	2016-12-18 17:23:51.531452	2016-12-18 17:23:51.531452
21703	7000	2032	2016-12-18 17:23:51.569134	2016-12-18 17:23:51.569134
21704	6620	2032	2016-12-18 17:23:51.602435	2016-12-18 17:23:51.602435
21705	6621	2032	2016-12-18 17:23:51.648956	2016-12-18 17:23:51.648956
21706	6279	2032	2016-12-18 17:23:51.700128	2016-12-18 17:23:51.700128
21707	7001	2032	2016-12-18 17:23:51.740595	2016-12-18 17:23:51.740595
21708	6280	2032	2016-12-18 17:23:51.781365	2016-12-18 17:23:51.781365
21709	6285	2032	2016-12-18 17:23:51.805497	2016-12-18 17:23:51.805497
21710	6710	2032	2016-12-18 17:23:51.82546	2016-12-18 17:23:51.82546
21711	6706	2032	2016-12-18 17:23:51.868995	2016-12-18 17:23:51.868995
21712	6711	2032	2016-12-18 17:23:51.932716	2016-12-18 17:23:51.932716
21713	6709	2032	2016-12-18 17:23:51.956082	2016-12-18 17:23:51.956082
21714	6286	2032	2016-12-18 17:23:51.994691	2016-12-18 17:23:51.994691
21715	6287	2032	2016-12-18 17:23:52.022611	2016-12-18 17:23:52.022611
21716	6824	2032	2016-12-18 17:23:54.691647	2016-12-18 17:23:54.691647
21717	6289	2032	2016-12-18 17:23:54.744283	2016-12-18 17:23:54.744283
21718	6572	2032	2016-12-18 17:23:54.77482	2016-12-18 17:23:54.77482
21719	6580	2032	2016-12-18 17:23:54.810908	2016-12-18 17:23:54.810908
21720	6579	2032	2016-12-18 17:23:54.860492	2016-12-18 17:23:54.860492
21721	6578	2032	2016-12-18 17:23:54.901311	2016-12-18 17:23:54.901311
21722	6501	2032	2016-12-18 17:23:54.947404	2016-12-18 17:23:54.947404
21723	6294	2032	2016-12-18 17:23:54.989099	2016-12-18 17:23:54.989099
21724	6295	2032	2016-12-18 17:23:55.029043	2016-12-18 17:23:55.029043
21725	6296	2032	2016-12-18 17:23:55.067337	2016-12-18 17:23:55.067337
21726	6297	2032	2016-12-18 17:23:55.113619	2016-12-18 17:23:55.113619
21727	6298	2032	2016-12-18 17:23:55.154405	2016-12-18 17:23:55.154405
21728	7235	2032	2016-12-18 17:23:55.199046	2016-12-18 17:23:55.199046
21729	6300	2032	2016-12-18 17:23:55.246368	2016-12-18 17:23:55.246368
21730	7231	2032	2016-12-18 17:23:55.290156	2016-12-18 17:23:55.290156
21731	6675	2032	2016-12-18 17:23:55.33259	2016-12-18 17:23:55.33259
21732	6670	2032	2016-12-18 17:23:55.397887	2016-12-18 17:23:55.397887
21733	6666	2032	2016-12-18 17:23:55.446318	2016-12-18 17:23:55.446318
21734	6652	2032	2016-12-18 17:23:55.482141	2016-12-18 17:23:55.482141
21735	6653	2032	2016-12-18 17:23:55.526743	2016-12-18 17:23:55.526743
21736	6651	2032	2016-12-18 17:23:57.709292	2016-12-18 17:23:57.709292
21737	6650	2032	2016-12-18 17:23:57.75074	2016-12-18 17:23:57.75074
21738	6303	2032	2016-12-18 17:23:57.778874	2016-12-18 17:23:57.778874
21739	7230	2032	2016-12-18 17:23:57.829449	2016-12-18 17:23:57.829449
21740	6304	2032	2016-12-18 17:23:57.871019	2016-12-18 17:23:57.871019
21741	6305	2032	2016-12-18 17:23:57.915536	2016-12-18 17:23:57.915536
21742	6307	2032	2016-12-18 17:23:57.949655	2016-12-18 17:23:57.949655
21743	6847	2032	2016-12-18 17:23:57.983739	2016-12-18 17:23:57.983739
21744	6308	2032	2016-12-18 17:23:58.02424	2016-12-18 17:23:58.02424
21745	6309	2032	2016-12-18 17:23:58.070213	2016-12-18 17:23:58.070213
21746	6311	2032	2016-12-18 17:23:58.11216	2016-12-18 17:23:58.11216
21747	6825	2032	2016-12-18 17:23:58.134996	2016-12-18 17:23:58.134996
21748	6752	2032	2016-12-18 17:23:58.207294	2016-12-18 17:23:58.207294
21749	6639	2032	2016-12-18 17:23:58.243067	2016-12-18 17:23:58.243067
21750	6313	2032	2016-12-18 17:23:58.269897	2016-12-18 17:23:58.269897
21751	6823	2032	2016-12-18 17:23:58.320482	2016-12-18 17:23:58.320482
21752	6810	2032	2016-12-18 17:23:58.356375	2016-12-18 17:23:58.356375
21753	6808	2032	2016-12-18 17:23:58.378304	2016-12-18 17:23:58.378304
21754	6807	2032	2016-12-18 17:23:58.423372	2016-12-18 17:23:58.423372
21755	6809	2032	2016-12-18 17:23:58.485281	2016-12-18 17:23:58.485281
21756	6315	2032	2016-12-18 17:24:00.700743	2016-12-18 17:24:00.700743
21757	6489	2032	2016-12-18 17:24:00.735402	2016-12-18 17:24:00.735402
21758	6574	2032	2016-12-18 17:24:00.773684	2016-12-18 17:24:00.773684
21759	7312	2032	2016-12-18 17:24:01.795553	2016-12-18 17:24:01.795553
21760	6804	2032	2016-12-18 17:24:01.836968	2016-12-18 17:24:01.836968
21761	6316	2032	2016-12-18 17:24:01.898192	2016-12-18 17:24:01.898192
21762	6318	2032	2016-12-18 17:24:01.942919	2016-12-18 17:24:01.942919
21763	6452	2032	2016-12-18 17:24:01.961773	2016-12-18 17:24:01.961773
21764	6323	2032	2016-12-18 17:24:02.003684	2016-12-18 17:24:02.003684
21765	6324	2032	2016-12-18 17:24:02.041242	2016-12-18 17:24:02.041242
21766	6325	2032	2016-12-18 17:24:02.078866	2016-12-18 17:24:02.078866
21767	6326	2032	2016-12-18 17:24:02.126245	2016-12-18 17:24:02.126245
21768	6327	2032	2016-12-18 17:24:02.159048	2016-12-18 17:24:02.159048
21769	6406	2032	2016-12-18 17:24:02.19779	2016-12-18 17:24:02.19779
21770	6408	2032	2016-12-18 17:24:02.241143	2016-12-18 17:24:02.241143
21771	6328	2032	2016-12-18 17:24:02.285628	2016-12-18 17:24:02.285628
21772	6974	2033	2016-12-18 17:24:04.455356	2016-12-18 17:24:04.455356
21773	6895	2033	2016-12-18 17:24:04.503389	2016-12-18 17:24:04.503389
21774	6922	2033	2016-12-18 17:24:04.539908	2016-12-18 17:24:04.539908
21775	6926	2033	2016-12-18 17:24:04.584863	2016-12-18 17:24:04.584863
21776	6925	2033	2016-12-18 17:24:04.625099	2016-12-18 17:24:04.625099
21777	6923	2033	2016-12-18 17:24:04.662044	2016-12-18 17:24:04.662044
21778	6924	2033	2016-12-18 17:24:04.700667	2016-12-18 17:24:04.700667
21779	6933	2033	2016-12-18 17:24:04.7375	2016-12-18 17:24:04.7375
21780	6934	2033	2016-12-18 17:24:04.790158	2016-12-18 17:24:04.790158
21781	6927	2033	2016-12-18 17:24:04.827062	2016-12-18 17:24:04.827062
21782	6878	2033	2016-12-18 17:24:04.868902	2016-12-18 17:24:04.868902
21783	6946	2033	2016-12-18 17:24:04.90697	2016-12-18 17:24:04.90697
21784	6945	2033	2016-12-18 17:24:04.946528	2016-12-18 17:24:04.946528
21785	6883	2033	2016-12-18 17:24:04.996269	2016-12-18 17:24:04.996269
21786	6902	2033	2016-12-18 17:24:05.011456	2016-12-18 17:24:05.011456
21787	7003	2033	2016-12-18 17:24:05.060132	2016-12-18 17:24:05.060132
21788	6967	2033	2016-12-18 17:24:05.094606	2016-12-18 17:24:05.094606
21789	5819	2033	2016-12-18 17:24:05.153345	2016-12-18 17:24:05.153345
21790	6888	2033	2016-12-18 17:24:05.172856	2016-12-18 17:24:05.172856
21791	6887	2033	2016-12-18 17:24:05.21786	2016-12-18 17:24:05.21786
21792	6886	2033	2016-12-18 17:24:07.590923	2016-12-18 17:24:07.590923
21793	6866	2033	2016-12-18 17:24:07.630391	2016-12-18 17:24:07.630391
21794	6867	2033	2016-12-18 17:24:07.678367	2016-12-18 17:24:07.678367
21795	7218	2033	2016-12-18 17:24:07.709478	2016-12-18 17:24:07.709478
21796	7217	2033	2016-12-18 17:24:07.757066	2016-12-18 17:24:07.757066
21797	7215	2033	2016-12-18 17:24:07.786322	2016-12-18 17:24:07.786322
21798	7216	2033	2016-12-18 17:24:07.805358	2016-12-18 17:24:07.805358
21799	5868	2033	2016-12-18 17:24:07.842278	2016-12-18 17:24:07.842278
21800	6897	2033	2016-12-18 17:24:07.881523	2016-12-18 17:24:07.881523
21801	6868	2033	2016-12-18 17:24:07.96076	2016-12-18 17:24:07.96076
21802	6341	2033	2016-12-18 17:24:07.99142	2016-12-18 17:24:07.99142
21803	6896	2033	2016-12-18 17:24:08.012447	2016-12-18 17:24:08.012447
21804	6885	2033	2016-12-18 17:24:08.054159	2016-12-18 17:24:08.054159
21805	6892	2033	2016-12-18 17:24:08.088187	2016-12-18 17:24:08.088187
21806	6875	2033	2016-12-18 17:24:08.125425	2016-12-18 17:24:08.125425
21807	6930	2033	2016-12-18 17:24:08.15528	2016-12-18 17:24:08.15528
21808	5880	2033	2016-12-18 17:24:08.181594	2016-12-18 17:24:08.181594
21809	5903	2033	2016-12-18 17:24:08.219686	2016-12-18 17:24:08.219686
21810	5904	2033	2016-12-18 17:24:08.263048	2016-12-18 17:24:08.263048
21811	5905	2033	2016-12-18 17:24:08.303026	2016-12-18 17:24:08.303026
21812	5906	2033	2016-12-18 17:24:10.636318	2016-12-18 17:24:10.636318
21813	5907	2033	2016-12-18 17:24:10.714526	2016-12-18 17:24:10.714526
21814	5908	2033	2016-12-18 17:24:10.752027	2016-12-18 17:24:10.752027
21815	5909	2033	2016-12-18 17:24:10.785789	2016-12-18 17:24:10.785789
21816	5910	2033	2016-12-18 17:24:10.828932	2016-12-18 17:24:10.828932
21817	6876	2033	2016-12-18 17:24:10.888489	2016-12-18 17:24:10.888489
21818	6986	2033	2016-12-18 17:24:10.927889	2016-12-18 17:24:10.927889
21819	6893	2033	2016-12-18 17:24:10.976225	2016-12-18 17:24:10.976225
21820	6916	2033	2016-12-18 17:24:11.012272	2016-12-18 17:24:11.012272
21821	6890	2033	2016-12-18 17:24:11.05542	2016-12-18 17:24:11.05542
21822	6914	2033	2016-12-18 17:24:11.090356	2016-12-18 17:24:11.090356
21823	6915	2033	2016-12-18 17:24:11.1309	2016-12-18 17:24:11.1309
21824	6917	2033	2016-12-18 17:24:11.180306	2016-12-18 17:24:11.180306
21825	6918	2033	2016-12-18 17:24:11.222176	2016-12-18 17:24:11.222176
21826	6869	2033	2016-12-18 17:24:11.26076	2016-12-18 17:24:11.26076
21827	6889	2033	2016-12-18 17:24:11.298568	2016-12-18 17:24:11.298568
21828	6920	2033	2016-12-18 17:24:11.344397	2016-12-18 17:24:11.344397
21829	6871	2033	2016-12-18 17:24:11.420906	2016-12-18 17:24:11.420906
21830	7211	2033	2016-12-18 17:24:11.469835	2016-12-18 17:24:11.469835
21831	5740	2033	2016-12-18 17:24:11.504314	2016-12-18 17:24:11.504314
21832	5954	2033	2016-12-18 17:24:13.42745	2016-12-18 17:24:13.42745
21833	5955	2033	2016-12-18 17:24:13.460201	2016-12-18 17:24:13.460201
21834	5962	2033	2016-12-18 17:24:13.499086	2016-12-18 17:24:13.499086
21835	5963	2033	2016-12-18 17:24:13.520543	2016-12-18 17:24:13.520543
21836	5964	2033	2016-12-18 17:24:13.576066	2016-12-18 17:24:13.576066
21837	6947	2033	2016-12-18 17:24:13.615521	2016-12-18 17:24:13.615521
21838	6903	2033	2016-12-18 17:24:13.642253	2016-12-18 17:24:13.642253
21839	6904	2033	2016-12-18 17:24:13.678556	2016-12-18 17:24:13.678556
21840	6905	2033	2016-12-18 17:24:13.70603	2016-12-18 17:24:13.70603
21841	6906	2033	2016-12-18 17:24:13.728745	2016-12-18 17:24:13.728745
21842	6908	2033	2016-12-18 17:24:13.768547	2016-12-18 17:24:13.768547
21843	6907	2033	2016-12-18 17:24:13.801484	2016-12-18 17:24:13.801484
21844	7018	2033	2016-12-18 17:24:13.847072	2016-12-18 17:24:13.847072
21845	6959	2033	2016-12-18 17:24:13.892098	2016-12-18 17:24:13.892098
21846	6958	2033	2016-12-18 17:24:13.926711	2016-12-18 17:24:13.926711
21847	6961	2033	2016-12-18 17:24:13.969027	2016-12-18 17:24:13.969027
21848	6960	2033	2016-12-18 17:24:13.997187	2016-12-18 17:24:13.997187
21849	6953	2033	2016-12-18 17:24:14.03892	2016-12-18 17:24:14.03892
21850	6948	2033	2016-12-18 17:24:14.08293	2016-12-18 17:24:14.08293
21851	6951	2033	2016-12-18 17:24:14.118084	2016-12-18 17:24:14.118084
21852	6950	2033	2016-12-18 17:24:16.675018	2016-12-18 17:24:16.675018
21853	6952	2033	2016-12-18 17:24:16.708397	2016-12-18 17:24:16.708397
21854	6949	2033	2016-12-18 17:24:16.727644	2016-12-18 17:24:16.727644
21855	6872	2033	2016-12-18 17:24:16.762975	2016-12-18 17:24:16.762975
21856	6954	2033	2016-12-18 17:24:16.79645	2016-12-18 17:24:16.79645
21857	6955	2033	2016-12-18 17:24:16.838342	2016-12-18 17:24:16.838342
21858	6957	2033	2016-12-18 17:24:16.883437	2016-12-18 17:24:16.883437
21859	7155	2033	2016-12-18 17:24:16.915293	2016-12-18 17:24:16.915293
21860	7156	2033	2016-12-18 17:24:16.963503	2016-12-18 17:24:16.963503
21861	7151	2033	2016-12-18 17:24:16.999934	2016-12-18 17:24:16.999934
21862	6368	2033	2016-12-18 17:24:17.051717	2016-12-18 17:24:17.051717
21863	6369	2033	2016-12-18 17:24:17.094646	2016-12-18 17:24:17.094646
21864	6334	2033	2016-12-18 17:24:17.142932	2016-12-18 17:24:17.142932
21865	6339	2033	2016-12-18 17:24:17.187012	2016-12-18 17:24:17.187012
21866	7208	2033	2016-12-18 17:24:17.22977	2016-12-18 17:24:17.22977
21867	7204	2033	2016-12-18 17:24:17.279398	2016-12-18 17:24:17.279398
21868	7205	2033	2016-12-18 17:24:17.314946	2016-12-18 17:24:17.314946
21869	7206	2033	2016-12-18 17:24:17.356779	2016-12-18 17:24:17.356779
21870	7207	2033	2016-12-18 17:24:17.39709	2016-12-18 17:24:17.39709
21871	6132	2033	2016-12-18 17:24:17.446188	2016-12-18 17:24:17.446188
21872	6133	2033	2016-12-18 17:24:19.365945	2016-12-18 17:24:19.365945
21873	6873	2033	2016-12-18 17:24:19.414602	2016-12-18 17:24:19.414602
21874	6256	2033	2016-12-18 17:24:19.437746	2016-12-18 17:24:19.437746
21875	6343	2033	2016-12-18 17:24:19.471317	2016-12-18 17:24:19.471317
21876	7152	2033	2016-12-18 17:24:19.500221	2016-12-18 17:24:19.500221
21877	7166	2033	2016-12-18 17:24:19.558603	2016-12-18 17:24:19.558603
21878	7154	2033	2016-12-18 17:24:19.590056	2016-12-18 17:24:19.590056
21879	7157	2033	2016-12-18 17:24:19.630801	2016-12-18 17:24:19.630801
21880	7158	2033	2016-12-18 17:24:19.668802	2016-12-18 17:24:19.668802
21881	7159	2033	2016-12-18 17:24:19.710793	2016-12-18 17:24:19.710793
21882	7161	2033	2016-12-18 17:24:19.752065	2016-12-18 17:24:19.752065
21883	7160	2033	2016-12-18 17:24:19.776079	2016-12-18 17:24:19.776079
21884	7186	2033	2016-12-18 17:24:19.815725	2016-12-18 17:24:19.815725
21885	7187	2033	2016-12-18 17:24:19.851066	2016-12-18 17:24:19.851066
21886	7164	2033	2016-12-18 17:24:19.891193	2016-12-18 17:24:19.891193
21887	7163	2033	2016-12-18 17:24:19.945944	2016-12-18 17:24:19.945944
21888	7162	2033	2016-12-18 17:24:19.99903	2016-12-18 17:24:19.99903
21889	6973	2033	2016-12-18 17:24:20.025838	2016-12-18 17:24:20.025838
21890	6661	2033	2016-12-18 17:24:20.059574	2016-12-18 17:24:20.059574
21891	6891	2033	2016-12-18 17:24:20.099298	2016-12-18 17:24:20.099298
\.


--
-- Name: relations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('relations_id_seq', 21891, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: user
--

COPY schema_migrations (version) FROM stdin;
20161215202609
20161216202407
20161216213145
\.


--
-- Name: ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: categories_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: products_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: relations_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY relations
    ADD CONSTRAINT relations_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: index_categories_on_lft; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX index_categories_on_lft ON categories USING btree (lft);


--
-- Name: index_categories_on_parent_id; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX index_categories_on_parent_id ON categories USING btree (parent_id);


--
-- Name: index_categories_on_rgt; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX index_categories_on_rgt ON categories USING btree (rgt);


--
-- Name: index_relations_on_category_id; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX index_relations_on_category_id ON relations USING btree (category_id);


--
-- Name: index_relations_on_product_id; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX index_relations_on_product_id ON relations USING btree (product_id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

