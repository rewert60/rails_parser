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
2179	Sale/Promotion	https://www.tvdirect.tv/sale-promotion	\N	1	2
2182	Vitamins & Minerals	https://www.tvdirect.tv/health/food-supplement/vitamins-minerals	2181	5	6
2181	Food Supplement	https://www.tvdirect.tv/health/food-supplement	2180	4	9
2183	Food & Drink	https://www.tvdirect.tv/health/food-supplement/food-drink	2181	7	8
2184	Sexual Well-Being	https://www.tvdirect.tv/health/sexual-well-being	2180	10	11
2186	Body Massagers	https://www.tvdirect.tv/health/massagers/body-massagers	2185	13	14
2187	Massage Chairs	https://www.tvdirect.tv/health/massagers/massager-chairs	2185	15	16
2185	Massagers	https://www.tvdirect.tv/health/massagers	2180	12	19
2188	Support Cushion	https://www.tvdirect.tv/health/massagers/support-cushion	2185	17	18
2190	Sanitary Hygiene	https://www.tvdirect.tv/health/health-equipment/0	2189	21	22
2191	Mobility Aids	https://www.tvdirect.tv/health/health-equipment/mobility-aids	2189	23	24
2192	Ergonomic Chair	https://www.tvdirect.tv/health/health-equipment/ergonomic-chair	2189	25	26
2189	Health Equipment	https://www.tvdirect.tv/health/health-equipment	2180	20	29
2193	Health shoes	https://www.tvdirect.tv/health/health-equipment/health-shoes	2189	27	28
2180	HEALTH	https://www.tvdirect.tv/health	\N	3	34
2194	Personal Care	https://www.tvdirect.tv/health/personal-care	2180	30	33
2195	ADULT DIAPERS	https://www.tvdirect.tv/health/personal-care/adult-diapers	2194	31	32
2198	Leggings	https://www.tvdirect.tv/fashion-beauty/clothes/leggings	2197	37	38
2199	Lingerie/Underwear	https://www.tvdirect.tv/fashion-beauty/clothes/lingerie-underwear	2197	39	40
2197	Clothes	https://www.tvdirect.tv/fashion-beauty/clothes	2196	36	43
2200	Body Shaper	https://www.tvdirect.tv/fashion-beauty/clothes/body-shaper	2197	41	42
2201	Bags	https://www.tvdirect.tv/fashion-beauty/bags	2196	44	45
2203	Men Watches	https://www.tvdirect.tv/fashion-beauty/watches/men-watches	2202	47	48
2202	Watches	https://www.tvdirect.tv/fashion-beauty/watches	2196	46	51
2204	Women Watches	https://www.tvdirect.tv/fashion-beauty/watches/women-watches	2202	49	50
2206	Ring	https://www.tvdirect.tv/fashion-beauty/jewelry/ring	2205	53	54
2207	Necklace / Bracelet	https://www.tvdirect.tv/fashion-beauty/jewelry/necklace	2205	55	56
2205	Jewelry	https://www.tvdirect.tv/fashion-beauty/jewelry	2196	52	59
2208	Earrings	https://www.tvdirect.tv/fashion-beauty/jewelry/earrings	2205	57	58
2209	Eyewear	https://www.tvdirect.tv/fashion-beauty/eyewear	2196	60	63
2210	Sunglasses	https://www.tvdirect.tv/fashion-beauty/eyewear/sunglasses	2209	61	62
2212	Facial Care	https://www.tvdirect.tv/fashion-beauty/beauty/facial-care	2211	65	66
2213	Hair Care	https://www.tvdirect.tv/fashion-beauty/beauty/hair-care	2211	67	68
2214	Skin Care	https://www.tvdirect.tv/fashion-beauty/beauty/skin-care	2211	69	70
2215	Personal Care	https://www.tvdirect.tv/fashion-beauty/beauty/personal-care	2211	71	72
2216	Cosmetic	https://www.tvdirect.tv/fashion-beauty/beauty/cosmetic	2211	73	74
2217	Slimming Products	https://www.tvdirect.tv/fashion-beauty/beauty/slimming-products	2211	75	76
2218	Skin Supplements	https://www.tvdirect.tv/fashion-beauty/beauty/skin-supplements	2211	77	78
2196	FASHION & BEAUTY	https://www.tvdirect.tv/fashion-beauty	\N	35	82
2211	Beauty	https://www.tvdirect.tv/fashion-beauty/beauty	2196	64	81
2219	Perfume	https://www.tvdirect.tv/fashion-beauty/beauty/perfume	2211	79	80
2222	Treadmills	https://www.tvdirect.tv/fitness-sport/devices/treadmills	2221	85	86
2223	Ellipticals	https://www.tvdirect.tv/fitness-sport/devices/ellipticals	2221	87	88
2224	Bikes	https://www.tvdirect.tv/fitness-sport/devices/bikes	2221	89	90
2225	Cardio	https://www.tvdirect.tv/fitness-sport/devices/cardio	2221	91	92
2226	Body Vibration Machine	https://www.tvdirect.tv/fitness-sport/devices/body-vibration-machine	2221	93	94
2227	Dumbbell	https://www.tvdirect.tv/fitness-sport/devices/dumbbell	2221	95	96
2221	Devices	https://www.tvdirect.tv/fitness-sport/devices	2220	84	99
2228	Gym	https://www.tvdirect.tv/fitness-sport/devices/gym	2221	97	98
2230	Body Training	https://www.tvdirect.tv/fitness-sport/strength-training-equipment/body-training	2229	101	102
2231	Abnominal	https://www.tvdirect.tv/fitness-sport/strength-training-equipment/abnominal	2229	103	104
2232	Arm	https://www.tvdirect.tv/fitness-sport/strength-training-equipment/arm	2229	105	106
2233	Back	https://www.tvdirect.tv/fitness-sport/strength-training-equipment/back	2229	107	108
2229	Strength Training Equipment	https://www.tvdirect.tv/fitness-sport/strength-training-equipment	2220	100	111
2234	Leg	https://www.tvdirect.tv/fitness-sport/strength-training-equipment/leg	2229	109	110
2235	Sport Equipment	https://www.tvdirect.tv/fitness-sport/sport-equipment	2220	112	115
2236	Yoga	https://www.tvdirect.tv/fitness-sport/sport-equipment/yoga	2235	113	114
2237	Clothes	https://www.tvdirect.tv/fitness-sport/clothes	2220	116	119
2238	Body Shaper	https://www.tvdirect.tv/fitness-sport/clothes/body-shaper	2237	117	118
2240	Whey Protein	https://www.tvdirect.tv/fitness-sport/supplement/whey-protein	2239	121	122
2239	Supplement	https://www.tvdirect.tv/fitness-sport/supplement	2220	120	125
2220	FITNESS & SPORT	https://www.tvdirect.tv/fitness-sport	\N	83	128
2304	Car Vacuum Cleaner	https://www.tvdirect.tv/lifestyle/automotive/car-vacuum-cleaner	2303	249	250
2302	LIFESTYLE	https://www.tvdirect.tv/lifestyle	\N	247	276
2241	Weight Loss	https://www.tvdirect.tv/fitness-sport/supplement/weight-loss	2239	123	124
2242	SPORT ACCESSORIES	https://www.tvdirect.tv/fitness-sport/sport-accessories	2220	126	127
2245	Bedlinens	https://www.tvdirect.tv/home-living/bedroom/bedlinens	2244	131	132
2246	Mattress	https://www.tvdirect.tv/home-living/bedroom/mattress	2244	133	134
2244	Bedroom	https://www.tvdirect.tv/home-living/bedroom	2243	130	137
2247	Bedding Accessories	https://www.tvdirect.tv/home-living/bedroom/bedding-accessories	2244	135	136
2249	Frying Pan	https://www.tvdirect.tv/home-living/kitchen/pan	2248	139	140
2250	Pot	https://www.tvdirect.tv/home-living/kitchen/pot	2248	141	142
2251	Cooking Equipment	https://www.tvdirect.tv/home-living/kitchen/cooking-equipment	2248	143	144
2252	Kitchen Storage	https://www.tvdirect.tv/home-living/kitchen/kitchen-storage	2248	145	146
2248	Kitchen	https://www.tvdirect.tv/home-living/kitchen	2243	138	149
2253	Kitchenwares/Utensils	https://www.tvdirect.tv/home-living/kitchen/kitchenwares-utensils	2248	147	148
2255	Table	https://www.tvdirect.tv/home-living/furniture-decor/table	2254	151	152
2256	Chair	https://www.tvdirect.tv/home-living/furniture-decor/chair	2254	153	154
2257	Sofa	https://www.tvdirect.tv/home-living/furniture-decor/sofa	2254	155	156
2258	Working Chair	https://www.tvdirect.tv/home-living/furniture-decor/working-chair	2254	157	158
2259	Cushion	https://www.tvdirect.tv/home-living/furniture-decor/cushion	2254	159	160
2254	Furniture & Décor	https://www.tvdirect.tv/home-living/furniture-decor	2243	150	163
2260	Décor	https://www.tvdirect.tv/home-living/furniture-decor/decor	2254	161	162
2261	Tools & Hardwares	https://www.tvdirect.tv/home-living/tools-hardwares	2243	164	167
2262	Home Improvement	https://www.tvdirect.tv/home-living/tools-hardwares/home-improvement	2261	165	166
2264	Pest Control	https://www.tvdirect.tv/home-living/home-cleaning/pest-control	2263	169	170
2263	Home Cleaning	https://www.tvdirect.tv/home-living/home-cleaning	2243	168	173
2265	Cleaning Tools	https://www.tvdirect.tv/home-living/home-cleaning/cleaning-tools	2263	171	172
2266	Outdoor & Garden	https://www.tvdirect.tv/home-living/gardening	2243	174	175
2243	Home & Living	https://www.tvdirect.tv/home-living	\N	129	180
2267	HOUSEKEEPING & LAUNDRY	https://www.tvdirect.tv/home-living/housekeeping-laundry	2243	176	179
2268	LAUNDRY ACESSORIES	https://www.tvdirect.tv/home-living/housekeeping-laundry/laundry-acessories	2267	177	178
2271	Air Purifier	https://www.tvdirect.tv/electrical/home-appliances/air-purifier	2270	183	184
2272	Fan	https://www.tvdirect.tv/electrical/home-appliances/fan	2270	185	186
2273	Spa	https://www.tvdirect.tv/electrical/home-appliances/spa	2270	187	188
2274	Iron	https://www.tvdirect.tv/electrical/home-appliances/iron	2270	189	190
2275	Vacuum	https://www.tvdirect.tv/electrical/home-appliances/vacuum	2270	191	192
2270	Home Appliances	https://www.tvdirect.tv/electrical/home-appliances	2269	182	195
2276	Water Heater	https://www.tvdirect.tv/electrical/home-appliances/water-heater	2270	193	194
2278	TV	https://www.tvdirect.tv/electrical/home-entertainment/tv	2277	197	198
2279	Music Player	https://www.tvdirect.tv/electrical/home-entertainment/music-player	2277	199	200
2280	Home Threatre	https://www.tvdirect.tv/electrical/home-entertainment/home-threatre	2277	201	202
2277	Home Entertainment	https://www.tvdirect.tv/electrical/home-entertainment	2269	196	205
2281	Speaker	https://www.tvdirect.tv/electrical/home-entertainment/speker	2277	203	204
2283	Stove	https://www.tvdirect.tv/electrical/kitchen-appliances/stove	2282	207	208
2284	Oven/Microwave	https://www.tvdirect.tv/electrical/kitchen-appliances/oven-microwave	2282	209	210
2285	Blender/Juicer	https://www.tvdirect.tv/electrical/kitchen-appliances/blender-juicer	2282	211	212
2286	Coffee Maker	https://www.tvdirect.tv/electrical/kitchen-appliances/coffee-maker	2282	213	214
2287	Sandwich Maker	https://www.tvdirect.tv/electrical/kitchen-appliances/sandwich-maker	2282	215	216
2288	Drink Maker	https://www.tvdirect.tv/electrical/kitchen-appliances/drink-maker	2282	217	218
2289	Toaster	https://www.tvdirect.tv/electrical/kitchen-appliances/toaster	2282	219	220
2290	Kettle	https://www.tvdirect.tv/electrical/kitchen-appliances/kettle	2282	221	222
2291	Electric Frying Pan	https://www.tvdirect.tv/electrical/kitchen-appliances/electric-frying-pan	2282	223	224
2292	Ice Cream Maker	https://www.tvdirect.tv/electrical/kitchen-appliances/ice-cream-maker	2282	225	226
2293	Stew cooker	https://www.tvdirect.tv/electrical/kitchen-appliances/stew-cooker	2282	227	228
2294	Mixer	https://www.tvdirect.tv/electrical/kitchen-appliances/mixer	2282	229	230
2295	Ice Maker	https://www.tvdirect.tv/electrical/kitchen-appliances/ice-maker	2282	231	232
2296	Yogert Maker	https://www.tvdirect.tv/electrical/kitchen-appliances/yogert-maker	2282	233	234
2269	ELECTRICAL	https://www.tvdirect.tv/electrical	\N	181	238
2282	Kitchen Appliances	https://www.tvdirect.tv/electrical/kitchen-appliances	2269	206	237
2297	Popcorn Maker	https://www.tvdirect.tv/electrical/kitchen-appliances/popcorn-maker-2696	2282	235	236
2299	Mobile	https://www.tvdirect.tv/it-gadget/mobile	2298	240	241
2300	Case & Accessories	https://www.tvdirect.tv/it-gadget/case-accessories	2298	242	243
2298	IT & GADGET	https://www.tvdirect.tv/it-gadget	\N	239	246
2301	Gadget	https://www.tvdirect.tv/it-gadget/gadget	2298	244	245
2305	Engine Treatment	https://www.tvdirect.tv/lifestyle/automotive/engine-treatment	2303	251	252
2306	Car Care Equipment	https://www.tvdirect.tv/lifestyle/automotive/car-care-equipment	2303	253	254
2307	Tools & Accessories	https://www.tvdirect.tv/lifestyle/automotive/tools-accessories	2303	255	256
2308	Car Cleaner	https://www.tvdirect.tv/lifestyle/automotive/car-cleaner	2303	257	258
2303	Automotive	https://www.tvdirect.tv/lifestyle/automotive	2302	248	261
2309	Motor Mobility	https://www.tvdirect.tv/lifestyle/automotive/motor-mobility	2303	259	260
2311	Portable Toilet	https://www.tvdirect.tv/lifestyle/travel/portable-toilet	2310	263	264
2312	Travel Accessories	https://www.tvdirect.tv/lifestyle/travel/travel-accessories	2310	265	266
2310	Travel	https://www.tvdirect.tv/lifestyle/travel	2302	262	269
2313	Adventure	https://www.tvdirect.tv/lifestyle/travel/adventure	2310	267	268
2314	Media	https://www.tvdirect.tv/lifestyle/media	2302	270	273
2315	Ebooks	https://www.tvdirect.tv/lifestyle/media/ebooks	2314	271	272
2316	Collectables	https://www.tvdirect.tv/lifestyle/collectables	2302	274	275
2319	Sport & Outdoor Activities	https://www.tvdirect.tv/mom-baby/toys-gear/sport-outdoor-activities	2318	279	280
2318	Toys & Gear	https://www.tvdirect.tv/mom-baby/toys-gear	2317	278	283
2320	Gear	https://www.tvdirect.tv/mom-baby/toys-gear/gear	2318	281	282
2317	MOM & BABY	https://www.tvdirect.tv/mom-baby	\N	277	286
2321	Maternity	https://www.tvdirect.tv/mom-baby/maternity	2317	284	285
2322	Price Less Than 1000 baht	https://www.tvdirect.tv/price-less-than-699-baht	\N	287	288
2323	installment	https://www.tvdirect.tv/installment-74	\N	289	290
\.


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('categories_id_seq', 2323, true);


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: user
--

COPY products (id, name, url, price, sku, created_at, updated_at) FROM stdin;
7351	Body Set เซตดูแลสุขภาพ	https://www.tvdirect.tv/body-set	5990	BodySet 	2016-12-19 19:58:57.417983	2016-12-19 19:58:57.417983
7352	Build Set  เซ็ตบริหารกล้ามเนื้อ	https://www.tvdirect.tv/build-set	2990	BuildSet	2016-12-19 19:58:58.27191	2016-12-19 19:58:58.27191
7353	Burning Set  เซ็ตออกกำลังกายสร้างกล้ามเนื้อ	https://www.tvdirect.tv/burning-set	3990	BurningSet 	2016-12-19 19:58:59.061564	2016-12-19 19:58:59.061564
7354	Healthy Drink Set  เซ็ตทำเครื่องดื่มเพื่อสุขภาพ	https://www.tvdirect.tv/healthy-drink-set	3990	HealthyDrinkSet  	2016-12-19 19:58:59.892282	2016-12-19 19:58:59.892282
7355	Healthy Set เซตตรวจสุขภาพ	https://www.tvdirect.tv/healthy-set	1990	HealthySet	2016-12-19 19:59:02.324735	2016-12-19 19:59:02.324735
7356	ULTRAMAXX NUTRITIONAL EXTRACTOR เครื่องปั่นพลังสูง แถมฟรี Ultramaxx Nutritional Extractor CUPS โถปั่น พร้อม กระเป๋า	https://www.tvdirect.tv/ultramaxx-nutritional-extractor-ultramaxx-nutritional-extractor-extractor-cups	1990	ULTRAMAXX1	2016-12-19 19:59:03.786561	2016-12-19 19:59:03.786561
7357	ROCK GYM COMPACT เครื่องบริหารหน้าท้อง ขนาดพกพา	https://www.tvdirect.tv/rock-gym-compact	2990	0121700601653	2016-12-19 19:59:04.56512	2016-12-19 19:59:04.56512
7358	VELFORM HAIR 2 ผลิตภัณฑ์ดูแลเส้นผม แพ็คคู่	https://www.tvdirect.tv/velform-hair-2-set-2	1990	0120700601267	2016-12-19 19:59:05.330678	2016-12-19 19:59:05.330678
7359	Magic Cane ไม้เท้าส่องสว่าง	https://www.tvdirect.tv/magic-cane	990	0122300601593	2016-12-19 19:59:06.139133	2016-12-19 19:59:06.139133
7360	Genie Bra All color 3 set 	https://www.tvdirect.tv/genie-bra-all-color-3-set-2490	2490	GenieBraAllcolor3set2490	2016-12-19 19:59:07.003307	2016-12-19 19:59:07.003307
7361	Rock Gym แถมฟรี  HEART RATE WATCH นาฬิกาวัดอัตราการเต้นหัวใจ 	https://www.tvdirect.tv/rock-gym	3990	RockGymFreeHeartRateOld	2016-12-19 19:59:07.838938	2016-12-19 19:59:07.838938
7362	AS วิทยุธรรมะ เครื่องเล่นเพลงแบบพกพา รุ่น AS-F5	https://www.tvdirect.tv/as-f5	2490	0111200301399	2016-12-19 19:59:08.603172	2016-12-19 19:59:08.603172
7363	AS ตู้เพลงแม่ไม้เพลงไทย รุ่น S-1	https://www.tvdirect.tv/s-1	1990	0111200301412	2016-12-19 19:59:09.392629	2016-12-19 19:59:09.392629
7364	AS ลูกทุ่งฮิต 1,000 ล้าน เครื่องเล่นเพลงแบบพกพา รุ่น AS-F1	https://www.tvdirect.tv/1-000-as-f1-1300-2643	1690	0111200301463	2016-12-19 19:59:10.126041	2016-12-19 19:59:10.126041
7365	Welness Smart Chek เครื่องตรวจวัดน้ำตาลกลูโคสในเลือด	https://www.tvdirect.tv/welness-smart-check	600	0111900300104	2016-12-19 19:59:10.97395	2016-12-19 19:59:10.97395
7366	Pest Free Value Pack เครื่องไล่หนูและแมลงสาบ ซื้อ 1 แถม 1	https://www.tvdirect.tv/pest-free-buy-1-get-1	3190	0120800300114	2016-12-19 19:59:11.804371	2016-12-19 19:59:11.804371
7367	Genie Bra All color 4 set 	https://www.tvdirect.tv/genie-bra-all-color-4-set	2990	Geniebra4set	2016-12-19 19:59:12.772499	2016-12-19 19:59:12.772499
7368	FLYMOP SPIN MOP AIRSHIP 1 ชุดถังปั่นไม้ม็อบสแตนเลส รุ่น AIRSHIP 1 สีแดง	https://www.tvdirect.tv/flymop-spin-mop-airship-1-airship-1	1290	0122300601777	2016-12-19 19:59:13.534487	2016-12-19 19:59:13.534487
7369	Fairtex ADT แถมฟรี Fatis Firming Gel 2 กล่อง	https://www.tvdirect.tv/fairtex-adt-fatis-firming-gel-2	19900	FairtexADT	2016-12-19 19:59:14.364874	2016-12-19 19:59:14.364874
7370	Genie Hour Glass แถม Briefs 	https://www.tvdirect.tv/genie-hour-glass-briefs	1500	GenieHourGlassfreeBriefs	2016-12-19 19:59:15.230353	2016-12-19 19:59:15.230353
7371	Recumbent Bike จักรยานนั่งปั่น	https://www.tvdirect.tv/recumbent-bike	8900	0121700601196	2016-12-19 19:59:16.023508	2016-12-19 19:59:16.023508
7372	Genie Hour Glass Free Fatis Gel	https://www.tvdirect.tv/genie-hour-glass-belt	1490	GenieHourGlass	2016-12-19 19:59:16.902566	2016-12-19 19:59:16.902566
7373	COPPERCHEF กระทะเคลือบผงเซรามิก เซ็ท 5 ชิ้น	https://www.tvdirect.tv/copper-chef-set-of-5-pcs-5	1990	0122400601514	2016-12-19 19:59:17.64116	2016-12-19 19:59:17.64116
7374	WELNESS MASSAGE CHAIR YH-3000เก้าอี้นวด รุ่น YH-3000 แถมฟรี  SUMSUNG LED 32'ทีวี LED	https://www.tvdirect.tv/welness-massage-chair-yh-3000-yh-3000	29990	WelnessSumsung	2016-12-19 19:59:18.475875	2016-12-19 19:59:18.475875
7375	Basket Doi Tung Model Th007 กระเช้าของขวัญดอยตุง Size S	https://www.tvdirect.tv/basket-doi-tung-model-th007-size-s	1190	0112100300604	2016-12-19 19:59:20.25533	2016-12-19 19:59:20.25533
7376	Basket Doi Tung Model Th008 กระเช้าของขวัญดอยตุง Size M	https://www.tvdirect.tv/basket-doi-tung-model-th008-size-m	1350	0112100300611	2016-12-19 19:59:20.974584	2016-12-19 19:59:20.974584
7377	Basket Doi Tung Model Th027 กระเช้าของขวัญดอยตุง Size L	https://www.tvdirect.tv/basket-doi-tung-model-th027-size-l	1990	0112100300628	2016-12-19 19:59:21.788758	2016-12-19 19:59:21.788758
7378	Welness Spiral ผลิตภัณฑ์เสริมอาหาร 100 เม็ด	https://www.tvdirect.tv/welness-spiral-100	490	0111800302857	2016-12-19 19:59:24.278042	2016-12-19 19:59:24.278042
7379	Welness Spiral ผลิตภัณฑ์เสริมอาหาร 300 เม็ด	https://www.tvdirect.tv/welness-spiral-301	999	0111800302864	2016-12-19 19:59:25.017296	2016-12-19 19:59:25.017296
7380	VForm ผลิตภัณฑ์เสริมอาหาร ขนาด 60 แคปซูล	https://www.tvdirect.tv/vform-60	1290	0111800303052	2016-12-19 19:59:26.043421	2016-12-19 19:59:26.043421
7381	BREO น้ำมันรำข้าวกล้อง บรรจุ 60 แคปซูล	https://www.tvdirect.tv/breo-60	890	0111800303076	2016-12-19 19:59:26.904874	2016-12-19 19:59:26.904874
7382	BREO Premium Virgin oil for Cooking ขนาด 250 มล.	https://www.tvdirect.tv/breo-premium-virgin-oil-for-cooking-250	590	0111800303083	2016-12-19 19:59:27.670647	2016-12-19 19:59:27.670647
7383	ควอลิเทสขนาด 60 แคปซูล/ขวด จำนวน 2 ขวดแถม 1 ขวด พิเศษแถมอีก 1 ขวด(30 แคปซูล)	https://www.tvdirect.tv/60-2-1-1-30	6700	0111800201877	2016-12-19 19:59:29.574579	2016-12-19 19:59:29.574579
7384	Hi-Balanz Beta Glucan IMU-C BG-30 30 แคปซูล	https://www.tvdirect.tv/hi-balanz-beta-glucan-imu-c-bg-30-30	1490	0111800202423	2016-12-19 19:59:30.338117	2016-12-19 19:59:30.338117
7385	Hi-Balanz Lycopene LC-30 30 แคปซูล Pack 3	https://www.tvdirect.tv/hi-balanz-lycopene-lc-30-30-pack-3	1290	0111800202461	2016-12-19 19:59:31.088921	2016-12-19 19:59:31.088921
7386	Hi-Balanz Reishi Extract RE-30 30 แคปซูล Pack 3	https://www.tvdirect.tv/hi-balanz-reishi-extract-re-30-30-pack-3	990	0111800202478	2016-12-19 19:59:31.849809	2016-12-19 19:59:31.849809
7387	Hi-Balanz Isolated Soy Protein IS-30 30 เม็ด Pack 3	https://www.tvdirect.tv/hi-balanz-isolated-soy-protein-is-30-30-pack-3	1890	0111800202485	2016-12-19 19:59:32.647481	2016-12-19 19:59:32.647481
7388	Hi-Balanz Grape Seed Extract C Plus GS-30 30 แคปซูล Pack 3	https://www.tvdirect.tv/hi-balanz-grape-seed-extract-c-plus-gs-30-30-pack-3	1290	0111800202492	2016-12-19 19:59:33.516368	2016-12-19 19:59:33.516368
7389	Hi-Balanz BRIB 1 BR-30 30 แคปซูล Pack 3	https://www.tvdirect.tv/hi-balanz-brib-1-br-30-30-pack-3	1490	0111800202508	2016-12-19 19:59:34.279453	2016-12-19 19:59:34.279453
7390	BREO ชุดของขวัญ Be Happy เป็นสุขล้น	https://www.tvdirect.tv/breo-be-happy	2500	0111800303144	2016-12-19 19:59:36.282108	2016-12-19 19:59:36.282108
7391	Donut Is Oil โดนัทอีสออยล์ 30 แคปซูล	https://www.tvdirect.tv/donut-is-oil-30	350	0111800202607	2016-12-19 19:59:37.047512	2016-12-19 19:59:37.047512
7392	Donut Is Oil โดนัทอีสออยล์ 30 แคปซูล 3 pack	https://www.tvdirect.tv/donut-is-oil-30-3-pack	1000	0111800202614	2016-12-19 19:59:37.839345	2016-12-19 19:59:37.839345
7393	BREO น้ำมันรำข้าวกล้อง 60 CAP 4 ขวด แถมฟรี  BREO กล่องผ้าฝ้าย	https://www.tvdirect.tv/breo-rice-bran-oil-pack-4-free-breo-cotton-box-pack-4	1980	BreoRiceBranOil	2016-12-19 19:59:38.63479	2016-12-19 19:59:38.63479
7394	TRBO ALMEGA FISH OIL PLUS น้ำมันรำข้าวและน้ำมันปลา	https://www.tvdirect.tv/trbo-almega-fish-oil-plus	1190	0111800202683	2016-12-19 19:59:41.363821	2016-12-19 19:59:41.363821
7395	TRBO RICE BRAN น้ำมันรำข้าว แบบขวด 60 แคปซูล	https://www.tvdirect.tv/trbo-rice-bran-60-caps	490	0111800202690	2016-12-19 19:59:42.074782	2016-12-19 19:59:42.074782
7396	TRBO RICE BRAN น้ำมันรำข้าวแบบพกพา 12 Packs	https://www.tvdirect.tv/trbo-rice-bran-12-packs	1700	0111800202706	2016-12-19 19:59:42.767346	2016-12-19 19:59:42.767346
7397	NEOCELL SUPER COLLAGEN Cคอลลาเจนผสม วิตามินซี	https://www.tvdirect.tv/neocell-super-collagen-c	950	0110700209754	2016-12-19 19:59:44.609613	2016-12-19 19:59:44.609613
7398	Welness Gold Capsule ผลิตภัณฑ์เสริมอาหาร 30 แคปซูล	https://www.tvdirect.tv/welness-gold-capsule-30	990	0111800302819	2016-12-19 19:59:47.451021	2016-12-19 19:59:47.451021
7399	Welness Fish Oil Concentrate เวลเนส ฟิชออย คอนเซ็นเทรด บรรจุ 60 แคปซูล	https://www.tvdirect.tv/welness-fish-oil-concentrate-60-1-1	850	0111504500054	2016-12-19 19:59:49.069355	2016-12-19 19:59:49.069355
7400	Welness Rice Bran Oil ผลิตภัณฑ์เสริมอาหาร 60 แคปซูล	https://www.tvdirect.tv/welness-rice-bran-oil-60	450	0111200301023	2016-12-19 19:59:50.833942	2016-12-19 19:59:50.833942
7401	WELNESS FISH OIL CONCENTRATE เวลเนส ฟิชออย คอนเซ็นเทรด บรรจุ 60 แคปซูล ซื้อ 2 แถม 1	https://www.tvdirect.tv/welness-fish-oil-concentrate-60-3	0	WELNESSFISHOILCONCENTRATE	2016-12-19 19:59:52.963158	2016-12-19 19:59:52.963158
7402	FATIS Dietary Supplement Kio-in ผลิตภัณฑ์เสริมอาหาร ฟาทีส ไคโอ	https://www.tvdirect.tv/fatis-dietary-supplement-kio-in	1290	0111800303175	2016-12-19 19:59:54.706278	2016-12-19 19:59:54.706278
7403	Fatis Coffee ฟาทีส คอฟฟี่ กาแฟปรุงสำเร็จรูปชนิดผง	https://www.tvdirect.tv/fatis-coffee	240	0110304500011	2016-12-19 19:59:57.410894	2016-12-19 19:59:57.410894
7404	น้ำมังคุดแซนสยาม (XanSiam) 12 ขวด	https://www.tvdirect.tv/xan-siam-mangosteen-juice-12-units	3900	0112900200142	2016-12-19 19:59:58.383696	2016-12-19 19:59:58.383696
7405	Hi-Balanz KDTX Plus KD-05 5 ซอง	https://www.tvdirect.tv/hi-balanz-kdtx-plus-kd-05-5	390	0111800202355	2016-12-19 20:00:00.296603	2016-12-19 20:00:00.296603
7406	Hi-Balanz Vivid X-TRA Plus L-Carnitine VX-60 60 แคปซูล ฟรี 30 แคปซูล	https://www.tvdirect.tv/hi-balanz-vivid-x-tra-plus-l-carnitine-vx-60-60-30	1290	0111800202362	2016-12-19 20:00:01.114065	2016-12-19 20:00:01.114065
7407	Hi-Balanz KDTX Plus KD-10 10 ซอง Pack 3	https://www.tvdirect.tv/hi-balanz-kdtx-plus-kd-10-10-pack-3	1490	0111800202447	2016-12-19 20:00:05.300061	2016-12-19 20:00:05.300061
7408	Hi-Balanz KDTX Plus KD-05 5 ซอง Pack 3	https://www.tvdirect.tv/hi-balanz-kdtx-plus-kd-05-5-pack-3	890	0111800202454	2016-12-19 20:00:07.864196	2016-12-19 20:00:07.864196
7409	BREO เครื่องดื่มผงข้าวกล้องสำเร็จรูปสูตร 1	https://www.tvdirect.tv/breo-1	490	0111800303120	2016-12-19 20:00:08.87102	2016-12-19 20:00:08.87102
7410	BREO เครื่องดื่มข้าวกล้องผงข้าวกล้องสูตร 2	https://www.tvdirect.tv/breo-2	490	0111800303137	2016-12-19 20:00:09.843855	2016-12-19 20:00:09.843855
7411	Donut Dietary โดนัทไดอะแทลลี่ 30+10 แคปซูล	https://www.tvdirect.tv/donut-dierary-30-10	475	0111800202515	2016-12-19 20:00:14.637857	2016-12-19 20:00:14.637857
7412	Donut Dietary โดนัทไดอะแทลลี่ 30+10 แคปซูล 2 Pack 	https://www.tvdirect.tv/donut-dietary-2-pack-30-10	900	0111800202522	2016-12-19 20:00:17.003023	2016-12-19 20:00:17.003023
7413	Donut Dietary โดนัทไดอะแทลลี่ 30+10 แคปซูล 3 Pack 	https://www.tvdirect.tv/donut-dietary-3-pack-30-10-3	1300	0111800202539	2016-12-19 20:00:19.210737	2016-12-19 20:00:19.210737
7414	Body Shape JERUSALEM ARTICHOKE TEA ชาแก่นตะวันผสมรากชะเอม	https://www.tvdirect.tv/bs-jerusalem-artichoke-tea	290	0111800202737	2016-12-19 20:00:21.296167	2016-12-19 20:00:21.296167
7415	Body Shape CHIA SEED เมล็ดเชีย 320 g.	https://www.tvdirect.tv/bs-chia-seed	320	0111800202744	2016-12-19 20:00:23.046392	2016-12-19 20:00:23.046392
7416	Body Shape GE HERB เครื่องดื่มสมุนไพรผสมคอลลาเจน	https://www.tvdirect.tv/bs-ge-herb	690	0111800202751	2016-12-19 20:00:25.024724	2016-12-19 20:00:25.024724
7417	Body Shape HONTE อาหารเสริมสกัดจากแก่นตะวัน	https://www.tvdirect.tv/bs-honte	480	0111800202768	2016-12-19 20:00:26.856195	2016-12-19 20:00:26.856195
7418	Body Shape ZON BEE ผลิตภัณฑ์เสริมอาหารไคโตซาน	https://www.tvdirect.tv/bs-zon-bee	1390	0111800202775	2016-12-19 20:00:28.939916	2016-12-19 20:00:28.939916
7419	Body Shape COFFEE + L-CARNITINE กาแฟคอลลาเจนแอล-คาร์นิทีน	https://www.tvdirect.tv/bs-coffee-l-carnitine	110	0111800202782	2016-12-19 20:00:30.71729	2016-12-19 20:00:30.71729
7420	Body Shape COFFEE M กาแฟโปรตีน	https://www.tvdirect.tv/bs-coffee-m	130	0111800202799	2016-12-19 20:00:32.531918	2016-12-19 20:00:32.531918
7421	Body Shape L-CARNITINE 500 MG อาหารเสริมแอล-คาร์นิทีน	https://www.tvdirect.tv/bs-l-carnitine-500-mg	450	0111800202805	2016-12-19 20:00:34.698417	2016-12-19 20:00:34.698417
7422	WELNESS VURNURAX PLUS GS CAPSULES 10 CAPS ผลิตภัณฑ์เสริมอาหาร	https://www.tvdirect.tv/welness-vurnurax-plus-gs-capsules-10-caps	1990	0111800303168	2016-12-19 20:00:36.826328	2016-12-19 20:00:36.826328
7423	Fatis Coffee 9 กล่อง	https://www.tvdirect.tv/fatis-coffee-9	1440	FatisCoffee9	2016-12-19 20:00:37.733012	2016-12-19 20:00:37.733012
7424	Fatis Coffee 3 กล่อง	https://www.tvdirect.tv/fatis-coffee-3	480	FatisCoffee3	2016-12-19 20:00:40.576963	2016-12-19 20:00:40.576963
7425	MANA GYMNEMA TEA ชาจากผักเชียงดา	https://www.tvdirect.tv/mana-gymnema-tea	790	0111800203482	2016-12-19 20:00:42.542482	2016-12-19 20:00:42.542482
7426	MANA GYMNEMA INODORUM แคปซูลจากผักเชียงดา	https://www.tvdirect.tv/mana-gymnema-inodorum	790	0111800203475	2016-12-19 20:00:44.653619	2016-12-19 20:00:44.653619
7427	Nathary Chia Seed 165g+50g เมล็ดเชีย165gเพิ่มปริมาณ50g	https://www.tvdirect.tv/nathary-chia-seed-165g-50g-165g-50g	450	0111800203536	2016-12-19 20:00:46.576879	2016-12-19 20:00:46.576879
7428	Nathary Chia Seed 450g+100g เมล็ดเชีย 450gเพิ่มปริมาณ100g	https://www.tvdirect.tv/nathary-chia-seed-450g-100g-450g-100g	650	0111800203543	2016-12-19 20:00:48.714184	2016-12-19 20:00:48.714184
7429	FATIS MATCHA GREEN TEA ฟาทีสชาเขียว มัจฉะ กรีนที	https://www.tvdirect.tv/fatis-matcha-green-tea	590	0111800303106	2016-12-19 20:00:50.346341	2016-12-19 20:00:50.346341
7430	MADI KAMBUCHA ชาหมัก	https://www.tvdirect.tv/madi-kambucha	1450	0112900200166	2016-12-19 20:00:52.253297	2016-12-19 20:00:52.253297
7431	Fatis Matcha  2 กล่อง	https://www.tvdirect.tv/fatis-matcha-2	840	FatisMatcha2	2016-12-19 20:00:53.032918	2016-12-19 20:00:53.032918
7432	Fatis Matcha  3 กล่อง แถมฟรี  FATIS COFFEE	https://www.tvdirect.tv/fatis-matcha-3	1350	FatisMatcha3	2016-12-19 20:00:53.821088	2016-12-19 20:00:53.821088
7433	Fatis Matcha  6กล่อง แถมฟรี 2 กล่อง	https://www.tvdirect.tv/fatis-matcha-6-2	3290	FatisMatcha6	2016-12-19 20:00:54.652386	2016-12-19 20:00:54.652386
7434	Neo 8 Massage Serum for Men	https://www.tvdirect.tv/neo-8-massage-serum-for-men	1580	0110700208290	2016-12-19 20:01:00.350462	2016-12-19 20:01:00.350462
7435	GENESIS UP UP UP 10 CAPSULES อาหารเสริมสมรรถภาพ	https://www.tvdirect.tv/genesis-up-up-up-10-capsules	990	0111800202832	2016-12-19 20:01:02.443034	2016-12-19 20:01:02.443034
7436	GENESIS MEN SERUM 30ML. เซรั่มเฉพาะจุด	https://www.tvdirect.tv/genesis-men-serum-30ml	990	0110700209318	2016-12-19 20:01:04.334643	2016-12-19 20:01:04.334643
7437	GENESIS MEN SERUM 50ML. เซรั่มเฉพาะจุด	https://www.tvdirect.tv/genesis-men-serum-50ml	1590	0110700209301	2016-12-19 20:01:06.130591	2016-12-19 20:01:06.130591
7438	NURU GEL GOLD 250ML. เจลหล่อลื่นโกลด์	https://www.tvdirect.tv/nuru-gel-gold-250ml	260	0110700209297	2016-12-19 20:01:07.849643	2016-12-19 20:01:07.849643
7439	NURU GEL HARD 250ML. เจลหล่อลื่นระดับสูง	https://www.tvdirect.tv/nuru-gel-hard-250ml	200	0110700209280	2016-12-19 20:01:11.560349	2016-12-19 20:01:11.560349
7440	NURU GEL MEDIUM 250ML. เจลหล่อลื่นระดับกลาง	https://www.tvdirect.tv/nuru-gel-medium-250ml	200	0110700209273	2016-12-19 20:01:13.220049	2016-12-19 20:01:13.220049
7441	NURU GEL STANDARD 250ML. เจลหล่อลื่น	https://www.tvdirect.tv/nuru-gel-standard-250ml	200	0110700209266	2016-12-19 20:01:14.836324	2016-12-19 20:01:14.836324
7442	COOL GEL NECK PILLOW SLTMGC003หมอนเจลเย็นรองคอ	https://www.tvdirect.tv/cool-gel-neck-pillow-sltmgc003	590	0123300500015	2016-12-19 20:01:19.578816	2016-12-19 20:01:19.578816
7443	Welness Beautifying Hip Cushion เบาะกระชับสะโพก	https://www.tvdirect.tv/welness-beautifying-hip-cushion	1990	0121200300209	2016-12-19 20:01:21.212198	2016-12-19 20:01:21.212198
7444	Squatty Potty ที่เหยียบช่วยระบาย	https://www.tvdirect.tv/squatty-potty	690	0122300601487	2016-12-19 20:01:24.8232	2016-12-19 20:01:24.8232
7445	BackJoy Care Comfort Tech แผ่นรองนั่ง วีลแชร์	https://www.tvdirect.tv/backjoy-care-comfort-tech	3990	0121900200102	2016-12-19 20:01:27.79884	2016-12-19 20:01:27.79884
7446	HOSPRO WHEELCHAIR รถเข็น รุ่น H-WC108G-12	https://www.tvdirect.tv/hospro-wheelchair-h-wc108g-12	7400	0111900202965	2016-12-19 20:01:29.313462	2016-12-19 20:01:29.313462
7447	HOSPRO WHEELCHAIR รถเข็น รุ่น H-WC607	https://www.tvdirect.tv/hospro-wheelchair-h-wc607	4200	0111900202972	2016-12-19 20:01:30.924523	2016-12-19 20:01:30.924523
7448	Magic Cane ไม้เท้าส่องสว่าง 2 ชิ้น	https://www.tvdirect.tv/magic-cane-2-50	1485	MagicCane	2016-12-19 20:01:31.79986	2016-12-19 20:01:31.79986
7449	 Gini Lumber chair แถมฟรี 3 style Bag	https://www.tvdirect.tv/gini-lumber-chair-3-style-bag	4990	GiniLumberchair	2016-12-19 20:01:34.567388	2016-12-19 20:01:34.567388
7450	GINI LUMBER CHAIR  2 free 1	https://www.tvdirect.tv/gini-chair-2-free-1	9980	GiniChair	2016-12-19 20:01:35.447269	2016-12-19 20:01:35.447269
7451	Hara Chair Doctor 2 ฮาร่าแชร์ รุ่น ด็อกเตอร์ 2 สีดำ	https://www.tvdirect.tv/jsu-hara-chair-docotr-2-black	19800	0110900201053	2016-12-19 20:01:37.157549	2016-12-19 20:01:37.157549
7452	Hara Chair Neo Black ฮาร่าแชร์ รุ่นนีโอ สีดำ	https://www.tvdirect.tv/hara-chair-neo-black	9800	0112900400016	2016-12-19 20:01:38.787071	2016-12-19 20:01:38.787071
7453	Hara Chair Neo Grey ฮาร่าแชร์ รุ่นนีโอ สีเทา	https://www.tvdirect.tv/hara-chair-neo-grey	9800	0110900200926	2016-12-19 20:01:40.418339	2016-12-19 20:01:40.418339
7454	Hara Chair Neo Orange ฮาร่าแชร์ รุ่นนีโอ สีส้ม	https://www.tvdirect.tv/hara-chair-neo-orange	9800	0110900200919	2016-12-19 20:01:41.956887	2016-12-19 20:01:41.956887
7455	Hara Chair Nietzshce 2 ฮาร่าแชร์ รุ่น นิชเช่ 2 สีส้ม	https://www.tvdirect.tv/jsu-hara-chair-nietzsche-2-2-orange	19800	0110900201046	2016-12-19 20:01:43.647014	2016-12-19 20:01:43.647014
7456	Hara Chair Nietzshce 2 ฮาร่าแชร์ รุ่น นิชเช่ 2 สีเทา	https://www.tvdirect.tv/jsu-hara-chair-nietzsche-2-2-grey	19800	0110900201039	2016-12-19 20:01:45.245827	2016-12-19 20:01:45.245827
7457	HARA CHAIR รุ่น ZENON 2 สีส้ม	https://www.tvdirect.tv/hara-chair-zenon-2-orange	18800	0110900201220	2016-12-19 20:01:46.722912	2016-12-19 20:01:46.722912
7458	HARA CHAIR รุ่น ZENON 2 สีเทา	https://www.tvdirect.tv/hara-chair-zenon-2-grey	18800	0110900201213	2016-12-19 20:01:48.466138	2016-12-19 20:01:48.466138
7459	U-RO DECOR Chair Hannover  เก้าอี้สำนักงาน 	https://www.tvdirect.tv/u-ro-decor-chair-hannover	11000	UROChairHannover	2016-12-19 20:01:49.331037	2016-12-19 20:01:49.331037
7460	U-RO DECOR Chair Moon  เก้าอี้สำนักงาน 	https://www.tvdirect.tv/u-ro-decor-chair-moon	1990	UROChairMoon	2016-12-19 20:01:50.175468	2016-12-19 20:01:50.175468
7461	U-RO DECOR Chair Moon-kเก้าอี้สำนักงาน 	https://www.tvdirect.tv/u-ro-decor-chair-moon-k	2290	UROChairMoonk	2016-12-19 20:01:51.044216	2016-12-19 20:01:51.044216
7462	U-RO DECOR Chair Parma-lv Brown เก้าอี้สำนักงาน สีน้ำตาล	https://www.tvdirect.tv/u-ro-decor-chair-parma-lv-brown	1690	0110900202289	2016-12-19 20:01:52.56857	2016-12-19 20:01:52.56857
7463	Genki Health Sandal รองเท้าเพื่อสุขภาพ (Size L:27)	https://www.tvdirect.tv/genki-health-sandal-size-l-27-1-1	390	0111200301245	2016-12-19 20:01:56.684706	2016-12-19 20:01:56.684706
7464	Smart Chek Test Strip แผ่นตรวจวัดระดับน้ำตาลในเลือด (25 ชุด)	https://www.tvdirect.tv/smart-chek-test-strip-25	600	0111900300098	2016-12-19 20:01:58.313033	2016-12-19 20:01:58.313033
7465	Portable Toilet สุขาเคลื่อนที่	https://www.tvdirect.tv/portable-toilet	2490	0122300600466	2016-12-19 20:02:00.082495	2016-12-19 20:02:00.082495
7466	SABAI Shoulder ถุงอบสมุนไพรไทย - ประคบบ่า,ไหล่	https://www.tvdirect.tv/sabai-shoulder	890	0111900202200	2016-12-19 20:02:02.03491	2016-12-19 20:02:02.03491
7467	SABAI Knee ถุงอบสมุนไพรไทย - ประคบเข่า	https://www.tvdirect.tv/sabai-knee	690	0111900202231	2016-12-19 20:02:03.874166	2016-12-19 20:02:03.874166
7468	SABAI Neck ถุงอบสมุนไพรไทย - ประคบคอ	https://www.tvdirect.tv/sabai-neck	490	0111900202224	2016-12-19 20:02:05.793033	2016-12-19 20:02:05.793033
7469	SABAI RELAX - ถุงสมุนไพรเย็นประคบรอบดวงตา	https://www.tvdirect.tv/sabai-relax	380	0111900202248	2016-12-19 20:02:07.529212	2016-12-19 20:02:07.529212
7470	เครื่องวัดความดันโลหิตดิจิตอลที่ต้นแขน รุ่น HK-805 (พูดได้) ฟรี Adapter	https://www.tvdirect.tv/hk-805-adapter	1990	0111900202255	2016-12-19 20:02:09.277647	2016-12-19 20:02:09.277647
7471	MAGIC BACK SUPPORTแผ่นรองหลังเพื่อสุขภาพ 2 ชิ้น	https://www.tvdirect.tv/magic-back-support-2	1290	0111900202279	2016-12-19 20:02:13.752465	2016-12-19 20:02:13.752465
7472	BackJoy Posture Green แผ่นรองนั่ง สีเขียว ฟรี luggage tag คละสี	https://www.tvdirect.tv/backjoy-posture-green-luggage-tag	1990	0121900200012	2016-12-19 20:02:15.378451	2016-12-19 20:02:15.378451
7473	BackJoy Posture Purple แผ่นรองนั่ง สีม่วง ฟรี luggage tag คละสี	https://www.tvdirect.tv/backjoy-posture-purple-luggage-tag	1990	0121900200029	2016-12-19 20:02:17.084927	2016-12-19 20:02:17.084927
7474	BackJoy Posture Surf แผ่นรองนั่ง สีเซิร์ฟ ฟรี luggage tag คละสี	https://www.tvdirect.tv/backjoy-posture-surf-luggage-tag	1990	0121900200036	2016-12-19 20:02:18.605929	2016-12-19 20:02:18.605929
7475	BackJoy Posture Black แผ่นรองนั่ง สีดำ ฟรี luggage tag คละสี	https://www.tvdirect.tv/backjoy-posture-black-luggage-tag	1990	0121900200043	2016-12-19 20:02:20.238689	2016-12-19 20:02:20.238689
7476	BackJoy Posture Pink แผ่นรองนั่ง สีชมพู ฟรี luggage tag คละสี	https://www.tvdirect.tv/backjoy-posture-pink-luggage-tag	1990	0121900200050	2016-12-19 20:02:21.978909	2016-12-19 20:02:21.978909
7477	BackJoy Posture Mango แผ่นรองนั่ง สีมะม่วง ฟรี luggage tag คละสี	https://www.tvdirect.tv/backjoy-posture-mango-luggage-tag	1990	0121900200067	2016-12-19 20:02:23.577243	2016-12-19 20:02:23.577243
7478	BackJoy Posture Blue แผ่นรองนั่ง สีฟ้า ฟรี luggage tag คละสี	https://www.tvdirect.tv/backjoy-posture-blue-luggage-tag	1990	0121900200074	2016-12-19 20:02:25.219971	2016-12-19 20:02:25.219971
7479	BackJoy Roller Ball ลูกบอลนวดผ่อนคลาย	https://www.tvdirect.tv/backjoy-roller-ball	990	0121900200081	2016-12-19 20:02:26.865842	2016-12-19 20:02:26.865842
7480	BackJoy Posture Band สายรัดหลัง	https://www.tvdirect.tv/backjoy-posture-band	990	0121900200098	2016-12-19 20:02:28.591736	2016-12-19 20:02:28.591736
7481	BackJoy SleepSound หมอนสุขภาพ แบบเฟิร์ม	https://www.tvdirect.tv/backjoy-sleepsound	5990	0120800200025	2016-12-19 20:02:30.329866	2016-12-19 20:02:30.329866
7482	BackJoy SleepSound Kid หมอนสุขภาพ สำหรับเด็ก	https://www.tvdirect.tv/backjoy-sleepsound-kid	2590	0120800200032	2016-12-19 20:02:32.08228	2016-12-19 20:02:32.08228
7483	BackJoy SleepSound In-Flight Blue หมอนรองคอ สีฟ้า	https://www.tvdirect.tv/backjoy-sleepsound-in-flight-blue	1890	0120800200049	2016-12-19 20:02:33.821501	2016-12-19 20:02:33.821501
7484	BackJoy SleepSound In-Flight Red หมอนรองคอ สีแดง	https://www.tvdirect.tv/backjoy-sleepsound-in-flight-red	1890	0120800200056	2016-12-19 20:02:35.638797	2016-12-19 20:02:35.638797
7485	BEURER FINGERTIP PULSE OXIMETER เครื่องวัดออกซิเจนปลายนิ้ว Fingertip รุ่น PO30	https://www.tvdirect.tv/beurer-fingertip-pulse-oximeter-fingertip-po30	2535	0111900202941	2016-12-19 20:02:37.500013	2016-12-19 20:02:37.500013
7486	BEURER HEARING AID เครื่องช่วยฟัง รุ่นHA20	https://www.tvdirect.tv/beurer-hearing-aid-ha20	990	0111900202958	2016-12-19 20:02:39.208545	2016-12-19 20:02:39.208545
7487	HOSPRO NEBULIZER เครื่องพ่นละอองยา รูปลิงน้อย รุ่น BR-CN001 สีน้ำตาล	https://www.tvdirect.tv/hospro-nebulizer-br-cn001	2600	0111900202989	2016-12-19 20:02:42.851148	2016-12-19 20:02:42.851148
7488	HOSPRO NEBULIZER เครื่องพ่นละอองยา รูปลิงน้อย รุ่น BR-CN001 สีเขียว	https://www.tvdirect.tv/hospro-nebulizer-br-cn001-3492	2600	0111900202996	2016-12-19 20:02:44.730286	2016-12-19 20:02:44.730286
7489	Portable Personal Scale เครื่องชั่งน้ำหนักระบบดิจิตอลแบบพกพา สีขาว	https://www.tvdirect.tv/portable-personal-scale	499	0121000301307	2016-12-19 20:02:46.54003	2016-12-19 20:02:46.54003
7490	Portable Personal Scale เครื่องชั่งน้ำหนักระบบดิจิตอลแบบพกพา สีฟ้า	https://www.tvdirect.tv/portable-personal-scale-612	499	0121000301314	2016-12-19 20:02:48.339073	2016-12-19 20:02:48.339073
7491	SLIDE SLIM FOR WOMEN แผ่นรองเท้ากันกระแทกสำหรับผู้หญิง	https://www.tvdirect.tv/slide-slim-for-women	290	0122600300028	2016-12-19 20:02:50.130431	2016-12-19 20:02:50.130431
7492	Fatis Firming Gel 2 แถม 2 	https://www.tvdirect.tv/fatis-firming-gel-2-2	2000	FatisFirmingGel 2	2016-12-19 20:03:00.933582	2016-12-19 20:03:00.933582
7493	Fatis Firming Gel 1 แถม 1	https://www.tvdirect.tv/fatis-firming-gel-1-1	1490	FatisFirmingGel1	2016-12-19 20:03:01.745458	2016-12-19 20:03:01.745458
7494	Velform Hair ผลิตภัณฑ์ดูแลเส้นผม บรรจุ 2 ขวด	https://www.tvdirect.tv/velform-hair-200-ml	990	0110300300882	2016-12-19 20:03:03.655223	2016-12-19 20:03:03.655223
7495	Velform Hair สูตร 2 ผลิตภัณฑ์ดูแลเส้นผม	https://www.tvdirect.tv/velform-hair-2-1-pack	1290	0120300300324	2016-12-19 20:03:06.68655	2016-12-19 20:03:06.68655
7496	HAIRNETIX ผงไฟเบอร์ (BLACK /สีดำ)	https://www.tvdirect.tv/hairnetix-black	995	0120700601229	2016-12-19 20:03:11.045308	2016-12-19 20:03:11.045308
7497	CERTAINTY TAPE SIZE M28 ผ้าอ้อมผู้ใหญ่แบบเทป ขนาด M 28 ชิ้น	https://www.tvdirect.tv/certainty-tape-size-m28-m-28	395	0111900202927	2016-12-19 20:03:13.04801	2016-12-19 20:03:13.04801
7498	CERTAINTY TAPE SIZE L24 ผ้าอ้อมผู้ใหญ่แบบเทป ขนาด L 24 ชิ้น	https://www.tvdirect.tv/certainty-tape-size-l24-l-24	395	0111900202934	2016-12-19 20:03:14.810991	2016-12-19 20:03:14.810991
7499	CERTAINTY TAPE SIZE M28 ผ้าอ้อมผู้ใหญ่แบบเทป ขนาด M 28 ชิ้น จำนวน 4 แพ็ค	https://www.tvdirect.tv/certainty-tape-size-m28-m-28-4	1520	CertaintySizeM	2016-12-19 20:03:15.673666	2016-12-19 20:03:15.673666
7500	CERTAINTY TAPE SIZE L24 ผ้าอ้อมผู้ใหญ่แบบเทป ขนาด L 24 ชิ้น จำนวน 4 แพ็ค	https://www.tvdirect.tv/certainty-tape-size-l24-l-24-4	1520	CertaintySizeL	2016-12-19 20:03:16.475883	2016-12-19 20:03:16.475883
7501	Grizzly Pacesetter Training Belt 6IN- เข็มขัดเซฟหลัง 6 นิ้ว 	https://www.tvdirect.tv/grizzly-pacesetter-training-belt-6in-6	1290	PacesetterTrainningBelt6inch	2016-12-19 20:03:17.34989	2016-12-19 20:03:17.34989
7502	Velform Hair สูตร 2 ผลิตภัณฑ์ดูแลเส้นผม 1 ขวด แถมฟรี! Vform อาหารเสริมสำหรับเส้นผม 60 แคปซูล	https://www.tvdirect.tv/velform-hair-2-1-pack-free-vform-60-cap	1990	0120700400549	2016-12-19 20:03:24.792623	2016-12-19 20:03:24.792623
7503	HAIRNETIX ผงไฟเบอร์ (DARK BROWN /สีน้ำตาลเข้ม)	https://www.tvdirect.tv/hairnetix-dark-brown	995	0120700601236	2016-12-19 20:03:26.444547	2016-12-19 20:03:26.444547
7504	Le Jeans เลกกิ้งลายยีนส์	https://www.tvdirect.tv/le-jeans	1990	0120100605742	2016-12-19 20:03:31.490142	2016-12-19 20:03:31.490142
7505	Genie Slim and Tone Legging กางเกงเลกกิ้งกระชับสัดส่วน สีดำ สีเทา สีน้ำตาล	https://www.tvdirect.tv/genie-slim-and-tone-legging	1990	Genie Slim and Tone Legging	2016-12-19 20:03:32.471073	2016-12-19 20:03:32.471073
7506	กางเกงเลคกิ้งกระชับสัดส่วน Lalita Slimming Shape	https://www.tvdirect.tv/lalita-slimming-shape	990	0112000202701	2016-12-19 20:03:33.266366	2016-12-19 20:03:33.266366
7507	SWANS ROSE BELLY BELT TOP BLACK เสื้อกล้ามกระชับสัดส่วน (เอวลอย) สีดำ	https://www.tvdirect.tv/swans-rose-belly-belt-top-black	590	0110100205422	2016-12-19 20:03:35.07077	2016-12-19 20:03:35.07077
7508	SWANS COOL LEGGINGS BLACK กางเกงเลกกิ้งขายาว 4 ส่วน สีดำ	https://www.tvdirect.tv/swans-cool-leggings-black-4	790	0110100205415	2016-12-19 20:03:36.851344	2016-12-19 20:03:36.851344
7509	SWANS COOL LEGGINGS SKY BLUE กางเกงเลกกิ้งขายาว 4 ส่วน สีฟ้า	https://www.tvdirect.tv/swans-cool-leggings-sky-blue-4	790	0110100205408	2016-12-19 20:03:38.688799	2016-12-19 20:03:38.688799
7510	GENIE SLIM JEGGING	https://www.tvdirect.tv/genie-slim-jegging	1990	GenieSlinJegging	2016-12-19 20:03:39.671795	2016-12-19 20:03:39.671795
7511	Genie Bra Classic ชุดชั้นในสวมสบาย	https://www.tvdirect.tv/genie-bra-classic	890	GenieBraClassic	2016-12-19 20:03:44.663385	2016-12-19 20:03:44.663385
7512	Genie Bra Custom Bra ชุดชั้นในปรับสายได้ สีดำ สีเนื้อ สีขาว	https://www.tvdirect.tv/genie-bra-classic-1557	890	Genie Bra Custom Bra	2016-12-19 20:03:45.554189	2016-12-19 20:03:45.554189
7513	Genie Bra Neutral สีน้ำตาล สีม่วง สีเทา	https://www.tvdirect.tv/genie-bra-neutral	1090	Genie Bra Neutral	2016-12-19 20:03:46.403857	2016-12-19 20:03:46.403857
7514	Genie Bra Pastel สีชมพู สีม่วงอ่อน สีฟ้าอ่อน	https://www.tvdirect.tv/genie-bra-pastel	1090	Genie Bra Pastel	2016-12-19 20:03:47.308511	2016-12-19 20:03:47.308511
7515	Genie Bra Tropical Island บราสวมสบาย สีเหลือง เขียวอ่อน ส้มอ่อน	https://www.tvdirect.tv/genie-bra-tropical-island	1990	Genie Bra Tropical Island	2016-12-19 20:03:48.210809	2016-12-19 20:03:48.210809
7516	Slim n Lift กางเกงกระชับสัดส่วนสลิมแอนด์ลิฟท์	https://www.tvdirect.tv/slim-n-lift	1490	SlimnLift	2016-12-19 20:03:49.561963	2016-12-19 20:03:49.561963
7517	SLIM N LIFT CARESSE เสื้อกระชับลายลูกไม้	https://www.tvdirect.tv/slim-n-lift-caresse	1490	SLIM N LIFT CARESSE	2016-12-19 20:03:52.309983	2016-12-19 20:03:52.309983
7518	Genie Briefs Bright กางเกงชั้นใน สีม่วง สีน้ำเงิน สีส้ม	https://www.tvdirect.tv/genie-briefs-bright	750	Genie Briefs Bright	2016-12-19 20:03:53.224315	2016-12-19 20:03:53.224315
7519	Genie Briefs Classic กางเกงใน สีขาว สีดำ สีเนื้อ	https://www.tvdirect.tv/genie-briefs-classic	750	Genie Briefs Classic	2016-12-19 20:03:54.069594	2016-12-19 20:03:54.069594
7520	Genie Briefs Pastel กางเกงชั้นใน สีชมพู ม่วงอ่อน ฟ้าอ่อน	https://www.tvdirect.tv/genie-briefs-pastel	750	Genie Briefs Pastel	2016-12-19 20:03:54.974658	2016-12-19 20:03:54.974658
7521	Genie Briefs Neutral กางเกงชั้นใน สีน้ำตาล สีม่วง สีเทา	https://www.tvdirect.tv/genie-briefs-neutral	540	Genie Briefs Neutral	2016-12-19 20:03:55.891176	2016-12-19 20:03:55.891176
7522	JML Belvia Bodysuit  ชุดกระชับแบบเต็มตัว สีเนื้อ	https://www.tvdirect.tv/jml-belvia-bodysuit-c	490	JML Belvia Bodysuit	2016-12-19 20:03:56.776865	2016-12-19 20:03:56.776865
7523	Genie Bra Custom Bra Big Size ชุดชั้นในปรับสายได้ สีดำ สีเนื้อ สีขาว ไซส์ใหญ่	https://www.tvdirect.tv/genie-bra-custom-bra-big-size	590	Genie Bra Custom Bra Big Size	2016-12-19 20:03:58.234511	2016-12-19 20:03:58.234511
7524	Genie Briefs Classic Big Size กางเกงใน สีขาว สีดำ สีเนื้อ	https://www.tvdirect.tv/genie-briefs-classic-big-size	350	Genie Briefs Classic Big Size	2016-12-19 20:03:59.078587	2016-12-19 20:03:59.078587
7525	Genie Briefs Neutral Big Sizeกางเกงชั้นใน สีน้ำตาล สีม่วง สีเทา ไซส์ใหญ่	https://www.tvdirect.tv/genie-briefs-neutral-big-size	350	Genie Briefs Neutral Big Size	2016-12-19 20:03:59.908418	2016-12-19 20:03:59.908418
7526	D-Bra บรายกกระชับ 6 ตัว - S ฟรี กกน.ฟรีไซส์ 6 ตัว	https://www.tvdirect.tv/d-bra-6-s-6	1590	0110100203987	2016-12-19 20:04:00.708696	2016-12-19 20:04:00.708696
7527	D-Bra บรายกกระชับ 6 ตัว - M ฟรี กกน.ฟรีไซส์ 6 ตัว	https://www.tvdirect.tv/d-bra-6-m-6	1590	0110100203994	2016-12-19 20:04:03.960189	2016-12-19 20:04:03.960189
7528	D-Bra บรายกกระชับ 6 ตัว - L ฟรี กกน. ฟรีไซส์ 6 ตัว	https://www.tvdirect.tv/d-bra-6-l-6	1590	0110100204007	2016-12-19 20:04:07.568124	2016-12-19 20:04:07.568124
7529	Cecilene 3D BRA STANDARD บราไร้โครง 3 มิติ สีดำ, สีเนื้อ, สีชมพู, แถมฟรี! กางเกงชั้นใน คละสี	https://www.tvdirect.tv/cecilene-3d-bra-standard-free-pants	1790	Cecilene 3D BRA STANDARD	2016-12-19 20:04:08.437049	2016-12-19 20:04:08.437049
7530	Genie Bra Classic 1990 1 free 1	https://www.tvdirect.tv/genie-bra-classic-1990-1-free-1	1990	GenieBraClassic1990	2016-12-19 20:04:15.471933	2016-12-19 20:04:15.471933
7531	Genie Bra All color  free Genie Brief 1990	https://www.tvdirect.tv/genie-bra-all-color-free-genie-brief-1990	1990	Genie Bra All color  free Genie Brief 1990	2016-12-19 20:04:19.353779	2016-12-19 20:04:19.353779
7532	Genie Bra All color  free Genie Brief 1490	https://www.tvdirect.tv/genie-bra-all-color-free-genie-brief-1490	1490	Genie Bra All color  free Genie Brief 1490	2016-12-19 20:04:22.950624	2016-12-19 20:04:22.950624
7533	GENIE BRA MODERN BRIEFS BLACK  กางเกงใน สีดำ 	https://www.tvdirect.tv/genie-bra-modern-briefs-black	750	GENIEBRAMODERNBRIEFSBLACK	2016-12-19 20:04:25.525892	2016-12-19 20:04:25.525892
7534	GENIE BRA MODERN BRIEFS NUDE  กางเกงใน สีเนื้อ	https://www.tvdirect.tv/genie-bra-modern-briefs-nude	750	GENIE BRA MODERN BRIEFS NUDE  กางเกงใน สีเนื้อ	2016-12-19 20:04:28.33128	2016-12-19 20:04:28.33128
7535	GENIE BRA MODERN BRA BLACK Free GENIE BRA MODERN BRIEFS BLACK	https://www.tvdirect.tv/genie-bra-modern-bra-black-freee-genie-bra-modern-briefs-black	1990	GenieBraModernBraBlack	2016-12-19 20:04:31.671654	2016-12-19 20:04:31.671654
7536	GENIE BRA MODERN BRA NUDE Free GENIE BRA MODERN BRIEFS NUDE	https://www.tvdirect.tv/genie-bra-modern-bra-nude-freee-genie-bra-modern-briefs-nude	1990	GenieBraModernBraNude	2016-12-19 20:04:35.174167	2016-12-19 20:04:35.174167
7537	WOLFOX NIPPLE BRA FREE SIZE BLACK แผ่นปิดหน้าอก สีดำ	https://www.tvdirect.tv/wolfox-nipple-bra-free-size-black	290	0110100204418	2016-12-19 20:04:37.678555	2016-12-19 20:04:37.678555
7538	WOLFOX NIPPLE BRA FREE SIZE NUDE แผ่นปิดหน้าอก สีเนื้อ	https://www.tvdirect.tv/wolfox-nipple-bra-free-size-nude	290	0110100204401	2016-12-19 20:04:40.201967	2016-12-19 20:04:40.201967
7539	WOLFOX NU BRA  NUDE	https://www.tvdirect.tv/wolfox-nu-bra-nude	699	WOLFOX NU BRA  NUDE	2016-12-19 20:04:42.603443	2016-12-19 20:04:42.603443
7540	WOLFOX NU BRA  BLACK	https://www.tvdirect.tv/wolfox-nu-bra-black	699	WOLFOX NU BRA  BLACK	2016-12-19 20:04:45.118458	2016-12-19 20:04:45.118458
7541	WOLFOX NEW CORSET BRANUDE บราไร้สายแบบเชือกรูด สีเนื้อ	https://www.tvdirect.tv/wolfox-new-corset-branude	799	WOLFOX NEW CORSET BRANUDE บราไร้สายแบบเชือกรูด สีเนื้อ	2016-12-19 20:04:47.65226	2016-12-19 20:04:47.65226
7542	WOLFOX NEW CORSET BRA BLACK บราไร้สายแบบเชือกรูด สีดำ	https://www.tvdirect.tv/wolfox-new-corset-bra-black	799	WOLFOX NEW CORSET BRA BLACK บราไร้สายแบบเชือกรูด สีดำ	2016-12-19 20:04:50.091444	2016-12-19 20:04:50.091444
7543	WOLFOX PUSH UP BRA NUDE บราไร้สายแบบดันทรง สีเนื้อ	https://www.tvdirect.tv/wolfox-push-up-bra-nude	899	WOLFOX PUSH UP BRA NUDE บราไร้สายแบบดันทรง สีเนื้อ	2016-12-19 20:04:52.619969	2016-12-19 20:04:52.619969
7544	WOLFOX PUSH UP BRA BLACK บราไร้สายแบบดันทรง สีดำ	https://www.tvdirect.tv/wolfox-push-up-bra-black	899	WOLFOX PUSH UP BRA  BLACK บราไร้สายแบบดันทรง สีดำ	2016-12-19 20:04:55.228933	2016-12-19 20:04:55.228933
7545	WOLFOX WING BRA  NUDE บราไร้สายแบบมีโครง สีเนื้อ	https://www.tvdirect.tv/wolfox-wing-bra-nude	990	WOLFOX WING BRA  NUDE บราไร้สายแบบมีโครง สีเนื้อ	2016-12-19 20:04:57.638353	2016-12-19 20:04:57.638353
7546	WOLFOX WING BRA  BLACK บราไร้สายแบบมีโครง สีดำ	https://www.tvdirect.tv/wolfox-wing-bra-black	990	WOLFOX WING BRA BLACK บราไร้สายแบบมีโครง สีดำ	2016-12-19 20:05:00.428669	2016-12-19 20:05:00.428669
7547	WOLFOX SPORT BRA FASHION BLACK สปอร์ตบราออกกำลังกาย สีดำ	https://www.tvdirect.tv/wolfox-sport-bra-fashion-black	490	WOLFOX SPORT BRA FASHION BLACK สปอร์ตบราออกกำลังกาย สีดำ	2016-12-19 20:05:04.220202	2016-12-19 20:05:04.220202
7548	WOLFOX SPORT BRA FASHION  BLUE สปอร์ตบราออกกำลังกาย สีน้ำเงิน	https://www.tvdirect.tv/wolfox-sport-bra-fashion-blue	490	WOLFOX SPORT BRA FASHION  BLUE สปอร์ตบราออกกำลังกาย สีน้ำเงิน	2016-12-19 20:05:07.050335	2016-12-19 20:05:07.050335
7549	WOLFOX SPORT BRA FASHION GRAY สปอร์ตบราออกกำลังกาย สีเทา	https://www.tvdirect.tv/wolfox-sport-bra-fashion-gray	490	WOLFOX SPORT BRA FASHION  GRAY สปอร์ตบราออกกำลังกาย สีเทา	2016-12-19 20:05:09.873711	2016-12-19 20:05:09.873711
7550	WOLFOX SPORT BRA FASHION GREEN สปอร์ตบราออกกำลังกาย สีเขียว	https://www.tvdirect.tv/wolfox-sport-bra-fashion-green	490	WOLFOX SPORT BRA FASHION GREEN สปอร์ตบราออกกำลังกาย สีเขียว	2016-12-19 20:05:16.268191	2016-12-19 20:05:16.268191
7551	WOLFOX SPORT BRA FASHION  PINK สปอร์ตบราออกกำลังกาย สีชมพู	https://www.tvdirect.tv/wolfox-sport-bra-fashion-pink	490	WOLFOX SPORT BRA FASHION  PINK สปอร์ตบราออกกำลังกาย สีชมพู	2016-12-19 20:05:18.586365	2016-12-19 20:05:18.586365
7552	WOLFOX SPORT BRA  BLACK สปอร์ตบราออกกำลังกาย สีดำ	https://www.tvdirect.tv/wolfox-sport-bra-black	390	WOLFOX SPORT BRA  BLACK สปอร์ตบราออกกำลังกาย สีดำ	2016-12-19 20:05:20.910709	2016-12-19 20:05:20.910709
7553	WOLFOX SPORT BRA WHITE สปอร์ตบราออกกำลังกาย สีขาว	https://www.tvdirect.tv/wolfox-sport-bra-white	390	WOLFOX SPORT BRA WHITE สปอร์ตบราออกกำลังกาย สีขาว	2016-12-19 20:05:23.275229	2016-12-19 20:05:23.275229
7554	WOLFOX SPORT BRA GREEN สปอร์ตบราออกกำลังกาย สีเขียว	https://www.tvdirect.tv/wolfox-sport-bra-green	390	WOLFOX SPORT BRA GREEN สปอร์ตบราออกกำลังกาย สีเขียว	2016-12-19 20:05:25.739848	2016-12-19 20:05:25.739848
7555	WOLFOX SPORT BRA ORANGE สปอร์ตบราออกกำลังกาย สีส้ม	https://www.tvdirect.tv/wolfox-sport-bra-orange	390	WOLFOX SPORT BRA ORANGE สปอร์ตบราออกกำลังกาย สีส้ม	2016-12-19 20:05:28.180644	2016-12-19 20:05:28.180644
7556	WOLFOX SPORT BRA  ROSE RED สปอร์ตบราออกกำลังกาย สีชมพู	https://www.tvdirect.tv/wolfox-sport-bra-rose-red	390	WOLFOX SPORT BRA ROSE RED สปอร์ตบราออกกำลังกาย สีชมพู	2016-12-19 20:05:30.48785	2016-12-19 20:05:30.48785
7557	VULCANUS MEN'S UNDERWEAR ORANGE กางเกงในเสริมสมรรถภาพ (บุรุษ) สีส้ม	https://www.tvdirect.tv/vulcanus-men-s-underwear-orange	690	VULCANUSMENSUNDERWEARORANGE	2016-12-19 20:05:33.165924	2016-12-19 20:05:33.165924
7558	VULCANUS MEN'S UNDERWEAR BLACK กางเกงในเสริมสมรรถภาพ (บุรุษ) สีดำ	https://www.tvdirect.tv/vulcanus-men-s-underwear-black	690	VULCANUSMENSUNDERWEARBLACK	2016-12-19 20:05:36.012406	2016-12-19 20:05:36.012406
7559	VULCANUS MEN'S UNDERWEAR NAVY กางเกงในเสริมสมรรถภาพ (บุรุษ) สีน้ำเงิน	https://www.tvdirect.tv/vulcanus-men-s-underwear-navy	690	VULCANUSMENSUNDERWEARNAVY	2016-12-19 20:05:38.594106	2016-12-19 20:05:38.594106
7560	VULCANUS MEN'S UNDERWEAR  YELLOW กางเกงในเสริมสมรรถภาพ (บุรุษ) สีเหลือง	https://www.tvdirect.tv/vulcanus-men-s-underwear-yellow	690	VULCANUSMENSUNDERWEARYELLOW	2016-12-19 20:05:41.219191	2016-12-19 20:05:41.219191
7561	VULCANUS MEN'S UNDERWEAR  GRAY กางเกงในเสริมสมรรถภาพ (บุรุษ) สีเทา	https://www.tvdirect.tv/vulcanus-men-s-underwear-gray	690	VULCANUSMENSUNDERWEARGRAY	2016-12-19 20:05:43.826906	2016-12-19 20:05:43.826906
7562	SWANS VOLUME UP NUDE เสื้อกล้ามกระชับสัดส่วน (ดันทรง) สีเนื้อ	https://www.tvdirect.tv/swans-volume-up-nude	1490	SWANS VOLUME UP  NUDE เสื้อกล้ามกระชับสัดส่วน (ดันทรง) สีเนื้อ	2016-12-19 20:05:46.182933	2016-12-19 20:05:46.182933
7563	SWANS VOLUME UP  BLACK เสื้อกล้ามกระชับสัดส่วน (ดันทรง) สีดำ	https://www.tvdirect.tv/swans-volume-up-black	1490	SWANS VOLUME UP  BLACK เสื้อกล้ามกระชับสัดส่วน (ดันทรง) สีดำ	2016-12-19 20:05:48.602705	2016-12-19 20:05:48.602705
7564	WOLFOX SPORT BRA VEST สปอร์ตบรา	https://www.tvdirect.tv/wolfox-sport-bra-vest	390	SportBraVest	2016-12-19 20:05:51.333322	2016-12-19 20:05:51.333322
7565	WOLFOX SPORT BRA CROSS-X สปอร์ตบราสายไขว้	https://www.tvdirect.tv/wolfox-sport-bra-cross-x	390	SportBraCrossX	2016-12-19 20:05:53.834334	2016-12-19 20:05:53.834334
7566	Missy bra  Black/White/Nude ชุดชั้นในสวมสบาย รุ่นหลังกล้าม T-bra  3 ตัว (สีดำ สีขาว สีเนื้อ ) 	https://www.tvdirect.tv/missy-bra-black-white-nude-t-bra-3	890	Missybra	2016-12-19 20:05:56.154324	2016-12-19 20:05:56.154324
7567	J-PRESS กางเกงชั้นในชาย รุ่น 2903 SIZE S 30-32 เซต 6 ตัวแถม 3 ตัว	https://www.tvdirect.tv/j-press-2903-size-s-30-32-6-3	950	0110100205776	2016-12-19 20:05:58.234937	2016-12-19 20:05:58.234937
7568	J-PRESS กางเกงชั้นในชาย รุ่น 2903 SIZE M 32-34 เซต 6 ตัวแถม 3 ตัว	https://www.tvdirect.tv/j-press-2903-size-m-32-34-6-3	950	0110100205806	2016-12-19 20:06:00.457357	2016-12-19 20:06:00.457357
7602	X TREME POWER BELT 1 FREE 1	https://www.tvdirect.tv/x-treme-power-belt-1-free-1	990	XtremePowerBelt	2016-12-19 20:07:41.858471	2016-12-19 20:07:41.858471
7569	J-PRESS กางเกงชั้นในชาย รุ่น 2903 SIZE L 34-36 เซต 6 ตัวแถม 3 ตัว	https://www.tvdirect.tv/j-press-2903-size-l-34-36-6-3	950	0110100205813	2016-12-19 20:06:02.71249	2016-12-19 20:06:02.71249
7570	GENIE TEENI BRA WHITE บราเซ็ต 3 ตัว - สีขาว	https://www.tvdirect.tv/genie-teeni-bra-white-3	990	GenieBraTeeniWhite	2016-12-19 20:06:09.103769	2016-12-19 20:06:09.103769
7571	GENIE TEENI BRA  PINK ORANGE LEMON บราเซ็ต 3 ตัว -สีชมพู สีส้ม สีเหลือง	https://www.tvdirect.tv/genie-teeni-bra-pink-orange-lemon-3	990	GenieBraTeeniBraPink	2016-12-19 20:06:11.673643	2016-12-19 20:06:11.673643
7572	J-PRESS กางเกงชั้นในชาย รุ่น 2903  เซต 6 ตัวแถม 3 ตัว	https://www.tvdirect.tv/j-press-2903-6-3	950	Jpress	2016-12-19 20:06:14.016435	2016-12-19 20:06:14.016435
7573	Genie Bra Brights  สีม่วง น้ำเงิน ส้ม	https://www.tvdirect.tv/genie-bra-brights	1090	Genie Bra Brights	2016-12-19 20:06:16.767141	2016-12-19 20:06:16.767141
7574	Genie Bra Pink Collection สีชมพู	https://www.tvdirect.tv/genie-bra-pink-collection	890	Genie Bra Pink Collection	2016-12-19 20:06:19.255561	2016-12-19 20:06:19.255561
7575	Genie Bra South Beach บราสวมสบาย สีแดง เขียวมิ้นต์เข้ม น้ำเงินเข้ม	https://www.tvdirect.tv/genie-bra-south-beach	1990	Genie Bra South Beach	2016-12-19 20:06:21.915099	2016-12-19 20:06:21.915099
7576	SLIM N LIFT AIR กางเกงกระชับสัดส่วน สลิมแอนด์ลิฟท์แอร์	https://www.tvdirect.tv/slim-n-lift-air	790	SLIM N LIFT AIR	2016-12-19 20:06:24.768176	2016-12-19 20:06:24.768176
7577	Genie Cami Shaper Hawaiian Coast เสื้อกล้ามกระชับสัดส่วน สีม่วงอ่อน เขียวมิ้นต์ ฟ้าใส	https://www.tvdirect.tv/genie-cami-shaper-hawaiian-coast	1490	Genie Cami Shaper Hawaiian Coast	2016-12-19 20:06:27.71815	2016-12-19 20:06:27.71815
7578	Genie Cami Shaper South Beach เสื้อกล้ามกระชับสัดส่วน สีส้ม เขียวมิ้นต์เข้ม น้ำเงินเข้ม	https://www.tvdirect.tv/genie-cami-shaper-south-beach	1490	Genie Cami Shaper South Beach	2016-12-19 20:06:30.506142	2016-12-19 20:06:30.506142
7579	Genie Cami Shaper Tropical Island เสื้อกล้ามกระชับสัดส่วน สีเหลือง เขียวอ่อน ส้มอ่อน	https://www.tvdirect.tv/genie-cami-shaper-tropical-island	1490	Genie Cami Shaper Tropical Island	2016-12-19 20:06:33.413458	2016-12-19 20:06:33.413458
7580	GENIE COOL BRA  สีขาว ดำ เนื้อ (BLACK NUDE WHITE )3 PCS.	https://www.tvdirect.tv/genie-cool-bra-black-nude-white-3-pcs	690	GenieCoolBra3	2016-12-19 20:06:36.28384	2016-12-19 20:06:36.28384
7581	Genie Briefs Pastel Big Size กางเกงชั้นใน สีชมพู ม่วงอ่อน ฟ้าอ่อน ไซส์ใหญ่	https://www.tvdirect.tv/genie-briefs-pastel-big-size	350	Genie Briefs Pastel Big Size	2016-12-19 20:06:38.983592	2016-12-19 20:06:38.983592
7582	Genie Briefs Bright Big Size กางเกงชั้นใน สีม่วง สีน้ำเงิน สีส้ม ไซส์ใหญ่	https://www.tvdirect.tv/genie-briefs-bright-big-size	350	Genie Briefs Bright Big Size	2016-12-19 20:06:41.489647	2016-12-19 20:06:41.489647
7583	THERMO SHAPER ชุดระบายเหงื่อ	https://www.tvdirect.tv/thermo-shaper	1290	THERMOSHAPER	2016-12-19 20:06:47.109381	2016-12-19 20:06:47.109381
7584	Set ชุดนอน Imitated Silk Home Wear	https://www.tvdirect.tv/set-imitated-silk-home-wear	1590	0110100203918	2016-12-19 20:06:47.893025	2016-12-19 20:06:47.893025
7585	LALITA COMPACT กางเกงเลคกิ้งกระชับ 7 ส่วน	https://www.tvdirect.tv/lalita-compact-7	990	0112000202729	2016-12-19 20:06:53.95442	2016-12-19 20:06:53.95442
7586	MAX-CORE OUTER SPORT PANTS BLACK กางเกงออกกำลังกาย(บุรุษ) สีดำ	https://www.tvdirect.tv/max-core-outer-sport-pants-black	790	0110100205017	2016-12-19 20:06:56.350809	2016-12-19 20:06:56.350809
7587	MAX-CORE OUTER SPORT PANTS WHITE กางเกงออกกำลังกาย(บุรุษ) สีขาว	https://www.tvdirect.tv/max-core-outer-sport-pants-white	790	0110100205000	2016-12-19 20:06:58.584899	2016-12-19 20:06:58.584899
7588	MAX-CORE OUTER SPORT T-SHIRT BLACK เสื้อกล้ามออกกำลังกาย (บุรุษ) สีดำ	https://www.tvdirect.tv/max-core-outer-sport-t-shirt-black	1590	0110100204999	2016-12-19 20:07:01.003322	2016-12-19 20:07:01.003322
7589	MAX-CORE OUTER SPORT T-SHIRT WHITE เสื้อกล้ามออกกำลังกาย (บุรุษ) สีขาว	https://www.tvdirect.tv/max-core-outer-sport-t-shirt-white	1590	0110100204982	2016-12-19 20:07:03.635963	2016-12-19 20:07:03.635963
7590	SWANS BODY SUIT BLACK FREE SIZE ชุดกระชับสัดส่วน (บอดี้สูท) สีดำ	https://www.tvdirect.tv/swans-body-suit-black-free-size	1290	0110100205176	2016-12-19 20:07:06.019058	2016-12-19 20:07:06.019058
7591	SWANS BODY SUIT NUDE FREE SIZE ชุดกระชับสัดส่วน (บอดี้สูท) สีเนื้อ	https://www.tvdirect.tv/swans-body-suit-nude-free-size	1290	0110100205169	2016-12-19 20:07:10.879729	2016-12-19 20:07:10.879729
7592	SWANS BASIC GIRDLE Free Size BLACK กางเกงกระชับสัดส่วนเอวต่ำ สีดำ	https://www.tvdirect.tv/swans-basic-girdle-free-size-black	590	0110100205114	2016-12-19 20:07:13.380866	2016-12-19 20:07:13.380866
7593	SWANS BASIC GIRDLE Free Size NUDE กางเกงกระชับสัดส่วนเอวต่ำ สีเนื้อ	https://www.tvdirect.tv/swans-basic-girdle-free-size-nude	590	0110100205107	2016-12-19 20:07:15.813063	2016-12-19 20:07:15.813063
7594	SWANS COMPRESSION STOCKING BLACK ปลอกขากระชับสัดส่วน สีดำ	https://www.tvdirect.tv/swans-compression-stocking-black	590	0110100205055	2016-12-19 20:07:18.185285	2016-12-19 20:07:18.185285
7595	SWANS COMPRESSION STOCKING NUDE ปลอกขากระชับสัดส่วน สีเนื้อ	https://www.tvdirect.tv/swans-compression-stocking-nude	590	0110100205048	2016-12-19 20:07:20.481932	2016-12-19 20:07:20.481932
7596	SWANS ARM SLEEVES BLACK ปลอกแขนกระชับสัดส่วน สีดำ	https://www.tvdirect.tv/swans-arm-sleeves-black	590	0110100205031	2016-12-19 20:07:22.862343	2016-12-19 20:07:22.862343
7597	SWANS ARM SLEEVES NUDE ปลอกแขนกระชับสัดส่วน สีเนื้อ	https://www.tvdirect.tv/swans-arm-sleeves-nude	590	0110100205024	2016-12-19 20:07:25.212612	2016-12-19 20:07:25.212612
7598	SWANS SHORT PANTS WHITE กางเกงเก็บสัดส่วนขาสั้น สีขาว	https://www.tvdirect.tv/swans-short-pants-white	590	0110100205370	2016-12-19 20:07:27.856761	2016-12-19 20:07:27.856761
7599	SWANS SHORT PANTS NUDE กางเกงเก็บสัดส่วนขาสั้น สีเนื้อ	https://www.tvdirect.tv/swans-short-pants-nude	590	0110100205363	2016-12-19 20:07:30.281493	2016-12-19 20:07:30.281493
7600	SWANS STRONG SILK TOP BLACK เสื้อกล้ามกระชับสัดส่วน (ผ้าไหม) สีดำ	https://www.tvdirect.tv/swans-strong-silk-top-black	990	0110100205356	2016-12-19 20:07:32.662237	2016-12-19 20:07:32.662237
7601	SWANS STRONG SILK TOP NUDE เสื้อกล้ามกระชับสัดส่วน (ผ้าไหม) สีเนื้อ	https://www.tvdirect.tv/swans-strong-silk-top-nude	990	0110100205349	2016-12-19 20:07:35.026106	2016-12-19 20:07:35.026106
7603	MAX-CORE INFRARED T-SHIRT WHITE เสื้อกล้ามกระชับสัดส่วน (บุรุษ) สีขาว	https://www.tvdirect.tv/max-core-infrared-t-shirt-white	1790	MAXCOREINFRAREDTSHIRTWHITE	2016-12-19 20:07:42.800393	2016-12-19 20:07:42.800393
7604	MAX-CORE INFRARED T-SHIRT  BLACK เสื้อกล้ามกระชับสัดส่วน (บุรุษ) สีดำ	https://www.tvdirect.tv/max-core-infrared-t-shirt-black	1790	MAXCOREINFRAREDTSHIRTBLACK	2016-12-19 20:07:47.479049	2016-12-19 20:07:47.479049
7605	MAX-CORE WAIST CLINCH NUDE ผ้ารัดเอวกระชับสัดส่วน (บุรุษ) สีเนื้อ	https://www.tvdirect.tv/max-core-waist-clinch-nude	990	MAXCOREWAISTCLINCHNUDE	2016-12-19 20:07:48.352424	2016-12-19 20:07:48.352424
7606	MAX-CORE WAIST CLINCH BLACK ผ้ารัดเอวกระชับสัดส่วน (บุรุษ) สีดำ	https://www.tvdirect.tv/max-core-waist-clinch-black	990	MAXCOREWAISTCLINCHBLACK	2016-12-19 20:07:49.195871	2016-12-19 20:07:49.195871
7607	SWANS TAPING TOP  NUDE เสื้อกล้ามกระชับสัดส่วน (สตรี) สีเนื้อ	https://www.tvdirect.tv/swans-taping-top-nude	1290	SWANS TAPING TOP NUDE เสื้อกล้ามกระชับสัดส่วน (สตรี) สีเนื้อ	2016-12-19 20:07:50.060346	2016-12-19 20:07:50.060346
7608	SWANS TAPING TOP BLACK เสื้อกล้ามกระชับสัดส่วน (สตรี) สีดำ	https://www.tvdirect.tv/swans-taping-top-black	1290	SWANS TAPING TOP  BLACK เสื้อกล้ามกระชับสัดส่วน (สตรี) สีดำ	2016-12-19 20:07:50.904813	2016-12-19 20:07:50.904813
7609	SWANS HIGH WAISTNUDE กางเกงกระชับสัดส่วน (เอวสูง) สีเนื้อ	https://www.tvdirect.tv/swans-high-waistnude	1290	SWANS HIGH WAISTNUDE กางเกงกระชับสัดส่วน (เอวสูง) สีเนื้อ	2016-12-19 20:07:53.666532	2016-12-19 20:07:53.666532
7610	SWANS HIGH WAIST BLACK กางเกงกระชับสัดส่วน (เอวสูง) สีดำ	https://www.tvdirect.tv/swans-high-waist-black	1290	SWANS HIGH WAIST BLACK กางเกงกระชับสัดส่วน (เอวสูง) สีดำ	2016-12-19 20:07:55.975936	2016-12-19 20:07:55.975936
7611	SWANS MAGIC SHAPER GIRDLE  NUDE กางเกงกระชับสัดส่วน (ขาสั้น) สีเนื้อ	https://www.tvdirect.tv/swans-magic-shaper-girdle-nude	990	SWANS MAGIC SHAPER GIRDLE NUDE	2016-12-19 20:07:58.362551	2016-12-19 20:07:58.362551
7612	SWANS MAGIC SHAPER GIRDLE  BLACK กางเกงกระชับสัดส่วน (ขาสั้น) สีดำ	https://www.tvdirect.tv/swans-magic-shaper-girdle-black	990	SWANSMAGICSHAPERGIRDLEBLACK	2016-12-19 20:08:00.641062	2016-12-19 20:08:00.641062
7613	SWANS WAIST CLINCH NUDE ผ้ารัดเอวกระชับสัดส่วน (สตรี) สีเนื้อ	https://www.tvdirect.tv/swans-waist-clinch-nude	990	SWANS WAIST CLINCH NUDE ผ้ารัดเอวกระชับสัดส่วน (สตรี) สีเนื้อ	2016-12-19 20:08:03.208884	2016-12-19 20:08:03.208884
7614	SWANS WAIST CLINCH BLACK ผ้ารัดเอวกระชับสัดส่วน (สตรี) สีดำ	https://www.tvdirect.tv/swans-waist-clinch-black	990	SWANS WAIST CLINCH  BLACK ผ้ารัดเอวกระชับสัดส่วน (สตรี) สีดำ	2016-12-19 20:08:05.888313	2016-12-19 20:08:05.888313
7615	SWANS CAMISOLE  NUDE เสื้อสายเดี่ยวกระชับสัดส่วน (สตรี) สีเนื้อ	https://www.tvdirect.tv/swans-camisole-nude	790	SWANS CAMISOLE  NUDE เสื้อสายเดี่ยวกระชับสัดส่วน (สตรี) สีเนื้อ	2016-12-19 20:08:08.335665	2016-12-19 20:08:08.335665
7616	SWANS CAMISOLE  BLACK เสื้อสายเดี่ยวกระชับสัดส่วน (สตรี) สีดำ	https://www.tvdirect.tv/swans-camisole-black	790	SWANS CAMISOLE  BLACK เสื้อสายเดี่ยวกระชับสัดส่วน (สตรี) สีดำ	2016-12-19 20:08:10.5577	2016-12-19 20:08:10.5577
7617	SWANS SPORT TOP  NUDE เสื้อกล้ามออกกำลังกาย (สตรี) สีเนื้อ	https://www.tvdirect.tv/swans-sport-top-nude	790	SWANS SPORT TOP NUDE เสื้อกล้ามออกกำลังกาย (สตรี) สีเนื้อ	2016-12-19 20:08:12.915456	2016-12-19 20:08:12.915456
7618	SWANS SPORT TOP  BLACK เสื้อกล้ามออกกำลังกาย (สตรี) สีดำ	https://www.tvdirect.tv/swans-sport-top-black	790	SWANS SPORT TOP  BLACK เสื้อกล้ามออกกำลังกาย (สตรี) สีดำ	2016-12-19 20:08:15.453793	2016-12-19 20:08:15.453793
7619	X TREME POWER BELT  เข็มขัดกระชับสัดส่วน	https://www.tvdirect.tv/x-treme-power-belt	990	X TREME POWER BELT  เข็มขัดกระชับสัดส่วน	2016-12-19 20:08:17.94679	2016-12-19 20:08:17.94679
7620	Zlimmy Panty Temptations Classic Size S/M กางเกงกระชับหน้าท้อง	https://www.tvdirect.tv/zlimmy-panty-temptations-classic-size-s-m	1990	0122000600940	2016-12-19 20:08:24.73494	2016-12-19 20:08:24.73494
7621	Zlimmy Panty Temptations Classic Size L/XL กางเกงกระชับหน้าท้อง	https://www.tvdirect.tv/zlimmy-panty-temptations-classic-size-l-xl	1990	0122000600957	2016-12-19 20:08:27.404195	2016-12-19 20:08:27.404195
7622	Bio Shaper Size L/XL เซ็ตชุดกระชับสัดส่วน	https://www.tvdirect.tv/bio-shaper-size-l-xl	990	0120100600730	2016-12-19 20:08:29.932257	2016-12-19 20:08:29.932257
7623	Bio Shaper Size S/M เซ็ตชุดกระชับสัดส่วน	https://www.tvdirect.tv/bio-shaper-size-s-m	990	0120100600723	2016-12-19 20:08:32.330484	2016-12-19 20:08:32.330484
7624	Fit Slender Pants กางเกงซาวน่า	https://www.tvdirect.tv/fit-slender-pants	990	Fit Slender Pants กางเกงซาวน่า	2016-12-19 20:08:37.752834	2016-12-19 20:08:37.752834
7625	Set กระเป๋า D.Twinkle Fashion Bag Blue สีน้ำเงิน	https://www.tvdirect.tv/set-d-twinkle-fashion-bag-blue	4990	0110200206437	2016-12-19 20:08:48.098892	2016-12-19 20:08:48.098892
7626	Set กระเป๋า D.Twinkle Fashion Bag Red สีแดง	https://www.tvdirect.tv/set-d-twinkle-fashion-bag-red	4990	0110200206444	2016-12-19 20:08:50.719987	2016-12-19 20:08:50.719987
7627	กระเป๋าใบเล็ก D.Twinkle Luxury Fashion Bag สีแดง	https://www.tvdirect.tv/d-twinkle-luxury-fashion-bag	1990	0110200206451	2016-12-19 20:08:53.260405	2016-12-19 20:08:53.260405
7628	กระเป๋าใบเล็ก D.Twinkle Luxury Fashion Bag สีน้ำเงินเข้ม	https://www.tvdirect.tv/d-twinkle-small-dark-blue	1990	0110200206468	2016-12-19 20:08:55.69135	2016-12-19 20:08:55.69135
7629	กระเป๋า Pocket Outdoor sport bag สีฟ้า	https://www.tvdirect.tv/pocket-outdoor-sport-bag	750	0113300200657	2016-12-19 20:08:58.266045	2016-12-19 20:08:58.266045
7630	WOLFOX BRA BAG BLUE กระเป๋าใส่ชุดชั้นในทรงเหลี่ยม สีฟ้า	https://www.tvdirect.tv/wolfox-bra-bag-blue	290	0110100204463	2016-12-19 20:09:00.167879	2016-12-19 20:09:00.167879
7631	WOLFOX BRA BAG PINK กระเป๋าใส่ชุดชั้นในทรงเหลี่ยม สีชมพู	https://www.tvdirect.tv/wolfox-bra-bag-pink	290	0110100204456	2016-12-19 20:09:02.145098	2016-12-19 20:09:02.145098
8002	Core Sculptor (Double Cord)	https://www.tvdirect.tv/core-sculptor-double-cord	790	0121000300201	2016-12-19 20:22:53.6069	2016-12-19 20:22:53.6069
7632	WOLFOX BRA BAG OCEAN กระเป๋าใส่ชุดชั้นในทรงกลม สีน้ำทะเล	https://www.tvdirect.tv/wolfox-bra-bag-ocean	390	0110100204449	2016-12-19 20:09:03.923492	2016-12-19 20:09:03.923492
7633	WOLFOX BRA BAG LEOPARD กระเป๋าใส่ชุดชั้นในทรงกลม สีลายเสือ	https://www.tvdirect.tv/wolfox-bra-bag-leopard	390	0110100204432	2016-12-19 20:09:05.808858	2016-12-19 20:09:05.808858
7634	WOLFOX BRA BAG ROSE กระเป๋าใส่ชุดชั้นในทรงกลม สีชมพู	https://www.tvdirect.tv/wolfox-bra-bag-rose	390	0110100204425	2016-12-19 20:09:07.800375	2016-12-19 20:09:07.800375
7635	SUPERMAN Backpack Bag กระเป๋าเป้ 17นิ้ว SM-11070	https://www.tvdirect.tv/superman-backpack-bag-17-sm-11070	995	0110200206840	2016-12-19 20:09:09.315841	2016-12-19 20:09:09.315841
7636	CARRY-ALL Backpack Bag Col. Pink กระเป๋าเป้ 17นิ้วสีชมพู CA-13721	https://www.tvdirect.tv/carry-all-backpack-bag-col-pink-17-ca-13721	965	0110200206857	2016-12-19 20:09:10.898237	2016-12-19 20:09:10.898237
7637	CARRY-ALL Backpack Bag Col. Blue กระเป๋าเป้ 17นิ้วสีฟ้า CA-13722	https://www.tvdirect.tv/carry-all-backpack-bag-col-blue-17-ca-13722	965	0110200206864	2016-12-19 20:09:15.237958	2016-12-19 20:09:15.237958
7638	CARRY-ALL Backpack Bag Col. Brown กระเป๋าเป้ 17นิ้วสีน้ำตาล CA-13723	https://www.tvdirect.tv/carry-all-backpack-bag-col-brown-17-ca-13723	965	0110200206871	2016-12-19 20:09:16.728307	2016-12-19 20:09:16.728307
7639	TRAVEL LUGGAGE 20 Inches col.  กระเป๋าเดินทาง 20 นิ้ว ล้อคู่ 	https://www.tvdirect.tv/travel-luggage-20-inches-col-20	1990	TravelLuggage	2016-12-19 20:09:17.596884	2016-12-19 20:09:17.596884
7640	TANLUHU SPORT SMALL POCKET SPORT BAG กระเป๋ากีฬาขนาดเล็ก 	https://www.tvdirect.tv/tanluhu-sport-small-pocket-sport-bag	290	Tanluhusport	2016-12-19 20:09:18.462264	2016-12-19 20:09:18.462264
7641	RFID WALLET กระเป๋าเงินอาร์เอฟไอดี	https://www.tvdirect.tv/rfid-wallet-black-white	990	0120200500015	2016-12-19 20:09:20.11211	2016-12-19 20:09:20.11211
7642	STAUER 1930 DASHTRONIC SET เซ็ตนาฬิกาข้อมือรุ่น STAUER 1930	https://www.tvdirect.tv/stauer-1930-dashtronic-set-stauer-1930	999	0124200300033	2016-12-19 20:09:22.848993	2016-12-19 20:09:22.848993
7643	STAUER20308 MORITZ SWISS MOVEMENT WATCH MODEL นาฬิกาข้อมือ	https://www.tvdirect.tv/stauer20308-moritz-swiss-movement-watch-model	4990	0120500600408	2016-12-19 20:09:24.436644	2016-12-19 20:09:24.436644
7644	STAUER SWISS GENT'S QUARTZ - CHRONOGRAPH WATCH SM1100นาฬิกาข้อมือ	https://www.tvdirect.tv/stauer-swiss-gent-s-quartz-chronograph-watch-sm1100	4590	0120500600651	2016-12-19 20:09:25.804039	2016-12-19 20:09:25.804039
7645	STAUER GENT'S QUARTZ SML8031นาฬิกาข้อมือ	https://www.tvdirect.tv/stauer-gent-s-quartz-sml8031	2350	0120500600675	2016-12-19 20:09:27.349257	2016-12-19 20:09:27.349257
7646	STAUER GENT'S QUARTZ SML8010นาฬิกาข้อมือ	https://www.tvdirect.tv/stauer-gent-s-quartz-sml8010	2350	0120500600668	2016-12-19 20:09:29.092004	2016-12-19 20:09:29.092004
7647	Pomo Kids Watch Moji นาฬิกาโทรศัพท์ อัจฉริยะ รุ่นโมจิ 	https://www.tvdirect.tv/pomo-kids-watch-moji	3990	PomoKidsWatchMoji	2016-12-19 20:09:31.663766	2016-12-19 20:09:31.663766
7648	Pomo Kids Watch Rainbow นาฬิกาโทรศัพท์ อัจฉริยะ รุ่นเรนโบว์ 	https://www.tvdirect.tv/pomo-kids-watch-rainbow	3990	PomoKidsWatchRainbow	2016-12-19 20:09:32.543179	2016-12-19 20:09:32.543179
7649	Stauer 11071 Ladies Stainess Swiss Mountaineer Watch White Model นาฬิกาข้อมือผู้หญิงสีขาว	https://www.tvdirect.tv/stauer-11071-ladies-stainess-swiss-mountaineer-watch-white-model	2490	0120500600378	2016-12-19 20:09:34.27901	2016-12-19 20:09:34.27901
7650	Stauer 11075 Ladies Stainess Swiss Mountaineer Watch Black Model นาฬิกาข้อมือผู้หญิงสีดำ	https://www.tvdirect.tv/stauer-11075-ladies-stainess-swiss-mountaineer-watch-black-model	2490	0120500600392	2016-12-19 20:09:36.124863	2016-12-19 20:09:36.124863
7651	MISAKI WATCH ATHENA นาฬิกาสีดำหน้าปัดสีดำ	https://www.tvdirect.tv/misaki-watch-athena	2500	0120100300982	2016-12-19 20:09:37.58795	2016-12-19 20:09:37.58795
7652	MISAKI RING MORNING  แหวนมุกสีขาว	https://www.tvdirect.tv/misaki-ring-morning	500	RingMorning	2016-12-19 20:09:41.233959	2016-12-19 20:09:41.233959
7653	MISAKI RING SPIRALE 52 แหวนเงินมีมุกตรงกลาง ขนาด 52	https://www.tvdirect.tv/misaki-ring-spirale-52-52	1200	0120100301323	2016-12-19 20:09:42.859097	2016-12-19 20:09:42.859097
7654	MISAKI RING URBAN  แหวนประดับมุกขนาด	https://www.tvdirect.tv/misaki-ring-urban	990	MisakiRingUrban	2016-12-19 20:09:44.607196	2016-12-19 20:09:44.607196
7655	MISAKI RING QUANTUM  แหวนประดับมุกขาว 	https://www.tvdirect.tv/misaki-ring-quantum-52-53	990	MisakiRingQuantum	2016-12-19 20:09:46.369871	2016-12-19 20:09:46.369871
7656	MISAKI RING BLADEแหวนมุกสีน้ำตาล	https://www.tvdirect.tv/misaki-ring-blade	990	RingBlade	2016-12-19 20:09:48.05065	2016-12-19 20:09:48.05065
7657	MISAKI RING FLORALIS แหวนประดับมุกสีขาว 	https://www.tvdirect.tv/misaki-ring-floralis	990	RingFloralis	2016-12-19 20:09:49.645699	2016-12-19 20:09:49.645699
7658	จี้กังหันแชกงหมิว แบบ 1 สีทองและเงิน	https://www.tvdirect.tv/wind-turbine-necklace-model-1-gold-silver	2500	0110400204998	2016-12-19 20:09:53.619213	2016-12-19 20:09:53.619213
7659	จี้กังหันแชกงหมิว แบบ 2 สีทองและเงิน	https://www.tvdirect.tv/wind-turbine-necklace-model-2-gold-silver	2500	0110400205001	2016-12-19 20:09:56.040157	2016-12-19 20:09:56.040157
7660	จี้กังหันแชกงหมิว แบบ 4 สีทองและเงิน	https://www.tvdirect.tv/wind-turbine-necklace-model-4-gold-silver	2990	0110400205018	2016-12-19 20:09:58.537679	2016-12-19 20:09:58.537679
7661	MISAKI PEARL YOUR HEART SETมิซากิเซ็ทหัวใจ	https://www.tvdirect.tv/misaki-pearl-your-heart-set	990	0120400601048	2016-12-19 20:09:59.977396	2016-12-19 20:09:59.977396
7662	MISAKI NECKLACE BIGTIME สร้อยคอประดับมุกสีชมพู	https://www.tvdirect.tv/misaki-necklace-bigtime	2000	0120100300852	2016-12-19 20:10:01.423535	2016-12-19 20:10:01.423535
7663	MISAKI BRACELET SPIRALE สร้อยข้อมือสีเงินมีมุกตรงกลาง	https://www.tvdirect.tv/misaki-bracelet-spirale	1900	0120100301286	2016-12-19 20:10:03.110587	2016-12-19 20:10:03.110587
7664	MISAKI BRACELET MUST QCUBMUST M/L กำไลข้อมือ	https://www.tvdirect.tv/misaki-bracelet-must-qcubmust-m-l	1500	0120400500211	2016-12-19 20:10:04.726398	2016-12-19 20:10:04.726398
7665	MISAKI NECKLACE SPIRALE สร้อยเงินจี้วงกลมมีมุกตรงกลาง	https://www.tvdirect.tv/misaki-necklace-spirale	2000	0120100301309	2016-12-19 20:10:06.328734	2016-12-19 20:10:06.328734
7666	MISAKI PENDANT ETERNITY สร้อยมีจี้วงกลมประดับด้วยมุก	https://www.tvdirect.tv/misaki-pendant-eternity	1200	0120100300739	2016-12-19 20:10:07.817146	2016-12-19 20:10:07.817146
7667	MISAKI PENDANT MINI POP ART BRONZE สร้อยจี้มุก	https://www.tvdirect.tv/misaki-pendant-mini-pop-art-bronze	1200	0120100301248	2016-12-19 20:10:09.737106	2016-12-19 20:10:09.737106
8041	Aerolife เครื่องบริหารต้นขา	https://www.tvdirect.tv/aerolife	1990	0121700600014	2016-12-19 20:24:22.54814	2016-12-19 20:24:22.54814
7668	MISAKI PENDANT MINI POP ART VELOUR สร้อยยาวจี้มุกสีชมพู	https://www.tvdirect.tv/misaki-pendant-mini-pop-art-velour	1200	0120100301255	2016-12-19 20:10:11.068273	2016-12-19 20:10:11.068273
7669	MISAKI NECKLACE QUANTUM สร้อยมุกยาวสีขาว	https://www.tvdirect.tv/misaki-necklace-quantum	1500	0120100301408	2016-12-19 20:10:12.525945	2016-12-19 20:10:12.525945
7670	MISAKI PENDANT TETE A TETE(QCRPTETEATETE)สร้อยวาเลนไทน์	https://www.tvdirect.tv/misaki-pendant-tete-a-tete-qcrpteteatete	600	0120100302399	2016-12-19 20:10:13.983028	2016-12-19 20:10:13.983028
7671	MISAKI PENDENT NAUTILUS WHITE QCRRNAUTILUS สร้อยพร้อมจี้	https://www.tvdirect.tv/misaki-pendent-nautilus-white-qcrrnautilus	1200	0120400500020	2016-12-19 20:10:15.390979	2016-12-19 20:10:15.390979
7672	MISAKI NECKLACE CLEOPATRA QCRNCLEOPATRA สร้อยคอ	https://www.tvdirect.tv/misaki-necklace-cleopatra-qcrncleopatra	2000	0120400500037	2016-12-19 20:10:16.844023	2016-12-19 20:10:16.844023
7673	MISAKI NECKLACE LONG RIBBONQCRNRIBBONLONG สร้อยมุกยาว 2 สี	https://www.tvdirect.tv/misaki-necklace-long-ribbonqcrnribbonlong-2	2000	0120400500075	2016-12-19 20:10:18.243008	2016-12-19 20:10:18.243008
7674	MISAKI NECKLACE RIBBON SHORT QCRNRIBBONSHORT สร้อยคอมุก 2 สี	https://www.tvdirect.tv/misaki-necklace-ribbon-short-qcrnribbonshort-2	800	0120400500082	2016-12-19 20:10:19.640868	2016-12-19 20:10:19.640868
7675	MISAKI PENDANT MAJESTIC  QCRPMAJESTIC สร้อยคอพร้อมจี้ประดับมุก	https://www.tvdirect.tv/misaki-pendant-majestic-qcrpmajestic	1200	0120400500129	2016-12-19 20:10:21.053293	2016-12-19 20:10:21.053293
7676	MISAKI PENDANT MAJESTIC LONG QCRPMAJESTICLONG สร้อยคอพร้อมจี้ประดับมุก	https://www.tvdirect.tv/misaki-pendant-majestic-long-qcrpmajesticlong	1200	0120400500143	2016-12-19 20:10:22.543449	2016-12-19 20:10:22.543449
7677	MISAKI NECKLACE MAJESTIC QCRNMAJESTIC สร้อยคอ	https://www.tvdirect.tv/misaki-necklace-majestic-qcrnmajestic	2000	0120400500150	2016-12-19 20:10:23.893396	2016-12-19 20:10:23.893396
7678	MISAKI PENDANT SHOOTING STAR QCUPSHOOTING STAR สร้อยคอพร้อมจี้สีเงินรูปดาวตก	https://www.tvdirect.tv/misaki-pendant-shooting-star-qcupshooting-star	1200	0120400500181	2016-12-19 20:10:26.589247	2016-12-19 20:10:26.589247
7679	MISAKI BRACELET SHOOTING STAR QCUBSHOOTINGSTAR สร้อยข้อมือรูปดาวตก	https://www.tvdirect.tv/misaki-bracelet-shooting-star-qcubshootingstar	990	0120400500198	2016-12-19 20:10:28.397197	2016-12-19 20:10:28.397197
7680	MISAKI Necklace Large Saba สร้อยคอ	https://www.tvdirect.tv/misaki-necklace-large-saba	3000	0120400600294	2016-12-19 20:10:29.896412	2016-12-19 20:10:29.896412
7681	MISAKI Pendant Kermit สร้อยคอพร้อมจี้สีเงินรูปกบ	https://www.tvdirect.tv/misaki-pendant-kermit	1200	0120400600362	2016-12-19 20:10:31.302922	2016-12-19 20:10:31.302922
7682	Brooch 2x1.5 cm silver เข็มกลัดเลข 9 ไทย ประดับเพชร CZขนาด2x1.5ซม.ติดโบว์	https://www.tvdirect.tv/brooch-2x1-5-cm-silver-9-cz-2x1-5	290	0110400205056	2016-12-19 20:10:34.327286	2016-12-19 20:10:34.327286
7683	Brooch 3x3.5 cm silver เข็มกลัดเลข 9 ไทย ประดับเพชร CZ  ขนาด3x3.5ซม	https://www.tvdirect.tv/brooch-3x3-5-cm-silver-9-cz-3x3-5	490	0110400205032	2016-12-19 20:10:36.052754	2016-12-19 20:10:36.052754
7684	Brooch 3x3.5 cm silver เข็มกลัดเลข 9 ไทย ลายกนก ประดับเพชร CZขนาด3x3.5ซม	https://www.tvdirect.tv/brooch-3x3-5-cm-silver-9-cz-3x3-5-3849	490	0110400205049	2016-12-19 20:10:37.862761	2016-12-19 20:10:37.862761
7685	MISAKI EARRINGS SPIRALE SMALL ตุ้มหูวงกลมมีมุกตรงกลาง	https://www.tvdirect.tv/misaki-earrings-spirale-small	1500	0120100301293	2016-12-19 20:10:39.666272	2016-12-19 20:10:39.666272
7686	MISAKI Earring Kermit ตุ้มหูสีเงินรูปกบ	https://www.tvdirect.tv/misaki-earring-kermit	1200	0120400600379	2016-12-19 20:10:43.576325	2016-12-19 20:10:43.576325
7687	MISAKI E FATALE BLตุ้มหูมุกดำยาว	https://www.tvdirect.tv/misaki-e-fatale-bl	1200	0120400600881	2016-12-19 20:10:45.442166	2016-12-19 20:10:45.442166
7688	Eagle Eyes Vintage Americana Max	https://www.tvdirect.tv/eagle-eyes-vintage-americana-max	1990	0120300500519	2016-12-19 20:10:50.357563	2016-12-19 20:10:50.357563
7689	Eagle Eyes Vintage Americana Tiffany Black	https://www.tvdirect.tv/eagle-eyes-vintage-americana-tiffany-black	1990	0120300500526	2016-12-19 20:10:52.049031	2016-12-19 20:10:52.049031
7690	Eagle Eyes Vintage Americana Parkstreet Black	https://www.tvdirect.tv/eagle-eyes-vintage-americana-parkstreet-black	1990	0120300500557	2016-12-19 20:10:53.788451	2016-12-19 20:10:53.788451
7691	EAGLE EYES ARIANA BLACK MODEL 1	https://www.tvdirect.tv/eagle-eyes-ariana-black-model-1	1990	0120300501080	2016-12-19 20:10:55.618889	2016-12-19 20:10:55.618889
7692	RAYBAN WAYFARER ASIAN FIT RB2140F 901	https://www.tvdirect.tv/rayban-wayfarer-asian-fit-rb2140f-901	6000	0110200206734	2016-12-19 20:10:57.366825	2016-12-19 20:10:57.366825
7693	RAYBAN YOUNGSTER RB4222 865/13	https://www.tvdirect.tv/rayban-youngster-rb4222-865-13	4900	0110200206727	2016-12-19 20:10:59.229768	2016-12-19 20:10:59.229768
7694	RAYBAN YOUNGSTER RB4222 622/8G	https://www.tvdirect.tv/rayban-youngster-rb4222-622-8g	4900	0110200206710	2016-12-19 20:11:03.270995	2016-12-19 20:11:03.270995
7695	RAYBAN ERIKA RB4171F 865/13	https://www.tvdirect.tv/rayban-erika-rb4171f-865-13	4900	0110200206703	2016-12-19 20:11:04.936155	2016-12-19 20:11:04.936155
7696	RAYBAN ERIKA RB4171F 622/8G	https://www.tvdirect.tv/rayban-erika-rb4171f-622-8g	4900	0110200206699	2016-12-19 20:11:06.660979	2016-12-19 20:11:06.660979
7697	RAYBAN AVIATOR LARGE METAL RB3025 001/3E	https://www.tvdirect.tv/rayban-aviator-large-metal-rb3025-001-3e	6400	0110200206682	2016-12-19 20:11:08.476889	2016-12-19 20:11:08.476889
7698	RAYBAN AVIATOR LARGE METAL RB3025 112/85	https://www.tvdirect.tv/rayban-aviator-large-metal-rb3025-112-85	6400	0110200206675	2016-12-19 20:11:10.253926	2016-12-19 20:11:10.253926
7699	RAYBAN AVIATOR LARGE METAL RB3025 112/93	https://www.tvdirect.tv/rayban-aviator-large-metal-rb3025-112-93	6850	0110200206668	2016-12-19 20:11:11.887136	2016-12-19 20:11:11.887136
7700	RAYBAN AVIATOR LARGE METAL RB3025 029/30	https://www.tvdirect.tv/rayban-aviator-large-metal-rb3025-029-30	6850	0110200206651	2016-12-19 20:11:13.650897	2016-12-19 20:11:13.650897
7701	RAYBAN AVIATOR LARGE METAL RB3025 W0879	https://www.tvdirect.tv/rayban-aviator-large-metal-rb3025-w0879	6000	0110200206644	2016-12-19 20:11:15.353405	2016-12-19 20:11:15.353405
7702	RAYBAN AVIATOR LARGE METAL RB3025 L2823	https://www.tvdirect.tv/rayban-aviator-large-metal-rb3025-l2823	6000	0110200206637	2016-12-19 20:11:17.011827	2016-12-19 20:11:17.011827
7703	RAYBAN AVIATOR LARGE METAL RB3025 L0205	https://www.tvdirect.tv/rayban-aviator-large-metal-rb3025-l0205	6000	0110200206620	2016-12-19 20:11:18.703709	2016-12-19 20:11:18.703709
7704	EAGLE EYES FREEDOM SERIES SET  แถมฟรี กล้องส่องทางไกล	https://www.tvdirect.tv/eagle-eyes-freedom-series-set-free	2990	EagleEyeFreedomSeriesSet	2016-12-19 20:11:19.544502	2016-12-19 20:11:19.544502
7705	Eagle Eyes Pro-Master GS2 TV SET แถมฟรี กล้องส่องทางไกล	https://www.tvdirect.tv/eagle-eyes-pro-master-gs2-tv-set-free	2990	EagleEyesProMasterGS2TVSET	2016-12-19 20:11:20.350758	2016-12-19 20:11:20.350758
7706	EAGLE EYES AVIATOR FOLD-UP TV SET แถม EAGLE EYE - BINOCULARS VIVITAR#90040	https://www.tvdirect.tv/eagle-eyes-aviator-fold-up-tv-set	2990	EagleEyeAviator	2016-12-19 20:11:21.192439	2016-12-19 20:11:21.192439
7707	Eagle Eyes PanoVu Model 2	https://www.tvdirect.tv/eagle-eyes-panovu-model-2	990	0112200300023	2016-12-19 20:11:22.850629	2016-12-19 20:11:22.850629
7708	Eagle Eyes Rocketeer Blue Model 1 แว่นตาอีเกิ้ลอายส์ ร็อคคีตเตอร์ สีน้ำเงิน	https://www.tvdirect.tv/eagle-eyes-rocketeer-blue-model1	990	0120100302214	2016-12-19 20:11:25.734383	2016-12-19 20:11:25.734383
7709	Eagle Eyes Rocketeer Red Model 1 แว่นตาอีเกิ้ลอายส์ ร็อคคีตเตอร์ สีแดง	https://www.tvdirect.tv/eagle-eyes-rocketeer-red-model1	990	0120100302207	2016-12-19 20:11:27.281331	2016-12-19 20:11:27.281331
7710	Eagle Eyes Extreme SL Model 2	https://www.tvdirect.tv/eagle-eyes-extreme-sl-model-2	990	0122700500090	2016-12-19 20:11:28.972248	2016-12-19 20:11:28.972248
7711	Eagle Eyes Revo Amethyst Aviator Model 1	https://www.tvdirect.tv/eagle-eyes-revo-amethyst-aviator-model-1-binoculars-vivitar-990	2990	0120300500656	2016-12-19 20:11:30.731727	2016-12-19 20:11:30.731727
7712	Eagle Eyes Revo Emerald Aviator Model 1	https://www.tvdirect.tv/eagle-eyes-revo-emerald-aviator-model-1-binoculars-vivitar-990	2490	0120300500670	2016-12-19 20:11:32.40423	2016-12-19 20:11:32.40423
7713	EAGLE EYES-EMERALE GREEN MODEL1 อีเกิลอายสอีเมอรัล กรีน โมเดล1	https://www.tvdirect.tv/eagle-eyes-emerale-green-model1-1	990	0122200300138	2016-12-19 20:11:34.12813	2016-12-19 20:11:34.12813
7714	EAGLE EYES  PRO-XL BLACK MODEL 1	https://www.tvdirect.tv/eagle-eyes-pro-xl-black-model-1	1990	0120300500984	2016-12-19 20:11:35.554188	2016-12-19 20:11:35.554188
7715	EAGLE EYES ROXIE TORTOISE MODEL 1	https://www.tvdirect.tv/eagle-eyes-roxie-tortoise-model-1	1990	0120300501059	2016-12-19 20:11:37.22207	2016-12-19 20:11:37.22207
7716	Plernarie Sunscreen 15 ml. แถมฟรี! Serum  5 ml.	https://www.tvdirect.tv/plernarie-sunscreen-15-ml-serum-5-ml	799	0110700208306	2016-12-19 20:11:44.98368	2016-12-19 20:11:44.98368
7717	Plernarie Repairing Serum 15 ml.	https://www.tvdirect.tv/plernarie-repairing-serum-15-ml	1200	0110700208313	2016-12-19 20:11:47.55548	2016-12-19 20:11:47.55548
7718	Plernarie Sunscreen + Serum  แถมฟรี! กระเป๋า	https://www.tvdirect.tv/plernarie-sunscreen-serum	1990	0110700208320	2016-12-19 20:11:50.163982	2016-12-19 20:11:50.163982
7719	RENE BETA GLUCAN SERUM 30 ML.	https://www.tvdirect.tv/rene-beta-glucan-serum-30-ml	1290	0110700301090	2016-12-19 20:11:52.023001	2016-12-19 20:11:52.023001
7720	ARTISCENT MIRACLE BRIGHTENING DAY CREAM	https://www.tvdirect.tv/artiscent-miracle-brightening-day-cream	1780	0110700208658	2016-12-19 20:11:54.054389	2016-12-19 20:11:54.054389
7721	ARTISCENT MIRACLE BRIGHTENING NIGHT CREAM	https://www.tvdirect.tv/artiscent-miracle-brightening-night-cream	1780	0110700208665	2016-12-19 20:11:55.950198	2016-12-19 20:11:55.950198
7722	ARTISCENT ABSOLUTE AGE DEFYING DAY CREAM	https://www.tvdirect.tv/artiscent-absolute-age-defying-day-cream	1980	0110700208672	2016-12-19 20:11:57.845271	2016-12-19 20:11:57.845271
7723	ARTISCENT ABSOLUTE AGE DEFYING NIGHT CREAM	https://www.tvdirect.tv/artiscent-absolute-age-defying-night-cream	1980	0110700208689	2016-12-19 20:11:59.624682	2016-12-19 20:11:59.624682
7724	TRILOGY ORGANIC ROSEHIP OIL 20MLน้ำมันสกัดโรสฮิป	https://www.tvdirect.tv/trilogy-organic-rosehip-oil-20ml	840	0110700208764	2016-12-19 20:12:02.302293	2016-12-19 20:12:02.302293
7725	TRILOGY ORGANIC ROSEHIP OIL 45MLน้ำมันสกัดโรสฮิป	https://www.tvdirect.tv/trilogy-organic-rosehip-oil-45ml	1480	0110700208771	2016-12-19 20:12:04.951357	2016-12-19 20:12:04.951357
7726	TRILOGY ROSEHIP OIL LIP BALM 7MLลิปบาล์มโรสฮิป	https://www.tvdirect.tv/trilogy-rosehip-oil-lip-balm-7ml	760	0110700208788	2016-12-19 20:12:07.572018	2016-12-19 20:12:07.572018
7727	TRILOGY ROSEHIP OIL ANTIOXIDANT 30MLออยบำรุงผิว	https://www.tvdirect.tv/trilogy-rosehip-oil-antioxidant-30ml	1280	0110700208795	2016-12-19 20:12:10.113878	2016-12-19 20:12:10.113878
7728	Best Sea Cream ครีมปลาดาว	https://www.tvdirect.tv/best-sea-cream	1290	0110700208269	2016-12-19 20:12:12.844994	2016-12-19 20:12:12.844994
7729	JSP Milis Cream ครีมว่านตาลเดี่ยว	https://www.tvdirect.tv/jsp-milis-cream	1290	0110700208740	2016-12-19 20:12:15.460366	2016-12-19 20:12:15.460366
7730	Golden Essence Gel 1 แถม 1 	https://www.tvdirect.tv/golden-essence-gel-1-1	0	GoldenEssenceGel1Get1	2016-12-19 20:12:16.316286	2016-12-19 20:12:16.316286
7731	ADEN WEISS+ Cellular Cream	https://www.tvdirect.tv/aden-weiss-cellular-cream	1200	0110700209477	2016-12-19 20:12:19.022585	2016-12-19 20:12:19.022585
7732	ido Snow White Eau De Parfum ไอดูน้ำหอมกลิ่นสโนไวท์ 110 ML.	https://www.tvdirect.tv/ido-snow-white-eau-de-parfum-110-ml	360	0110700209415	2016-12-19 20:12:20.949793	2016-12-19 20:12:20.949793
7733	MOLELA ADVANCED PERFECTING SERUM เซรั่มบำรุงผิว	https://www.tvdirect.tv/molela-advanced-perfecting-serum	850	0110700209491	2016-12-19 20:12:23.478649	2016-12-19 20:12:23.478649
7734	ANNA WHITE PERFECT CREAM 50G. ครีมบำรุงผิวหน้า	https://www.tvdirect.tv/anna-white-perfect-cream-50g	1200	0110700209563	2016-12-19 20:12:25.197416	2016-12-19 20:12:25.197416
7735	RIACE AQUA MULTI WHITENING GEL CREAM ครีมบำรุงผิว	https://www.tvdirect.tv/riace-aqua-multi-whitening-gel-cream	1650	0110700209505	2016-12-19 20:12:28.220816	2016-12-19 20:12:28.220816
7736	DERMANOUR SET 6D NANO SUPER BRUSH เดอร์มาเนอร์เซตทำความสะอาดหน้า	https://www.tvdirect.tv/dermanour-set-6d-nano-super-brush	1699	0110700209617	2016-12-19 20:12:31.813329	2016-12-19 20:12:31.813329
7737	Rene Beta Glucan Facial Booster Gel เรเน่	https://www.tvdirect.tv/rene-beta-glucan-facial-booster-gel	1590	0110700301540	2016-12-19 20:12:33.865369	2016-12-19 20:12:33.865369
7738	Nature Republic Soothing & Moisture Aloe Vera 92% Soothing Gel  เจลว่านหางจระเข้ 92%	https://www.tvdirect.tv/nature-republic-soothing-moisture-aloe-vera-92-soothing-gel-92	350	0110700209693	2016-12-19 20:12:35.434104	2016-12-19 20:12:35.434104
7739	Vaseline Lip Therapy Rosy Lips ลิปทรีทเมนต์	https://www.tvdirect.tv/vaseline-lip-therapy-rosy-lips	185	0110700209709	2016-12-19 20:12:36.979988	2016-12-19 20:12:36.979988
7740	BIOSKIN SET CC AQUA CUSHION HD NO.23 HYLU COLLAGEN เซตแป้งคุชชั่นเบอร์ 23 และ เซรั่มคอลลาเจน	https://www.tvdirect.tv/bioskin-set-cc-aqua-cushion-hd-no-23-hylu-collagen-23	1380	0110700209679	2016-12-19 20:12:38.847879	2016-12-19 20:12:38.847879
7741	IKI ULTRA WHITE+LIFTING MASK 15G เจลมาร์กหน้าทองคำ ยกกระชับผิวหน้า 15กรัม	https://www.tvdirect.tv/iki-ultra-white-lifting-mask-15g-15	1190	0110700209815	2016-12-19 20:12:40.437426	2016-12-19 20:12:40.437426
7742	BELLE JOUR RAPID FACE LIFT SERUM 12G เซรั่ม ยกกระชับและลดเลือนริ้วรอยอย่างรวดเร็ว 12กรัม	https://www.tvdirect.tv/belle-jour-rapid-face-lift-serum-12g-12	999	0110700209822	2016-12-19 20:12:42.275419	2016-12-19 20:12:42.275419
7743	BEAU VISAGE ANTI-AGING MOISTURIZER 25ML ครีมต่อต้านริ้วรอยและกระชับผิว 25กรัม	https://www.tvdirect.tv/beau-visage-anti-aging-moisturizer-25ml-25	999	0110700209839	2016-12-19 20:12:44.926198	2016-12-19 20:12:44.926198
7744	CNP LABORATORY PROPOLIS ENERGY AMPULE 35ML เซรั่มบำรุงผิวขาวสกัดจากรังผึ้ง 35 มล	https://www.tvdirect.tv/cnp-laboratory-propolis-energy-ampule-35ml-35	2790	0110700210300	2016-12-19 20:12:46.480126	2016-12-19 20:12:46.480126
7745	CNP LABORATORY PROPOLIS SET ชุดพรอโพลิส เอนเนอจี แอมพลู เซต	https://www.tvdirect.tv/cnp-laboratory-propolis-set	1990	0110700210294	2016-12-19 20:12:48.040361	2016-12-19 20:12:48.040361
7746	PUERARIAN INTENSIVE DAY CREAM 30 g พิวราเรี่ยน เดย์ครีม 30 กรัม	https://www.tvdirect.tv/puerarian-intensive-day-cream-30-g-30	1250	0110700301568	2016-12-19 20:12:49.860659	2016-12-19 20:12:49.860659
7747	PUERARIAN INTENSIVE NIGHT CREAM 30 g พิวราเรี่ยน ไนท์ครีม 30 กรัม	https://www.tvdirect.tv/puerarian-intensive-night-cream-30-g-30	1250	0110700301582	2016-12-19 20:12:51.435741	2016-12-19 20:12:51.435741
7748	PUERARIAN INTENSIVE FACIAL MASK 30 g พิวราเรี่ยนเฟเชิลมาร์คครีม 30 กรัม	https://www.tvdirect.tv/puerarian-intensive-facial-mask-30-g	1250	0110700301599	2016-12-19 20:12:53.158444	2016-12-19 20:12:53.158444
7749	PUERARIAN ESSENCE EYE GEL 20 g พิวราเรี่ยนเอสเซ้นส์ อายเจล 20 กรัม	https://www.tvdirect.tv/puerarian-essence-eye-gel-20-g	900	0110700301603	2016-12-19 20:12:54.760926	2016-12-19 20:12:54.760926
7750	HUG CORRIEDALE  ชุดลดริ้วรอย 5 ชิ้นฟรีถุงผ้า	https://www.tvdirect.tv/hug-corriedale-6	1199	0110700210355	2016-12-19 20:12:56.593242	2016-12-19 20:12:56.593242
7751	HUG CORRIEDALE  ชุดผิวสวยใส 3 ชิ้น	https://www.tvdirect.tv/hug-corriedale-3	799	0110700210379	2016-12-19 20:12:58.336468	2016-12-19 20:12:58.336468
7752	HUG CORRIEDALE ชุุดหน้าขาวใส 5ฟรีถุงผ้า	https://www.tvdirect.tv/hug-corriedale-5	1199	0110700210362	2016-12-19 20:13:00.692988	2016-12-19 20:13:00.692988
7753	RENE Beta Glucan Travel Set 3 Pcs ชุดครีมบำรุงผิว  3 ชิ้น	https://www.tvdirect.tv/rene-beta-glucan-travel-set-3-pcs-3	990	0110700301465	2016-12-19 20:13:02.625792	2016-12-19 20:13:02.625792
7754	Nuvite Magic Plus White Cream 30 G. นูไวท์เมจิกพลัสไวท์ครีม ขนาด 30 กรัม	https://www.tvdirect.tv/nuvite-magic-plus-white-cream-30-g-30	590	0120700400013	2016-12-19 20:13:04.483892	2016-12-19 20:13:04.483892
7755	RENE' ALL SEASON CLEANSER 100 ML.	https://www.tvdirect.tv/rene-all-season-cleanser	590	0110700301366	2016-12-19 20:13:06.415985	2016-12-19 20:13:06.415985
7756	RENE' SUNSCREEN SPF 50 PA+++ PLUS BETA GLUCAN 30 g.	https://www.tvdirect.tv/rene-sunscreen-spf-50-pa-plus-beta-glucan	1190	0110700301373	2016-12-19 20:13:09.325829	2016-12-19 20:13:09.325829
7757	RENE' BETA GLUCAN SET Serum+Cleansing+Sunscreen+PVC Bag 	https://www.tvdirect.tv/rene-beta-glucan-set	2990	0110700301458	2016-12-19 20:13:11.097716	2016-12-19 20:13:11.097716
7758	Nuvite Melasis Cream 30 g นูไวท์ครีมทาหน้า 30 กรัม	https://www.tvdirect.tv/nuvite-melasis-cream-30-g-30	1290	0120700601274	2016-12-19 20:13:12.80245	2016-12-19 20:13:12.80245
7759	Bawang Anti Hair Fall Pack for Ladies ป้าหวัง สูตรลดการขาดหลุดร่วง สำหรับผู้หญิง แพ็ค แชมพู 400 ML + ครีมนวด 200 ML	https://www.tvdirect.tv/bawang-anti-hair-fall-pack-for-ladies-400-ml-200-ml	598	0120700400440	2016-12-19 20:13:16.268039	2016-12-19 20:13:16.268039
7760	Bawang Anti-Hair Fall Shampoo Professional Pack 200 Ml. ป้าหวังชุดแชมพูสูตรลดการขาดหลุดร่วงของเส้นผม	https://www.tvdirect.tv/bawang-anti-hair-fall-shampoo-professional-pack-200-ml	498	0120300301215	2016-12-19 20:13:18.10668	2016-12-19 20:13:18.10668
7761	Bawang Hair Darkening Professional Pack 200 ML. ป้าหวัง แชมพูสูตรเพื่อผมดกดำเงางาม	https://www.tvdirect.tv/bawang-hair-darkening-professional-pack-200-ml	498	0120300301222	2016-12-19 20:13:20.035752	2016-12-19 20:13:20.035752
7762	Bawang hair Conditioner 220 G. ป้าหวัง ครีมนวดผมขนาด 220 กรัม	https://www.tvdirect.tv/bawang-hair-conditioner-220-g-220	138	0120300301260	2016-12-19 20:13:21.79044	2016-12-19 20:13:21.79044
7763	Bawang Repairing and Nourishing Shampoo 400 Ml. ป้าหวังแชมพูฟื้นบำรุงเส้นผมเสีย	https://www.tvdirect.tv/bawang-repairing-and-nourishing-shampoo-400-ml	238	0120300301239	2016-12-19 20:13:23.718834	2016-12-19 20:13:23.718834
7764	Bawang Hair Strengthening Shampoo 400 Ml. ป้าหวังแชมพูสูตรบำรุงเส้นผม	https://www.tvdirect.tv/bawang-hair-strengthening-shampoo-400-ml	238	0120300301246	2016-12-19 20:13:25.573123	2016-12-19 20:13:25.573123
7765	Bawang Anti-Dandruff Shampoo 400 ml. ป้าหวังแชมพูสูตรป้องกันรังแคขนาด 400 มล.	https://www.tvdirect.tv/bawang-anti-dandruff-shampoo-400-ml-400	238	0120300301253	2016-12-19 20:13:27.362238	2016-12-19 20:13:27.362238
7766	Bawang Anti Hair Fall Pack for Ladies ป้าหวัง สูตรลดการขาดหลุดร่วง สำหรับผู้หญิง แพ็ค แชมพู 200 ml. + ครีมนวด 200 ml.	https://www.tvdirect.tv/bawang-anti-hair-fall-pack-for-ladies-200-ml-200-ml	298	0120700400068	2016-12-19 20:13:29.30847	2016-12-19 20:13:29.30847
7767	Bawang Anti-Hair Fall Shampoo For Ladies 400 ML. ป้าหวัง สูตรลดการหลุดร่วงของเส้นผมสำหรับผู้หญิง	https://www.tvdirect.tv/bawang-anti-hair-fall-shampoo-for-ladies-400-ml-1939	368	0120700400648	2016-12-19 20:13:31.179844	2016-12-19 20:13:31.179844
7768	ARTISCENT Natural Hair Dye สมุนไพรเปลี่ยนสีผม	https://www.tvdirect.tv/artiscent-natural-hair-dye	650	0110700208641	2016-12-19 20:13:32.992473	2016-12-19 20:13:32.992473
7769	ARTISCENT Relaxing Aroma Shampoo	https://www.tvdirect.tv/artiscent-relaxing-aroma-shampoo	280	0110700208696	2016-12-19 20:13:34.804424	2016-12-19 20:13:34.804424
7770	ARTISCENT Relaxing Aroma Conditioner	https://www.tvdirect.tv/artiscent-relaxing-aroma-conditioner	295	0110700208702	2016-12-19 20:13:36.669574	2016-12-19 20:13:36.669574
7771	ARTISCENT Wonderful Day (Relaxing Set)	https://www.tvdirect.tv/artiscent-wonderful-day-relaxing-set	1250	0110700208733	2016-12-19 20:13:38.563788	2016-12-19 20:13:38.563788
7772	Bawang Anti Hair Fall Pack for Ladies ป้าหวัง สูตรลดการขาดหลุดร่วง สำหรับผู้หญิง แพ็ค แชมพู 400 ML + ครีมนวด 200 ML 1 Free 1	https://www.tvdirect.tv/bawang-anti-hair-fall-pack-for-ladies-400-200-ml	890	BAWANGANTIHAIRFALLPACKFORLADIES400	2016-12-19 20:13:39.361392	2016-12-19 20:13:39.361392
7773	Speed Hair Color - Black แชมพูปิดผมขาวจากธรรมชาติ 1 Free 1 สีดำ	https://www.tvdirect.tv/speed-hair-color-black-1-free-1	1290	0110700209512	2016-12-19 20:13:41.341541	2016-12-19 20:13:41.341541
7774	Speed Hair Color - Brown แชมพูปิดผมขาวจากธรรมชาติ 1 Free 1 สีน้ำตาล	https://www.tvdirect.tv/speed-hair-color-brown-1-free-1	1290	0110700209529	2016-12-19 20:13:43.396579	2016-12-19 20:13:43.396579
7775	BAWANG ANTI HAIR FALL & RENEWAL PACKAGE ป้าหวังแอนตี้ แฮร์ ฟอล แชมพู 200ml + เซรั่ม 55ml	https://www.tvdirect.tv/bawang-anti-hair-fall-renewal-package-200-ml-55-ml	698	0120700400471	2016-12-19 20:13:45.254301	2016-12-19 20:13:45.254301
7776	 VELFORM HAIR 2 ผลิตภัณฑ์ดูแลเส้นผม SET 2 ขวด 3 Set 	https://www.tvdirect.tv/velform-hair-2-set-2-3-set	5970	VelformHair3set	2016-12-19 20:13:46.110978	2016-12-19 20:13:46.110978
7777	Express Color Black ครีมปกปิดผมขาว	https://www.tvdirect.tv/express-color-black	1290	0120700601069	2016-12-19 20:13:47.99246	2016-12-19 20:13:47.99246
7778	TRBO RICE BRAN SOAP สบู่น้ำมันรำข้าว	https://www.tvdirect.tv/trbo-rice-bran-soap	259	0110700208559	2016-12-19 20:13:51.355802	2016-12-19 20:13:51.355802
7779	Angel looka Moisturizing Hand Mask มาร์คมือ	https://www.tvdirect.tv/angel-looka-moisturizing-hand-mask	599	0110700209536	2016-12-19 20:13:53.943714	2016-12-19 20:13:53.943714
7780	Angel looka Moisturizing Foot Mask มาร์คเท้า	https://www.tvdirect.tv/angel-looka-moisturizing-foot-mask	599	0110700209543	2016-12-19 20:13:56.454124	2016-12-19 20:13:56.454124
7781	Nuvite Gluta Soap นูไวท์สบู่กลูต้า	https://www.tvdirect.tv/nuvite-gluta-soap	590	0120700601296	2016-12-19 20:13:58.09754	2016-12-19 20:13:58.09754
7782	Lucas Papaw Ointment 25g บาล์มสารพัดประโยชน์จากส่วนผสมของมะละกอ 25 กรัม	https://www.tvdirect.tv/lucas-papaw-ointment-25g-25	350	0110700209747	2016-12-19 20:13:59.748494	2016-12-19 20:13:59.748494
7783	DR.ATO ESSENTIAL MOISTURE WASH 225 ML ครีมอาบน้ำ 225 มล.	https://www.tvdirect.tv/dr-ato-essential-moisture-wash-225-ml-225	590	0112600200572	2016-12-19 20:14:01.730231	2016-12-19 20:14:01.730231
7784	DR.ATO ESSENTIAL MOISTURE LOTION 225ML  โลชั่นบำรุงผิว 225 มล.	https://www.tvdirect.tv/dr-ato-essential-moisture-lotion-225ml-225	690	0112600200565	2016-12-19 20:14:03.662576	2016-12-19 20:14:03.662576
7785	SANTENATUR ครีมบำรุุงผิวจากมันฝรั่ง 30 ml	https://www.tvdirect.tv/santenatur-30-ml	350	0110700209761	2016-12-19 20:14:05.452391	2016-12-19 20:14:05.452391
7786	SANTENATUR ครีมบำรุงผิวจากมันฝรั่ง 50 ml	https://www.tvdirect.tv/santenatur-50-ml	590	0110700209778	2016-12-19 20:14:09.128195	2016-12-19 20:14:09.128195
7787	SANTENATUR ครีมบำรุงผิวจากมันฝรั่ง 150ML	https://www.tvdirect.tv/santenatur-150ml	1290	0110700209785	2016-12-19 20:14:10.786011	2016-12-19 20:14:10.786011
7788	SANTENATUR ครีมบำรุงผิวเด็กจากมันฝรั่ง 50ML	https://www.tvdirect.tv/santenatur-50ml	790	0110700209792	2016-12-19 20:14:12.452691	2016-12-19 20:14:12.452691
7789	SANTENATUR ครีมบำรุงผิวเด็กจากมันฝรั่ง 150ML	https://www.tvdirect.tv/santenatur-150ml-3269	1490	0110700209808	2016-12-19 20:14:14.134762	2016-12-19 20:14:14.134762
7790	PUERARIAN SOAP 80 g พิวราเรี่ยนสบู่กวาวเครือ 80 กรัม	https://www.tvdirect.tv/puerarian-soap-80-g-80	150	0110700301575	2016-12-19 20:14:15.760077	2016-12-19 20:14:15.760077
7791	JML PED EGG (WHITE) อุปกรณ์ดูแลผิวเท้า สีขาว	https://www.tvdirect.tv/jml-ped-egg-white	499	0110700301267	2016-12-19 20:14:19.213747	2016-12-19 20:14:19.213747
7792	JML PED EGG (PINK)อุปกรณ์ดูแลผิวเท้า สีชมพู	https://www.tvdirect.tv/jml-ped-egg-pink	499	0110700301274	2016-12-19 20:14:21.151813	2016-12-19 20:14:21.151813
7793	KLEEN KUT WET&DRY ที่โกนหนวดพกพาชนิดกันน้ำ	https://www.tvdirect.tv/kleen-kut-wet-dry	1490	0120700601175	2016-12-19 20:14:23.125907	2016-12-19 20:14:23.125907
7794	Puerarian พิวราเรียน เซรั่มกระชับทรวงอก ขนาด 60 ml.	https://www.tvdirect.tv/puerarian-breast-serum-60-ml	1250	0110700301335	2016-12-19 20:14:25.004551	2016-12-19 20:14:25.004551
7795	Puerarian พิวราเรียน เซรั่มกระชับทรวงอก ขนาด 60 ml. จำนวน 2 ขวด แถมฟรี! พิวร่าพลัส 60 แคปซูล 1 ขวด	https://www.tvdirect.tv/puerarian-breast-serum-60-ml-free-puerarian-plus-60-capsule	2500	0110700301410	2016-12-19 20:14:26.954054	2016-12-19 20:14:26.954054
7796	ครีมกระชับทรวงอก Boo Ben Breast cream	https://www.tvdirect.tv/boo-ben-breast-cream	690	0110700208450	2016-12-19 20:14:28.546066	2016-12-19 20:14:28.546066
7797	Thip Siam herbal toothpaste 120 g ยาสีฟันสมุนไพรทิพสยาม 120 กรัม	https://www.tvdirect.tv/thip-siam-herbal-toothpaste-120-g-120	175	0111600208625	2016-12-19 20:14:31.110301	2016-12-19 20:14:31.110301
7798	Thip Siam herbal toothpaste 120 g ยาสีฟันสมุนไพรทิพสยาม 120 กรัมแพ็ค 3 ฟรี 1	https://www.tvdirect.tv/thip-siam-herbal-toothpaste-120-g-120-3-1	525	0111600208632	2016-12-19 20:14:33.778956	2016-12-19 20:14:33.778956
7799	REMINGTON Hair Clipper ปัตตาเลี่ยน รุ่นHC-5356	https://www.tvdirect.tv/remington-hair-clipper-hc-5356	3800	0110700210003	2016-12-19 20:14:35.324967	2016-12-19 20:14:35.324967
7800	REMINGTON Hair Clipper ปัตตาเลี่ยนแต่งผม รุ่นAPPRENTICE HC-5018	https://www.tvdirect.tv/remington-hair-clipper-apprentice-hc-5018	1950	0110700210058	2016-12-19 20:14:36.874583	2016-12-19 20:14:36.874583
7801	REMINGTON SHAVER อุปกรณ์ตกแต่งหนวดเครา รุ่นMB-4110	https://www.tvdirect.tv/remington-shaver-mb-4110	2950	0110700210065	2016-12-19 20:14:38.441607	2016-12-19 20:14:38.441607
7802	REMINGTON SHAVERอุปกรณ์ตกแต่งหนวดเครา รุ่นPG-6130	https://www.tvdirect.tv/remington-shaver-pg-6130	2300	0110700210072	2016-12-19 20:14:40.036963	2016-12-19 20:14:40.036963
7803	REMINGTON SHAVER อุปกรณ์ตกแต่งหนวดเครา รุ่นPG-180	https://www.tvdirect.tv/remington-shaver-pg-180	1500	0110700210089	2016-12-19 20:14:41.634951	2016-12-19 20:14:41.634951
7804	REMINGTON SHAVER เครื่องโกนหนวด รุ่นPR-1230	https://www.tvdirect.tv/remington-shaver-pr-1230	3900	0110700210096	2016-12-19 20:14:43.278732	2016-12-19 20:14:43.278732
7805	REMINGTON CORDLESS EPILATOR อุปกรณ์ตกแต่งขนสุภาพสตรี WDF-4815C	https://www.tvdirect.tv/remington-cordless-epilator-wdf-4815c	2000	0110700210102	2016-12-19 20:14:44.829647	2016-12-19 20:14:44.829647
7806	REMINGTON CORDLESS EPILATOR อุปกรณ์ตกแต่งขนสุภาพสตรี EP-7010	https://www.tvdirect.tv/remington-cordless-epilator-ep-7010	3100	0110700210119	2016-12-19 20:14:46.435067	2016-12-19 20:14:46.435067
7807	Puerarian พิวราเรียน เซรั่มกระชับทรวงอก ขนาด 60 ml.	https://www.tvdirect.tv/puerarian-60-ml-1	1251	Puerarian1Bath	2016-12-19 20:14:47.239839	2016-12-19 20:14:47.239839
7808	Slique อุปกรณ์ถอนขน	https://www.tvdirect.tv/slique	299	0120700500010	2016-12-19 20:14:49.079945	2016-12-19 20:14:49.079945
7809	Derma Seta เครื่องบอดี้โฮมสปา	https://www.tvdirect.tv/derma-seta	990	0122600300011	2016-12-19 20:14:50.809286	2016-12-19 20:14:50.809286
7810	Maxi Styler อุปกรณ์จัดแต่งทรงผม	https://www.tvdirect.tv/maxi-styler	1990	0110700301014	2016-12-19 20:14:52.692106	2016-12-19 20:14:52.692106
7811	SECRET EXTENSION LIGHT BROWN แฮร์พีชเพิ่มวอลลุ่ม	https://www.tvdirect.tv/secret-extension-light-brown	390	0120700601113	2016-12-19 20:14:55.752937	2016-12-19 20:14:55.752937
7812	SECRET EXTENSION DARK BROWN แฮร์พีชเพิ่มวอลลุ่ม	https://www.tvdirect.tv/secret-extension-dark-brown	390	0120700601120	2016-12-19 20:14:57.53591	2016-12-19 20:14:57.53591
7813	SECRET EXTENSION MEDIUM BROWN แฮร์พีชเพิ่มวอลลุ่ม	https://www.tvdirect.tv/secret-extension-medium-brown	390	0120700601137	2016-12-19 20:14:59.307445	2016-12-19 20:14:59.307445
7814	SECRET EXTENSION BLACK/ BROWN แฮร์พีชเพิ่มวอลลุ่ม	https://www.tvdirect.tv/secret-extension-black-brown	390	0120700601144	2016-12-19 20:15:01.148007	2016-12-19 20:15:01.148007
7815	Baby Foot Citrus ผลิตภัณฑ์ปรับสภาพผิวเท้า	https://www.tvdirect.tv/baby-foot-citrus	690	0120700600901	2016-12-19 20:15:04.07805	2016-12-19 20:15:04.07805
7816	Bullet Pedi Pro อุปกรณ์กำจัดขนและดูแลเท้า	https://www.tvdirect.tv/bullet-pedi-pro	399	0120300302083	2016-12-19 20:15:06.081617	2016-12-19 20:15:06.081617
7817	Puerarian เซรั่มกระชับทรวงอกพิวราเรียน ขนาด 60 Ml. ซื้อ 2 แถม 1 ชิ้น	https://www.tvdirect.tv/puerarian-60-ml-2-1	2500	0110700301496	2016-12-19 20:15:07.961403	2016-12-19 20:15:07.961403
7818	Oryze Jasmine Ryce 2 Way โอริเซ่ จัสมินไรซ์ ทูเวย์ แป้งทาหน้าผสมรองพื้นและกันแดด	https://www.tvdirect.tv/oryze-jasmine-ryce-2-way	1250	OryzeJasmineRyce2Way1pack	2016-12-19 20:15:10.951936	2016-12-19 20:15:10.951936
7819	Qtiie.JP JAPAN 3D Nose Set เซ็ทแต่งจมูก	https://www.tvdirect.tv/3d-nose-set-by-qtiie-jp-japan	379	0110700208221	2016-12-19 20:15:13.607881	2016-12-19 20:15:13.607881
7820	DERMACOL FILM STUDIO BARRANDOV PRAGUE Dermacol make-up cover ครีมรองพื้น เดอร์มาคอล เบอร์210	https://www.tvdirect.tv/dermacol-film-studio-barrandov-prague-dermacol-make-up-cover-210-1	790	0110700209655	2016-12-19 20:15:15.306862	2016-12-19 20:15:15.306862
7821	DERMACOL FILM STUDIO BARRANDOV PRAGUE Dermacol make-up cover ครีมรองพื้น เดอร์มาคอล เบอร์207	https://www.tvdirect.tv/dermacol-film-studio-barrandov-prague-dermacol-make-up-cover-207-1	790	0110700209662	2016-12-19 20:15:16.843564	2016-12-19 20:15:16.843564
7822	SOLA PRIMER TEINT FOUNDATION SPF20 รองพื้น#10	https://www.tvdirect.tv/sola-primer-teint-foundation-spf20-10	650	0110700209723	2016-12-19 20:15:18.532815	2016-12-19 20:15:18.532815
7823	SOLA PRIMER TEINT FOUNDATION SPF20 รองพื้น#20	https://www.tvdirect.tv/sola-primer-teint-foundation-spf20-20	650	0110700209730	2016-12-19 20:15:20.220962	2016-12-19 20:15:20.220962
7824	TRUE COVER REDEFINED	https://www.tvdirect.tv/true-cover-redefined	1490	truecoverredefined	2016-12-19 20:15:21.087841	2016-12-19 20:15:21.087841
7825	DERMACOL FOUNDATION-ครีมรองพื้น 207 Set 2 ชิ้น	https://www.tvdirect.tv/dermacol-film-studio-barrandov-prague-dermacol-make-up-cover-207	1099	DermacolFoundation207	2016-12-19 20:15:21.892883	2016-12-19 20:15:21.892883
7826	DERMACOL FOUNDATION-ครีมรองพื้น 210 Set 2 ชิ้น	https://www.tvdirect.tv/dermacol-film-studio-barrandov-prague-dermacol-make-up-cover-210	1099	DermacolFoundation210	2016-12-19 20:15:22.693234	2016-12-19 20:15:22.693234
7827	Sarah Arbute Extra White Sunblock SPF 70	https://www.tvdirect.tv/sarah-arbute-extra-white-sunblock-spf-70	325	0110700100075	2016-12-19 20:15:24.540382	2016-12-19 20:15:24.540382
7828	FACEPERM VIBRATION PUFF เครื่องทารองพื้นอัตโนมัติ	https://www.tvdirect.tv/faceperm-vibration-puff	390	0110700300673	2016-12-19 20:15:27.51097	2016-12-19 20:15:27.51097
7829	Qtiie.JP JAPAN Eye Force Set เซ็ทแต่งตา	https://www.tvdirect.tv/eye-force-set-by-qtiie-jp-japan	339	0110700208214	2016-12-19 20:15:30.249461	2016-12-19 20:15:30.249461
7830	SET SOLA WINK 6 PCS. เซตโซลาวิ้ง 6 ชิ้น	https://www.tvdirect.tv/set-sola-wink-6-pcs-6	1450	0110700209587	2016-12-19 20:15:32.328213	2016-12-19 20:15:32.328213
7831	SET SOLA WINK 6 PCS. SET 2 NO.30 เซตโซลาวิ้ง 6 ชิ้น เบอร์ 30	https://www.tvdirect.tv/set-sola-wink-6-pcs-set-2-no-30-6-30	1450	0110700209600	2016-12-19 20:15:34.229951	2016-12-19 20:15:34.229951
7832	Body Shape Colla Carnitine คอลล่า คาร์นิทีน	https://www.tvdirect.tv/bs-colla-carnitine	249	0111800202720	2016-12-19 20:15:37.819788	2016-12-19 20:15:37.819788
7833	Fatis Firming Gel Plus Red algae120 mg ผลิตภัณฑ์ลดกระชับผิวกาย 120 มิลลิกรัม	https://www.tvdirect.tv/fatis-firming-gel-plus-red-algae120-mg-120	1490	0112000300070	2016-12-19 20:15:39.897448	2016-12-19 20:15:39.897448
7834	Fatis Firming Gel Red Algae ผลิตภัณฑ์กระชับสัดส่วน 2 หลอด	https://www.tvdirect.tv/fatis-firming-gel-red-algae-2	1990	FatisFirmingGelRedAlgae	2016-12-19 20:15:40.737511	2016-12-19 20:15:40.737511
7835	BS BODY FIT COMPLEX CREAM ครีมกระชับสัดส่วน Set 4 ชิ้น	https://www.tvdirect.tv/bs-body-fit-complex-cream	1499	BsBodyFit	2016-12-19 20:15:42.703725	2016-12-19 20:15:42.703725
7836	Activa Silhouette MAX ชุดผลิตภัณฑ์เพื่อการลดกระชับ	https://www.tvdirect.tv/activa-silhouette-max	1490	0120300300034	2016-12-19 20:15:44.549456	2016-12-19 20:15:44.549456
7837	Nuvite Collagen Peptide Plus นูไวท์ คอลลาเจนเปปไทด์ พลัส ขนาด 60 แคปซูล	https://www.tvdirect.tv/nuvite-collagen-peptide-plus-60	1290	0111800302970	2016-12-19 20:15:48.223656	2016-12-19 20:15:48.223656
7838	Nuvite Classic (นูไวท์ คลาสสิค) 60 แคปซูล	https://www.tvdirect.tv/nuvite-classic-60	990	0111200300231	2016-12-19 20:15:50.050927	2016-12-19 20:15:50.050927
7839	Nuvite Lyco-P (นูไวท์ ไลโค พี) 60 softgel	https://www.tvdirect.tv/nuvite-lyco-p-60-softgel	990	0110300301698	2016-12-19 20:15:51.897938	2016-12-19 20:15:51.897938
7840	Donut Collagen โดนัทคอลาเจน 10,000 mg. รสส้ม (10 ซอง)	https://www.tvdirect.tv/donut-collagen-10000-mg-1	299	0111800202546	2016-12-19 20:15:53.794189	2016-12-19 20:15:53.794189
7841	Donut Collagen โดนัทคอลลาเจน 10,000 mg. รสส้ม (10 ซอง) 3 Pack 	https://www.tvdirect.tv/donut-collagen-10000-mg-3	850	0111800202553	2016-12-19 20:15:55.649545	2016-12-19 20:15:55.649545
7842	Donutt Collagen M Plus โดนัทท์คอลาเจนเอ็มพลัส 15,000 mg (10 ซอง)	https://www.tvdirect.tv/donutt-collagen-m-plus-15000-10	225	0111800202560	2016-12-19 20:15:57.421816	2016-12-19 20:15:57.421816
7843	Donutt Collagen M Plus โดนัทท์คอลลาเจนเอ็มพลัส 15,000 mg (10 ซอง) 3 Pack	https://www.tvdirect.tv/donutt-collagen-m-plus-15000-3	650	0111800202577	2016-12-19 20:15:59.336148	2016-12-19 20:15:59.336148
7844	Donut Salmu โดนัทแซลมุ 30 แคปซูล	https://www.tvdirect.tv/donut-salmu-30	285	0111800202584	2016-12-19 20:16:01.299656	2016-12-19 20:16:01.299656
7845	Donut Salmu โดนัทแซลมุ 30 แคปซูล 2 Pack	https://www.tvdirect.tv/donut-salmu-30-2-1-30	550	0111800202591	2016-12-19 20:16:03.36211	2016-12-19 20:16:03.36211
7846	Body Shape COLLA GLUTA คอลล่า กลูต้า	https://www.tvdirect.tv/bs-colla-gluta	249	0111800202713	2016-12-19 20:16:05.301268	2016-12-19 20:16:05.301268
7847	IWISH COLLAGEN ผลิตภัณฑ์เสริมอาหาร บี-บลิส	https://www.tvdirect.tv/iwish-collagen	690	0111800202849	2016-12-19 20:16:07.877604	2016-12-19 20:16:07.877604
7848	IWISH GLUTAMINO+ ผลิตภัณฑ์เสริมอาหาร	https://www.tvdirect.tv/iwish-glutamino	1250	0111800202856	2016-12-19 20:16:10.581823	2016-12-19 20:16:10.581823
7849	IKI COLLAGEN JELLY STRAWBARRY FLAVOR อิกิคอลลาเจนเจลลี่ รสสตรอเบอร์รี่	https://www.tvdirect.tv/iki-collagen-jelly-strawbarry-flavor	595	0111800303151	2016-12-19 20:16:12.239064	2016-12-19 20:16:12.239064
7850	Gluta With Berry And Grapeseed Extract (30 capsule) กลูต้า ออล อิน วัน (30 แคปซูล)	https://www.tvdirect.tv/gluta-with-berry-and-grapeseed-extract-30-capsule-30	490	0111800203550	2016-12-19 20:16:13.831794	2016-12-19 20:16:13.831794
7851	Nuvite Srendere (นูไวท์ สเรนเดอเร่) 40 เม็ด	https://www.tvdirect.tv/nuvite-srendere-40	590	0111200300248	2016-12-19 20:16:15.748517	2016-12-19 20:16:15.748517
7852	NUVITE GLUTA PLUS COLLAGEN PEPTIDE	https://www.tvdirect.tv/nuvite-gluta-plus-collagen-peptide	690	0110700301083	2016-12-19 20:16:40.236697	2016-12-19 20:16:40.236697
7853	ARTISCENT Relaxing Aroma Bath&Shower Gel	https://www.tvdirect.tv/artiscent-relaxing-aroma-bath-shower-gel	320	0110700208719	2016-12-19 20:16:44.231789	2016-12-19 20:16:44.231789
7854	ARTISCENT Relaxing Aroma Lotion	https://www.tvdirect.tv/artiscent-relaxing-aroma-lotion	390	0110700208726	2016-12-19 20:16:46.380595	2016-12-19 20:16:46.380595
7855	ครีมกระชับทรวงอก BOO BEN PLUS 50 ml	https://www.tvdirect.tv/boo-ben-plus-50-ml	590	0110700208900	2016-12-19 20:16:49.247119	2016-12-19 20:16:49.247119
7856	ido Aqua Eau De Parfum ไอดูน้ำหอมอะควา 110 ML.	https://www.tvdirect.tv/ido-aqua-eau-de-parfum-110-ml	360	0110700209460	2016-12-19 20:16:51.249789	2016-12-19 20:16:51.249789
7857	ido CO2 Eau De Parfum ไอดูน้ำหอมซีโอทู 110 ML.	https://www.tvdirect.tv/ido-co2-eau-de-parfum-110-ml	360	0110700209453	2016-12-19 20:16:53.153264	2016-12-19 20:16:53.153264
7858	ido Chole Eau De Parfum ไอดูน้ำหอมโชเอ้ 110 ML.	https://www.tvdirect.tv/ido-chole-eau-de-parfum-110-ml	360	0110700209446	2016-12-19 20:16:55.231764	2016-12-19 20:16:55.231764
7859	ido Poem Eau De Parfum ไอดูน้ำหอมกลิ่นโพเอ็ม 110 ML.	https://www.tvdirect.tv/ido-poem-eau-de-parfum-110-ml	360	0110700209439	2016-12-19 20:16:57.110252	2016-12-19 20:16:57.110252
7860	ido Sexy Night Eau De Parfum ไอดูน้ำหอมกลิ่นเซ็กซี่ไนท์ 110 ML.	https://www.tvdirect.tv/ido-sexy-night-eau-de-parfum-110-ml	360	0110700209422	2016-12-19 20:16:58.938967	2016-12-19 20:16:58.938967
7861	ido Vanilla Eau De Parfum ไอดูน้ำหอมกลิ่นวนิลา 110 ML.	https://www.tvdirect.tv/ido-vanilla-eau-de-parfum-110-ml	360	0110700209408	2016-12-19 20:17:00.988934	2016-12-19 20:17:00.988934
7862	ido Malaya Eau De Parfum ไอดูน้ำหอมกลิ่นมาลายา 110 ML.	https://www.tvdirect.tv/ido-malaya-eau-de-parfum-110-ml	360	0110700209394	2016-12-19 20:17:03.141772	2016-12-19 20:17:03.141772
7863	ido Miracle Eau De Parfum ไอดูน้ำหอมกลิ่นมิราเคิล 110 ML.	https://www.tvdirect.tv/ido-miracle-eau-de-parfum-110-ml	360	0110700209387	2016-12-19 20:17:05.036065	2016-12-19 20:17:05.036065
7864	ido Le Black Eau de Parfum ไอดูน้ำหอมกลิ่นเลอแบล็ค 110 ML	https://www.tvdirect.tv/ido-le-black-eau-de-parfum-110-ml	360	0110700209370	2016-12-19 20:17:06.95137	2016-12-19 20:17:06.95137
7865	ido Ploy Eau De Parfum ไอดูน้ำหอมกลิ่นพลอย 110 ML.	https://www.tvdirect.tv/ido-ploy-eau-de-parfum-110-ml	360	0110700209363	2016-12-19 20:17:08.927285	2016-12-19 20:17:08.927285
7866	ido Green Apple Eau De Parfum ไอดูน้ำหอมกลิ่นกรีนแอปเปิ้ล 110 ML.	https://www.tvdirect.tv/ido-green-apple-eau-de-parfum-110-ml	360	0110700209356	2016-12-19 20:17:10.875384	2016-12-19 20:17:10.875384
7867	ido Cantaloupe Eau De Parfum ไอดูน้ำหอมกลิ่นแคนตาลูป 110 ML.	https://www.tvdirect.tv/ido-cantaloupe-eau-de-parfum-110-ml	360	0110700209349	2016-12-19 20:17:12.897887	2016-12-19 20:17:12.897887
7868	ido Sakura Eau De Parfum ไอดูน้ำหอมกลิ่นซากุระ 110 ML.	https://www.tvdirect.tv/ido-sakura-eau-de-parfum-110-ml	360	0110700209332	2016-12-19 20:17:14.774837	2016-12-19 20:17:14.774837
7869	ido Paul Sport Eau De Parfum ไอดูน้ำหอมกลิ่นพอลสปอร์ต 110 ML.	https://www.tvdirect.tv/ido-paul-sport-eau-de-parfum-110-ml	360	0110700209325	2016-12-19 20:17:16.820502	2016-12-19 20:17:16.820502
7870	Bolzen ลู่วิ่งไฟฟ้า รุ่น 301	https://www.tvdirect.tv/bolzen-301	19900	0111700200239	2016-12-19 20:18:14.737038	2016-12-19 20:18:14.737038
7871	Bolzen ลู่วิ่งไฟฟ้า รุ่น 501	https://www.tvdirect.tv/bolzen-501	35900	0111700200246	2016-12-19 20:18:16.445623	2016-12-19 20:18:16.445623
7872	Fairtex ADT 150 B	https://www.tvdirect.tv/fairtex-adt-150-b	19900	0121700600113	2016-12-19 20:18:18.203439	2016-12-19 20:18:18.203439
7873	Johnson Tempo Treadmill ลู่วิ่งไฟฟ้า รุ่น T86	https://www.tvdirect.tv/tempo-treadmill-t86	23900	0111700200307	2016-12-19 20:18:19.962155	2016-12-19 20:18:19.962155
7874	360องศา Treadmill ลู่วิ่งไฟฟ้า MTF 3010 ชมพู	https://www.tvdirect.tv/360-treadmill-mtf-3010	14900	0111700201025	2016-12-19 20:18:21.676822	2016-12-19 20:18:21.676822
7875	Johnson Treo Treadmill T101 ลู่วิ่งไฟฟ้า	https://www.tvdirect.tv/johnson-treo-treadmill-t101	15900	0111700201045	2016-12-19 20:18:23.401266	2016-12-19 20:18:23.401266
7876	NORTH FITNESS TREADMILL ลู่วิ่งไฟฟ้า รุ่น TD สีเทา	https://www.tvdirect.tv/north-fitness-treadmill-td	16900	0111700201397	2016-12-19 20:18:25.137022	2016-12-19 20:18:25.137022
7877	V-TECH TREADMILLS ลู่วิ่งไฟฟ้า รุ่น R5 สีดำ	https://www.tvdirect.tv/v-tech-treadmills-r5	38900	0111700201441	2016-12-19 20:18:26.862995	2016-12-19 20:18:26.862995
7878	V-TECH TREADMILLS ลู่วิ่งไฟฟ้า รุ่น T1100 - สีดำ	https://www.tvdirect.tv/v-tech-treadmills-t1100	14900	0111700201427	2016-12-19 20:18:28.546228	2016-12-19 20:18:28.546228
7879	FAIRTEX SUPER RUN ลู่วิ่งแฟร์เทคซุปเปอร์รัน  แถมฟรี จักรยานพับได้ KALAQ Q6 	https://www.tvdirect.tv/fairtex-super-run	49000	FairtexSuperRun	2016-12-19 20:18:29.390318	2016-12-19 20:18:29.390318
7880	IGM-IGS0041 ลู่วิ่งระบบสายพาน- ไม่ใช้ไฟฟ้า รุ่น IGS0041	https://www.tvdirect.tv/igm-igs0041-igs0041	3990	0111700201151	2016-12-19 20:18:31.80298	2016-12-19 20:18:31.80298
7881	360 องศา ลู่วิ่งไฟฟ้า MTK500L AT - 3.5 HP MOTOR	https://www.tvdirect.tv/360-mtk500l-at-3-5-hp-motor	29900	0111700201564	2016-12-19 20:18:33.582208	2016-12-19 20:18:33.582208
7882	360 องศา ลู่วิ่งไฟฟ้า X4.5 MOTORIZED TREADMILL	https://www.tvdirect.tv/360-x4-5-motorized-treadmill	39900	0111700201571	2016-12-19 20:18:35.336826	2016-12-19 20:18:35.336826
7883	360 องศา ลู่วิ่งไฟฟ้า X3 MOTORIZED TREADMILL	https://www.tvdirect.tv/360-x3-motorized-treadmill	27900	0111700201588	2016-12-19 20:18:37.025648	2016-12-19 20:18:37.025648
7884	360 องศา ลู่วิ่งไฟฟ้า X4 MOTORIZED TREADMILL	https://www.tvdirect.tv/360-x4-motorized-treadmill	39900	0111700201595	2016-12-19 20:18:38.832563	2016-12-19 20:18:38.832563
7885	360 องศา ลู่วิ่งไฟฟ้า รุ่น S630	https://www.tvdirect.tv/360-s630	27900	0111700201601	2016-12-19 20:18:40.578658	2016-12-19 20:18:40.578658
7886	360 องศา ลู่วิ่งไฟฟ้า รุ่น MTH 4.0L	https://www.tvdirect.tv/360-mth-4-0l	21900	0111700201618	2016-12-19 20:18:42.209832	2016-12-19 20:18:42.209832
7887	360องศา Treadmill  ลู่วิ่งไฟฟ้า รุ่น DK-12AF	https://www.tvdirect.tv/360-treadmill-dk-12af	19900	0111700201632	2016-12-19 20:18:43.877242	2016-12-19 20:18:43.877242
7888	JOHNSON TEMPO T11 TREADMILL ลู่วิ่งไฟฟ้า รุ่น T11	https://www.tvdirect.tv/johnson-tempo-t11-treadmill-t11	23900	0111700201687	2016-12-19 20:18:45.540512	2016-12-19 20:18:45.540512
7889	FAIRTEX POWER RUN TREADMILL  แถมฟรี B-BODY TONERเครื่องบริหารระบบจักรยานและครันช์	https://www.tvdirect.tv/fairtex-power-run-treadmill	29900	FairtexPowerRunBboy	2016-12-19 20:18:47.505158	2016-12-19 20:18:47.505158
7890	Bolzen Treadmill EX Black ลู่วิ่งไฟฟ้า รุ่น EX สีดำ	https://www.tvdirect.tv/bolzen-treadmill-ex-black-ex	89000	0111700202035	2016-12-19 20:18:49.23771	2016-12-19 20:18:49.23771
7891	Bolzen Treadmill 501 Black ลู่วิ่งไฟฟ้า รุ่น 501 สีดำ	https://www.tvdirect.tv/bolzen-treadmill-501-black-501	35900	0111700202028	2016-12-19 20:18:51.020552	2016-12-19 20:18:51.020552
7892	Bolzen Treadmill 301S Black ลู่วิ่งไฟฟ้า รุ่น 301S สีดำ	https://www.tvdirect.tv/bolzen-treadmill-301-s-black-301-s	19900	0111700201960	2016-12-19 20:18:52.75308	2016-12-19 20:18:52.75308
7893	JOHNSON Treadmill 8.1T Black ลู่วิ่งไฟฟ้า รุ่น 8.1T สีดำ	https://www.tvdirect.tv/johnson-treadmill-8-1t-black-8-1t	52900	0111700202042	2016-12-19 20:18:54.454377	2016-12-19 20:18:54.454377
7894	JOHNSON HORIZON TREADMILL ลู่วิ่งไฟฟ้า รุ่นADVENTURE E	https://www.tvdirect.tv/johnson-horizon-treadmill-adventure-e	36900	0111700201083	2016-12-19 20:18:56.162656	2016-12-19 20:18:56.162656
7895	NORTH FITNESS TREADMILL ลู่วิ่งไฟฟ้า รุ่น MT08 - สีดำแดง	https://www.tvdirect.tv/north-fitness-treadmill-mt08	19900	0111700201410	2016-12-19 20:18:57.984075	2016-12-19 20:18:57.984075
7896	Fairtex Space Walker เครื่องเดินบนอากาศ	https://www.tvdirect.tv/fairtex-space-walker	3990	0121000300515	2016-12-19 20:19:01.172976	2016-12-19 20:19:01.172976
7897	Johnson Horizon Elliptical เครื่องเดินวงรี รุ่น Delos	https://www.tvdirect.tv/horizon-elliptical-delos	15900	0111700200345	2016-12-19 20:19:02.959454	2016-12-19 20:19:02.959454
7898	Johnson Tempo Elliptical เครื่องเดินวงรี รุ่น E901	https://www.tvdirect.tv/tempo-elliptical-e901	8500	0111700200352	2016-12-19 20:19:04.690307	2016-12-19 20:19:04.690307
7899	360 Ongsa Step Up เครื่องเดินวงรี ลูวิ่งกึ่งสเต็ป รุ่น YK-CT5816A	https://www.tvdirect.tv/step-up-yk-ct5816a	12900	0111700200703	2016-12-19 20:19:06.5121	2016-12-19 20:19:06.5121
7900	FAIRTEX CROSSTRAINER E204เครื่องเดินวงรี	https://www.tvdirect.tv/fairtex-crosstrainer-e204	7990	0121700500147	2016-12-19 20:19:08.168459	2016-12-19 20:19:08.168459
7901	ELLIPTICAL BIKE HNA-623E-REV อุปกรณ์บริหารร่างกายระบบอิลิปติคอล	https://www.tvdirect.tv/elliptical-bike-hna-623e-rev	8900	0121700601189	2016-12-19 20:19:09.977091	2016-12-19 20:19:09.977091
7902	360องศา SPACE WALKER K405B-2	https://www.tvdirect.tv/360-space-walker-k405b-2	3990	0111700200976	2016-12-19 20:19:11.606808	2016-12-19 20:19:11.606808
7903	Nordic Walker เครื่องเดินบนอากาศ	https://www.tvdirect.tv/nordic-walker	3490	0111700201018	2016-12-19 20:19:14.112905	2016-12-19 20:19:14.112905
7904	NORDIC STRIDER เครื่องออกกำลังกายนอร์ดิก สไตร์เดอร์ IGM_IGS0047	https://www.tvdirect.tv/nordic-strider-igm-igs0047	3490	0111700201052	2016-12-19 20:19:16.581398	2016-12-19 20:19:16.581398
7905	360องศา Super Cross Trainer 2 in 1 จักรยานนั่งปั่นรุ่น K8202	https://www.tvdirect.tv/360-super-cross-trainer-2-in-1-k8202	5990	0111700201113	2016-12-19 20:19:18.395677	2016-12-19 20:19:18.395677
7906	360องศา UP 2 STEP ELLIPTICAL เครื่องเดินวงรี รุ่น ET-8.2R	https://www.tvdirect.tv/360-up-2-step-elliptical-et-8-2r	6990	0111700201120	2016-12-19 20:19:20.099904	2016-12-19 20:19:20.099904
7907	NORTH FITNESS ELLIPTICAL 2IN1 เครื่องเดินวงรี รุ่น 8895HA	https://www.tvdirect.tv/north-fitness-elliptical-2in1-8895ha	12900	0111700201281	2016-12-19 20:19:21.821471	2016-12-19 20:19:21.821471
7908	NORTH FITNESS ELLIPTICAL 2IN1 เครื่องเดินวงรี รุ่น EE	https://www.tvdirect.tv/north-fitness-elliptical-2in1-ee	14900	0111700201274	2016-12-19 20:19:23.552032	2016-12-19 20:19:23.552032
7909	NORTH FITNESS ELLIPTICAL เครื่องเดินวงรี รุ่น 8718H สีดำ	https://www.tvdirect.tv/north-fitness-elliptical-8718h	13900	0111700201267	2016-12-19 20:19:25.328779	2016-12-19 20:19:25.328779
7910	NORTH FITNESS ELLIPTICAL เครื่องเดินวงรี รุ่น 8895H	https://www.tvdirect.tv/north-fitness-elliptical-8895h	11900	0111700201250	2016-12-19 20:19:27.166769	2016-12-19 20:19:27.166769
7911	NORTH FITNESS ELLIPTICAL เครื่องเดินวงรี รุ่น EC สีเทา	https://www.tvdirect.tv/north-fitness-elliptical-ec	14900	0111700201243	2016-12-19 20:19:29.099665	2016-12-19 20:19:29.099665
7912	NORTH FITNESS ELLIPTICAL เครื่องเดินวงรี รุ่น EA สีเทา	https://www.tvdirect.tv/north-fitness-elliptical-ea	17900	0111700201236	2016-12-19 20:19:30.82441	2016-12-19 20:19:30.82441
7913	Johnson Horizon Syros Pro Elliptical เครื่องเดินวงรี	https://www.tvdirect.tv/johnson-horizon-syros-pro-elliptical	18900	0111700201144	2016-12-19 20:19:32.668756	2016-12-19 20:19:32.668756
7914	V-TECH ELLIPTICAL ลู่เดินกึ่งเสต็ป รุ่น E519	https://www.tvdirect.tv/v-tech-elliptical-e519	8900	0111700201489	2016-12-19 20:19:34.600594	2016-12-19 20:19:34.600594
7915	IGM-IGS0037 ฟิต แอนด์ โฟล์ บี รุ่น IGS0037	https://www.tvdirect.tv/igm-igs0037-igs0037	2990	0111700201175	2016-12-19 20:19:37.349898	2016-12-19 20:19:37.349898
7916	JOHNSON TEMPO E902 ELLIPTICAL เครื่องเดินวงรี รุ่น E902	https://www.tvdirect.tv/johnson-tempo-e902-elliptical-e902	12900	0111700201694	2016-12-19 20:19:40.204624	2016-12-19 20:19:40.204624
7917	360 Ongsa Step Up เครื่องเดินกึ่งสเต็ป รุ่น YK-B23C	https://www.tvdirect.tv/step-up-yk-b23c	13900	0111700200697	2016-12-19 20:19:42.111976	2016-12-19 20:19:42.111976
7918	Johnson Horizon Upright Bike จักรยานนั่งปั่น รุ่น Comfort 3	https://www.tvdirect.tv/horizon-upright-bike-comfort-3	16500	0111700200390	2016-12-19 20:19:45.596906	2016-12-19 20:19:45.596906
7919	Johnson Horizon Upright Bike จักรยานนั่งปั่น รุ่น Comfort 5	https://www.tvdirect.tv/horizon-upright-bike-comfort-5	22500	0111700200383	2016-12-19 20:19:47.41997	2016-12-19 20:19:47.41997
7920	Johnson Horizon Recumbent Bike จักรยานเอนปั่น รุ่น Comfort R	https://www.tvdirect.tv/horizon-recumbent-bike-comfort-r	29500	0111700200369	2016-12-19 20:19:49.264792	2016-12-19 20:19:49.264792
7921	Johnson Horizon Upright Bike จักรยานนั่งปั่น รุ่น Paros	https://www.tvdirect.tv/horizon-upright-bike-paros	11000	0111700200406	2016-12-19 20:19:50.990763	2016-12-19 20:19:50.990763
7922	Johnson Horizon Upright Bike จักรยานนั่งปั่น รุ่น S3	https://www.tvdirect.tv/horizon-upright-bike-s3	16500	0111700200437	2016-12-19 20:19:52.651673	2016-12-19 20:19:52.651673
7923	Johnson Tempo Upright Bike จักรยานนั่งปั่น รุ่น B901	https://www.tvdirect.tv/tempo-upright-bike-b901	7500	0111700200413	2016-12-19 20:19:54.462008	2016-12-19 20:19:54.462008
7924	Johnson Treo Recumbent Bike จักรยานเอนปั่น รุ่น R108	https://www.tvdirect.tv/treo-recumbent-bike-r108	12000	0111700200376	2016-12-19 20:19:56.199624	2016-12-19 20:19:56.199624
7925	B Body Toner เครื่องบริหารระบบจักรยานและครันช์	https://www.tvdirect.tv/b-body-toner	2990	0121700601561	2016-12-19 20:19:58.038735	2016-12-19 20:19:58.038735
7926	360 Ongsa จักรยานนั่งปั่น S-760	https://www.tvdirect.tv/s-760	14900	0111700200628	2016-12-19 20:19:59.695015	2016-12-19 20:19:59.695015
7927	360 Ongsa จักรยานนั่งปั่น SPIN BIKE 909	https://www.tvdirect.tv/spin-bike-909	15900	0111700200635	2016-12-19 20:20:01.50033	2016-12-19 20:20:01.50033
7928	360 Ongsa จักรยานนั่งปั่น Spin Bike AM-S2000T-สีดำ	https://www.tvdirect.tv/spin-bike-am-s2000t	11900	0111700200642	2016-12-19 20:20:03.750036	2016-12-19 20:20:03.750036
8188	Inmotion SCV V3 (Double Wheels)	https://www.tvdirect.tv/inmotion-scv-v3-double-wheels-c	25000	Inmotion SCV V3	2016-12-19 20:29:56.583519	2016-12-19 20:29:56.583519
7929	360 Ongsa จักรยานนั่งปั่น Spin Bike  AM-S2000T-สีขาว	https://www.tvdirect.tv/spin-bike-am-s2000t-1418	11900	0111700200659	2016-12-19 20:20:05.67798	2016-12-19 20:20:05.67798
7930	360 Ongsa จักรยานนั่งปั่น Spin Bike   AM-S1000	https://www.tvdirect.tv/spin-bike-am-s1000	9900	0111700200666	2016-12-19 20:20:07.607378	2016-12-19 20:20:07.607378
7931	360 Ongsa จักรยานนั่งปั่นและเอนปั่น  YK-BK8716R	https://www.tvdirect.tv/yk-bk8716r	12900	0111700200673	2016-12-19 20:20:09.512827	2016-12-19 20:20:09.512827
7932	360 Ongsa จักรยานนั่งปั่น แบบพับได้ Exercise Bike	https://www.tvdirect.tv/exercise-bike	5990	0111700200680	2016-12-19 20:20:11.482679	2016-12-19 20:20:11.482679
7933	Folding Bike จักรยานพับได้ล้อ 8 นิ้ว รุ่น GK-08	https://www.tvdirect.tv/folding-bike-8-gk-08	4590	0123200500016	2016-12-19 20:20:13.280814	2016-12-19 20:20:13.280814
7934	FAIRTEX UPRIGHT BIKE B204จักรยานปั่น	https://www.tvdirect.tv/fairtex-upright-bike-b204	5990	0121700500130	2016-12-19 20:20:15.087507	2016-12-19 20:20:15.087507
7935	จักรยานปั่นมือ ปั่นเท้า มีจอมอนิเตอร์-เขียว	https://www.tvdirect.tv/bicycle-hand-green	1590	0111700200796	2016-12-19 20:20:17.733036	2016-12-19 20:20:17.733036
7936	จักรยานปั่นมือ ปั่นเท้า มีจอมอนิเตอร์-ดำ	https://www.tvdirect.tv/bicycle-hand-black	1590	0111700200802	2016-12-19 20:20:20.20663	2016-12-19 20:20:20.20663
7937	360 Ongsa จักรยานนั่งปั่นออกกำลังกาย รุ่น JTS611-1 -ดำ	https://www.tvdirect.tv/jts611-black	8900	0111700200826	2016-12-19 20:20:23.777714	2016-12-19 20:20:23.777714
7938	360 Ongsa จักรยานนั่งปั่นออกกำลังกาย รุ่น JTS611-2-ขาว	https://www.tvdirect.tv/jts611-white	8900	0111700200833	2016-12-19 20:20:25.660235	2016-12-19 20:20:25.660235
7939	SPINNING BIKE BLACK จักรยานจานหมุน สีดำ	https://www.tvdirect.tv/spinning-bike-black	7900	0111700200857	2016-12-19 20:20:28.164449	2016-12-19 20:20:28.164449
7940	SPINNING BIKE WHITE จักรยานจานหมุน สีขาว	https://www.tvdirect.tv/spinning-bike-white	7900	0111700200864	2016-12-19 20:20:30.6501	2016-12-19 20:20:30.6501
7941	360องศา จักรยานนั่งปั่น SPIN BIKE 9011S -ดำ	https://www.tvdirect.tv/360-spin-bike-9011s-black	9900	0111700200921	2016-12-19 20:20:32.40668	2016-12-19 20:20:32.40668
7942	360องศา จักรยานนั่งปั่น SPIN BIKE 9011S -ขาว	https://www.tvdirect.tv/360-spin-bike-9011s-white	9900	0111700200945	2016-12-19 20:20:34.181711	2016-12-19 20:20:34.181711
7943	360องศา จักรยานนั่งปั่น MAGNETIC BIKE 8071B-แดง	https://www.tvdirect.tv/360-magnetic-bike-8071b	8900	0111700200952	2016-12-19 20:20:35.978978	2016-12-19 20:20:35.978978
7944	360องศา จักรยานนั่งปั่น MAGNETIC BIKE 8223B	https://www.tvdirect.tv/360-magnetic-bike-8223b	6900	0111700200969	2016-12-19 20:20:39.661926	2016-12-19 20:20:39.661926
7945	Compact Bike จักรยานออกกำลังกายรุ่นมินิสีดำ	https://www.tvdirect.tv/compact-bike	2990	0121700500178	2016-12-19 20:20:41.702074	2016-12-19 20:20:41.702074
7946	Hand Foot Spinning bikes จักรยานมือ เท้า ปั่น สีบรอนซ์- ขาปั่นสีฟ้า	https://www.tvdirect.tv/hand-foot-spinning-bikes	999	0111700201069	2016-12-19 20:20:44.416764	2016-12-19 20:20:44.416764
7947	Hand Foot Spinning bikes จักรยานมือ เท้า ปั่น สีดำ- ขาปั่นสีฟ้า	https://www.tvdirect.tv/hand-foot-spinning-bikes-2857	999	0111700201076	2016-12-19 20:20:46.977917	2016-12-19 20:20:46.977917
7948	360องศา Power Plank เครื่องบริหารร่างกายระบบแพลงค์ รุ่น AND-605A	https://www.tvdirect.tv/360-power-plank-and-605a	1990	0111700201090	2016-12-19 20:20:48.850581	2016-12-19 20:20:48.850581
7949	360องศา Spin Bike จักรยานนั่งปั่น รุ่น S-790 - 22KG.	https://www.tvdirect.tv/360-spin-bike-s-790-22kg	18900	0111700201106	2016-12-19 20:20:50.702403	2016-12-19 20:20:50.702403
7950	360องศา Recumbent bike จักรยานนั่งปั่น รุ่น YK-BF4303	https://www.tvdirect.tv/360-recumbent-bike-yk-bf4303	9900	0111700201137	2016-12-19 20:20:52.527738	2016-12-19 20:20:52.527738
7951	MAXX SPIN BIKE BLACK&RED จักรยานแม็กสปินไบค์ สีดำแดง	https://www.tvdirect.tv/maxx-spin-bike-black-red	7500	0121700500185	2016-12-19 20:20:54.326656	2016-12-19 20:20:54.326656
7952	NORTH FITNESS SPINNING BIKE จักรยานนั่งปั่น รุ่น S90 สีเขียว	https://www.tvdirect.tv/north-fitness-spinning-bike-s90	8990	0111700201380	2016-12-19 20:20:56.112567	2016-12-19 20:20:56.112567
7953	NORTH FITNESS SPINNING BIKE จักรยานนั่งปั่น รุ่น SA สีขาว	https://www.tvdirect.tv/north-fitness-spinning-bike-sa	15900	0111700201373	2016-12-19 20:20:57.940972	2016-12-19 20:20:57.940972
7954	NORTH FITNESS SPINNING BIKE จักรยานนั่งปั่น รุ่น S95 สีส้ม	https://www.tvdirect.tv/north-fitness-spinning-bike-s95	12900	0111700201366	2016-12-19 20:20:59.690568	2016-12-19 20:20:59.690568
7955	NORTH FITNESS SPINNING BIKE จักรยานนั่งปั่น รุ่น S91 สีแดง	https://www.tvdirect.tv/north-fitness-spinning-bike-s91	10900	0111700201359	2016-12-19 20:21:01.615946	2016-12-19 20:21:01.615946
7956	NORTH FITNESS SPINNING BIKE จักรยานนั่งปั่น รุ่น S99	https://www.tvdirect.tv/north-fitness-spinning-bike-s99	15900	0111700201342	2016-12-19 20:21:05.079333	2016-12-19 20:21:05.079333
7957	NORTH FITNESS SPINNING BIKE จักรยานนั่งปั่น รุ่น S100	https://www.tvdirect.tv/north-fitness-spinning-bike-s100	15900	0111700201335	2016-12-19 20:21:06.94659	2016-12-19 20:21:06.94659
7958	NORTH FITNESS UPRIGHT BIKE จักรยานนั่งปั่น รุ่น 358 สีดำแดง	https://www.tvdirect.tv/north-fitness-upright-bike-358	8990	0111700201328	2016-12-19 20:21:08.847521	2016-12-19 20:21:08.847521
7959	NORTH FITNESS UPRIGHT BIKE จักรยานนั่งปั่น รุ่น 8718 สีดำ	https://www.tvdirect.tv/north-fitness-upright-bike-8718	10900	0111700201311	2016-12-19 20:21:10.533782	2016-12-19 20:21:10.533782
7960	NORTH FITNESS UPRIGHT BIKE จักรยานนั่งปั่น รุ่น 8895 สีเทา	https://www.tvdirect.tv/north-fitness-upright-bike-8895	9990	0111700201304	2016-12-19 20:21:12.219852	2016-12-19 20:21:12.219852
7961	NORTH FITNESS UPRIGHT BIKE จักรยานนั่งปั่น รุ่น UBB สีเทา	https://www.tvdirect.tv/north-fitness-upright-bike-ubb	11900	0111700201298	2016-12-19 20:21:13.977356	2016-12-19 20:21:13.977356
7962	NORTH FITNESS RECUMBENT BIKE จักรยานนั่งปั่น รุ่น 8718R	https://www.tvdirect.tv/north-fitness-recumbent-bike-8718r	17900	0111700201229	2016-12-19 20:21:15.807537	2016-12-19 20:21:15.807537
7963	NORTH FITNESS RECUMBENT BIKE จักรยานนั่งปั่น รุ่น 8530R	https://www.tvdirect.tv/north-fitness-recumbent-bike-8530r	9990	0111700201212	2016-12-19 20:21:17.70017	2016-12-19 20:21:17.70017
7964	NORTH FITNESS RECUMBENT BIKE จักรยานนั่งปั่น รุ่น RB สีเทา	https://www.tvdirect.tv/north-fitness-recumbent-bike-rb	15900	0111700201205	2016-12-19 20:21:19.54586	2016-12-19 20:21:19.54586
8569	SOKO พัดลมตั้งพื้น CK-9911	https://www.tvdirect.tv/soko-ck-9911	2400	0112300207877	2016-12-19 20:42:45.792479	2016-12-19 20:42:45.792479
7965	NORTH FITNESS RECUMBENT BIKE จักรยานนั่งปั่น รุ่น 8895R	https://www.tvdirect.tv/north-fitness-recumbent-bike-8895r	12900	0111700201199	2016-12-19 20:21:21.360139	2016-12-19 20:21:21.360139
7966	V-TECH RECUMBENT BIKE จักรยานเอนปั่น รุ่น R809	https://www.tvdirect.tv/v-tech-recumbent-bike-r809	14900	0111700201472	2016-12-19 20:21:23.158851	2016-12-19 20:21:23.158851
7967	V-TECH SPINNING BIKE จักรยานนั่งปั่น รุ่น AL902	https://www.tvdirect.tv/v-tech-spinning-bike-al902	8900	0111700201465	2016-12-19 20:21:24.898036	2016-12-19 20:21:24.898036
7968	V-TECH UPRIGHT BIKE จักรยานนั่งปั่น รุ่น EB-2000	https://www.tvdirect.tv/v-tech-upright-bike-eb-2000	29900	0111700201458	2016-12-19 20:21:26.653219	2016-12-19 20:21:26.653219
7969	IGM-IGS0049 จักรยานเท้าปั่นมินิ ขาปั่นสีดำ รุ่น IGS0050	https://www.tvdirect.tv/igm-igs0049-igs0050	599	0111700201168	2016-12-19 20:21:29.242146	2016-12-19 20:21:29.242146
7970	JOHNSON VISION R20 C RECUMBENT BIKE จักรยานนั่งปั่น รุ่น R20 C	https://www.tvdirect.tv/johnson-vision-r20-c-recumbent-bike-r20-c	39900	0111700201700	2016-12-19 20:21:30.92835	2016-12-19 20:21:30.92835
7971	AIR BIKE ORBITRAC GHN-8.2C จักรยานออกกำลังกายแบบลม  แถมฟรี  CAR CAMCORDER กล้องติดหน้ารถ	https://www.tvdirect.tv/air-bike-orbitrac-ghn-8-2c	4990	AirBikeCAR	2016-12-19 20:21:31.702769	2016-12-19 20:21:31.702769
7972	Johnson Horizon Mini Stepper เครื่องออกกำลังกาย	https://www.tvdirect.tv/horizon-mini-stepper	2600	0111700200451	2016-12-19 20:21:34.628755	2016-12-19 20:21:34.628755
7973	Maxx Twister อุปกรณ์บริหารแม็กทวิสเตอร์	https://www.tvdirect.tv/maxx-twister	2990	0121700600236	2016-12-19 20:21:36.369598	2016-12-19 20:21:36.369598
7974	360 องศา TWISTER CT เครื่องบริหารกระชับสัดส่วน	https://www.tvdirect.tv/360-twister-ct	3590	0111700201540	2016-12-19 20:21:38.080148	2016-12-19 20:21:38.080148
7975	VERTICAL GYM  เครื่องออกกำลังกายแบบการปีนเขา 	https://www.tvdirect.tv/vertical-gym	5990	0121700601691	2016-12-19 20:21:39.79184	2016-12-19 20:21:39.79184
7976	Welness Massage Belt เข็มขัดกระชับสัดส่วน	https://www.tvdirect.tv/welness-massage-belt	1990	0110300300684	2016-12-19 20:21:42.565562	2016-12-19 20:21:42.565562
7977	360 Ongsa เครื่องสั่นเพื่อสุขภาพ 360 SLIM BODY VIBRATION PLATE	https://www.tvdirect.tv/360-slim-body-vibration-plate	9900	0111700200604	2016-12-19 20:21:44.203709	2016-12-19 20:21:44.203709
7978	360 Ongsa Adjustable Dumbbell Set 52.5 lbs ชุดดัมเบลปรับน้ำหนักได้ 52.5 ปอนด์ 	https://www.tvdirect.tv/adjustable-bumbbell-set-52-5-lbs	8900	0111700200482	2016-12-19 20:21:47.506911	2016-12-19 20:21:47.506911
7979	360 Ongsa Chromed Dumbbell Set 15 Kg ชุดดัมเบลชุบโครเมียมปรับระดับได้ 15 กิโลกรัม	https://www.tvdirect.tv/chromed-dumbbell-set-15-kg	1800	0111700200512	2016-12-19 20:21:49.420138	2016-12-19 20:21:49.420138
7980	360 Ongsa Crome Dumbell Set 50 kg ชุดดัมเบลชุบโครเมียมปรับระดับได้ 50 กิโลกรัม	https://www.tvdirect.tv/crome-dumbell-set-50-kg-50	4990	0111700200529	2016-12-19 20:21:51.199703	2016-12-19 20:21:51.199703
7981	360 Ongsa Black Dumbell Set 50 kg ชุดดัมเบลสีดำปรับระดับได้ 50 กิโลกรัม	https://www.tvdirect.tv/black-dumbell-set-50-kg-50	4590	0111700200536	2016-12-19 20:21:53.084306	2016-12-19 20:21:53.084306
7982	1KG BONE DUMBBELL ดัมเบลแพ็คคู่ สีเหลือง AB1208Y	https://www.tvdirect.tv/1kg-bone-dumbbell-ab1208y	490	0113200200515	2016-12-19 20:21:55.521363	2016-12-19 20:21:55.521363
7983	2KG BONE DUMBBELL ดัมเบลแพ็คคู่ สีเขียว AB1210G	https://www.tvdirect.tv/2kg-bone-dumbbell-ab1210g	690	0113200200522	2016-12-19 20:21:58.017983	2016-12-19 20:21:58.017983
7984	3KG BONE DUMBBELL ดัมเบลแพ็คคู่ สีเทา AB1211GR	https://www.tvdirect.tv/3kg-bone-dumbbell-ab1211gr	890	0113200200539	2016-12-19 20:21:59.847901	2016-12-19 20:21:59.847901
7985	1KG TRIANGULAR DUMBBELL ดัมเบลแพ็คคู่ สีน้ำเงิน AB1249B	https://www.tvdirect.tv/1kg-triangular-dumbbell-ab1249b	490	0113200200577	2016-12-19 20:22:02.640715	2016-12-19 20:22:02.640715
7986	2KG TRIANGULAR DUMBBELL ดัมเบลแพ็คคู่ สีเขียว AB1250G	https://www.tvdirect.tv/2kg-triangular-dumbbell-ab1250g	690	0113200200553	2016-12-19 20:22:05.139964	2016-12-19 20:22:05.139964
7987	3KG TRIANGULAR DUMBBELL ดัมเบลแพ็คคู่ สีเหลือง	https://www.tvdirect.tv/3kg-triangular-dumbbell	890	0113200200560	2016-12-19 20:22:06.953205	2016-12-19 20:22:06.953205
7988	360 Ongsa Chromed Dumbbell Set 20 Kg ชุดดัมเบลชุบโครเมียมปรับระดับได้ 20 กิโลกรัม	https://www.tvdirect.tv/chromed-dumbbell-set-20-kg	2150	0111700200505	2016-12-19 20:22:08.753215	2016-12-19 20:22:08.753215
7989	Ride The Tiger เครื่องบริหารพลังเสือ	https://www.tvdirect.tv/ride-the-tiger	4990	0121700600175	2016-12-19 20:22:12.873199	2016-12-19 20:22:12.873199
7990	Johnson Horizon Bench เครื่องยกน้ำหนัก รุ่น Andonis Plus	https://www.tvdirect.tv/horizon-bench-andonis-plus	15000	0111700200420	2016-12-19 20:22:14.916959	2016-12-19 20:22:14.916959
7991	JOHNSON HORIZON LC9605 STRENGTH	https://www.tvdirect.tv/johnson-horizon-lc9605-strength	25900	0111700201717	2016-12-19 20:22:28.135295	2016-12-19 20:22:28.135295
7992	Obsidian Slide Board อุปกรณ์บริหารแบบสไลด์	https://www.tvdirect.tv/obsidian-slide-board	2990	0121700601486	2016-12-19 20:22:34.40583	2016-12-19 20:22:34.40583
7993	Total Crunch เครื่องบริหารระบบคอมพาวด์	https://www.tvdirect.tv/total-crunch	2990	0121700601172	2016-12-19 20:22:36.189165	2016-12-19 20:22:36.189165
7994	Fairtex Training Set ชุดออกกำลังกายอเนกประสงค์	https://www.tvdirect.tv/fairtex-training-set	1490	0121700500109	2016-12-19 20:22:38.020975	2016-12-19 20:22:38.020975
7995	360 Ongsa ม้านั่งบริหารร่างกาย รุ่น JS-006D	https://www.tvdirect.tv/js-006d	2790	0111700200574	2016-12-19 20:22:39.840224	2016-12-19 20:22:39.840224
7996	360 Ongsa เครื่องบริหารร่างกาย Total Gym	https://www.tvdirect.tv/total-gym	4590	0111700200598	2016-12-19 20:22:41.703882	2016-12-19 20:22:41.703882
7997	Johnson Impact Weight Bench Bar ชุดบริหารสร้างกล้ามเนื้อ	https://www.tvdirect.tv/impact-weight-bench-bar	7200	0111700200444	2016-12-19 20:22:43.60288	2016-12-19 20:22:43.60288
7998	THIGH MASTER อุปกรณ์บริหารต้นขา	https://www.tvdirect.tv/thigh-master	390	0121700601622	2016-12-19 20:22:45.429445	2016-12-19 20:22:45.429445
7999	360 องศา SMART SMITH สมิท แมชชีน รุ่น X-303	https://www.tvdirect.tv/360-smart-smith-x-303	29000	0111700201502	2016-12-19 20:22:47.472354	2016-12-19 20:22:47.472354
8000	360 องศา POWER TOWER บาร์โหน บาร์ดึงข้อ รุ่น X-310	https://www.tvdirect.tv/360-power-tower-x-310	14900	0111700201519	2016-12-19 20:22:49.569862	2016-12-19 20:22:49.569862
8001	360 องศา POWER TOWER STATION PTS บาร์โหน บาร์ดึงข้อแบบตั้งพื้น	https://www.tvdirect.tv/360-power-tower-station-pts	4990	0111700201526	2016-12-19 20:22:51.620854	2016-12-19 20:22:51.620854
8003	Shadow Boxer Full Set อุปกรณ์บริหารร่างกาย ชาโดว์ บอกเซอร์	https://www.tvdirect.tv/shadow-boxer-full-set	1490	0121400300351	2016-12-19 20:22:55.631449	2016-12-19 20:22:55.631449
8004	Air Climber Xpress เครื่องบริหารพลังลม	https://www.tvdirect.tv/air-climber-xpress	2990	0121700601400	2016-12-19 20:22:57.66442	2016-12-19 20:22:57.66442
8005	Body Slender อุปกรณ์บริหารร่างกายบอดี้สเลนด์เดอร์	https://www.tvdirect.tv/body-slender-power-line-dumbbell-mf-3103	990	0121700600168	2016-12-19 20:22:59.448736	2016-12-19 20:22:59.448736
8006	Ab Booster Plus เครื่องบริหารระบบครั้นช์ 	https://www.tvdirect.tv/ab-booster-plus	1990	0121700601615	2016-12-19 20:23:02.743969	2016-12-19 20:23:02.743969
8007	AB GENERATOR เครื่องบริหารหน้าท้อง	https://www.tvdirect.tv/ab-generator	3990	0121700601516	2016-12-19 20:23:06.70263	2016-12-19 20:23:06.70263
8008	Ab Storm with Velcro เครื่องบริหารระบบทวิสต์ + ตีนตุ๊กแก	https://www.tvdirect.tv/ab-storm-with-velcro	2990	0121400300436	2016-12-19 20:23:08.551833	2016-12-19 20:23:08.551833
8009	Rockin Abs อุปกรณ์บริหารหน้าท้อง	https://www.tvdirect.tv/rockin-abs	990	0121700601578	2016-12-19 20:23:10.496705	2016-12-19 20:23:10.496705
8010	360 Ongsa Mini Fitness Sit up Bench เบาะซิทอัพพับเก็บได้	https://www.tvdirect.tv/mini-fitness-sit-up-bench-mfb	1190	0111700200499	2016-12-19 20:23:12.320153	2016-12-19 20:23:12.320153
8011	360 Ongsa เครื่องบริหารหน้าท้อง ม้านอนยกน้ำหนัก รุ่น AND-6453B	https://www.tvdirect.tv/and-6453b	2990	0111700200567	2016-12-19 20:23:14.101613	2016-12-19 20:23:14.101613
8012	Bun and Thigh Wave เครื่องบริหารกระชับสัดส่วน	https://www.tvdirect.tv/bun-and-thigh-wave	2490	0121700600076	2016-12-19 20:23:15.878613	2016-12-19 20:23:15.878613
8013	360 Ongsa Step Up เครื่องบริหารร่างกาย EXERCISE WHEEL	https://www.tvdirect.tv/exercise-wheel	490	0111700200789	2016-12-19 20:23:17.678296	2016-12-19 20:23:17.678296
8014	FAIRTEX SIT UP BENCH (RED) DP-6455 (OFFER DUMBBELL SIZE 1.5KGX2PCS)	https://www.tvdirect.tv/fairtex-sit-up-bench-red-dp-6455-offer-dumbbell-size-1-5kgx2pcs	1990	0121700600724	2016-12-19 20:23:19.465073	2016-12-19 20:23:19.465073
8015	360 Ongsa เบาะนั่งซิทอัพ 3 IN 1 รุ่น AND-618	https://www.tvdirect.tv/3-in-1-and-618	1290	0111700200840	2016-12-19 20:23:21.261987	2016-12-19 20:23:21.261987
8016	POWER PLANK PRO FN8025เครื่องบริหารระบบแพลงค์	https://www.tvdirect.tv/power-plank-pro-fn8025	2990	0121700500123	2016-12-19 20:23:23.125586	2016-12-19 20:23:23.125586
8017	5 MINUTES SHAPER PRO (GREEN) เครื่องบริหารหน้าท้อง	https://www.tvdirect.tv/5-minutes-shaper-pro-green	3990	0121700601639	2016-12-19 20:23:24.956954	2016-12-19 20:23:24.956954
8018	360องศา เบาะนั่งซิทอัพ 3 IN 1 รุ่น AND-618-B	https://www.tvdirect.tv/360-3-in-1-and-618-b	1290	0111700200907	2016-12-19 20:23:26.742958	2016-12-19 20:23:26.742958
8019	360องศา เบาะนั่งซิทอัพ รุ่น AND-6205	https://www.tvdirect.tv/360-and-6205	1150	0111700200914	2016-12-19 20:23:28.593733	2016-12-19 20:23:28.593733
8020	SWING MAXX 6 IN 1 อุปกรณ์บริหารหน้าท้อง	https://www.tvdirect.tv/swing-maxx-6-in-1	2990	0121700400065	2016-12-19 20:23:30.481135	2016-12-19 20:23:30.481135
8021	AB WINNER เครื่องออกกำลังกายแบบนั่ง	https://www.tvdirect.tv/ab-winner	2490	0121700400058	2016-12-19 20:23:32.377478	2016-12-19 20:23:32.377478
8022	NORTH FITNESS FLAT BENCH ม้านั่งบริหาร อเนกประสงค์ รุ่น FB40	https://www.tvdirect.tv/north-fitness-flat-bench-fb40	5590	0111700201182	2016-12-19 20:23:34.47212	2016-12-19 20:23:34.47212
8023	V-TECH AB COASTER เครื่องบริหารหน้าท้อง รุ่น B21	https://www.tvdirect.tv/v-tech-ab-coaster-b21	3990	0111700201496	2016-12-19 20:23:37.868254	2016-12-19 20:23:37.868254
8024	V-TECH BARBELL BENCH 40 KG ม้าบาร์เบล 40 กก รุ่น H903	https://www.tvdirect.tv/v-tech-barbell-bench-40-kg-40-h903	8900	0111700201434	2016-12-19 20:23:39.716626	2016-12-19 20:23:39.716626
8025	NORTH FITNESS FLAT-INBENCH ม้านั่งบริหาร รุ่น 30808	https://www.tvdirect.tv/north-fitness-flat-inbench-30808	3990	0111700201403	2016-12-19 20:23:41.779282	2016-12-19 20:23:41.779282
8026	360 องศา POWER PLANK FITNESS SIT UP เครื่องบริหารหน้าท้อง รุ่น AND-605C	https://www.tvdirect.tv/360-power-plank-fitness-sit-up-and-605c	2790	0111700201533	2016-12-19 20:23:43.514712	2016-12-19 20:23:43.514712
8027	360 องศา TWISTER EXERCISE จานหมุนออกกำลังกาย	https://www.tvdirect.tv/360-twister-exercise	690	0111700201649	2016-12-19 20:23:45.304561	2016-12-19 20:23:45.304561
8028	360 องศา FITNESS SIT UP BENCH AND-6455	https://www.tvdirect.tv/360-fitness-sit-up-bench-and-6455	1690	0111700201656	2016-12-19 20:23:49.24067	2016-12-19 20:23:49.24067
8029	360 องศา ม้านั่งบริหารหน้าท้อง รุ่น AND-6005H	https://www.tvdirect.tv/360-and-6005h	2390	0111700201663	2016-12-19 20:23:50.948834	2016-12-19 20:23:50.948834
8030	360 องศา ม้านั่งบริหารร่างกาย รุ่น AND-6005D-D	https://www.tvdirect.tv/360-and-6005d-d	2990	0111700201670	2016-12-19 20:23:52.834745	2016-12-19 20:23:52.834745
8031	ABLOOM  WHEEL DISK FITNESS BLUE แผ่นดิสค์บริหารกล้ามเนื้อ สีน้ำเงิน	https://www.tvdirect.tv/abloom-wheel-disk-fitness-blue	690	0111700201724	2016-12-19 20:23:54.630441	2016-12-19 20:23:54.630441
8032	The Total Trainer แถมฟรี  Fatis Coffee	https://www.tvdirect.tv/total-trainer	2990	TotalTrainerFatis	2016-12-19 20:23:57.317591	2016-12-19 20:23:57.317591
8033	Ab Prince Pro เครื่องบริหารหน้าท้อง	https://www.tvdirect.tv/ab-prince-pro	1990	0121700601493	2016-12-19 20:23:59.138444	2016-12-19 20:23:59.138444
8034	AB Coaster เครื่องบริหารหน้าท้อง	https://www.tvdirect.tv/ab-coaster	2990	0121000300997	2016-12-19 20:24:00.921689	2016-12-19 20:24:00.921689
8035	Ab Circle Pro เครื่องออกกำลังกาย	https://www.tvdirect.tv/ab-circle-pro	2990	0121000301048	2016-12-19 20:24:02.954592	2016-12-19 20:24:02.954592
8036	Ab Circle Mini เครื่องบริหารกระชับสัดส่วน	https://www.tvdirect.tv/ab-circle-mini	2990	0121700500024	2016-12-19 20:24:04.880809	2016-12-19 20:24:04.880809
8037	Ab Dance เครื่องบริหารสไลด์เชฟ	https://www.tvdirect.tv/ab-dance	3990	0121700600052	2016-12-19 20:24:06.626132	2016-12-19 20:24:06.626132
8038	Knockout Abs เครื่องบริหารหน้าท้องน๊อคเอาท์	https://www.tvdirect.tv/knockout-abs	1290	0121400300122	2016-12-19 20:24:08.461952	2016-12-19 20:24:08.461952
8039	TWIST&SHAPE อุปกรณ์บริหารร่างกายระบบบิด 240 องศา	https://www.tvdirect.tv/twist-shape-240	3990	0121700400034	2016-12-19 20:24:10.308804	2016-12-19 20:24:10.308804
8040	360 องศา POWER PLANK FITNESS SIT UP 2in1 เครื่องบริหารร่างกายระบบแพลงค์ รุ่น AND-605K	https://www.tvdirect.tv/360-power-plank-fitness-sit-up-2in1-and-605k	1990	0111700201557	2016-12-19 20:24:12.139559	2016-12-19 20:24:12.139559
8042	360 องศา YOGA MAT TPE หนา 6 มม. MB-32002	https://www.tvdirect.tv/360-yoga-mat-tpe-6-mb-32002	590	0111700201001	2016-12-19 20:24:29.746378	2016-12-19 20:24:29.746378
8043	360องศา Spring Board Trampoline สปริงบอร์ด แทรมโพลีน TPS	https://www.tvdirect.tv/360-spring-board-trampoline-tps	2990	0111700201032	2016-12-19 20:24:33.959872	2016-12-19 20:24:33.959872
8044	GRIZZLY BARBELL PAD แผ่นรองบ่า	https://www.tvdirect.tv/grizzly-barbell-pad	890	0111900202910	2016-12-19 20:24:38.316273	2016-12-19 20:24:38.316273
8045	GRIZZLY LIFTING KNEE WRAPS ผ้าพัน รัดเข่า	https://www.tvdirect.tv/grizzly-lifting-knee-wraps	1100	0111900202903	2016-12-19 20:24:40.645447	2016-12-19 20:24:40.645447
8046	GRIZZLY RED LINE WRIST WRAPS ผ้าพัน รัดข้อมือ	https://www.tvdirect.tv/grizzly-red-line-wrist-wraps	790	0111900202897	2016-12-19 20:24:42.60051	2016-12-19 20:24:42.60051
8047	GRIZZLY GRAB PADS แผ่นรองฝ่ามือ	https://www.tvdirect.tv/grizzly-grab-pads	690	0111900202880	2016-12-19 20:24:44.517695	2016-12-19 20:24:44.517695
8048	GRIZZLY POWER WRIST WRAPS สายรัดข้อมือ	https://www.tvdirect.tv/grizzly-power-wrist-wraps	840	0111900202873	2016-12-19 20:24:48.48672	2016-12-19 20:24:48.48672
8049	Grizzly Mens Gloves Col. Black Size XL ถุงมือยกน้ำหนักชายสีดำ - XL	https://www.tvdirect.tv/grizzly-mens-gloves-col-black-size-xl-xl	1100	0111900202545	2016-12-19 20:24:50.3781	2016-12-19 20:24:50.3781
8050	Grizzly Mens Gloves Col. Black Size L ถุงมือยกน้ำหนักชายสีดำ - L	https://www.tvdirect.tv/grizzly-mens-gloves-col-black-size-l-l	1100	0111900202538	2016-12-19 20:24:52.377304	2016-12-19 20:24:52.377304
8051	Grizzly Mens Gloves Col. Black Size M ถุงมือยกน้ำหนักชายสีดำ - M	https://www.tvdirect.tv/grizzly-mens-gloves-col-black-size-m-m	1100	0111900202521	2016-12-19 20:24:54.385891	2016-12-19 20:24:54.385891
8052	Grizzly Grabbers แผ่นรองฝ่ามือ	https://www.tvdirect.tv/grizzly-grabbers	1090	GrizzlyGrabbers	2016-12-19 20:24:55.261692	2016-12-19 20:24:55.261692
8053	Grizzly Lifting Straps สายรัดข้อมือ	https://www.tvdirect.tv/grizzly-lifting-straps	480	GrizzlyLifting	2016-12-19 20:24:56.112227	2016-12-19 20:24:56.112227
8054	Grizzly Paws Leather Gloves Col. Black ถุงมือหนัง	https://www.tvdirect.tv/grizzly-paws-leather-gloves-col-black-size-xs-xs-3129	1290	GrizzlyPaws	2016-12-19 20:24:56.905467	2016-12-19 20:24:56.905467
8055	Grizzly Pacesetter Training Belt 4IN- เข็มขัดเซฟหลัง 4 นิ้ว 	https://www.tvdirect.tv/grizzly-pacesetter-training-belt-4in-4	1100	PacesetterTrainningBelt4inch	2016-12-19 20:24:57.721691	2016-12-19 20:24:57.721691
8056	Grizzly Enforcer Padded Belt 4IN- เข็มขัดเซฟหลัง 4 นิ้ว	https://www.tvdirect.tv/grizzly-enforcer-padded-belt-4in-4	1590	EnforcerPaddedBelt4inch	2016-12-19 20:24:58.572269	2016-12-19 20:24:58.572269
8057	Grizzly Enforcer Padded Belt 6IN เข็มขัดเซฟหลัง 6 นิ้ว	https://www.tvdirect.tv/grizzly-enforcer-padded-belt-6in	1890	EnforcerPaddedBelt6inch	2016-12-19 20:24:59.422168	2016-12-19 20:24:59.422168
8058	Grizzly Bear Hugger Washable Training Belt 4IN เข็มขัดเซฟหลัง 4 นิ้ว	https://www.tvdirect.tv/grizzly-bear-hugger-washable-training-belt-4in-s-4-s-3151	1180	BearHugger4inch	2016-12-19 20:25:00.196459	2016-12-19 20:25:00.196459
8059	Grizzly Bear Hugger Washable Training Belt 6IN เข็มขัดเซฟหลัง 6 นิ้ว 	https://www.tvdirect.tv/grizzly-bear-hugger-washable-training-belt-6in-6	1350	BearHugger6inch	2016-12-19 20:25:01.067661	2016-12-19 20:25:01.067661
8060	Grizzly Womens Gloves Black ถุงมือยกน้ำหนักหญิงสีดำ 	https://www.tvdirect.tv/grizzly-womens-gloves-black	1100	WomensGloves	2016-12-19 20:25:02.086659	2016-12-19 20:25:02.086659
8061	Grizzly Womens Paws ถุงมือหนังหญิง	https://www.tvdirect.tv/grizzly-womens-paws	1190	WomensPaws	2016-12-19 20:25:05.431242	2016-12-19 20:25:05.431242
8062	ABLOOM  YOGA BALL SET BLUE- WHITE ลูกบอลโยคะ 65 CMและ25CM สีน้ำเงินและสีชมพู	https://www.tvdirect.tv/abloom-yoga-ball-set-blue-white-65-cm-25cm	699	0111700201779	2016-12-19 20:25:07.57857	2016-12-19 20:25:07.57857
8063	ABLOOM  YOGA BALL BLUE ลูกบอลโยคะ 50 CM พิมพ์ลายท่าออกกำลังกาย สีน้ำเงิน	https://www.tvdirect.tv/abloom-yoga-ball-blue-50-cm	490	0111700201786	2016-12-19 20:25:09.626973	2016-12-19 20:25:09.626973
8064	ABLOOM  WRIST SANDBAG BLUEถุงทรายถ่วงน้ำหนักข้อมือ 1KG สีน้ำเงิน	https://www.tvdirect.tv/abloom-wrist-sandbag-blue-1kg	650	0111700201731	2016-12-19 20:25:11.761957	2016-12-19 20:25:11.761957
8065	ABLOOM  ELASTIC EXERCISE BLACK-RED-GREEN-BLUE ยางยืดออกกำลังกาย 4 เส้น สีดำสีแดงสีเขียวสีน้ำเงิน	https://www.tvdirect.tv/abloom-elastic-exercise-black-red-green-blue-4	490	0111700201748	2016-12-19 20:25:13.78487	2016-12-19 20:25:13.78487
8066	ABLOOM  PEANUT YOGA BALL GRAY ลูกบอลโยคะแบบถั่ว สีเทา	https://www.tvdirect.tv/abloom-peanut-yoga-ball-gray	490	0111700201755	2016-12-19 20:25:15.738403	2016-12-19 20:25:15.738403
8067	ABLOOM PEANUT YOGA BALL BLUE ลูกบอลโยคะแบบถั่ว น้ำเงิน	https://www.tvdirect.tv/abloom-peanut-yoga-ball-blue	490	0111700201762	2016-12-19 20:25:17.722668	2016-12-19 20:25:17.722668
8068	ABLOOM   ELASTIC EXERCISE YELLOW ยางยืดออกกำลังกาย สีเหลือง	https://www.tvdirect.tv/abloom-elastic-exercise-yellow	259	0111700201793	2016-12-19 20:25:19.691006	2016-12-19 20:25:19.691006
8069	ABLOOM   ELASTIC EXERCISE BLUE ยางยืดออกกำลังกาย สีฟ้า	https://www.tvdirect.tv/abloom-elastic-exercise-blue	299	0111700201809	2016-12-19 20:25:21.740176	2016-12-19 20:25:21.740176
8070	ABLOOM YOGA MAT GREEN-ORANGE เสื่อโยคะ สีเขียว-ส้ม	https://www.tvdirect.tv/abloom-yoga-mat-green-orange	1290	0111700201816	2016-12-19 20:25:23.84283	2016-12-19 20:25:23.84283
8071	ABLOOM  YOGA MAT YELLOW-BLUE เสื่อโยคะ สีเหลือง-น้ำเงิน	https://www.tvdirect.tv/abloom-yoga-mat-yellow-blue	1290	0111700201823	2016-12-19 20:25:25.883999	2016-12-19 20:25:25.883999
8072	ABLOOM   PILATES CIRCLE GRAY วงแหวนพิลาทิส 40 ซม สีเทา	https://www.tvdirect.tv/abloom-pilates-circle-gray-40	590	0111700201830	2016-12-19 20:25:27.889962	2016-12-19 20:25:27.889962
8073	ABLOOM  PILATES CIRCLE PURPLE วงแหวนพิลาทิส 40 ซม สีม่วง	https://www.tvdirect.tv/abloom-pilates-circle-purple-40	590	0111700201847	2016-12-19 20:25:29.902808	2016-12-19 20:25:29.902808
8074	ABLOOM  YOGA WHEEL PINK-BLACK วงล้อสำหรับโยคะ สีชมพู-ดำ	https://www.tvdirect.tv/abloom-yoga-wheel-pink-black	1890	0111700201854	2016-12-19 20:25:31.918076	2016-12-19 20:25:31.918076
8075	Abloom  Non-Slip Socks White ถุงเท้าโยคะมีปุ่มกันลื่น1คู่ สีขาว	https://www.tvdirect.tv/abloom-non-slip-socks-white-1	290	0111700201861	2016-12-19 20:25:33.880432	2016-12-19 20:25:33.880432
8076	Abloom  Non-Slip Socks Black ถุงเท้าโยคะมีปุ่มกันลื่น1 คู่ สีดำ	https://www.tvdirect.tv/abloom-non-slip-socks-black-1	290	0111700201878	2016-12-19 20:25:35.961718	2016-12-19 20:25:35.961718
8077	Hot Shaper กางเกงเรียกเหงื่อ	https://www.tvdirect.tv/hot-shaper	890	HotShaper	2016-12-19 20:25:40.043244	2016-12-19 20:25:40.043244
8078	SWANS SPORT TOP SIZE S-M BLACK เสื้อกล้ามออกกำลังกาย (สตรี) สีดำ	https://www.tvdirect.tv/swans-sport-top-size-s-m-black	790	0110100205280	2016-12-19 20:25:42.301149	2016-12-19 20:25:42.301149
8079	ProFlex Isolate Pure 5 LB. โปรเฟลคซ์ ไอโซเลท รสจืด ขนาด 5 ปอนด์	https://www.tvdirect.tv/proflex-isolate-pure-5-lb-5	2050	0111800202164	2016-12-19 20:25:47.603114	2016-12-19 20:25:47.603114
8080	ProFlex Isolate Vanilla 700 G. โปรเฟลคซ์ ไอโซเลท กลิ่นวานิลลา ขนาด 700 กรัม	https://www.tvdirect.tv/proflex-isolate-vanilla-700-g-700	990	0111800202133	2016-12-19 20:25:49.270096	2016-12-19 20:25:49.270096
8081	ProFlex Isolate Chocolate 700 G. โปรเฟลคซ์ ไอโซเลท กลิ่นช็อคโกแลต ขนาด 700 กรัม	https://www.tvdirect.tv/proflex-isolate-chocolate-700-g-700	990	0111800202140	2016-12-19 20:25:50.806431	2016-12-19 20:25:50.806431
8082	ProFlex Isolate Pure 700 G. โปรเฟลคซ์ ไอโซเลท รสจืด ขนาด 700 กรัม	https://www.tvdirect.tv/proflex-isolate-pure-700-g-700	1050	0111800202157	2016-12-19 20:25:52.307153	2016-12-19 20:25:52.307153
8083	 ProFlex Isolate vanilla 5 LB. โปรเฟลคซ์ ไอโซเลท รสวนิลา ขนาด 5 ปอนด์	https://www.tvdirect.tv/dtm-proflex-isolate-vanilla-5-lb	1890	0111800202171	2016-12-19 20:25:53.94539	2016-12-19 20:25:53.94539
8084	ProFlex Isolate chocolate 5 LB. โปรเฟลคซ์ ไอโซเลท รสช็อคโกแลต ขนาด 5 ปอนด์	https://www.tvdirect.tv/dtm-proflex-isolate-chocolate-5-lb	1890	0111800202188	2016-12-19 20:25:55.645748	2016-12-19 20:25:55.645748
8085	ProFlex Concentrate Vanilla 700 G. โปรเฟลคซ์ คอนเซนเทรด กลิ่นวานิลลา ขนาด 700 กรัม	https://www.tvdirect.tv/proflex-concentrate-vanilla-700-g-700	870	0111800202195	2016-12-19 20:25:57.767553	2016-12-19 20:25:57.767553
8086	ProFlex Concentrate Chocolate 700 G. โปรเฟลคซ์ คอนเซนเทรด กลิ่นช็อคโกแลต ขนาด 700 กรัม	https://www.tvdirect.tv/proflex-concentrate-chocolate-700-g-700	870	0111800202201	2016-12-19 20:25:59.421044	2016-12-19 20:25:59.421044
8087	ProFlex Concentrate Strawberry 700 G.  โปรเฟลคซ์ คอนเซนเทรด กลิ่นสตรอเบอร์รี่ ขนาด 700 กรัม	https://www.tvdirect.tv/proflex-concentrate-strawberry-700-g-700	870	0111800202218	2016-12-19 20:26:01.087078	2016-12-19 20:26:01.087078
8088	ProFlex Concentrate Pure 700 G.  โปรเฟลคซ์ คอนเซนเทรด รสจืด ขนาด 700 กรัม	https://www.tvdirect.tv/proflex-concentrate-pure-700-g-700	870	0111800202225	2016-12-19 20:26:03.242531	2016-12-19 20:26:03.242531
8089	ProFlex Concentrate Chocolate 5 LB.  โปรเฟลคซ์ คอนเซนเทรด กลิ่นช็อคโกแลต ขนาด 5 ปอนด์	https://www.tvdirect.tv/proflex-concentrate-chocolate-5-lb-5	1720	0111800202232	2016-12-19 20:26:05.01211	2016-12-19 20:26:05.01211
8090	ProFlex Concentrate Vanilla 5 LB.  โปรเฟลคซ์ คอนเซนเทรด กลิ่นวานิลลา ขนาด 5 ปอนด์	https://www.tvdirect.tv/proflex-concentrate-vanilla-5-lb-5	1720	0111800202249	2016-12-19 20:26:06.509687	2016-12-19 20:26:06.509687
8091	PROFLEX HULK VANILLA  5 LB.	https://www.tvdirect.tv/dtm-proflex-hulk-vanilla-5-lb	1350	0111800202256	2016-12-19 20:26:07.908201	2016-12-19 20:26:07.908201
8092	PROFLEX HULK CHOCOLATE  5 LB.	https://www.tvdirect.tv/dtm-proflex-hulk-chocolate-5-lb	1350	0111800202263	2016-12-19 20:26:09.427794	2016-12-19 20:26:09.427794
8093	ProFlex Diva Vanilla 500 G. โปรเฟลคซ์ ดีว่า กลิ่นวานิลลา ขนาด 500 กรัม	https://www.tvdirect.tv/proflex-diva-vanilla-500-g-500	820	0111800202270	2016-12-19 20:26:11.038898	2016-12-19 20:26:11.038898
8094	ProFlex Diva Chocolate 500 G.  โปรเฟลคซ์ ดีว่า กลิ่นช็อคโกแลต ขนาด 500 กรัม	https://www.tvdirect.tv/proflex-diva-chocolate-500-g-500	820	0111800202287	2016-12-19 20:26:12.631885	2016-12-19 20:26:12.631885
8095	ProFlex Diva Mixed Berry 500 G.  โปรเฟลคซ์ ดีว่า กลิ่นเบอร์รี่ ขนาด 500 กรัม	https://www.tvdirect.tv/proflex-diva-mixed-berry-500-g-500	820	0111800202294	2016-12-19 20:26:14.350858	2016-12-19 20:26:14.350858
8096	ProFlex Gold 700 G.  โปรเฟลคซ์ โกลด์ ขนาด 700 กรัม	https://www.tvdirect.tv/proflex-gold-700-g-700	990	0111800202300	2016-12-19 20:26:15.84549	2016-12-19 20:26:15.84549
8097	UNIVERSAL REAL GAINS STRAWBERRY 6.85LBS เวย์โปรตีน	https://www.tvdirect.tv/universal-real-gains-strawberry-6-85lbs	2690	0111800203468	2016-12-19 20:26:17.800298	2016-12-19 20:26:17.800298
8098	UNIVERSAL SUPER CUTS 3 130 Tablets ผลิตภัณฑ์ลดน้ำหนัก	https://www.tvdirect.tv/universal-super-cuts-3-130-tablets	1270	0111800203413	2016-12-19 20:26:21.126213	2016-12-19 20:26:21.126213
8099	UNIVERSAL L CARNITINE FUMARATE 60 Capsules ผลิตภัณฑ์ลดน้ำหนัก	https://www.tvdirect.tv/universal-l-carnitine-fumarate-60-capsules	1180	0111800203406	2016-12-19 20:26:22.917671	2016-12-19 20:26:22.917671
8100	UNIVERSAL REAL GAINS STRAWBERRY 10.6LBS ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/universal-real-gains-strawberry-10-6lbs	3800	0111800203338	2016-12-19 20:26:24.740406	2016-12-19 20:26:24.740406
8101	UNIVERSAL REAL GAINS BANANA 10.6LBS ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/universal-real-gains-banana-10-6lbs	3800	0111800203321	2016-12-19 20:26:26.57541	2016-12-19 20:26:26.57541
8102	UNIVERSAL REAL GAINS BANANA 6.85LBS ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/universal-real-gains-banana-6-85lbs	2690	0111800203314	2016-12-19 20:26:28.470561	2016-12-19 20:26:28.470561
8103	UNIVERSAL REAL GAINS CHOCOLATE MINT 10.6LBS ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/universal-real-gains-chocolate-mint-10-6lbs	3800	0111800203307	2016-12-19 20:26:30.120961	2016-12-19 20:26:30.120961
8104	UNIVERSAL REAL GAINS COOKIE&CREAM 10.6LB ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/universal-real-gains-cookie-cream-10-6lb	3800	0111800203284	2016-12-19 20:26:31.863837	2016-12-19 20:26:31.863837
8105	UNIVERSAL REAL GAINS COOKIE&CREAM 6.85LB ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/universal-real-gains-cookie-cream-6-85lb	2690	0111800203277	2016-12-19 20:26:33.604842	2016-12-19 20:26:33.604842
8106	UNIVERSAL REAL GAINS VANILLA 10.6LBS ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/universal-real-gains-vanilla-10-6lbs	3800	0111800203260	2016-12-19 20:26:35.19278	2016-12-19 20:26:35.19278
8107	UNIVERSAL REAL GAINS VANILLA 6.85LBS ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/universal-real-gains-vanilla-6-85lbs	2690	0111800203253	2016-12-19 20:26:36.979754	2016-12-19 20:26:36.979754
8108	UNIVERSAL REAL GAINS CHOCOLATE 10.6LBS ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/universal-real-gains-chocolate-10-6lbs	3800	0111800203246	2016-12-19 20:26:38.914849	2016-12-19 20:26:38.914849
8109	UNIVERSAL GAIN FAST 3100 STRAWBERRY 10LBS ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/universal-gain-fast-3100-strawberry-10lbs	3400	0111800203222	2016-12-19 20:26:40.695597	2016-12-19 20:26:40.695597
8110	UNIVERSAL GAIN FAST 3100 STRAWBERRY 5.1LBS ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/universal-gain-fast-3100-strawberry-5-1lbs	1900	0111800203215	2016-12-19 20:26:42.421384	2016-12-19 20:26:42.421384
8111	UNIVERSAL GAIN FAST 3100 BANANA 10LBS ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/universal-gain-fast-3100-banana-10lbs	3400	0111800203208	2016-12-19 20:26:44.222756	2016-12-19 20:26:44.222756
8112	UNIVERSAL GAIN FAST 3100 COOKIE&CREAM 5.1LBS ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/universal-gain-fast-3100-cookie-cream-5-1lbs	1900	0111800202867	2016-12-19 20:26:45.977708	2016-12-19 20:26:45.977708
8113	UNIVERSAL GAIN FAST 3100 VANILLA 10LBS ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/universal-gain-fast-3100-vanilla-10lbs	3400	0111800203178	2016-12-19 20:26:47.767819	2016-12-19 20:26:47.767819
8114	UNIVERSAL GAIN FAST 3100 VANILLA 5.1LBS ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/universal-gain-fast-3100-vanilla-5-1lbs	1900	0111800203161	2016-12-19 20:26:51.544724	2016-12-19 20:26:51.544724
8115	UNIVERSAL GAIN FAST 3100 CHOCOLATE 10LBS ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/universal-gain-fast-3100-chocolate-10lbs	3400	0111800203154	2016-12-19 20:26:53.309764	2016-12-19 20:26:53.309764
8116	ANIMAL WHEY COOKIE&CREAM 10LBS เวย์โปรตีน	https://www.tvdirect.tv/animal-whey-cookie-cream-10lbs	4300	0111800203130	2016-12-19 20:26:54.995147	2016-12-19 20:26:54.995147
8117	ANIMAL WHEY COOKIE&CREAM 4LBS เวย์โปรตีน	https://www.tvdirect.tv/animal-whey-cookie-cream-4lbs	2350	0111800203123	2016-12-19 20:26:56.714963	2016-12-19 20:26:56.714963
8118	ANIMAL WHEY COOKIE&CREAM 2LBS เวย์โปรตีน	https://www.tvdirect.tv/animal-whey-cookie-cream-2lbs	1390	0111800203116	2016-12-19 20:27:00.002042	2016-12-19 20:27:00.002042
8119	ANIMAL WHEY VANILLA 10LBS เวย์โปรตีน	https://www.tvdirect.tv/animal-whey-vanilla-10lbs	4300	0111800203109	2016-12-19 20:27:01.62493	2016-12-19 20:27:01.62493
8120	ANIMAL WHEY VANILLA 4LBS เวย์โปรตีน	https://www.tvdirect.tv/animal-whey-vanilla-4lbs	2350	0111800203093	2016-12-19 20:27:03.330135	2016-12-19 20:27:03.330135
8121	ANIMAL WHEY VANILLA 2LBS เวย์โปรตีน	https://www.tvdirect.tv/animal-whey-vanilla-2lbs	1390	0111800203086	2016-12-19 20:27:04.982331	2016-12-19 20:27:04.982331
8122	ANIMAL WHEY CHOCOLATE 10LBS เวย์โปรตีน	https://www.tvdirect.tv/animal-whey-chocolate-10lbs	4300	0111800203079	2016-12-19 20:27:06.588574	2016-12-19 20:27:06.588574
8123	ANIMAL WHEY CHOCOLATE 4LBS เวย์โปรตีน	https://www.tvdirect.tv/animal-whey-chocolate-4lbs	2350	0111800203062	2016-12-19 20:27:08.130227	2016-12-19 20:27:08.130227
8124	ANIMAL WHEY CHOCOLATE 2LBS เวย์โปรตีน	https://www.tvdirect.tv/animal-whey-chocolate-2lbs	1390	0111800203055	2016-12-19 20:27:09.754656	2016-12-19 20:27:09.754656
8125	UNIVERSAL ULTRA WHEY PRO STRAWBERRY 5LBS เวย์โปรตีน	https://www.tvdirect.tv/universal-ultra-whey-pro-strawberry-5lbs	2350	0111800203031	2016-12-19 20:27:11.446428	2016-12-19 20:27:11.446428
8126	UNIVERSAL ULTRA WHEY PRO STRAWBERRY 2LBS เวย์โปรตีน	https://www.tvdirect.tv/universal-ultra-whey-pro-strawberry-2lbs	1350	0111800203024	2016-12-19 20:27:13.25426	2016-12-19 20:27:13.25426
8127	UNIVERSAL ULTRA WHEY DOUBLE CHOCCHIP 5LBS เวย์โปรตีน	https://www.tvdirect.tv/universal-ultra-whey-double-chocchip-5lbs	2350	0111800203000	2016-12-19 20:27:14.916393	2016-12-19 20:27:14.916393
8128	UNIVERSAL ULTRA WHEY PRO DOUBLE CHOCCHIP 2LBS เวย์โปรตีน	https://www.tvdirect.tv/universal-ultra-whey-double-chocchip-2lbs	1350	0111800202997	2016-12-19 20:27:16.625439	2016-12-19 20:27:16.625439
8129	UNIVERSAL ULTRA WHEY PRO MOCHA CAPPUCINO 10LBS เวย์โปรตีน	https://www.tvdirect.tv/universal-ultra-whey-mocha-cappucino-10lbs	4050	0111800202980	2016-12-19 20:27:18.363051	2016-12-19 20:27:18.363051
8130	UNIVERSAL ULTRA WHEY PRO MOCHA CAPPUCINO 5LBS เวย์โปรตีน	https://www.tvdirect.tv/universal-ultra-whey-mocha-cappucino-5lbs	2350	0111800202973	2016-12-19 20:27:20.118466	2016-12-19 20:27:20.118466
8131	UNIVERSAL ULTRA WHEY PRO MOCHA CAPPUCINO 2LBS เวย์โปรตีน	https://www.tvdirect.tv/universal-ultra-whey-mocha-cappucino-2lbs	1350	0111800202966	2016-12-19 20:27:21.793653	2016-12-19 20:27:21.793653
8132	UNIVERSAL ULTRA WHEY PRO COOKIE&CREAM 10LBS เวย์โปรตีน	https://www.tvdirect.tv/universal-ultra-whey-pro-cookie-cream-10lbs	4050	0111800202959	2016-12-19 20:27:23.449453	2016-12-19 20:27:23.449453
8133	UNIVERSAL ULTRA WHEY PRO COOKIE&CREAM 5LBS เวย์โปรตีน	https://www.tvdirect.tv/universal-ultra-whey-pro-cookie-cream-5lbs	2350	0111800202942	2016-12-19 20:27:25.183901	2016-12-19 20:27:25.183901
8134	UNIVERSAL ULTRA WHEY PRO COOKIE&CREAM 2LBS เวย์โปรตีน	https://www.tvdirect.tv/universal-ultra-whey-pro-cookie-cream-2lbs	1350	0111800202935	2016-12-19 20:27:26.949884	2016-12-19 20:27:26.949884
8135	UNIVERSAL ULTRA WHEY PRO VANILLA 10LBS เวย์โปรตีน	https://www.tvdirect.tv/universal-ultra-whey-pro-vanilla-10lbs	4050	0111800202928	2016-12-19 20:27:28.575328	2016-12-19 20:27:28.575328
8136	UNIVERSAL ULTRA WHEY PRO VANILLA 2LBS เวย์โปรตีน	https://www.tvdirect.tv/universal-ultra-whey-pro-vanilla-2lbs	1350	0111800202904	2016-12-19 20:27:30.327897	2016-12-19 20:27:30.327897
8137	UNIVERSAL ULTRA WHEY PRO CHOCOLATE 2LBS เวย์โปรตีน	https://www.tvdirect.tv/universal-ultra-whey-pro-chocolate-2lbs	1350	0111800202874	2016-12-19 20:27:32.085925	2016-12-19 20:27:32.085925
8138	PROFLEX DIVA KIWI 500 G. Set 2 ชิ้น	https://www.tvdirect.tv/proflex-diva-kiwi-500-g-500	1599	ProflexDiva500	2016-12-19 20:27:35.970038	2016-12-19 20:27:35.970038
8139	PROFLEX DIVA MATCHA GREEN TEA 500 G. Set 2 ชิ้น	https://www.tvdirect.tv/proflex-diva-matcha-green-tea-500-g-500	1599	ProflexDivaMatcha	2016-12-19 20:27:38.358996	2016-12-19 20:27:38.358996
8140	PROFLEX ISOLATE MATCHA GREENTEA 700 G. Set 2 ชิ้น	https://www.tvdirect.tv/proflex-isolate-matcha-greentea-700-g-700	1799	ProflexIsolate700	2016-12-19 20:27:40.850909	2016-12-19 20:27:40.850909
8141	UNIVERSAL RED HOT 60 Capsules ผลิตภัณฑ์ลดน้ำหนัก	https://www.tvdirect.tv/universal-red-hot-60-capsules	1500	0111800203420	2016-12-19 20:27:42.496472	2016-12-19 20:27:42.496472
8142	ANIMAL MASS COOKIE&CREAM 10.19LBS ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/animal-mass-cookie-cream-10-19lbs	3990	0111800203390	2016-12-19 20:27:44.227508	2016-12-19 20:27:44.227508
8143	ANIMAL MASS VANILLA 10.19LBS ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/animal-mass-vanilla-10-19lbs	3990	0111800203376	2016-12-19 20:27:45.910613	2016-12-19 20:27:45.910613
8144	ANIMAL MASS VANILLA 5.09LBS ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/animal-mass-vanilla-5-09lbs	2190	0111800203369	2016-12-19 20:27:47.581918	2016-12-19 20:27:47.581918
8145	ANIMAL MASS CHOCOLATE 10.19LBSS ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/animal-mass-chocolate-10-19lbss	3990	0111800203352	2016-12-19 20:27:49.255245	2016-12-19 20:27:49.255245
8146	ANIMAL MASS CHOCOLATE 5.09LBS ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/animal-mass-chocolate-5-09lbs	2190	0111800203345	2016-12-19 20:27:50.992101	2016-12-19 20:27:50.992101
8147	UNIVERSAL REAL GAINS CHOCOLATE MINT 6.85LBS ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/universal-real-gains-chocolate-mint-6-85lbs	2690	0111800203291	2016-12-19 20:27:52.651999	2016-12-19 20:27:52.651999
8148	UNIVERSAL GAIN FAST 3100 COOKIE&CREAM 10LBS ผลิตภัณฑ์เพิ่มน้ำหนัก	https://www.tvdirect.tv/universal-gain-fast-3100-cookie-cream-10lbs	3400	0111800203185	2016-12-19 20:27:54.408368	2016-12-19 20:27:54.408368
8149	UNIVERSAL ULTRA WHEY PRO STRAWBERRY 10LBS เวย์โปรตีน	https://www.tvdirect.tv/universal-ultra-whey-pro-strawberry-10lbs	4050	0111800203048	2016-12-19 20:27:56.043338	2016-12-19 20:27:56.043338
8150	UNIVERSAL ULTRA WHEY PRO CHOCOLATE 10LB เวย์โปรตีน	https://www.tvdirect.tv/universal-ultra-whey-pro-chocolate-10lb	4050	0111800202898	2016-12-19 20:27:58.197719	2016-12-19 20:27:58.197719
8151	UNIVERSAL ULTRA WHEY PRO CHOCOLATE 5LBS เวย์โปรตีน	https://www.tvdirect.tv/universal-ultra-whey-pro-chocolate-5lbs	2350	0111800202881	2016-12-19 20:27:59.849043	2016-12-19 20:27:59.849043
8152	TORNADO BOTTLE กระบอกเชคอัตโนมัติแบบพกพา 2 ชิ้น 	https://www.tvdirect.tv/tornado-bottle-2	990	TornadoBottle	2016-12-19 20:28:09.038189	2016-12-19 20:28:09.038189
8153	CASIKO เครื่องชั่งน้ำหนัก CK-3311A-สีเทา	https://www.tvdirect.tv/casiko-ck-3311a	459	0112300207860	2016-12-19 20:28:26.282077	2016-12-19 20:28:26.282077
8154	Pomo 37 Blood Pressure Monitor wristband สายรัดข้อมือวัดความดันโลหิต	https://www.tvdirect.tv/pomo-37-blood-pressure-monitor-wristband	2990	0112500203598	2016-12-19 20:28:37.949582	2016-12-19 20:28:37.949582
8155	WAIST BELT STS07 COL.กระเป๋าคาดเอวเอนกประสงค์(LED)	https://www.tvdirect.tv/waist-belt-sts07-col-led	990	WaistBeltSTS07	2016-12-19 20:28:40.644164	2016-12-19 20:28:40.644164
8156	OTOP เรือมหาสมบัติเจิ้งเหอ	https://www.tvdirect.tv/otop	49900	0113400300059	2016-12-19 20:29:01.600213	2016-12-19 20:29:01.600213
8157	พญาอินทรีย์ทอง	https://www.tvdirect.tv/0111000300400	49900	0111000300400	2016-12-19 20:29:03.678874	2016-12-19 20:29:03.678874
8158	My King สารคดีเฉลิมพระเกียรติ รัชกาลที่ ๙  ชุด Blu-Ray (Limited Premium Set)	https://www.tvdirect.tv/my-king-blu-ray	2499	0111300300964	2016-12-19 20:29:05.732365	2016-12-19 20:29:05.732365
8159	มังกร 9 มงคล-พื้นเหลือง (เลขทั่วไป)	https://www.tvdirect.tv/0113700300063	49900	0113700300063	2016-12-19 20:29:07.488997	2016-12-19 20:29:07.488997
8160	OTOP มังกร-หงส์	https://www.tvdirect.tv/otop-130	29900	0110803000029	2016-12-19 20:29:09.857936	2016-12-19 20:29:09.857936
8161	OTOP เรือ 9 มังกร	https://www.tvdirect.tv/otop-9	49900	0110803000012	2016-12-19 20:29:11.586739	2016-12-19 20:29:11.586739
8162	มังกรพันหลัก	https://www.tvdirect.tv/0111603000158	19900	0111603000158	2016-12-19 20:29:13.277605	2016-12-19 20:29:13.277605
8163	มังกรพันหลักคู่	https://www.tvdirect.tv/0111603000141	29900	0111603000141	2016-12-19 20:29:14.960579	2016-12-19 20:29:14.960579
8164	มังกรหลักตรง	https://www.tvdirect.tv/0111603000134	29900	0111603000134	2016-12-19 20:29:16.723065	2016-12-19 20:29:16.723065
8165	มั่งมีศรีสุข (ขนาดใหญ่ 60 x 38 cm)	https://www.tvdirect.tv/60-x-38-cm	7990	0110400300300	2016-12-19 20:29:18.504728	2016-12-19 20:29:18.504728
8166	มั่งมีศรีสุข (ขนาดเล็ก 43 x 32 cm)	https://www.tvdirect.tv/43-x-32-cm	4990	0110400300317	2016-12-19 20:29:20.108796	2016-12-19 20:29:20.108796
8167	เรือจำลองไม้สักทองรุ่นเฉพาะบุคคล (ขนาด 89 เซนติเมตร)	https://www.tvdirect.tv/0110400300232	99000	0110400300232	2016-12-19 20:29:22.070795	2016-12-19 20:29:22.070795
8168	เรือจำลองไม้สักทองรุ่นเฉพาะบุคคล (ขนาด 60 เซนติเมตร)	https://www.tvdirect.tv/0110400300225	39900	0110400300225	2016-12-19 20:29:23.894556	2016-12-19 20:29:23.894556
8169	เรือจำลองไม้สักทอง รุ่นโชคลาภ (ขนาดเรือ กว้าง 13 ยาว 48 สูง 58 CM)	https://www.tvdirect.tv/13-48-58-cm	9900	0110400300027	2016-12-19 20:29:25.789807	2016-12-19 20:29:25.789807
8170	เรือจำลองไม้สักทอง รุ่นเฉพาะบุคคล (ขนาด 48 เซนติเมตร)	https://www.tvdirect.tv/0110400300034	19900	0110400300034	2016-12-19 20:29:27.900189	2016-12-19 20:29:27.900189
8171	มังกร 9 มงคล (เลขทั่วไป)	https://www.tvdirect.tv/0110400300171	44900	0110400300171	2016-12-19 20:29:29.663708	2016-12-19 20:29:29.663708
8172	MANTIS INSTANT SHINE น้ำยาทำความสะอาด เคลือบเงา	https://www.tvdirect.tv/mantis-instant-shine	499	0110600300261	2016-12-19 20:29:31.487009	2016-12-19 20:29:31.487009
8173	Motor Up Orignal Engine Treatment วิตามินเพิ่มประสิทธิภาพเครื่องยนต์สูตรดั้งเดิม	https://www.tvdirect.tv/motor-up-orignal-engine-treatment	990	0120600500110	2016-12-19 20:29:33.30412	2016-12-19 20:29:33.30412
8174	Motor Up Engine Cleaner วิตามินทำความสะอาดภายในเครื่องยนต์	https://www.tvdirect.tv/motor-up-engine-cleaner	190	0120600500127	2016-12-19 20:29:35.082704	2016-12-19 20:29:35.082704
8175	Motor Up Fuel System Treatment วิตามินเพิ่มประสิทธิภาพระบบจ่ายน้ำมันเชื้อเพลิงเครื่องยนต์เบนซิน และดีเซล	https://www.tvdirect.tv/motor-up-fuel-system-treatment	590	0120600500141	2016-12-19 20:29:35.876002	2016-12-19 20:29:35.876002
8176	Motor Up Moremiles วิตามินเพิ่มประสิทธิภาพและประหยัดน้ำสูตรพิเศษสำหรับเครื่องยนต์เบนซิน	https://www.tvdirect.tv/motor-up-moremiles	390	0120600500158	2016-12-19 20:29:39.821527	2016-12-19 20:29:39.821527
8177	Motor Up Xtreme Small Pack	https://www.tvdirect.tv/motor-up-xtreme-small-pack	990	0120600500172	2016-12-19 20:29:41.987495	2016-12-19 20:29:41.987495
8178	Motor Up Original Small Pack	https://www.tvdirect.tv/motor-up-original-small-pack	990	0120600500189	2016-12-19 20:29:44.214338	2016-12-19 20:29:44.214338
8179	สกู๊ตเตอร์ผู้ใหญ่ รุ่น URBAN7XL สีขาว	https://www.tvdirect.tv/scooter-urban7xl-white	2790	0111400203059	2016-12-19 20:29:45.959167	2016-12-19 20:29:45.959167
8180	เรือสำเภา รุ่น 3 ใบเรือตรง (โจวหม่าน)	https://www.tvdirect.tv/0113400300080	19900	0113400300080	2016-12-19 20:29:47.848016	2016-12-19 20:29:47.848016
8181	เรือสำเภา รุ่น 3 ใบเรือเล็กข้าง (หยางชิง)	https://www.tvdirect.tv/0113400300103	19900	0113400300103	2016-12-19 20:29:49.801263	2016-12-19 20:29:49.801263
8182	เรือสำเภา รุ่น 2ใบท้ายยาว (โจวเหวิน)	https://www.tvdirect.tv/0113400300127	19900	0113400300127	2016-12-19 20:29:51.752362	2016-12-19 20:29:51.752362
8183	Inmotion SCV L6 Scooter WHITE สีขาว	https://www.tvdirect.tv/inmotion-scv-l6-scooter-white	27500	0112500202287	2016-12-19 20:29:52.483123	2016-12-19 20:29:52.483123
8184	Inmotion SCV L6 Scooter BLACK สีดำ	https://www.tvdirect.tv/inmotion-scv-l6-scooter-black	27500	0112500202294	2016-12-19 20:29:53.223479	2016-12-19 20:29:53.223479
8185	Inmotion SCV R1 EX	https://www.tvdirect.tv/inmotion-scv-r1	47500	Inmotion SCV R1 EX	2016-12-19 20:29:54.101443	2016-12-19 20:29:54.101443
8186	Inmotion SCV H2 (Balance Wheels)	https://www.tvdirect.tv/inmotion-scv-h2-balance-wheels	18900	Inmotion SCV H2	2016-12-19 20:29:54.949812	2016-12-19 20:29:54.949812
8187	Inmotion SCV H1 (Balance Wheels)	https://www.tvdirect.tv/inmotion-scv-h1-balance-wheel	18900	Inmotion SCV H1	2016-12-19 20:29:55.759987	2016-12-19 20:29:55.759987
8189	OTOP เรือเฉพาะบุคคล ขนาด 39 ซม	https://www.tvdirect.tv/otop-39	9900	0113700300490	2016-12-19 20:30:00.734796	2016-12-19 20:30:00.734796
8190	OTOP เรือเฉพาะบุคคล รุ่นฮก-หีบมหาสมบัติ 48 ซม. ลำดับที่ทั่วไป	https://www.tvdirect.tv/otop-48	19900	0113700300506	2016-12-19 20:30:03.130997	2016-12-19 20:30:03.130997
8191	เทพเจ้าเห้งเจียประทับนั่ง	https://www.tvdirect.tv/magicmonkey-sitting	19900	0113700300476	2016-12-19 20:30:05.436143	2016-12-19 20:30:05.436143
8192	เทพเจ้าเห้งเจียประทับยืน	https://www.tvdirect.tv/0113700300483	19900	0113700300483	2016-12-19 20:30:09.908885	2016-12-19 20:30:09.908885
8193	VINK New York Wax 250 ML.สเปรย์แวกซ์รถจักรยานยนต์ + VINK WASH 40 ML. แชมพูล้างรถ	https://www.tvdirect.tv/vink-new-york-wax-250-ml-vink-wash-40-ml	420	0110600201759	2016-12-19 20:30:10.753894	2016-12-19 20:30:10.753894
8194	VINK New York Waterless 250 ML. สเปรย์ทำความสะอาดรถจักรยานยนต์ + VINK WASH 40 ML. แชมพูล้างรถ	https://www.tvdirect.tv/vink-new-york-waterless-250-ml-vink-wash-40-ml	420	0110600201766	2016-12-19 20:30:11.494295	2016-12-19 20:30:11.494295
8195	SRITHAI จานโชว์ 10" 9 รัชกาล	https://www.tvdirect.tv/srithai-10-9	260	0111000200724	2016-12-19 20:30:13.336376	2016-12-19 20:30:13.336376
8196	SRITHAI จานโชว์ 10" พระรูปคู่ครองราชย์ 60 ปี	https://www.tvdirect.tv/srithai-10-60	290	0111000200731	2016-12-19 20:30:15.188627	2016-12-19 20:30:15.188627
8197	SRITHAI จานโชว์ 10" รัชกาลที่ 5	https://www.tvdirect.tv/srithai-10-5	260	0111000200748	2016-12-19 20:30:16.882928	2016-12-19 20:30:16.882928
8198	SRITHAI จานโชว์ 10" รัชกาลที่ 5 - 2	https://www.tvdirect.tv/srithai-10-5-2	260	0111000200755	2016-12-19 20:30:18.594836	2016-12-19 20:30:18.594836
8199	SRITHAI จานโชว์ 10" รัชกาลที่ 9	https://www.tvdirect.tv/srithai-10-9-2208	260	0111000200762	2016-12-19 20:30:20.384228	2016-12-19 20:30:20.384228
8200	SRITHAI จานโชว์ 10" รัชกาลที่ 9 - 2	https://www.tvdirect.tv/srithai-10-9-2	260	0111000200779	2016-12-19 20:30:22.609742	2016-12-19 20:30:22.609742
8201	SRITHAI จานโชว์ 10" พระพิฆเนศ	https://www.tvdirect.tv/srithai-10	260	0111000200786	2016-12-19 20:30:24.371315	2016-12-19 20:30:24.371315
8202	CAR CANE ด้ามจับช่วยพยุงนิรภัย	https://www.tvdirect.tv/car-cane	590	0120600600155	2016-12-19 20:30:26.298287	2016-12-19 20:30:26.298287
8203	VR Fitting ชุดโต๊ะปิคนิคอลูมิเนียมเก้าอี้แยก 4 ตัว หน้าโต๊ะลายไม้ ZZ1PC1612SA	https://www.tvdirect.tv/vr-fitting-4-zz1pc1612sa	1490	0110900201378	2016-12-19 20:30:28.209859	2016-12-19 20:30:28.209859
8204	โต๊ะกระเป๋า NEW IDEA -พลาสติกABS -น้ำเงิน	https://www.tvdirect.tv/new-idea-abs-blue	1990	0110900201361	2016-12-19 20:30:29.012427	2016-12-19 20:30:29.012427
8205	โต๊ะกระเป๋า NEW IDEA -พลาสติกABS -เขียว	https://www.tvdirect.tv/new-idea-abs-green	1990	0110900201354	2016-12-19 20:30:29.827366	2016-12-19 20:30:29.827366
8206	Aston Triple X Cam กล้องติดรถทรงกระจกมองหลัง	https://www.tvdirect.tv/aston-triple-x-cam	2990	0112500203385	2016-12-19 20:30:31.747706	2016-12-19 20:30:31.747706
8207	Aston Car Camcorder กล้องติดรถยนต์	https://www.tvdirect.tv/aston-car-camcorder	990	0112500203352	2016-12-19 20:30:33.704946	2016-12-19 20:30:33.704946
8208	VR FITTING Aluminium Picnic Table โต๊ะปิกนิคอลูมิเนียมพับได้ PC1135	https://www.tvdirect.tv/vr-fitting-aluminium-picnic-table-pc1135	1980	0110900201385	2016-12-19 20:30:35.769845	2016-12-19 20:30:35.769845
8209	DROP STOP แท่งกันของตกในรถ	https://www.tvdirect.tv/drop-stop	390	0120600600179	2016-12-19 20:30:37.719444	2016-12-19 20:30:37.719444
8210	Xiaomi Yunbike C1 Black จักรยานไฟฟ้าระบบไฮบริด - ยุ่นไบค์ ชาย/ดำ	https://www.tvdirect.tv/xiaomi-yunbike-c1-black	23900	0110600201858	2016-12-19 20:30:42.05904	2016-12-19 20:30:42.05904
8211	Xiaomi Yunbike C1 White จักรยานไฟฟ้าระบบไฮบริด - ยุ่นไบค์ หญิง/ขาว	https://www.tvdirect.tv/xiaomi-yunbike-c1-white	23900	0110600201865	2016-12-19 20:30:44.063383	2016-12-19 20:30:44.063383
8212	STL Tent Flash Touch MN200 Navy เต๊นท์แฟลชทัชสำหรับ 2 คน สีกรม	https://www.tvdirect.tv/stl-tent-flash-touch-mn200-navy	1690	0113300200855	2016-12-19 20:30:45.858869	2016-12-19 20:30:45.858869
8213	STL Tent Flash Touch MN300 Navy เต๊นท์แฟลชทัชสำหรับ 3 คน สีกรม	https://www.tvdirect.tv/stl-tent-flash-touch-mn300-navy	1990	0113300200862	2016-12-19 20:30:47.778743	2016-12-19 20:30:47.778743
8214	Sacred Statue of Guanyin เจ้าแม่กวนอิม ปางประทับปลามังกร	https://www.tvdirect.tv/0113700203566	12900	0113700203566	2016-12-19 20:30:49.695803	2016-12-19 20:30:49.695803
8215	Sacred Statue of Maneki Neko แมวกวักญี่ปุ่น (ยกมือซ้าย)	https://www.tvdirect.tv/0113700203573	16900	0113700203573	2016-12-19 20:30:51.576688	2016-12-19 20:30:51.576688
8216	Sacred Statue Swan twain Dragon หงส์คู่มังกร	https://www.tvdirect.tv/0113700203618	22900	0113700203618	2016-12-19 20:30:53.295421	2016-12-19 20:30:53.295421
8217	Sacred Statue เลขแปดมงคล-ฟักทอง	https://www.tvdirect.tv/sacred-statue	22900	0113700203597	2016-12-19 20:30:55.044341	2016-12-19 20:30:55.044341
8218	Sacred Statue heaven Dragon มังกรสวรรค์พันเสา	https://www.tvdirect.tv/sacred-statue-heaven-dragon	23900	0113700203625	2016-12-19 20:30:56.890908	2016-12-19 20:30:56.890908
8219	TIRE INFLATOR MSJ-509 ที่สูบลมแบบพกพา	https://www.tvdirect.tv/tire-inflator-msj-509	350	0110600201872	2016-12-19 20:30:58.703489	2016-12-19 20:30:58.703489
8220	My Queen ราชินีของเรา Blu-Ray, DVD , CD เพลงหนังสือบทความ	https://www.tvdirect.tv/my-queen-dvd-cd	2499	0112100200645	2016-12-19 20:31:00.623475	2016-12-19 20:31:00.623475
8221	MTX IMAGE PRO IP432 2 WAY SPEAKER ลำโพงติดรถยนต์  แถม MTX STREET AUDIO IX2 หูฟัง	https://www.tvdirect.tv/mtx-image-pro-ip432-2-way-speaker-mtx-street-audio-ix2	6550	MTXIMAGE	2016-12-19 20:31:01.514786	2016-12-19 20:31:01.514786
8222	SUNSPEED BOBCAT จักรยานพับได้	https://www.tvdirect.tv/sunspeed-bobcat	4990	SunspeedBobcat	2016-12-19 20:31:02.468851	2016-12-19 20:31:02.468851
8223	KALAQ Q3 FOLDING BIKES จักรยานพับได้ KALAQ Q3 	https://www.tvdirect.tv/kalaq-q3-folding-bikes-kalaq-q3	6990	KalaqQ3FoldingBikes	2016-12-19 20:31:03.354439	2016-12-19 20:31:03.354439
8224	DTECH CAR CAMERA TCM-003 COL. BLACK กล้องติดรถยนต์รุ่น TCM-003 สีดำ	https://www.tvdirect.tv/dtech-car-camera-tcm-003-col-black-tcm-003	2490	0112500204014	2016-12-19 20:31:05.19969	2016-12-19 20:31:05.19969
8225	DTECH CAR CAMERA TCM-023 COL. BLACK กล้องติดรถยนต์รุ่น TCM-023 สีดำ	https://www.tvdirect.tv/dtech-car-camera-tcm-023-col-black-tcm-023	2490	0112500204007	2016-12-19 20:31:07.100223	2016-12-19 20:31:07.100223
8226	DTECH CAR CAMERA TCM-023 COL. WHITE กล้องติดรถยนต์รุ่น TCM-023 สีขาว	https://www.tvdirect.tv/dtech-car-camera-tcm-023-col-white-tcm-023	2490	0112500203994	2016-12-19 20:31:09.149701	2016-12-19 20:31:09.149701
8227	DTECH CAR CAMERA Silver/Glayกล้องติดรถยนต์TCM065 สีเทาดำ	https://www.tvdirect.tv/dtech-car-camera-silver-glay-tcm065	2490	0112500204045	2016-12-19 20:31:11.217579	2016-12-19 20:31:11.217579
8228	DTECH CAR CAMERA Black กล้องติดรถยนต์ TCM048 สีดำ	https://www.tvdirect.tv/dtech-car-camera-black-tcm048	2500	0112500204083	2016-12-19 20:31:13.195992	2016-12-19 20:31:13.195992
8229	DTECH ACTION CAMERA Silver กล้องบันทึกภาพเอนกประสงค์TCM055 สีเทา	https://www.tvdirect.tv/dtech-action-camera-silver-tcm055	1590	0112500204090	2016-12-19 20:31:17.198873	2016-12-19 20:31:17.198873
8230	DTECH CAR CAMERA Black/Gold  กล้องติดรถยนต์TCM064 สีดำทอง	https://www.tvdirect.tv/dtech-car-camera-black-gold-tcm064	1690	0112500204113	2016-12-19 20:31:19.021831	2016-12-19 20:31:19.021831
8231	DTECH ACTION CAMERA กล้องบันทึกภาพเอนกประสงค์TCM054	https://www.tvdirect.tv/dtech-action-camera-tcm054	2490	DtechAction	2016-12-19 20:31:20.270052	2016-12-19 20:31:20.270052
8232	CAR VALET กล่องเสียบเพิ่มพื้นที่วางของในรถยนต์	https://www.tvdirect.tv/car-valet	790	0120600600162	2016-12-19 20:31:22.012403	2016-12-19 20:31:22.012403
8233	FAS Face Paint ชุดเพ้นท์หน้า 30 มล 6 สี ฟรีพู่กัน 1ด้าม	https://www.tvdirect.tv/fas-face-paint-30-6-1	1250	0110200206925	2016-12-19 20:31:23.690879	2016-12-19 20:31:23.690879
8234	BLACK&DECKER CAR POLISHER เครื่องขัดสีรถยนต์	https://www.tvdirect.tv/black-decker-car-polisher	1490	0111100200921	2016-12-19 20:31:25.421139	2016-12-19 20:31:25.421139
8235	โซฟาลม SABAIBAG 1 แถม 1	https://www.tvdirect.tv/sabaibag-1-1	1990	Sabaibag	2016-12-19 20:31:26.262943	2016-12-19 20:31:26.262943
8236	Varta Bike Light Set ชุดไฟ LED ติดจักรยาน รุ่น 18803	https://www.tvdirect.tv/varta-bike-light-set-led-18803	2500	0110600201902	2016-12-19 20:31:28.013511	2016-12-19 20:31:28.013511
8237	SMART HOME SET 3 PCS ชุดปิคนิค 3ชิ้น เตาย่างบาร์บีคิว หม้อเอนกประสงค์ เต็นท์	https://www.tvdirect.tv/smart-home-set-3-pcs-3	1990	0112400224428	2016-12-19 20:31:29.933916	2016-12-19 20:31:29.933916
8238	CHEVROLET FOLDING BIKES-FM207 COL. BLACK จักรยานพับได้ รุ่น FM207 สีดำ	https://www.tvdirect.tv/chevrolet-folding-bikes-fm207-col-black-fm207	9900	0113200200672	2016-12-19 20:31:31.863165	2016-12-19 20:31:31.863165
8239	CHEVROLET FOLDING BIKES-FM207 COL. IVORY จักรยานพับได้ รุ่น FM207 สีครีม	https://www.tvdirect.tv/chevrolet-folding-bikes-fm207-col-ivory-fm207	9900	0113200200689	2016-12-19 20:31:33.550847	2016-12-19 20:31:33.550847
8240	BRUNO BIKES-MIXTE COL. POWER BLUE จักรยาน รุ่น MIXTE สีฟ้า	https://www.tvdirect.tv/bruno-bikes-mixte-col-power-blue-mixte	14625	0113200200696	2016-12-19 20:31:35.35504	2016-12-19 20:31:35.35504
8241	BRUNO BIKES-MIXTE COL. COTTON BEIGE จักรยาน รุ่น MIXTE สีเบจ	https://www.tvdirect.tv/bruno-bikes-mixte-col-cotton-beige-mixte	14625	0113200200702	2016-12-19 20:31:37.23901	2016-12-19 20:31:37.23901
8242	Sacred Statue PN-STGP30068 ไก่มงคล	https://www.tvdirect.tv/sacred-statue-pn-stgp30068	18900	0113700203678	2016-12-19 20:31:39.042108	2016-12-19 20:31:39.042108
8243	SANGTHONG AWNING CARRY TENT เต็นท์พับเก็บได้ 2 X 2 เมตร สีขาว	https://www.tvdirect.tv/sangthong-awning-carry-tent-2-x-2	1790	0112200200163	2016-12-19 20:31:40.869388	2016-12-19 20:31:40.869388
8244	SANGTHONG AWNING CARRY TENT เต็นท์พับเก็บได้ 3 X 3 เมตร สีขาว	https://www.tvdirect.tv/sangthong-awning-carry-tent-3-x-3	3500	0112200200170	2016-12-19 20:31:42.57571	2016-12-19 20:31:42.57571
8245	SUNSPEED FOX 27.5 COL. BLACK จักรยานเสือภูเขา - สีดำ	https://www.tvdirect.tv/sunspeed-fox-27-5-col-black	4990	0113200200726	2016-12-19 20:31:44.162832	2016-12-19 20:31:44.162832
8246	SUNSPEED FOX 27.5 COL. BLACK จักรยานเสือภูเขา - สีน้ำเงิน	https://www.tvdirect.tv/sunspeed-fox-27-5-col-black-3545	4990	0113200200733	2016-12-19 20:31:45.905561	2016-12-19 20:31:45.905561
8247	SUNSPEED FOX 27.5 COL. BLACK จักรยานเสือภูเขา - สีขาว	https://www.tvdirect.tv/sunspeed-fox-27-5-col-black-3546	4990	0113200200719	2016-12-19 20:31:47.672471	2016-12-19 20:31:47.672471
8248	COYOTE City Bike 24 Inch AMMA  จักรยานวินเทจ 24 นิ้ว รุ่น AMMA	https://www.tvdirect.tv/coyote-city-bike-24-inch-amma-24-amma	2990	COYOTECity	2016-12-19 20:31:50.280261	2016-12-19 20:31:50.280261
8249	COYOTE Mountain Bike 26 Inch ACES จักรยานเสือภูเขา 26 นิ้ว รุ่น Aces 	https://www.tvdirect.tv/coyote-mountain-bike-26-inch-aces-26-aces	5990	COYOTEMountain	2016-12-19 20:31:51.161724	2016-12-19 20:31:51.161724
8250	COYOTE Folding Bike 20 Modern จักรยานพับได้ รุ่น Modern 	https://www.tvdirect.tv/coyote-folding-bike-20-modern-modern	3990	COYOTEFolding	2016-12-19 20:31:53.0874	2016-12-19 20:31:53.0874
8251	STL Air mattress HF-P308 ที่นอนสูญญากาศ  	https://www.tvdirect.tv/stl-air-mattress-hf-p308	590	STLAir	2016-12-19 20:31:53.897499	2016-12-19 20:31:53.897499
8252	My King สารคดีเฉลิมพระเกียรติ รัชกาลที่ ๙ DVD, CD เพลง, หนังสือบทความ (Limited Premium Set)	https://www.tvdirect.tv/my-king-dvd-cd	999	0111300300957	2016-12-19 20:31:55.996767	2016-12-19 20:31:55.996767
8253	Motor Up Xtreme Engine Treatment วิตามินเพิ่มประสิทธิภาพเครื่องยนต์สูตรเอ็กซ์ทรีม	https://www.tvdirect.tv/motor-up-xtreme-engine-treatment	990	0120600500103	2016-12-19 20:31:57.985282	2016-12-19 20:31:57.985282
8254	MICRO KNIFE การ์ดมีดขนาดพกพา	https://www.tvdirect.tv/micro-knife	99	0121100600188	2016-12-19 20:31:59.835703	2016-12-19 20:31:59.835703
8255	HUN HUN เตียงนอนเด็ก พร้อมชุดเครื่องนอน	https://www.tvdirect.tv/hun-hun	5900	0112600200176	2016-12-19 20:32:08.484074	2016-12-19 20:32:08.484074
8256	Hun Hun เตียงไม้เด็ก ลายเด็ก ฟรีชุดเครื่องนอนและผ้าห่ม	https://www.tvdirect.tv/hun-hun-3074	5900	0112600200541	2016-12-19 20:32:10.055713	2016-12-19 20:32:10.055713
8257	Hun Hun เตียงไม้เด็ก ลายลิง ฟรีชุดเครื่องนอนและผ้าห่ม	https://www.tvdirect.tv/hun-hun-3075	5900	0112600200558	2016-12-19 20:32:11.525493	2016-12-19 20:32:11.525493
8258	TULIP POKEMON ชุดเครื่องนอนทิวลิปเซต 6 ฟุต 6 ชิ้น ลาย SL502 POKEMON	https://www.tvdirect.tv/tulip-pokemon-6-6-sl502-pokemon	2925	0110800201849	2016-12-19 20:32:13.034621	2016-12-19 20:32:13.034621
8259	TULIP POKEMON ชุดเครื่องนอนทิวลิปเซต 3.5 ฟุต 4 ชิ้น ลาย SL502 POKEMON	https://www.tvdirect.tv/tulip-pokemon-3-5-4-sl502-pokemon	2170	0110800201870	2016-12-19 20:32:14.507673	2016-12-19 20:32:14.507673
8260	TULIP POKEMON ชุดเครื่องนอนทิวลิปเซต 6 ฟุต 6 ชิ้น ลาย SL508 POKEMON	https://www.tvdirect.tv/tulip-pokemon-6-6-sl508-pokemon	2925	0110800201856	2016-12-19 20:32:16.118301	2016-12-19 20:32:16.118301
8299	RRS KOREA POT 18 cm หม้อเกาหลี 2 หู 18 ซม. 	https://www.tvdirect.tv/rrs-korea-pot-18-cm-2-18	299	0112400223672	2016-12-19 20:33:29.340804	2016-12-19 20:33:29.340804
8261	TULIP POKEMON ชุดเครื่องนอนทิวลิปเซต 3.5 ฟุต 4 ชิ้น ลาย SL508 POKEMON	https://www.tvdirect.tv/tulip-pokemon-3-5-4-sl508-pokemon	2170	0110800201887	2016-12-19 20:32:17.534967	2016-12-19 20:32:17.534967
8262	TULIP POKEMON ชุดเครื่องนอนทิวลิปเซต 6 ฟุต 6 ชิ้น ลาย SL509 POKEMON	https://www.tvdirect.tv/tulip-pokemon-6-6-sl509-pokemon	2925	0110800201863	2016-12-19 20:32:18.966542	2016-12-19 20:32:18.966542
8263	TULIP POKEMON ชุดเครื่องนอนทิวลิปเซต 3.5 ฟุต 4 ชิ้น ลาย SL509 POKEMON	https://www.tvdirect.tv/tulip-pokemon-3-5-4-sl509-pokemon	2170	0110800201894	2016-12-19 20:32:20.394602	2016-12-19 20:32:20.394602
8264	Latex Topper ที่นอนเสริม ขนาด 6 ฟุต	https://www.tvdirect.tv/latex-topper-6	14900	0110800201382	2016-12-19 20:32:23.265619	2016-12-19 20:32:23.265619
8265	Latex Topper ที่นอนเสริม ขนาด 5 ฟุต	https://www.tvdirect.tv/latex-topper-5	13900	0110800201375	2016-12-19 20:32:24.859874	2016-12-19 20:32:24.859874
8266	Latex Topper ที่นอนเสริม ขนาด 3.5 ฟุต	https://www.tvdirect.tv/latex-topper-3-5	9900	0110800201368	2016-12-19 20:32:26.694918	2016-12-19 20:32:26.694918
8267	INTEX Air mattress Single Blue ที่นอนเดี่ยว-หมอน-ที่สูบ สีน้ำเงิน	https://www.tvdirect.tv/intex-air-mattress-single-blue	840	0110800201900	2016-12-19 20:32:28.220147	2016-12-19 20:32:28.220147
8268	INTEX Air mattress Queen Blue ที่นอนคู่ควีน-หมอน 2 ใบ-ที่สูบ สีน้ำเงิน	https://www.tvdirect.tv/intex-air-mattress-queen-blue-2	1220	0110800201917	2016-12-19 20:32:30.218914	2016-12-19 20:32:30.218914
8269	INTEX Air mattress King Blue ที่นอนคิงส์-หมอน 2 ใบ-ที่สูบ สีน้ำเงิน	https://www.tvdirect.tv/intex-air-mattress-king-blue-2	1635	0110800201924	2016-12-19 20:32:31.716658	2016-12-19 20:32:31.716658
8270	INTEX Air mattress Single 3.5 Ft Green ที่นอนเดี่ยวที่สูบในตัว-หมอน1 ใบ สีเขียว	https://www.tvdirect.tv/intex-air-mattress-single-3-5-ft-green-1	899	0110800201948	2016-12-19 20:32:33.206137	2016-12-19 20:32:33.206137
8271	INTEX Air mattress Queen 5 Ft Green ที่นอนคู่ควีนที่สูบในตัว-หมอน 1 ใบ สีเขียว	https://www.tvdirect.tv/intex-air-mattress-queen-5-ft-green-1	1399	0110800201955	2016-12-19 20:32:34.71553	2016-12-19 20:32:34.71553
8272	Air O Space Luxury Bed Set Queen Size	https://www.tvdirect.tv/air-o-space-luxury-bed-set-queen-size	1990	0122300601043	2016-12-19 20:32:36.600461	2016-12-19 20:32:36.600461
8273	Airmax Pillow แอร์แม็กซ์ หมอนเพื่อสุขภาพ 	https://www.tvdirect.tv/airmax-pillow	1990	0121200300445	2016-12-19 20:32:39.92405	2016-12-19 20:32:39.92405
8274	PROPER PILLOW หมอนนอนสบาย	https://www.tvdirect.tv/proper-pillow	990	0120800600085	2016-12-19 20:32:41.458844	2016-12-19 20:32:41.458844
8275	My Pillow หมอนแห่งการพักผ่อน	https://www.tvdirect.tv/my-pillow	990	0122300601050	2016-12-19 20:32:44.689204	2016-12-19 20:32:44.689204
8276	Perfect QQ Pillow Set หมอนพร้อมแท่นวางอเนกประสงค์	https://www.tvdirect.tv/perfect-qq-pillow-set	490	0122200300039	2016-12-19 20:32:46.13892	2016-12-19 20:32:46.13892
8277	Total Pillow หมอนอเนกประสงค์ 2 ใบ	https://www.tvdirect.tv/total-pillow-2	490	0122300500018	2016-12-19 20:32:47.659062	2016-12-19 20:32:47.659062
8278	JML CERACRAFT PAN-RETAIL RED SIZE 28 CM.	https://www.tvdirect.tv/jml-ceracraft-pan-retail-red-size-28-cm	1299	0112400300144	2016-12-19 20:32:53.961259	2016-12-19 20:32:53.961259
8279	Flavor Stone Red กระทะเคลือบหินสีแดง	https://www.tvdirect.tv/flavor-stone-red	3990	0122400601240	2016-12-19 20:32:55.567479	2016-12-19 20:32:55.567479
8280	CHEFRUN PAN SET5 ชุดกระทะเชฟรัน	https://www.tvdirect.tv/chefrun-pan-set5	1990	0122400500147	2016-12-19 20:32:57.258861	2016-12-19 20:32:57.258861
8281	SEAGULL HARD ANODIZED กระทะจีนฮาร์ดอโนไดซ์ 36 ซม	https://www.tvdirect.tv/seagull-hard-anodized-36	879	0112400223575	2016-12-19 20:32:58.875197	2016-12-19 20:32:58.875197
8282	SEAGULL NEW COMBO ชุดเครื่องครัวนิวคอมโบ 7 ชิ้น	https://www.tvdirect.tv/seagull-new-combo-7	1090	0112400223568	2016-12-19 20:32:59.648163	2016-12-19 20:32:59.648163
8283	SEAGULL MIX II ชุดเครื่องครัวคิทเช่นมิกซ์ทู 5 ชิ้น	https://www.tvdirect.tv/seagull-mix-ii-5	990	0112400223544	2016-12-19 20:33:01.290909	2016-12-19 20:33:01.290909
8284	SEAGULL EASYPLUS2 ชุดเครื่องครัวอีซี่พลัสทู 3 ชิ้น	https://www.tvdirect.tv/seagull-easyplus2-3	499	0112400223537	2016-12-19 20:33:03.007157	2016-12-19 20:33:03.007157
8285	SEAGULL HAPPY ชุดกระทะแฮปปี้ 4 ชิ้น	https://www.tvdirect.tv/seagull-happy-4	499	0112400223520	2016-12-19 20:33:04.644274	2016-12-19 20:33:04.644274
8286	SEAGULL DELIGHT II ชุดกระทะนอนสติกดีไลท์ทู 2 ชิ้น	https://www.tvdirect.tv/seagull-delight-ii-2	399	0112400223513	2016-12-19 20:33:06.178054	2016-12-19 20:33:06.178054
8287	SEAGULL SMART ชุดเครื่องครัวนอนสติกสมาร์ท 3 ชิ้น	https://www.tvdirect.tv/seagull-smart-3	590	0112400223506	2016-12-19 20:33:07.831714	2016-12-19 20:33:07.831714
8288	SEAGULL HEALTHY ชุดกระทะนอนสติกเฮลตี้ 2 ชิ้น	https://www.tvdirect.tv/seagull-healthy-2	399	0112400223492	2016-12-19 20:33:09.387788	2016-12-19 20:33:09.387788
8289	SEAGULL SEASON ชุดเครื่องครัวนอนสติกซีซัน 3 ชิ้น	https://www.tvdirect.tv/seagull-season-3	590	0112400223485	2016-12-19 20:33:10.963723	2016-12-19 20:33:10.963723
8290	EMPEROR BY SEAGULL 28 cm กระทะทรงลึกมาร์เบิ้ล 28 ซม.	https://www.tvdirect.tv/emperor-by-seagull-28-cm-28	1290	0112400224114	2016-12-19 20:33:12.612013	2016-12-19 20:33:12.612013
8291	TEFAL SO RED FRYING PAN SET ชุดกระทะ 5 ชิ้น	https://www.tvdirect.tv/tefal-so-red-frying-pan-set-5	2890	0112400224534	2016-12-19 20:33:14.238872	2016-12-19 20:33:14.238872
8292	TEFAL INGENIO GOOD CHOICE SET ชุดกระทะ 6 ชิ้น	https://www.tvdirect.tv/tefal-ingenio-good-choice-set-6	2990	0112400224527	2016-12-19 20:33:15.914038	2016-12-19 20:33:15.914038
8293	Ceramicore Sarten Ceramica กระทะเซรามิก ขนาด 24 ซม.	https://www.tvdirect.tv/ceramicore-sarten-ceramica-24-tapa-24	590	0122400600847	2016-12-19 20:33:17.845681	2016-12-19 20:33:17.845681
8294	ROCKET STOCK POT ชุดหม้อแขก 14-30 ซม จำนวน 10 ชิ้น	https://www.tvdirect.tv/rocket-stock-pot-14-30-10	1290	0112400223814	2016-12-19 20:33:21.234726	2016-12-19 20:33:21.234726
8295	ROCKET IMPRESSION ชุดเครื่องครัวอิมเพรสชั่น 4 ชิ้น	https://www.tvdirect.tv/rocket-impression-4	425	0112400223896	2016-12-19 20:33:22.957022	2016-12-19 20:33:22.957022
8296	ROCKET STEW POT ชุดหม้อสตูว์ 3 ชุด 22,26,30 ซม.	https://www.tvdirect.tv/rocket-stew-pot-3-22-26-30	890	0112400223902	2016-12-19 20:33:24.512771	2016-12-19 20:33:24.512771
8297	RRS STEW POT Set 6 Piece ชุดหม้อสตูว์ทรงสูง 6 ชิ้น	https://www.tvdirect.tv/rrs-stew-pot-set-6-piece-6	999	0112400223641	2016-12-19 20:33:26.136378	2016-12-19 20:33:26.136378
8298	RRS GUEST POT Set 10 Piece ชุดหม้อแขก 10 ชิ้น	https://www.tvdirect.tv/rrs-guest-pot-set-10-piece-10	999	0112400223658	2016-12-19 20:33:27.710722	2016-12-19 20:33:27.710722
8300	RRS STAINLESS STEEL STEAMER 28 cm หม้อซึ้ง 28 ซม.	https://www.tvdirect.tv/rrs-stainless-steel-steamer-28-cm-28	369	0112400223689	2016-12-19 20:33:30.910378	2016-12-19 20:33:30.910378
8301	RRS STEAM FRYING PAN 21 cm ชุดหม้อ-ทอด-นึ่ง21 ซม	https://www.tvdirect.tv/rrs-steam-frying-pan-21-cm-21	429	0112400223696	2016-12-19 20:33:32.572573	2016-12-19 20:33:32.572573
8302	ROCKET DEEPSTOCKPOT 22 CMหม้อต้มทรงสูง 22 ซม	https://www.tvdirect.tv/rocket-deepstockpot-22-cm-22	499	0112400224237	2016-12-19 20:33:34.142085	2016-12-19 20:33:34.142085
8303	ROCKET DEEPSTOCKPOT 26 CMหม้อต้มทรงสูง 26 ซม	https://www.tvdirect.tv/rocket-deepstockpot-26-cm-26	649	0112400224244	2016-12-19 20:33:35.840398	2016-12-19 20:33:35.840398
8304	LACOR PRESSURE COOKER 4 LTS หม้อแรงดัน 4ลิตร	https://www.tvdirect.tv/lacor-pressure-cooker-4-lts-4	3750	0112400224367	2016-12-19 20:33:37.469747	2016-12-19 20:33:37.469747
8305	LACOR PRESSURE COOKER 6 LTS หม้อแรงดัน 6ลิตร	https://www.tvdirect.tv/lacor-pressure-cooker-6-lts-6	4150	0112400224374	2016-12-19 20:33:39.097517	2016-12-19 20:33:39.097517
8306	LACOR PRESSURE COOKER 8 LTS หม้อแรงดัน 8ลิตร	https://www.tvdirect.tv/lacor-pressure-cooker-8-lts-8	4500	0112400224381	2016-12-19 20:33:40.826296	2016-12-19 20:33:40.826296
8307	LA ANTAR POT SET 9 Pcs ชุดหม้อสแตนเลส 9ชิ้น	https://www.tvdirect.tv/la-antar-pot-set-9-pcs-9	2490	0112300208748	2016-12-19 20:33:42.480887	2016-12-19 20:33:42.480887
8308	Easy Express Cooker อุปกรณ์ประกอบอาหารขนาดเล็ก	https://www.tvdirect.tv/easy-express-cooker	590	0122400600892	2016-12-19 20:33:45.567998	2016-12-19 20:33:45.567998
8309	Rapid Ramen Cooker ชามใส่ราเมน	https://www.tvdirect.tv/rapid-ramen-cooker	990	0122400601356	2016-12-19 20:33:47.738468	2016-12-19 20:33:47.738468
8310	KOKINOOR หม้อนึ่งสแตนเลส 26ซม. HPT212	https://www.tvdirect.tv/kokinoor-26-hpt212	1290	0112400223162	2016-12-19 20:33:49.216241	2016-12-19 20:33:49.216241
8311	SRITHAI หม้อสเตนเลส ทรงวินด์เชอร์ 6 ชิ้น	https://www.tvdirect.tv/srithai-6	3740	0112400223308	2016-12-19 20:33:50.78673	2016-12-19 20:33:50.78673
8312	SRITHAI หม้อสเตนเลส สิมิลัน 3 ชิ้น	https://www.tvdirect.tv/srithai-3	1775	0112400223315	2016-12-19 20:33:52.30073	2016-12-19 20:33:52.30073
8313	COOCAN CHOCOLATE PAN SET 8 PCS ชุดเครื่องครัว 8 ชิ้น	https://www.tvdirect.tv/coocan-chocolate-pan-set-8-pcs-8	2390	0112400224411	2016-12-19 20:33:54.257619	2016-12-19 20:33:54.257619
8314	 hotpot เป็น set ราคาถูก	https://www.tvdirect.tv/hotpot-set	990	hotpot	2016-12-19 20:33:55.451251	2016-12-19 20:33:55.451251
8315	Seagull Picnic Gas Stove with Shabu Pot 24 cm ชุดเตาแก๊สปิกนิกพร้อมหม้อชาบู 24 ซม	https://www.tvdirect.tv/seagull-picnic-gas-stove-with-shabu-pot-24-cm-24	890	0112400225487	2016-12-19 20:33:57.134718	2016-12-19 20:33:57.134718
8316	Perfect Slicer อุปกรณ์หั่นผลไม้	https://www.tvdirect.tv/perfect-slicer	390	0120700601168	2016-12-19 20:33:58.601129	2016-12-19 20:33:58.601129
8317	KOKINOOR ชุดหม้อสแตนเลส 6 ชิ้น HSP32S	https://www.tvdirect.tv/kokinoor-6-hsp32s	1290	0112400223155	2016-12-19 20:34:00.183421	2016-12-19 20:34:00.183421
8318	LOCK&LOCK HAPPY SET 6 ชิ้น	https://www.tvdirect.tv/lock-lock-happy-set-6	1250	0112400223322	2016-12-19 20:34:03.065112	2016-12-19 20:34:03.065112
8319	LOCK&LOCK NEO LIVING 7 ชิ้น	https://www.tvdirect.tv/lock-lock-neo-living-7	1035	0112400223339	2016-12-19 20:34:04.719177	2016-12-19 20:34:04.719177
8320	LOCK&LOCK HOME PARTY 7 ชิ้น	https://www.tvdirect.tv/lock-lock-home-party-7	1665	0112400223346	2016-12-19 20:34:06.393987	2016-12-19 20:34:06.393987
8321	SRITHAI ชุดกล่องถนอมอาหาร 8 ชิ้นพูล่าลิงกี้	https://www.tvdirect.tv/srithai-8	980	0112400223377	2016-12-19 20:34:07.954507	2016-12-19 20:34:07.954507
8322	SRITHAI ชุดกล่องถนอมอาหาร 6 ชิ้นพูล่าลิงกี้ PL1	https://www.tvdirect.tv/srithai-6-pl1	625	0112400223384	2016-12-19 20:34:09.500933	2016-12-19 20:34:09.500933
8323	SRITHAI ชุดกล่องถนอมอาหาร 6 ชิ้นพูล่าลิงกี้ PL2	https://www.tvdirect.tv/srithai-6-pl2	695	0112400223391	2016-12-19 20:34:11.043846	2016-12-19 20:34:11.043846
8324	LOCK&LOCK HEALTHY CHIC 5 ชิ้น	https://www.tvdirect.tv/lock-lock-healthy-chic-5	900	0111000200793	2016-12-19 20:34:12.640364	2016-12-19 20:34:12.640364
8325	ROCKET READY BOX ชุดกล่องอาหาร 12 ซม. 2 ชุด พร้อมกระเป๋า	https://www.tvdirect.tv/rocket-ready-box-12-2	215	0112400223889	2016-12-19 20:34:14.115995	2016-12-19 20:34:14.115995
8326	Clip Pac Organic 18 PCS S18-18 ชุดกล่องถนอมอาหารออแกนิค 18 ชิ้น	https://www.tvdirect.tv/clip-pac-organic-18-pcs-s18-18-18	1290	0112400301042	2016-12-19 20:34:15.74137	2016-12-19 20:34:15.74137
8327	UDEE ชุดกล่องถนอมอาหารปุ่มกด 3 ชิ้น -น้ำตาล	https://www.tvdirect.tv/udee-3-brown	1300	0112400224268	2016-12-19 20:34:17.334258	2016-12-19 20:34:17.334258
8328	UDEE ชุดกล่องถนอมอาหารปุ่มกด 3 ชิ้น -ใส	https://www.tvdirect.tv/udee-3-clear	1250	0112400224251	2016-12-19 20:34:18.7945	2016-12-19 20:34:18.7945
8329	Press Dome ฝาปิดอาหารสุญญากาศ	https://www.tvdirect.tv/press-dome	590	0122400600953	2016-12-19 20:34:20.507033	2016-12-19 20:34:20.507033
8330	Rose Knife มีดสแตนเลสลายกุหลาบ	https://www.tvdirect.tv/rose-knife	390	0122300601258	2016-12-19 20:34:23.925198	2016-12-19 20:34:23.925198
8331	JML Ceracraft Lid 28 cm.	https://www.tvdirect.tv/ceracraft-lid-28-cm	499	0112400300168	2016-12-19 20:34:25.632643	2016-12-19 20:34:25.632643
8332	Ceramicore Set 3 Sartenes Ceramica กระทะเซรามิก 3 ชิ้น	https://www.tvdirect.tv/ceramicore-set-3-sartenes-ceramica-3	2990	0122400600762	2016-12-19 20:34:27.449746	2016-12-19 20:34:27.449746
8333	Rollie Egg Master White เครื่องทำไข่ม้วน	https://www.tvdirect.tv/rollie-egg-master-white	1490	0122400601080	2016-12-19 20:34:29.185396	2016-12-19 20:34:29.185396
8334	ROTO PEELมีดสไลด์ 3 IN 1	https://www.tvdirect.tv/roto-peel-3-in-1	249	0122400600618	2016-12-19 20:34:30.93271	2016-12-19 20:34:30.93271
8335	KOKINOOR ชุดหม้อเคลือบ HSP01+HSP02+HSP03+HSW04	https://www.tvdirect.tv/kokinoor-hsp01-hsp02-hsp03-hsw04	2990	0112400222677	2016-12-19 20:34:32.619886	2016-12-19 20:34:32.619886
8336	HANABISHI เตาแก๊สหัวเดี่ยว RY-144	https://www.tvdirect.tv/hanabishi-ry-144	499	0112400222752	2016-12-19 20:34:34.288379	2016-12-19 20:34:34.288379
8337	HANABISHI เตาแก๊สหัวคู่ RY-145	https://www.tvdirect.tv/hanabishi-ry-145	759	0112400222769	2016-12-19 20:34:35.894146	2016-12-19 20:34:35.894146
8338	SRITHAI ชุดอาหาร 4 ที่ 22 ชิ้น ลายบลูไลท์	https://www.tvdirect.tv/srithai-4-22	1800	0112400223216	2016-12-19 20:34:37.693862	2016-12-19 20:34:37.693862
8339	SRITHAI ชุดอาหาร 4 ที่ 30 ชิ้น ลายบลูมมิ่งบลู	https://www.tvdirect.tv/srithai-4-30	3075	0112400223223	2016-12-19 20:34:39.346389	2016-12-19 20:34:39.346389
8340	SRITHAI ชุดอาหาร 4 ที่ 30 ชิ้น ลายสวีทฟลอร่า	https://www.tvdirect.tv/srithai-4-30-2187	3075	0112400223230	2016-12-19 20:34:41.03604	2016-12-19 20:34:41.03604
8341	SRITHAI ชุดอาหาร 4 ที่ 22 ชิ้น ลายบอนนี่	https://www.tvdirect.tv/srithai-4-22-2189	2000	0112400223254	2016-12-19 20:34:42.724453	2016-12-19 20:34:42.724453
8342	SRITHAI ชุดอาหาร 4 ที่ 20 ชิ้น ลายแซนดร้า	https://www.tvdirect.tv/srithai-4-20-2190	2200	0112400223261	2016-12-19 20:34:44.417206	2016-12-19 20:34:44.417206
8343	SRITHAI ชุดอาหาร 4 ที่ 20 ชิ้น ลายฟลอร่าเลิฟ	https://www.tvdirect.tv/srithai-4-20-2191	2200	0112400223278	2016-12-19 20:34:46.07284	2016-12-19 20:34:46.07284
8344	SRITHAI ชุดอาหาร 2 ที่ 17 ชิ้น ลายยำแซ่บ	https://www.tvdirect.tv/srithai-2-17	1390	0112400223285	2016-12-19 20:34:49.278222	2016-12-19 20:34:49.278222
8345	SRITHAI ชุดอาหาร 2 ที่ 9 ชิ้น ลายมิดไนท์โรส	https://www.tvdirect.tv/srithai-2-9	950	0112400223292	2016-12-19 20:34:51.049288	2016-12-19 20:34:51.049288
8346	SRITHAI ชุดอาหาร 4 ที่ 26 ชิ้น ลาย การ์เด้นฮิว	https://www.tvdirect.tv/srithai-4-26-2199	2575	0112400223353	2016-12-19 20:34:52.764203	2016-12-19 20:34:52.764203
8347	SRITHAI ชุดอาหาร 4 ที่ 30 ชิ้น ลายทับทิมทอง	https://www.tvdirect.tv/srithai-4-30-2200	3200	0112400223360	2016-12-19 20:34:54.461335	2016-12-19 20:34:54.461335
8348	SRITHAI ชุดช้อนส้อม 4 คู่ 8 ชิ้น ทรงแอสโทรเรีย	https://www.tvdirect.tv/srithai-4-8	767	0112400223407	2016-12-19 20:34:56.246942	2016-12-19 20:34:56.246942
8349	TOUCAN CAN OPENER เครื่องเปิดกระป๋องอัตโนมัติ	https://www.tvdirect.tv/toucan-can-opener	349	0122400601431	2016-12-19 20:34:58.01062	2016-12-19 20:34:58.01062
8350	REGIS STONE PANS (WOK+PAN+LID) กระทะเคลือบหินอ่อน 3 ชั้น 28cm.	https://www.tvdirect.tv/regis-stone-pans-wok-pan-lid-3-28cm	1990	0122400601455	2016-12-19 20:34:59.95715	2016-12-19 20:34:59.95715
8351	SEAGULL URBAN กระติกน้ำสุญญากาศเออเบิ้น 1.2 ลิตร	https://www.tvdirect.tv/seagull-urban-1-2	729	0112400223582	2016-12-19 20:35:01.660058	2016-12-19 20:35:01.660058
8352	 Master knife แถมฟรี knife Block	https://www.tvdirect.tv/master-knife-knife-block	1290	Masterknife	2016-12-19 20:35:06.437313	2016-12-19 20:35:06.437313
8353	TASTY ROASTER กล่องอบอาหาร	https://www.tvdirect.tv/tasty-roaster	690	0122400400096	2016-12-19 20:35:08.142262	2016-12-19 20:35:08.142262
8354	REGIS STONE PANS (WOK+LID+WOK) กระทะเคลือบหินอ่อน 3 ชั้น พร้อมฝา ขนาด 28 cm	https://www.tvdirect.tv/regis-stone-pans-wok-lid-wok-3-28-cm	1990	0122400601448	2016-12-19 20:35:09.94563	2016-12-19 20:35:09.94563
8355	RRS MIXING BOWLS Set 3 Piece ชุดกะละมังชุด 3 ใบ	https://www.tvdirect.tv/rrs-mixing-bowls-set-3-piece-3	299	0112400223665	2016-12-19 20:35:11.628752	2016-12-19 20:35:11.628752
8356	BWT Penguin 2.7L Mineral Water Jug Plus 1 Cartridg เหยือกกรองน้ำ 2.7ลิตร	https://www.tvdirect.tv/bwt-penguin-2-7l-mineral-water-jug-plus-1-cartridg-2-7	1650	BWTPenguin	2016-12-19 20:35:15.86404	2016-12-19 20:35:15.86404
8357	RINNAI เตาแก๊สกระจก 2 หัว รุ่น RY-9002GD	https://www.tvdirect.tv/rinnai-2-ry-9002gd	2990	0112400223995	2016-12-19 20:35:17.572322	2016-12-19 20:35:17.572322
8358	SEAGULL SET CLASSIC MIX 2 ชุดครัวคลาสสิค สีดำ	https://www.tvdirect.tv/seagull-set-classic-mix-2	1950	0112400224404	2016-12-19 20:35:19.399489	2016-12-19 20:35:19.399489
8359	SEAGULL URBAN 1.5 L กระติกน้ำสูญญากาศเออเบิ้น 1.5 ลิตร	https://www.tvdirect.tv/seagull-urban-1-5-l-1-5	789	0112300208441	2016-12-19 20:35:21.08973	2016-12-19 20:35:21.08973
8360	HAPPYCALL DOUBLE PAN DIAMOND JUMBO GRILL ชุดหม้อ&กระทะ 2 ด้านแฮปปี้คอล	https://www.tvdirect.tv/happycall-double-pan-diamond-jumbo-grill-2	2590	0112400224343	2016-12-19 20:35:22.833362	2016-12-19 20:35:22.833362
8361	SUVA ตะกร้ากรอง 2 ชั้น สีส้ม-เทา	https://www.tvdirect.tv/suva-2-orange	255	0112300208281	2016-12-19 20:35:24.628062	2016-12-19 20:35:24.628062
8362	SUVA ตะกร้ากรอง 2 ชั้น สีเบจ-ขาว	https://www.tvdirect.tv/suva-2	255	0112300208298	2016-12-19 20:35:26.310548	2016-12-19 20:35:26.310548
8363	SUVA Fresh Citrus Juicer-SV16020 ชุดคั้นน้ำส้ม-มะนาว	https://www.tvdirect.tv/suva-fresh-citrus-juicer-sv16020	165	0112300208304	2016-12-19 20:35:27.98772	2016-12-19 20:35:27.98772
8364	BWT BARRIER WATER FILTER PITCHER GREEN เหยือกกรองน้ำพร้อมไส้กรอง รุ่น STYLE สีเขียว	https://www.tvdirect.tv/bwt-barrier-water-filter-pitcher-green-style	959	0112300208557	2016-12-19 20:35:31.503639	2016-12-19 20:35:31.503639
8365	BWT BARRIER WATER FILTER PITCHER ORANGE เหยือกกรองน้ำพร้อมไส้กรอง รุ่นSTYLE สีส้ม	https://www.tvdirect.tv/bwt-barrier-water-filter-pitcher-orange-style	959	0112300208564	2016-12-19 20:35:33.186006	2016-12-19 20:35:33.186006
8366	BWT BARRIER WATER FILTER PITCHER BLUE เหยือกกรองน้ำพร้อมไส้กรอง รุ่นSTYLE สีน้ำเงิน	https://www.tvdirect.tv/bwt-barrier-water-filter-pitcher-blue-style	959	0112300208571	2016-12-19 20:35:34.864683	2016-12-19 20:35:34.864683
8367	BWT BARRIER WATER FILTER PITCHER BLACK เหยือกกรองน้ำพร้อมไส้กรอง รุ่นSMART สีดำ	https://www.tvdirect.tv/bwt-barrier-water-filter-pitcher-black-smart	1200	0112300208595	2016-12-19 20:35:36.46036	2016-12-19 20:35:36.46036
8368	BWT BARRIER WATER FILTER PITCHER GREEN เหยือกกรองน้ำพร้อมไส้กรอง รุ่นSMART สีเขียว	https://www.tvdirect.tv/bwt-barrier-water-filter-pitcher-green-smart	1200	0112300208601	2016-12-19 20:35:40.116852	2016-12-19 20:35:40.116852
8369	BWT BARRIER WATER FILTER PITCHER RED เหยือกกรองน้ำพร้อมไส้กรอง รุ่นGRAND NEO สีแดง	https://www.tvdirect.tv/bwt-barrier-water-filter-pitcher-red-grand-neo	999	0112300208618	2016-12-19 20:35:41.72982	2016-12-19 20:35:41.72982
8370	BWT BARRIER WATER FILTER PITCHER BLUE เหยือกกรองน้ำพร้อมไส้กรอง รุ่นGRANDNEO สีน้ำเงิน	https://www.tvdirect.tv/bwt-barrier-water-filter-pitcher-blue-grandneo	999	0112300208625	2016-12-19 20:35:43.613569	2016-12-19 20:35:43.613569
8371	BWT BARRIER WATER FILTER PITCHER BLACK เหยือกกรองน้ำพร้อมไส้กรอง รุ่นGRAND NEO สีดำ	https://www.tvdirect.tv/bwt-barrier-water-filter-pitcher-black-grand-neo	999	0112300208632	2016-12-19 20:35:45.401353	2016-12-19 20:35:45.401353
8372	BWT BARRIER CARTRIDGE FILTERS ตลับไส้กรอง รุ่น STANDARD	https://www.tvdirect.tv/bwt-barrier-cartridge-filters-standard	350	0112300208649	2016-12-19 20:35:47.088805	2016-12-19 20:35:47.088805
8373	BWT BARRIER CARTRIDGE FILTERS ตลับไส้กรอง รุ่น ULTRA	https://www.tvdirect.tv/bwt-barrier-cartridge-filters-ultra	900	0112300208656	2016-12-19 20:35:48.770914	2016-12-19 20:35:48.770914
8374	Automatic Small Combined Rice Milling Grey เครื่องสีข้าวจิ๋วไฮเทค สีเทา	https://www.tvdirect.tv/automatic-small-combined-rice-milling-grey	19000	0112300206669	2016-12-19 20:35:51.55559	2016-12-19 20:35:51.55559
8375	Fruit Factory Rainbow อุปกรณ์ตัดแต่งผลไม้ สีรุ้ง	https://www.tvdirect.tv/fruit-factory-rainbow	690	0122400601523	2016-12-19 20:35:53.374266	2016-12-19 20:35:53.374266
8413	U-RO DECOR Bar Stool Zania-S บาร์สตูลเหล็ก 	https://www.tvdirect.tv/u-ro-decor-bar-stool-zania-s	990	URODecorS	2016-12-19 20:37:02.646371	2016-12-19 20:37:02.646371
8376	Bauer Kitchen Guard Red อุปกรณ์ปัองกันน้ำมันกระเด็นสีรุ้ง สีแดง	https://www.tvdirect.tv/bauer-kitchen-guard-red	390	0122400601554	2016-12-19 20:35:55.164984	2016-12-19 20:35:55.164984
8377	Shogun Peeler อุปกรณ์ปอกเปลือกและสไลด์	https://www.tvdirect.tv/shogun-peeler	390	0122400601547	2016-12-19 20:35:56.884626	2016-12-19 20:35:56.884626
8378	Slushy Wizard Blue แก้วเกล็ดหิมะ สีฟ้า	https://www.tvdirect.tv/slushy-wizard-blue	199	0122400600533	2016-12-19 20:35:58.837381	2016-12-19 20:35:58.837381
8379	Turbo Cooker Set ชุดอบไมโครเวฟ	https://www.tvdirect.tv/turbo-cooker-set	690	0122400600687	2016-12-19 20:36:00.653326	2016-12-19 20:36:00.653326
8380	TV Airwave Knife มีดอเนกประสงค์	https://www.tvdirect.tv/tv-airwave-knife	990	0122400600694	2016-12-19 20:36:03.014843	2016-12-19 20:36:03.014843
8381	Multi Tea Pot กาชงชา	https://www.tvdirect.tv/multi-tea-pot	349	0122400600960	2016-12-19 20:36:04.749211	2016-12-19 20:36:04.749211
8382	SI Automatic Wine Vacuum Seal อุปกรณ์ปิดขวดไวน์	https://www.tvdirect.tv/si-automatic-wine-vacuum-seal	390	0122400600311	2016-12-19 20:36:06.483316	2016-12-19 20:36:06.483316
8383	Ronco Six Star มีดอเนกประสงค์ จำนวน 25 เล่ม	https://www.tvdirect.tv/ronco-six-star-25-knifes	1990	0122400601288	2016-12-19 20:36:08.223717	2016-12-19 20:36:08.223717
8384	KENJI KNIFE SET ชุดมีดเซรามิค	https://www.tvdirect.tv/kenji-knife-set	490	0122100300108	2016-12-19 20:36:09.884901	2016-12-19 20:36:09.884901
8385	MICRO GRILL ถาดทำอาหารด้วยไมโครเวฟ	https://www.tvdirect.tv/micro-grill	990	0122300300052	2016-12-19 20:36:11.67909	2016-12-19 20:36:11.67909
8386	EARTHQUAKE MUG (SILVER) แก้วไม่หกไม่ล้มสีเงิน	https://www.tvdirect.tv/earthquake-mug-silver	290	0122400601387	2016-12-19 20:36:13.51857	2016-12-19 20:36:13.51857
8387	EARTHQUAKE MUG (BLACK) แก้วไม่หกไม่ล้มสีดำ	https://www.tvdirect.tv/earthquake-mug-black	290	0122400601394	2016-12-19 20:36:15.303825	2016-12-19 20:36:15.303825
8388	SWIFTY SHARP เครื่องลับคมอเนกประสงค์	https://www.tvdirect.tv/swifty-sharp	690	0122400400089	2016-12-19 20:36:17.092619	2016-12-19 20:36:17.092619
8389	โต๊ะเอนกประสงค์ KT-MD01-สีดำ	https://www.tvdirect.tv/kt-md01	999	0112300203774	2016-12-19 20:36:25.829927	2016-12-19 20:36:25.829927
8390	NT FURNITURE โต๊ะลิ้นชัก The Twin สีดำ	https://www.tvdirect.tv/nt-furniture-the-twin-black	1290	0110900201626	2016-12-19 20:36:27.274133	2016-12-19 20:36:27.274133
8391	NT FURNITURE โต๊ะลิ้นชัก The Twin สีขาว	https://www.tvdirect.tv/nt-furniture-the-twin-white	1290	0110900201633	2016-12-19 20:36:28.853465	2016-12-19 20:36:28.853465
8392	NT FURNITURE โต๊ะพับ NT16 สีฟ้า	https://www.tvdirect.tv/nt-furniture-nt16-blue	690	0110900201640	2016-12-19 20:36:30.298831	2016-12-19 20:36:30.298831
8393	NT FURNITURE โต๊ะพับ NT16 สีส้ม	https://www.tvdirect.tv/nt-furniture-nt16-orange	690	0110900201657	2016-12-19 20:36:31.729469	2016-12-19 20:36:31.729469
8394	NT FURNITURE ชุดโต๊ะปิกนิคทูโทน เหลี่ยม สีเขียว-ขาว	https://www.tvdirect.tv/nt-furniture-greenwhite	1990	0110900201664	2016-12-19 20:36:33.193324	2016-12-19 20:36:33.193324
8395	NT FURNITURE ชุดโต๊ะปิกนิคทูโทน เหลี่ยม สีฟ้า-ขาว	https://www.tvdirect.tv/nt-furniture-bluewhite	1990	0110900201671	2016-12-19 20:36:34.660106	2016-12-19 20:36:34.660106
8396	U-RO DECOR Dining table รุ่น Sonoma Sanrimo ชุดโต๊ะรับประทานอาหาร เก้าอี้ 4 ตัว สีซานรีโม่	https://www.tvdirect.tv/u-ro-decor-dining-table-sonoma-sanrimo-4	3990	0110900201855	2016-12-19 20:36:36.259414	2016-12-19 20:36:36.259414
8397	U-RO DECOR Dining table รุ่น Sonoma Walnut ชุดโต๊ะรับประทานอาหาร เก้าอี้ 4 ตัว สีวอลนัทเข้ม	https://www.tvdirect.tv/u-ro-decor-dining-table-sonoma-walnut-4	3990	0110900201862	2016-12-19 20:36:37.735815	2016-12-19 20:36:37.735815
8398	U-RO DECOR Dining table รุ่น Sonoma Black Oak ชุดโต๊ะรับประทานอาหารเก้าอี้ 2ตัว สีโอ้ค	https://www.tvdirect.tv/u-ro-decor-dining-table-sonoma-black-oak-2	2990	0110900201879	2016-12-19 20:36:39.324538	2016-12-19 20:36:39.324538
8399	U-RO DECOR Dining table รุ่น Sonoma Sanrimo ชุดโต๊ะรับประทานอาหารเก้าอี้ 2ตัว สีซานรีโม่	https://www.tvdirect.tv/u-ro-decor-dining-table-sonoma-sanrimo-2	2990	0110900201886	2016-12-19 20:36:40.995054	2016-12-19 20:36:40.995054
8400	U-RO DECOR Dining table รุ่น Hollywood Maple ชุดโต๊ะรับประทานอาหารเก้าอี้ 4ตัว สีเมเปิ้ล	https://www.tvdirect.tv/u-ro-decor-dining-table-hollywood-maple-4	6990	0110900201893	2016-12-19 20:36:42.468421	2016-12-19 20:36:42.468421
8401	U-RO DECOR Desk White Oak โต๊ะทำงานอเนกประสงค์ สีโอ้คธรรมชาติ	https://www.tvdirect.tv/u-ro-decor-desk-white-oak-3697	2290	0110900202098	2016-12-19 20:36:43.896638	2016-12-19 20:36:43.896638
8402	เก้าอี้พักผ่อนปรับเอนนอน KT-RC03 สีเขียว	https://www.tvdirect.tv/kt-rc03	950	0110900200995	2016-12-19 20:36:47.167547	2016-12-19 20:36:47.167547
8403	เก้าอี้พักผ่อนปรับเอนนอน KT-RC03 สีน้ำเงิน	https://www.tvdirect.tv/kt-rc03-418	950	0110900200988	2016-12-19 20:36:48.620254	2016-12-19 20:36:48.620254
8404	SUVA STOOL 5 IN 1 ชุดเก้าอี้สตูล ลายลูกเต๋า	https://www.tvdirect.tv/suva-stool-5-in-1	1650	0110900201392	2016-12-19 20:36:50.079581	2016-12-19 20:36:50.079581
8405	SUVA STOOL 5 IN 1 ชุดเก้าอี้สตูล ลายสีสดใส	https://www.tvdirect.tv/suva-stool-5-in-2	1650	0110900201406	2016-12-19 20:36:51.584236	2016-12-19 20:36:51.584236
8406	U-RO DECOR Chair Cento Red เก้าอี้รับประทานอาหาร สีแดง	https://www.tvdirect.tv/u-ro-decor-chair-cento-red	2590	0110900201909	2016-12-19 20:36:53.169817	2016-12-19 20:36:53.169817
8407	U-RO DECOR Chair Acron White เก้าอี้ดีไซน์อเนกประสงค์ สีขาว	https://www.tvdirect.tv/u-ro-decor-chair-acron-white	1790	0110900201916	2016-12-19 20:36:54.674275	2016-12-19 20:36:54.674275
8408	INTEX Inflatable chairs green เก้าอี้PULL-OUT-ที่สูบลม สีเขียวแก่	https://www.tvdirect.tv/intex-inflatable-chairs-green-pull-out	1639	0110900202319	2016-12-19 20:36:56.228489	2016-12-19 20:36:56.228489
8409	INTEX Ultra Lounge Chair Gray-Black เก้าอี้-ที่วางเท้า-ที่สูบลม สีเทาดำ	https://www.tvdirect.tv/intex-ultra-lounge-chair-gray-black	1095	0110900202326	2016-12-19 20:36:57.75766	2016-12-19 20:36:57.75766
8410	INTEX Ultra Lounge Chair Black เก้าอี้เมก้าเล้าจน์-ที่สูบลม สีดำ	https://www.tvdirect.tv/intex-ultra-lounge-chair-black	1445	0110900202333	2016-12-19 20:36:59.291682	2016-12-19 20:36:59.291682
8411	U-RO DECOR Bar Stool Lemon สตูลเหล็ก 4 ชิ้นต่อ1ชุด 	https://www.tvdirect.tv/u-ro-decor-bar-stool-lemon-4-1	599	UroCecor	2016-12-19 20:37:00.522504	2016-12-19 20:37:00.522504
8412	U-RO DECOR Bar Stool Zania-L  บาร์สตูลเหล็ก	https://www.tvdirect.tv/u-ro-decor-bar-stool-zania-l	1390	UROBarStool	2016-12-19 20:37:01.764443	2016-12-19 20:37:01.764443
8414	INTEX Mode Chai  เก้าอี้เป่าลม-ที่สูบลม 	https://www.tvdirect.tv/intex-mode-chai	699	INTEXMode	2016-12-19 20:37:03.501086	2016-12-19 20:37:03.501086
8415	SOFA SHIELD KING SIZE ผ้าคลุมโซฟาสองด้าน 2 ชิ้น 	https://www.tvdirect.tv/shield-king-size-2	1490	ShieldKing	2016-12-19 20:37:05.444645	2016-12-19 20:37:05.444645
8416	U-RO DECOR Sofa Bed Sky Black โซฟาเบด 3 ที่นั่ง สีดำ	https://www.tvdirect.tv/u-ro-decor-sofa-bed-sky-black-3	3990	0110900201923	2016-12-19 20:37:06.919279	2016-12-19 20:37:06.919279
8417	U-RO DECOR Sofa Bed Sky Brown โซฟาเบด 3 ที่นั่ง สีน้ำตาล	https://www.tvdirect.tv/u-ro-decor-sofa-bed-sky-brown-3	3990	0110900201930	2016-12-19 20:37:08.365919	2016-12-19 20:37:08.365919
8418	U-RO DECOR Sofa Bed Jibzy Gray โซฟาเบด 3 ที่นั่ง สีเทา	https://www.tvdirect.tv/u-ro-decor-sofa-bed-jibzy-gray-3	13000	0110900201947	2016-12-19 20:37:10.043411	2016-12-19 20:37:10.043411
8419	U-RO DECOR SOFA CAROL เดย์เบดผ้า สีดำ	https://www.tvdirect.tv/u-ro-decor-sofa-carol	7900	0110900202296	2016-12-19 20:37:11.514252	2016-12-19 20:37:11.514252
8420	U-RO DECOR SOFA COSTA-F โซฟาเข้ามุม 3 ที่นั่ง สีดำ	https://www.tvdirect.tv/u-ro-decor-sofa-costa-f-3	12900	0110900202302	2016-12-19 20:37:13.049447	2016-12-19 20:37:13.049447
8421	Insta Barrier ผ้าม่านกันยุงและแมลง	https://www.tvdirect.tv/insta-barrier-1-1	990	0122300601388	2016-12-19 20:37:19.31329	2016-12-19 20:37:19.31329
8422	ราวตากผ้า Smart Rack สีขาว	https://www.tvdirect.tv/smart-track	1290	0112300207000	2016-12-19 20:37:21.051429	2016-12-19 20:37:21.051429
8423	ULTIMO CASA CLOTH RACK ราวตากผ้าสแตนเลสปรับขนาด	https://www.tvdirect.tv/ultimo-casa-cloth-rack	1990	0122300601586	2016-12-19 20:37:22.920551	2016-12-19 20:37:22.920551
8424	Smart Set ชุดตู้เสื้อผ้าอเนกประสงค์ 3 ชิ้น	https://www.tvdirect.tv/smart-set-3	1990	0112300207147	2016-12-19 20:37:24.792357	2016-12-19 20:37:24.792357
8425	ตู้วางทีวี-เครื่องเสียงมีประตูกระจก FT-3030	https://www.tvdirect.tv/ft-3030	1590	0110900201244	2016-12-19 20:37:26.443036	2016-12-19 20:37:26.443036
8426	ชั้นวางทีวี-เครื่องเสียง SU-DM29	https://www.tvdirect.tv/su-dm29	799	0110900201237	2016-12-19 20:37:28.051692	2016-12-19 20:37:28.051692
8427	VR FITTING 4 Tier Metal Shelf White ชั้นเหล็ก 4ชั้น ZIR4W-241555 -ขาว	https://www.tvdirect.tv/vr-fitting-4-tier-metal-shelf-white-4-zir4w-241555	3150	0112300207552	2016-12-19 20:37:31.413148	2016-12-19 20:37:31.413148
8428	VR FITTING 4 Tier Metal Shelf Black ชั้นเหล็ก 4ชั้น ZIR4-241555 -ดำ	https://www.tvdirect.tv/vr-fitting-4-tier-metal-shelf-black-4-zir4-241555	3150	0112300207545	2016-12-19 20:37:33.0135	2016-12-19 20:37:33.0135
8429	VR FITTING 3 Tier Metal Shelf White ชั้นเหล็ก 3ชั้น ZIR3W-241536 -ขาว	https://www.tvdirect.tv/vr-fitting-3-tier-metal-shelf-white-3-zir3w-241536	2390	0112300207538	2016-12-19 20:37:34.684871	2016-12-19 20:37:34.684871
8430	VR FITTING 3 Tier Metal Shelf Black ชั้นเหล็ก 3ชั้น ZIR3-241536 -ดำ	https://www.tvdirect.tv/vr-fitting-3-tier-metal-shelf-black-3-zir3-241536	2390	0112300207521	2016-12-19 20:37:36.455152	2016-12-19 20:37:36.455152
8431	VR FITTING 5 Tier Metal Shelf White ชั้นเหล็ก 5 ชั้น ZIR5W-481872 -ขาว	https://www.tvdirect.tv/vr-fitting-5-tier-metal-shelf-white-5-zir5w-481872	5690	0112300207514	2016-12-19 20:37:38.189977	2016-12-19 20:37:38.189977
8432	VR FITTING 5 Tier Metal Shelf Black ชั้นเหล็ก 5 ชั้น ZIR5-481872 -ดำ	https://www.tvdirect.tv/vr-fitting-5-tier-metal-shelf-black-5-zir5-481872	5690	0112300207507	2016-12-19 20:37:39.952736	2016-12-19 20:37:39.952736
8433	VR FITTING 4 Tier Metal Shelf White ชั้นเหล็ก 4 ชั้น ZIR4W-421855 -ขาว	https://www.tvdirect.tv/vr-fitting-4-tier-metal-shelf-white-4-zir4w-421855	4250	0112300207493	2016-12-19 20:37:41.623754	2016-12-19 20:37:41.623754
8434	VR FITTING 4 Tier Metal Shelf Black ชั้นเหล็ก 4 ชั้น ZIR4-421855 -ดำ	https://www.tvdirect.tv/vr-fitting-4-tier-metal-shelf-black-4-zir4-421855	4250	0112300207486	2016-12-19 20:37:43.421977	2016-12-19 20:37:43.421977
8435	VR FITTING 3 Tier Metal Shelf White ชั้นเหล็ก 3 ชั้น ZIR3W-361536 -ขาว	https://www.tvdirect.tv/vr-fitting-3-tier-metal-shelf-white-3-zir3w-361536	2650	0112300207479	2016-12-19 20:37:45.025675	2016-12-19 20:37:45.025675
8436	VR FITTING 3 Tier Metal Shelf Black ชั้นเหล็ก 3 ชั้น ZIR3-361536 -ดำ	https://www.tvdirect.tv/vr-fitting-3-tier-metal-shelf-black-3-zir3-361536	2650	0112300207462	2016-12-19 20:37:46.669622	2016-12-19 20:37:46.669622
8437	Chandee wire shelving ชั้นวางอเนกประสงค์ชั้นดี WR90-1 EP แถมฟรี ราวคู่ชั้นดีรุ่น 952E สีเทา 	https://www.tvdirect.tv/chandee-wire-shelving-wr90-1-ep-952e	2900	WR901EP	2016-12-19 20:37:48.595347	2016-12-19 20:37:48.595347
8438	PDM MATTO KATVE SIZE S เสื่อลาย KATVE สีขาว-ดำ ขนาด S	https://www.tvdirect.tv/pdm-matto-katve-size-s-katve-s	1690	0110900201688	2016-12-19 20:37:50.343281	2016-12-19 20:37:50.343281
8439	PDM MATTO KATVE SIZE M เสื่อลาย KATVE สีขาว-ดำ ขนาด M	https://www.tvdirect.tv/pdm-matto-katve-size-m-katve-m	2490	0110900201695	2016-12-19 20:37:52.01083	2016-12-19 20:37:52.01083
8440	PDM MATTO KATVE SIZE L เสื่อลาย KATVE สีขาว-ดำ ขนาด L	https://www.tvdirect.tv/pdm-matto-katve-size-l-katve-l	2990	0110900201701	2016-12-19 20:37:53.647535	2016-12-19 20:37:53.647535
8441	MODERN FURNITURE Drawers 4floor ตู้ลิ้นชัก 4 ชั้น ลายสานรัก	https://www.tvdirect.tv/modern-furniture-drawers-4floor-4	1090	0110900201558	2016-12-19 20:37:55.386366	2016-12-19 20:37:55.386366
8442	MODERN FURNITURE Drawers 4floor ตู้ลิ้นชัก 4 ชั้น ลายสาวน้อย	https://www.tvdirect.tv/modern-furniture-drawers-4floor-5	1090	0110900201565	2016-12-19 20:37:57.142131	2016-12-19 20:37:57.142131
8443	MODERN FURNITURE Drawers 4floor ตู้ลิ้นชัก 4 ชั้น ลายCUTE BEARRY	https://www.tvdirect.tv/modern-furniture-drawers-4floor-4-cute-bearry	1790	0110900201572	2016-12-19 20:37:58.882154	2016-12-19 20:37:58.882154
8444	MODERN FURNITURE Drawers 4floor ตู้ลิ้นชัก 4 ชั้น ลายBLUE SKY	https://www.tvdirect.tv/modern-furniture-drawers-4floor-4-blue-sky	1790	0110900201589	2016-12-19 20:38:02.557189	2016-12-19 20:38:02.557189
8445	NT FURNITURE หิ้งพระวิมานแบบตั้งโต๊ะ -สีขาว	https://www.tvdirect.tv/nt-furniture	890	0113700203630	2016-12-19 20:38:04.319352	2016-12-19 20:38:04.319352
8446	NT FURNITURE หิ้งพระมิ่งมงคล 12x18 สีขาว	https://www.tvdirect.tv/nt-furniture-12x18	890	0113700203654	2016-12-19 20:38:06.082041	2016-12-19 20:38:06.082041
8447	NT FURNITURE หิ้งพระมิ่งมงคล 12x18 สีโอ๊ค	https://www.tvdirect.tv/nt-furniture-12x18-3261	890	0113700203661	2016-12-19 20:38:07.761619	2016-12-19 20:38:07.761619
8448	DAHLE Document shredder เครื่องทำลายเอกสารขนาดเล็ก 22016	https://www.tvdirect.tv/dahle-document-shredder-22016	1500	0113000200438	2016-12-19 20:38:09.553178	2016-12-19 20:38:09.553178
8449	UDEE ตะแกรงเหล็กจัดเก็บอเนกประสงค์ 1.2- สีเงิน	https://www.tvdirect.tv/udee-1-2-silver	225	0112300208250	2016-12-19 20:38:11.297763	2016-12-19 20:38:11.297763
8450	UDEE ตะแกรงเหล็กจัดเก็บอเนกประสงค์ 1.1- สีดำ	https://www.tvdirect.tv/udee-1-1-black-1	225	0112300208229	2016-12-19 20:38:13.04771	2016-12-19 20:38:13.04771
8451	UDEE ตะแกรงเหล็กจัดเก็บอเนกประสงค์ 1.1- สีเงิน	https://www.tvdirect.tv/udee-1-1-silver	225	0112300208236	2016-12-19 20:38:14.633853	2016-12-19 20:38:14.633853
8452	UDEE ตะแกรงเหล็กจัดเก็บอเนกประสงค์ 1.2 - สีดำ	https://www.tvdirect.tv/udee-1-2-black	225	0112300208243	2016-12-19 20:38:16.37914	2016-12-19 20:38:16.37914
8453	UDEE STEEL HOLDER DESK SILVER ตะแกรงเหล็กแขวนใต้ชั้น - สีเงิน	https://www.tvdirect.tv/udee-steel-holder-desk-silver	255	0112300208212	2016-12-19 20:38:18.105462	2016-12-19 20:38:18.105462
8454	UDEE กระปุกตะแกรงเหล็กพร้อมฝา 2 IN 1 - สีดำ	https://www.tvdirect.tv/udee-2-in-1-black	125	0112300208267	2016-12-19 20:38:19.780893	2016-12-19 20:38:19.780893
8455	UDEE กระปุกตะแกรงเหล็กพร้อมฝา 2 IN 1 - สีเงิน	https://www.tvdirect.tv/udee-2-in-1-silver	125	0112300208274	2016-12-19 20:38:21.483311	2016-12-19 20:38:21.483311
8456	HOMEPOWER LAUNDRY AIRER ราวตากผ้าปรับได้ 4 ระดับ	https://www.tvdirect.tv/homepower-laundry-airer-4	1390	0112300208526	2016-12-19 20:38:25.664602	2016-12-19 20:38:25.664602
8457	SANKI CLOTHES RACK 100 CM ราวแขวนผ้าอลูมิเนียมยืดตรง 100 ซม	https://www.tvdirect.tv/sanki-clothes-rack-100-cm-100	590	0112300208687	2016-12-19 20:38:27.291275	2016-12-19 20:38:27.291275
8458	Dream Box ดรีมบ๊อกซ์ ชั้นวางอเนกประสงค์	https://www.tvdirect.tv/dream-box	1990	0122300601456	2016-12-19 20:38:32.683595	2016-12-19 20:38:32.683595
8459	Multi Stor Black กล่องเก็บของ 2 ชั้น สีดำ	https://www.tvdirect.tv/multi-stor-black-2	990	0122300601012	2016-12-19 20:38:34.419496	2016-12-19 20:38:34.419496
8460	Multi Stor White กล่องเก็บของ 2 ชั้น สีขาว	https://www.tvdirect.tv/multi-stor-white-2	990	0122300601029	2016-12-19 20:38:36.096259	2016-12-19 20:38:36.096259
8461	XTA HOSE 75 ft. & NOOZLE สายยางยืดขยาย 75 ฟุต	https://www.tvdirect.tv/xta-hose-75-ft-noozle-75	780	0122300500049	2016-12-19 20:38:43.016248	2016-12-19 20:38:43.016248
8462	Gleener อุปกรณ์ตัดขุยผ้า	https://www.tvdirect.tv/gleener	1290	0122300601364	2016-12-19 20:38:44.738138	2016-12-19 20:38:44.738138
8463	Star Twin Dualsaw Daimond Blade ใบเลื่อย Daimond Blade ขนาด 115 มม.	https://www.tvdirect.tv/star-twin-daimond-blade-daimond-blade-115	990	0123600300063	2016-12-19 20:38:46.420897	2016-12-19 20:38:46.420897
8464	Star Twin Dulasaw Tungsten Blade ใบเลื่อย Tungsten ขนาด 115 มม.	https://www.tvdirect.tv/star-twin-tungsten-blade-tungsten-115	990	0123600300070	2016-12-19 20:38:48.071702	2016-12-19 20:38:48.071702
8465	My T Driver ไขควงจอมพลัง	https://www.tvdirect.tv/my-t-driver	490	0121100600218	2016-12-19 20:38:49.679038	2016-12-19 20:38:49.679038
8466	VR Fitting รถเข็นอเนกประสงค์ 4 ล้อ พับได้ ZHVL-2-04A-1	https://www.tvdirect.tv/4-zhvl-2-04a-1	1450	0112300207431	2016-12-19 20:38:51.328954	2016-12-19 20:38:51.328954
8467	VR Fitting รถเข็นสินค้ามีล้อ พับได้ ZHVL-60	https://www.tvdirect.tv/zhvl-60	1250	0112300207448	2016-12-19 20:38:52.943598	2016-12-19 20:38:52.943598
8468	VR Fitting บันไดพับอลูมิเนียม 8 ขั้น ZHTL402B-08	https://www.tvdirect.tv/8-zhtl402b-08	1850	0112300207455	2016-12-19 20:38:54.629321	2016-12-19 20:38:54.629321
8469	Greenworks 24V Cordless Line Trimmer เครื่องเล็มหญ้าไร้สาย+ชุดแบต	https://www.tvdirect.tv/greenworks-24v-cordless-line-trimmer	6900	0112200200134	2016-12-19 20:38:56.328601	2016-12-19 20:38:56.328601
8470	Greenworks 24V Cordless Chain Saw เลื่อยไฟฟ้า+ชุดแบต	https://www.tvdirect.tv/greenworks-24v-cordless-chain-saw	8200	0112200200141	2016-12-19 20:38:58.171998	2016-12-19 20:38:58.171998
8471	Greenworks 24V Cordless Set เครื่องเล็มหญ้าไร้สาย+เลื่อยไฟฟ้า+ชุดแบต	https://www.tvdirect.tv/greenworks-24v-cordless-set	9900	0112200200127	2016-12-19 20:38:59.934971	2016-12-19 20:38:59.934971
8472	Snap N Grip	https://www.tvdirect.tv/snapngrip	1290	SnapN Grip	2016-12-19 20:39:00.775033	2016-12-19 20:39:00.775033
8473	ODII GRAB-IT GADGET อุปกรณ์ช่วยหยิบจับสิ่งของ	https://www.tvdirect.tv/odii-grab-it-gadget	990	0122300601746	2016-12-19 20:39:02.877048	2016-12-19 20:39:02.877048
8474	TCH LED EMERGENCY LIGHTหลอดไฟฉุกเฉิน-7W 2แถม3	https://www.tvdirect.tv/tch-led-emergency-light-7w-2-3	990	0112200200156	2016-12-19 20:39:04.524217	2016-12-19 20:39:04.524217
8475	Supa Magic Hook ชุดตะขอแขวน	https://www.tvdirect.tv/supa-magic-hook	599	0112300208151	2016-12-19 20:39:06.202456	2016-12-19 20:39:06.202456
8476	TOTAL PAINTER เครื่องพ่นสีไฟฟ้า	https://www.tvdirect.tv/total-painter	3990	0121100600249	2016-12-19 20:39:07.883821	2016-12-19 20:39:07.883821
8477	BLACK&DECKER โต๊ะช่างอเนกประสงค์ รุ่น WM225	https://www.tvdirect.tv/black-decker-wm225	2990	0111100200907	2016-12-19 20:39:09.53629	2016-12-19 20:39:09.53629
8478	BLACK&DECKER ชุดไขควงอเนกประสงค์ รุ่น A7140-XJ	https://www.tvdirect.tv/black-decker-a7140-xj	259	0111100200945	2016-12-19 20:39:11.184876	2016-12-19 20:39:11.184876
8479	SANKI ALUMINIUM 3 STEP LADDER บันไดโมเดิร์น 3 ขั้น แบบมีถาด สูง 3 ฟุต	https://www.tvdirect.tv/sanki-aluminium-3-step-ladder-3-3	1190	0112300208700	2016-12-19 20:39:11.953201	2016-12-19 20:39:11.953201
8480	SANKI ALUMINIUM 5 STEP LADDER บันไดอลูมิเนียมแฟนซี 5 ขั้น สูง 5 ฟุต	https://www.tvdirect.tv/sanki-aluminium-5-step-ladder-5-5	1790	0112300208694	2016-12-19 20:39:12.722376	2016-12-19 20:39:12.722376
8481	VARTA FLASHLIGHT HEADBAND ไฟฉายแบบคาดหัว รุ่น 17730	https://www.tvdirect.tv/varta-flashlight-headband-17730	850	0111100200860	2016-12-19 20:39:15.626468	2016-12-19 20:39:15.626468
8482	VARTA LED FLASHLIGHT ไฟฉาย LED 1 วัตต์ รุ่น 18700	https://www.tvdirect.tv/varta-led-flashlight-led-1-18700	1400	0111100200877	2016-12-19 20:39:17.336445	2016-12-19 20:39:17.336445
8483	VARTA LED FLASHLIGHT ไฟฉาย LED 1 วัตต์ รุ่น 18701	https://www.tvdirect.tv/varta-led-flashlight-led-1-18701	1400	0111100200884	2016-12-19 20:39:19.087005	2016-12-19 20:39:19.087005
8484	DUALSAW CS450 เลื่อยไฟฟ้าใบมีดคู่  แถมฟรี SNAP'N GRIPประแจอเนกประสงค์	https://www.tvdirect.tv/dualsaw-cs450	5990	DualsawSnap	2016-12-19 20:39:19.890953	2016-12-19 20:39:19.890953
8485	Grip X Pert Plus ประแจเอนกประสงค์เพิ่มพลัง 1 แถม 1	https://www.tvdirect.tv/grip-x-pert-plus-1-1	1490	GripXPertPlus	2016-12-19 20:39:20.709487	2016-12-19 20:39:20.709487
8486	I Scope ไฟฉายแอลอีดีอเนกประสงค์	https://www.tvdirect.tv/i-scope	1290	0122500600488	2016-12-19 20:39:22.396526	2016-12-19 20:39:22.396526
8487	XTA HOSE 50 & Noozle สายยางยืดขยาย 50 ฟุต	https://www.tvdirect.tv/xta-hose-50-noozle-50	580	0122300500025	2016-12-19 20:39:24.103764	2016-12-19 20:39:24.103764
8488	Water Zoom หัวฉีดน้ำพลังสูง	https://www.tvdirect.tv/water-zoom	590	0120600600087	2016-12-19 20:39:27.328636	2016-12-19 20:39:27.328636
8489	Roll and Store กล่องเก็บอุปกรณ์อเนกประสงค์	https://www.tvdirect.tv/roll-and-store	499	0121000301284	2016-12-19 20:39:28.928346	2016-12-19 20:39:28.928346
8490	Hook it ตะขอเกี่ยวอเนกประสงค์	https://www.tvdirect.tv/hook-it	390	0122300601692	2016-12-19 20:39:30.785994	2016-12-19 20:39:30.785994
8491	DREAMLEAF ANTPAD PINK แผ่นรองกันมด สีชมพู	https://www.tvdirect.tv/dreamleaf-antpad-pink	250	0112300208489	2016-12-19 20:39:37.09567	2016-12-19 20:39:37.09567
8492	DREAMLEAF ANTPAD YELLOW แผ่นรองกันมด สีเหลือง	https://www.tvdirect.tv/dreamleaf-antpad-yellow	250	0112300208472	2016-12-19 20:39:38.706909	2016-12-19 20:39:38.706909
8493	DREAMLEAF ANTPAD BLUE แผ่นรองกันมด สีฟ้า	https://www.tvdirect.tv/dreamleaf-antpad-blue	250	0112300208465	2016-12-19 20:39:40.347539	2016-12-19 20:39:40.347539
8494	DREAMLEAF ANTPAD BLACK แผ่นรองกันมด สีดำ	https://www.tvdirect.tv/dreamleaf-antpad-black	250	0112300208458	2016-12-19 20:39:41.966501	2016-12-19 20:39:41.966501
8495	MOSQ ECO TRAP BM920Lบอดี้การ์ดดังยุงรุ่นLED60ตร.ม. คู่  MOSQ ECO TRAP BM921L	https://www.tvdirect.tv/mosq-eco-trap-bm920l-led60-mosq-eco-trap-bm921l	1990	MosqEcoTrapBM920	2016-12-19 20:39:42.762636	2016-12-19 20:39:42.762636
8496	MOSQ ECO TRAP GM916 บอดี้การ์ดดักยุงรุ่น 30 ตร.ม. 	https://www.tvdirect.tv/mosq-eco-trap-gm916-30-gm912-pmt-mm0007126	590	0122300400035	2016-12-19 20:39:44.615057	2016-12-19 20:39:44.615057
8497	Pest Free Single Pack แถม MosQ 916	https://www.tvdirect.tv/pest-free-single-pack-mosq-916	1990	PestFreeSinglePack	2016-12-19 20:39:46.795362	2016-12-19 20:39:46.795362
8498	MosQ Eco Trap GM918  รุ่น 60 ตร.ม.	https://www.tvdirect.tv/mosq-trap-gm918-60	790	0122300601722	2016-12-19 20:39:48.463046	2016-12-19 20:39:48.463046
8499	Welness Dust Away 1000 ml. ผลิตภัณฑ์เคลือบพื้นผิวและป้องกันฝุ่น	https://www.tvdirect.tv/welness-dust-away-1000-ml	245	0111300300933	2016-12-19 20:39:52.052134	2016-12-19 20:39:52.052134
8500	Balance Mop รุ่น BM-01G	https://www.tvdirect.tv/balance-mop-bm-01g	690	0112300300473	2016-12-19 20:39:53.739518	2016-12-19 20:39:53.739518
8501	JML DOKTOR POWER MAGIC ERASER ฟองน้ำทำความสะอาด อเนกประสงค์	https://www.tvdirect.tv/jml-doktor-power-magic-eraser	249	0112300300534	2016-12-19 20:39:55.432888	2016-12-19 20:39:55.432888
8502	ECO Steam Extreme ม็อบระบบไอน้ำ	https://www.tvdirect.tv/eco-steam-extreme	1290	0121300300796	2016-12-19 20:39:57.072842	2016-12-19 20:39:57.072842
8503	Spin & Go Mop Head หัวม็อบสีเขียว 2 ชิ้น	https://www.tvdirect.tv/spin-go-mop-head-2	490	0121800306113	2016-12-19 20:39:58.787653	2016-12-19 20:39:58.787653
8504	Welness Dust Away Power 3 ผลิตภัณฑ์ทำความสะอาด ขนาด 1000 มล.	https://www.tvdirect.tv/welness-dust-away-power-3-1000	390	0112300300138	2016-12-19 20:40:00.582326	2016-12-19 20:40:00.582326
8505	Welness Dust Away Power 3 ผลิตภัณฑ์ทำความสะอาด ขนาด 500 มล.	https://www.tvdirect.tv/welness-dust-away-power-3-500	245	0112300300145	2016-12-19 20:40:03.075872	2016-12-19 20:40:03.075872
8506	Welness Dust Away Power 3 ผลิตภัณฑ์ทำความสะอาด ขนาด 250 มล.	https://www.tvdirect.tv/welness-dust-away-power-3-250	125	0112300300152	2016-12-19 20:40:05.283021	2016-12-19 20:40:05.283021
8507	Ronco Wonder Weave ผ้าใยไผ่ทำความสะอาด	https://www.tvdirect.tv/ronco-wonder-weave	590	0122300601562	2016-12-19 20:40:07.12497	2016-12-19 20:40:07.12497
8508	TITAN TWIST MOP ม็อบถูพื้นแบบบิด	https://www.tvdirect.tv/titan-twist-mop	890	0122300601647	2016-12-19 20:40:09.00574	2016-12-19 20:40:09.00574
8509	เครื่องทำความสะอาดอเนกประสงค์ Polish Mop	https://www.tvdirect.tv/polish-mop	1790	0112300207079	2016-12-19 20:40:10.800458	2016-12-19 20:40:10.800458
8510	ไม้ถูพื้นมหัศจรรย์ 2in1 SupaMopIII	https://www.tvdirect.tv/2in1-supamopiii	990	0112300207086	2016-12-19 20:40:12.506865	2016-12-19 20:40:12.506865
8511	2 SYSTEM SPIN MOP ม็อบหมุนสองระบบ	https://www.tvdirect.tv/2-system-spin-mop	990	0122300601616	2016-12-19 20:40:14.123633	2016-12-19 20:40:14.123633
8512	MAGIC MOP ชุดถังม็อบหลายฟังก์ชั่น	https://www.tvdirect.tv/magic-mop	1290	0122300601766	2016-12-19 20:40:15.902618	2016-12-19 20:40:15.902618
8513	BIOSTEIN CLEANER ชุดเซทครีมขัดเอนกประสงค์ พร้อมฟองน้ำ 2 ชิ้น	https://www.tvdirect.tv/biostein-cleaner-2	1290	0112300207569	2016-12-19 20:40:17.666166	2016-12-19 20:40:17.666166
8514	ASTONISH STAIN REMOVER แอสโทนิชผลิตภัณฑ์ขจัดคราบสกปรก	https://www.tvdirect.tv/astonish-stain-remover	420	0112300208533	2016-12-19 20:40:21.192663	2016-12-19 20:40:21.192663
8515	BLACK&DECKER เครื่องฉีดน้ำแรงดันสูงและไขควงไฟฟ้า	https://www.tvdirect.tv/black-decker	2990	0111100200891	2016-12-19 20:40:22.879241	2016-12-19 20:40:22.879241
8516	ULTIMO TURBO MOB ม็อบหัวเดี่ยวพลังเทอร์โบ	https://www.tvdirect.tv/ultimo-turbo-mob	990	0122300601759	2016-12-19 20:40:24.624428	2016-12-19 20:40:24.624428
8517	Rubbermaid Reveal Spray Mop Gray-Red สเปรย์ม็อบ สีเทาแดง	https://www.tvdirect.tv/rubbermaid-reveal-spray-mop-gray-red	999	0112300208779	2016-12-19 20:40:26.336618	2016-12-19 20:40:26.336618
8518	Klean Machine High pressure water 70 Bar Blue-Black เครื่องฉีดน้ำแรงดันสูง ขนาด 70 บาร์ สีน้ำเงินดำ	https://www.tvdirect.tv/klean-machine-high-pressure-water-70-bar-blue-black-70	3690	0112200200200	2016-12-19 20:40:28.042702	2016-12-19 20:40:28.042702
8519	Klean Machine High pressure water 90 Bar Blue-Black เครื่องฉีดน้ำแรงดันสูง ขนาด 90 บาร์ สีน้ำเงินดำ	https://www.tvdirect.tv/klean-machine-high-pressure-water-90-bar-blue-black-90	4190	0112200200217	2016-12-19 20:40:29.757989	2016-12-19 20:40:29.757989
8520	Spin & Go Mop Head หัวม็อบสีเขียว 6 ชิ้น	https://www.tvdirect.tv/spin-go-mop-head-6	690	0123800400341	2016-12-19 20:40:31.52141	2016-12-19 20:40:31.52141
8521	Insta Lift ผลิตภัณฑ์ดูแลพื้นผิว Pack 3 ขวด	https://www.tvdirect.tv/insta-lift-set-3	390	0122300601524	2016-12-19 20:40:33.405128	2016-12-19 20:40:33.405128
8522	JML DOKTOR POWER CLOTHS ผ้าทำความสะอาดไมโครไฟเบอร์	https://www.tvdirect.tv/jml-doktor-power-cloths	199	0112300300541	2016-12-19 20:40:35.058485	2016-12-19 20:40:35.058485
8523	Clever Mop อุปกรณ์ทำความสะอาด	https://www.tvdirect.tv/clever-mop	1490	0122300601548	2016-12-19 20:40:36.845926	2016-12-19 20:40:36.845926
8524	H2O Mop X5 อุปกรณ์ทำความสะอาดระบบไอน้ำ	https://www.tvdirect.tv/h2o-mop-x5	1990	0122300600367	2016-12-19 20:40:38.83727	2016-12-19 20:40:38.83727
8525	H2O Mop X5 + เครื่องพ่นไอน้ำ 5 in 1	https://www.tvdirect.tv/h2o-mop-x5-5-in-1	2290	0122300601463	2016-12-19 20:40:40.619009	2016-12-19 20:40:40.619009
8526	BLACK&DECKER ELECTRIC MOWERS รถตัดหญ้าไฟฟ้า	https://www.tvdirect.tv/black-decker-electric-mowers	5590	0111100200938	2016-12-19 20:40:46.872156	2016-12-19 20:40:46.872156
8568	ACCORD DT-78 TURBO PINK พัดลม 7 นิ้ว ชมพู	https://www.tvdirect.tv/accord-dt-78-turbo-pink-7	220	0112300207576	2016-12-19 20:42:43.380187	2016-12-19 20:42:43.380187
8527	BLACK&DECKER เครื่องตัดเล็มพุ่มไม้ รุ่น GSL700	https://www.tvdirect.tv/black-decker-gsl700	2790	0111100200914	2016-12-19 20:40:48.425374	2016-12-19 20:40:48.425374
8528	Yard Monster Electric mowers Black-Red รถตัดหญ้าไฟฟ้า 1200วัตต์ สีดำ-แดง	https://www.tvdirect.tv/yard-monster-electric-mowers-black-red-1200	4150	0112200200187	2016-12-19 20:40:49.927668	2016-12-19 20:40:49.927668
8529	Yard Monster Electric mowers Black-Red รถตัดหญ้าไฟฟ้า 1400วัตต์ สีดำ-แดง	https://www.tvdirect.tv/yard-monster-electric-mowers-black-red-1400	4990	0112200200194	2016-12-19 20:40:51.428323	2016-12-19 20:40:51.428323
8530	Smart Twister สายรัดอเนกประสงค์	https://www.tvdirect.tv/smart-twister	790	0121100600140	2016-12-19 20:40:52.814669	2016-12-19 20:40:52.814669
8531	Raindeer Umbrella ร่มพับ 3 ตอน	https://www.tvdirect.tv/raindeer-umbrella-3	199	RaindeerUmbrella	2016-12-19 20:41:10.921448	2016-12-19 20:41:10.921448
8532	DR.ATO FABRIC SOFTENER 1800 ML.น้ำยาปรับผ้านุ่ม 1800 มล.	https://www.tvdirect.tv/dr-ato-fabric-softener-1800-ml-1800	520	0112600200596	2016-12-19 20:41:12.784485	2016-12-19 20:41:12.784485
8533	DR.ATO LAUNDRY DETERGENT 1800 ML น้ำยาซักผ้า 1800 มล.	https://www.tvdirect.tv/dr-ato-laundry-detergent-1800-ml-1800	550	0112600200589	2016-12-19 20:41:14.559545	2016-12-19 20:41:14.559545
8534	Medisana Air Purifier เครื่องกรองอากาศ 3 ระบบ	https://www.tvdirect.tv/medisana-air-purifier-3	4499	0111600208612	2016-12-19 20:41:39.330055	2016-12-19 20:41:39.330055
8535	IONIC WHISPERเครื่องฟอกอากาศขนาดเล็ก	https://www.tvdirect.tv/ionic-whisper	1990	0122300600374	2016-12-19 20:41:40.890131	2016-12-19 20:41:40.890131
8536	HANABISHI พัดลม HFA-816D Blue - ฟ้า	https://www.tvdirect.tv/hanabishi-hfa-816d-blue	699	0112300207178	2016-12-19 20:41:44.395252	2016-12-19 20:41:44.395252
8537	HANABISHI พัดลม HFA-816D Orange - ส้ม	https://www.tvdirect.tv/hanabishi-hfa-816d-orange	699	0112300207185	2016-12-19 20:41:46.102466	2016-12-19 20:41:46.102466
8538	HANABISHI พัดลม HFA-816D Pink - ชมพู	https://www.tvdirect.tv/hanabishi-hfa-816d-pink	699	0112300207192	2016-12-19 20:41:47.758181	2016-12-19 20:41:47.758181
8539	HANABISHI พัดลม TF-1810 Pink - ชมพู	https://www.tvdirect.tv/hanabishi-tf-1810-pink	1190	0112300207208	2016-12-19 20:41:49.476121	2016-12-19 20:41:49.476121
8540	HANABISHI พัดลม TF-1810 Green - เขียว	https://www.tvdirect.tv/hanabishi-tf-1810-green	1190	0112300207215	2016-12-19 20:41:51.158568	2016-12-19 20:41:51.158568
8541	HANABISHI พัดลมอุตสาหกรรม WH-F600	https://www.tvdirect.tv/hanabishi-wh-f600	2430	0112300207222	2016-12-19 20:41:52.978091	2016-12-19 20:41:52.978091
8542	MASTERKOOL พัดลมไอเย็น cool top EVAP 05 BLUE -ฟ้า	https://www.tvdirect.tv/masterkool-cool-top-evap-05-blue	1990	0112300207338	2016-12-19 20:41:54.665254	2016-12-19 20:41:54.665254
8543	MASTERKOOL พัดลมไอเย็น cool top EVAP 05 GREY-เทา	https://www.tvdirect.tv/masterkool-cool-top-evap-05-grey	1990	0112300207345	2016-12-19 20:41:56.329052	2016-12-19 20:41:56.329052
8544	MASTERKOOLพัดลมไอเย็น MIK-07EC RED สีแดง	https://www.tvdirect.tv/masterkool-mik-07ec-red	2990	0112300207352	2016-12-19 20:41:58.010844	2016-12-19 20:41:58.010844
8545	MASTERKOOLพัดลมไอเย็น MIK-07EC GREEN สีเขียว	https://www.tvdirect.tv/masterkool-mik-07ec-green	2990	0112300207369	2016-12-19 20:41:59.685492	2016-12-19 20:41:59.685492
8546	MASTERKOOLพัดลมไอเย็น MIK-07EX PURPLE สีม่วง	https://www.tvdirect.tv/masterkool-mik-07ex-purple	3199	0112300207376	2016-12-19 20:42:01.466674	2016-12-19 20:42:01.466674
8547	MASTERKOOLพัดลมไอเย็น MIK-07EX YELLOW สีเหลือง	https://www.tvdirect.tv/masterkool-mik-07ex-yellow	3199	0112300207383	2016-12-19 20:42:03.422884	2016-12-19 20:42:03.422884
8548	SONAR พัดลม SMARTWIND 12 นิ้ว EF-B184 -เขียว	https://www.tvdirect.tv/sonar-smartwind-12-ef-b184-green	590	0112300207424	2016-12-19 20:42:05.343292	2016-12-19 20:42:05.343292
8549	SONAR พัดลม SMARTWIND 12 นิ้ว EF-B184 -ชมพู	https://www.tvdirect.tv/sonar-smartwind-12-ef-b184-pink	590	0112300207417	2016-12-19 20:42:07.232976	2016-12-19 20:42:07.232976
8550	SONARพัดลม SMARTWIND 12 นิ้ว EF-B184 -ฟ้า	https://www.tvdirect.tv/sonar-smartwind-12-ef-b184-blue	590	0112300207400	2016-12-19 20:42:09.105983	2016-12-19 20:42:09.105983
8551	ACCORD AC 24-60HP พัดลมอุตสาหกรรม 24 นิ้ว	https://www.tvdirect.tv/accord-ac-24-60hp-24	2870	0112300207756	2016-12-19 20:42:10.809594	2016-12-19 20:42:10.809594
8552	ACCORD AC-18 HCT GREEN พัดลมอุตสาหกรรม 18 นิ้ว	https://www.tvdirect.tv/accord-ac-18-hct-green-18	1190	0112300207749	2016-12-19 20:42:12.604615	2016-12-19 20:42:12.604615
8553	ACCORD AC-18 HCT BLUE พัดลมอุตสาหกรรม 18 นิ้ว ฟ้า	https://www.tvdirect.tv/accord-ac-18-hct-blue-18	1190	0112300207732	2016-12-19 20:42:14.382179	2016-12-19 20:42:14.382179
8554	ACCORD AC-1881 ORANGE พัดลมตั้งโต๊ะ 18 นิ้ว ส้ม	https://www.tvdirect.tv/accord-ac-1881-orange-18	790	0112300207725	2016-12-19 20:42:16.27097	2016-12-19 20:42:16.27097
8555	ACCORD AC-1881 GREEN พัดลมตั้งโต๊ะ 18 นิ้ว เขียว	https://www.tvdirect.tv/accord-ac-1881-green-18	790	0112300207718	2016-12-19 20:42:18.194228	2016-12-19 20:42:18.194228
8556	ACCORD JYRO AIR AC-929 พัดลมตั้งโต๊ะ	https://www.tvdirect.tv/accord-jyro-air-ac-929	1270	0112300207697	2016-12-19 20:42:21.480374	2016-12-19 20:42:21.480374
8557	ACCORD DESIGN GREEN พัดลมตั้งพื้น 16 นิ้ว เขียว	https://www.tvdirect.tv/accord-design-green-16	930	0112300207680	2016-12-19 20:42:23.32732	2016-12-19 20:42:23.32732
8558	ACCORD DESIGN PURPLE พัดลมตั้งพื้น 16 นิ้ว ม่วง	https://www.tvdirect.tv/accord-design-purple-16	930	0112300207673	2016-12-19 20:42:24.991665	2016-12-19 20:42:24.991665
8559	ACCORD DESIGN ORANGE พัดลมตั้งพื้น 16 นิ้ว ส้ม	https://www.tvdirect.tv/accord-design-orange-16	930	0112300207666	2016-12-19 20:42:26.998714	2016-12-19 20:42:26.998714
8560	ACCORD AC-1661 GREEN พัดลมตั้งโต๊ะ 16 นิ้ว เขียว	https://www.tvdirect.tv/accord-ac-1661-green-16	600	0112300207659	2016-12-19 20:42:28.70907	2016-12-19 20:42:28.70907
8561	ACCORD AC-1661 BLUE พัดลมตั้งโต๊ะ 16 นิ้ว ฟ้า	https://www.tvdirect.tv/accord-ac-1661-blue-16	600	0112300207642	2016-12-19 20:42:30.58383	2016-12-19 20:42:30.58383
8562	ACCORD AC-1661 RED พัดลมตั้งโต๊ะ 16 นิ้ว แดง	https://www.tvdirect.tv/accord-ac-1661-red-16	600	0112300207635	2016-12-19 20:42:32.3559	2016-12-19 20:42:32.3559
8563	ACCORD JET-10 PINK พัดลมตั้งโต๊ะ 10 นิ้ว ชมพู	https://www.tvdirect.tv/accord-jet-10-pink-10	270	0112300207628	2016-12-19 20:42:34.194387	2016-12-19 20:42:34.194387
8564	ACCORD JET-10 BLUE พัดลมตั้งโต๊ะ 10 นิ้ว ฟ้า	https://www.tvdirect.tv/accord-jet-10-blue-10	270	0112300207611	2016-12-19 20:42:36.011288	2016-12-19 20:42:36.011288
8565	ACCORD DT-78 TURBO GREEN พัดลม 7 นิ้ว เขียว	https://www.tvdirect.tv/accord-dt-78-turbo-green-7	220	0112300207604	2016-12-19 20:42:37.821877	2016-12-19 20:42:37.821877
8566	ACCORD DT-78 TURBO PURPLE พัดลม 7 นิ้ว ม่วง	https://www.tvdirect.tv/accord-dt-78-turbo-purple-7	220	0112300207590	2016-12-19 20:42:39.701904	2016-12-19 20:42:39.701904
8567	ACCORD DT-78 TURBO YELLOW พัดลม 7 นิ้ว เหลือง	https://www.tvdirect.tv/accord-dt-78-turbo-yellow-7	220	0112300207583	2016-12-19 20:42:41.576464	2016-12-19 20:42:41.576464
8570	KONION AIR COOLER พัดลมไอเย็น ขนาด 11 ลิตร รุ่น GF-3002	https://www.tvdirect.tv/konion-air-cooler-11-gf-3002	1990	0112300208434	2016-12-19 20:42:47.50974	2016-12-19 20:42:47.50974
8571	Crane Humidifier เครื่องทำความชื้น TRAVEL	https://www.tvdirect.tv/humidifiers-travel	1490	0122300601715	2016-12-19 20:42:50.151094	2016-12-19 20:42:50.151094
8572	Crane Humidifier เครื่องทำความชื้น DROP SHAPE	https://www.tvdirect.tv/humidifiers-drop-shape	2490	0122300601708	2016-12-19 20:42:51.739178	2016-12-19 20:42:51.739178
8573	SMART HOME เตารีดไอน้ำ PI-HA17	https://www.tvdirect.tv/smart-home-pi-ha17	450	0112300207291	2016-12-19 20:42:54.820237	2016-12-19 20:42:54.820237
8574	HOMETOPS IRONING MACHINE เตารีดไอน้ำแบบมือถือ รุ่น LS-519	https://www.tvdirect.tv/hometops-ironing-machine-ls-519	1050	0112300208496	2016-12-19 20:42:56.587686	2016-12-19 20:42:56.587686
8575	HOMETOPS STREAM IRON เตารีดไอน้ำอเนกประสงค์ รุ่น G-665	https://www.tvdirect.tv/hometops-stream-iron-g-665	2450	0112300208502	2016-12-19 20:42:58.49037	2016-12-19 20:42:58.49037
8576	HOMETOPS IRONING MACHINE เตารีดไอน้ำพกพา รุ่น G-681S	https://www.tvdirect.tv/hometops-ironing-machine-g-681s	1750	0112300208519	2016-12-19 20:43:00.383603	2016-12-19 20:43:00.383603
8577	Smart Home เครื่องดูดฝุ่น Bagless SM-VCBL01	https://www.tvdirect.tv/smart-home-bagless-sm-vcbl01	1590	0112300203408	2016-12-19 20:43:03.846505	2016-12-19 20:43:03.846505
8578	Camarcio เครื่องกำจัดไรฝุ่น VACUV 500 W-White	https://www.tvdirect.tv/camarcio-vacuv-500-w-whiee	3990	0112300206867	2016-12-19 20:43:06.137262	2016-12-19 20:43:06.137262
8579	Camarcio เครื่องกำจัดไรฝุ่น VACUV 500 W-Green	https://www.tvdirect.tv/camarcio-vacuv-500-w-green	3990	0112300206874	2016-12-19 20:43:08.362852	2016-12-19 20:43:08.362852
8580	Camarcioเครื่องกำจัดไรฝุ่นVACUV 500 W-Pink	https://www.tvdirect.tv/camarcio-vacuv-500-w-pink	3990	0112300206881	2016-12-19 20:43:10.818988	2016-12-19 20:43:10.818988
8581	เครื่องดูดฝุ่นแห้ง-น้ำ Duracraft-Angelo20	https://www.tvdirect.tv/all-duracraft-angelo20	2790	0112300207154	2016-12-19 20:43:13.099453	2016-12-19 20:43:13.099453
8582	เครื่องดูดฝุ่นแห้ง-น้ำ Duracraft-Angelo30	https://www.tvdirect.tv/all-duracraft-angelo30	3990	0112300207161	2016-12-19 20:43:15.457445	2016-12-19 20:43:15.457445
8583	Autobot หุ่นยนต์ดูดฝุ่น รุ่น MINI T270RC พร้อมแท่นชาร์จ สีชมพู	https://www.tvdirect.tv/autobot-mini-t270rc-pink	3900	0112300204061	2016-12-19 20:43:17.767629	2016-12-19 20:43:17.767629
8584	Autobot หุ่นยนต์ดูดฝุ่น รุ่น MINI T270RC พร้อมแท่นชาร์จ สีฟ้า	https://www.tvdirect.tv/autobot-mini-t270rc-blue	3900	0112300204054	2016-12-19 20:43:20.171657	2016-12-19 20:43:20.171657
8585	ACCORD AC-1383 เครื่องดูดฝุ่น/ดูดน้ำ/เป่าลมสแตนเลส	https://www.tvdirect.tv/accord-ac-1383	5625	0112300207787	2016-12-19 20:43:21.853675	2016-12-19 20:43:21.853675
8586	ACCORD AC-626 เครื่องดูดฝุ่น/ดูดน้ำ/เป่าลม สแตนเลส	https://www.tvdirect.tv/accord-ac-626	3125	0112300207770	2016-12-19 20:43:23.519041	2016-12-19 20:43:23.519041
8587	ACCORD AC-525 เครื่องดูดฝุ่น/ดูดน้ำ/เป่าลม 30 ลิตร	https://www.tvdirect.tv/accord-ac-525-30	2250	0112300207763	2016-12-19 20:43:25.034787	2016-12-19 20:43:25.034787
8588	BLACK&DECKER เครื่องดูดฝุ่นแบบ 2 IN 1 รุ่น FV600	https://www.tvdirect.tv/black-decker-2-in-1-fv600	1990	0112300208670	2016-12-19 20:43:26.625922	2016-12-19 20:43:26.625922
8589	BLACK&DECKER VACUUM CLEANER เครื่องดูดฝุ่น 2IN1	https://www.tvdirect.tv/black-decker-vacuum-cleaner-2in1	1390	0112300208663	2016-12-19 20:43:28.327214	2016-12-19 20:43:28.327214
8590	SHIMONO VACUUM เครื่องดูดฝุ่นแบบพกพา SVC-1017	https://www.tvdirect.tv/shimono-vacuum-svc-1017	2990	0112300208717	2016-12-19 20:43:30.67228	2016-12-19 20:43:30.67228
8591	Blast Vac Pro เครื่องดูดฝุ่นเป่าลม	https://www.tvdirect.tv/blast-vac-pro	990	0122300601470	2016-12-19 20:43:32.294787	2016-12-19 20:43:32.294787
8592	Garry Vacuum เครื่องดูดฝุ่นทรงพลัง	https://www.tvdirect.tv/garry-vacuum	1990	0122300600985	2016-12-19 20:43:33.851761	2016-12-19 20:43:33.851761
8593	CLEANING ROBOT A335หุ่นยนต์ทำความสะอาด	https://www.tvdirect.tv/cleaning-robot-a335	7900	0122300500087	2016-12-19 20:43:35.45446	2016-12-19 20:43:35.45446
8594	RoboPal Smart Sweeper (RED) หุ่นยนต์ทำความสะอาด 3 in 1 สีแดง	https://www.tvdirect.tv/robopal-smart-sweeper-red-3in1	3990	0122300601623	2016-12-19 20:43:37.062084	2016-12-19 20:43:37.062084
8595	CYCLUUM POWER VAC เครื่องดูดฝุ่นไซคัม	https://www.tvdirect.tv/cycluum-power-vac	1490	0122300601678	2016-12-19 20:43:38.653265	2016-12-19 20:43:38.653265
8596	Camarcio เครื่องทำน้ำอุ่น MNT 4500 W	https://www.tvdirect.tv/camarcio-mnt-4500-w	3690	0112300206843	2016-12-19 20:43:42.868871	2016-12-19 20:43:42.868871
8597	Camarcio เครื่องทำน้ำอุ่น MNB 7000 G	https://www.tvdirect.tv/camarcio-mnb-7000-g	7990	0112300206850	2016-12-19 20:43:45.37671	2016-12-19 20:43:45.37671
8598	ปลั๊กไฟ Stable lines Duo Alarm 4 เต้า สาย 3 เมตร	https://www.tvdirect.tv/stable-lines-duo-alarm-4-3	990	0112300300572	2016-12-19 20:43:47.956716	2016-12-19 20:43:47.956716
8599	ANITECH PLUG ปลั๊กพ่วงแบบพกพา H102	https://www.tvdirect.tv/anitech-plug-h102	389	0112500203086	2016-12-19 20:43:51.887728	2016-12-19 20:43:51.887728
8600	ANITECH PLUG GREY ปลั๊กไฟแบบพกพา สีเทา H113	https://www.tvdirect.tv/anitech-plug-h113-grey	330	0112500203093	2016-12-19 20:43:53.734546	2016-12-19 20:43:53.734546
8601	ANITECH PLUG PINK ปลั๊กไฟแบบพกพา สีชมพู H113	https://www.tvdirect.tv/anitech-plug-h113-pink	330	0112500203109	2016-12-19 20:43:55.56748	2016-12-19 20:43:55.56748
8602	ANITECH PLUG BLUE ปลั๊กไฟแบบพกพา สีฟ้า H113	https://www.tvdirect.tv/anitech-plug-h113-blue	330	0112500203116	2016-12-19 20:43:57.410522	2016-12-19 20:43:57.410522
8603	ANITECH PLUG UNIVERSAL BLACK ปลั๊ก สีดำ H114	https://www.tvdirect.tv/anitech-plug-universal-h114-black	435	0112500203123	2016-12-19 20:43:59.171352	2016-12-19 20:43:59.171352
8604	ANITECH PLUG UNIVERSAL WHITE ปลั๊ก สีขาว H114	https://www.tvdirect.tv/anitech-plug-universal-h114-white	435	0112500203130	2016-12-19 20:44:00.971659	2016-12-19 20:44:00.971659
8605	ANITECH POWER STRIP 6 WAYS 3M รางปลั๊กไฟ H306	https://www.tvdirect.tv/anitech-power-strip-6-ways-3m-h306	330	0112500203154	2016-12-19 20:44:02.728555	2016-12-19 20:44:02.728555
8606	ANITECH POWER STRIP 4 WAYS 5M รางปลั๊กไฟ H404	https://www.tvdirect.tv/anitech-power-strip-4-ways-5m-h404	379	0112500203161	2016-12-19 20:44:04.620999	2016-12-19 20:44:04.620999
8607	ANITECH POWER STRIP 4WAY3M GREEN รางปลั๊กไฟสีเขียว H304	https://www.tvdirect.tv/anitech-power-strip-4way3m-h304-green	280	0112500203178	2016-12-19 20:44:06.54531	2016-12-19 20:44:06.54531
8608	ANITECH POWER STRIP 4WAY3M BLUE รางปลั๊กไฟสีฟ้า H304	https://www.tvdirect.tv/anitech-power-strip-4way3m-h304-blue	280	0112500203185	2016-12-19 20:44:08.386663	2016-12-19 20:44:08.386663
8609	ANITECH POWER STRIP 4WAY3M BROWN รางปลั๊กไฟสีน้ำตาล H304	https://www.tvdirect.tv/anitech-power-strip-4way3m-h304-brown	280	0112500203192	2016-12-19 20:44:10.34974	2016-12-19 20:44:10.34974
8610	ANITECH POWER STRIP 4WAY3M PINK รางปลั๊กไฟสีชมพู H304	https://www.tvdirect.tv/anitech-power-strip-4way3m-h304-pink	280	0112500203208	2016-12-19 20:44:12.122603	2016-12-19 20:44:12.122603
8611	ANITECH POWER STRIP 4WAY3M WHITE รางปลั๊กไฟสีขาว H304	https://www.tvdirect.tv/anitech-power-strip-4way3m-h304-white	280	0112500203215	2016-12-19 20:44:14.029621	2016-12-19 20:44:14.029621
8612	ANITECH POWER STRIP 6 WAYS 5M รางปลั๊กไฟ H406	https://www.tvdirect.tv/anitech-power-strip-6-ways-5m-h406	399	0112500203222	2016-12-19 20:44:15.844408	2016-12-19 20:44:15.844408
8613	ANITECH PLUG 3WAY 3M 2USB GREEN รางปลั๊กไฟสีเขียว H523	https://www.tvdirect.tv/anitech-plug-3way-3m-2usb-h523-green	369	0112500203239	2016-12-19 20:44:17.602868	2016-12-19 20:44:17.602868
8614	ANITECH PLUG 3WAY 3M 2USB BLUE รางปลั๊กไฟสีน้ำเงิน H523	https://www.tvdirect.tv/anitech-plug-3way-3m-2usb-h523-blue	369	0112500203246	2016-12-19 20:44:19.392657	2016-12-19 20:44:19.392657
8615	ANITECH POWER STRIP 4WAY 3M 2USB รางปลั๊กไฟ H524	https://www.tvdirect.tv/anitech-power-strip-4way-3m-2usb-h524	380	0112500203253	2016-12-19 20:44:22.761094	2016-12-19 20:44:22.761094
8616	ANITECH PLUG 4WAY 3M 2USB PINK รางปลั๊กไฟสีชมพู H564	https://www.tvdirect.tv/anitech-plug-4way-3m-2usb-h564-pink	499	0112500203260	2016-12-19 20:44:26.666086	2016-12-19 20:44:26.666086
8617	ANITECH PLUG 4WAY 3M 2USB GREY รางปลั๊กไฟสีเทา H564	https://www.tvdirect.tv/anitech-plug-4way-3m-2usb-h564-grey	499	0112500203277	2016-12-19 20:44:28.383787	2016-12-19 20:44:28.383787
8618	ANITECH PLUG 4WAY 3M 2USB BROWN รางปลั๊กไฟสีน้ำตาล H564	https://www.tvdirect.tv/anitech-plug-4way-3m-2usb-h564-brown	499	0112500203284	2016-12-19 20:44:30.237166	2016-12-19 20:44:30.237166
8619	ANITECH PLUG 4WAY 3M 2USB BLUE รางปลั๊กไฟสีฟ้า H564	https://www.tvdirect.tv/anitech-plug-4way-3m-2usb-h564-blue	499	0112500203291	2016-12-19 20:44:32.021515	2016-12-19 20:44:32.021515
8620	ANITECH PLUG 4WAYS 3M 2USB BLACK รางปลั๊กไฟสีดำ H584	https://www.tvdirect.tv/anitech-plug-4ways-3m-2usb-h584-black	450	0112500203307	2016-12-19 20:44:33.870996	2016-12-19 20:44:33.870996
8621	ANITECH PLUG 4WAYS 3M 2USB WHITE รางปลั๊กไฟสีขาว H584	https://www.tvdirect.tv/anitech-plug-4ways-3m-2usb-h584-white	450	0112500203314	2016-12-19 20:44:35.832496	2016-12-19 20:44:35.832496
8622	ANITECH POWER STRIP 6WAY 3M 2USB รางปลั๊กไฟ H596	https://www.tvdirect.tv/anitech-power-strip-6way-3m-2usb-h596	540	0112500203321	2016-12-19 20:44:37.94095	2016-12-19 20:44:37.94095
8623	ANITECH HEAVY DUTY POWER 4WAY 5M รางปลั๊กไฟ H804	https://www.tvdirect.tv/anitech-heavy-duty-power-4way-5m-h804	420	0112500203338	2016-12-19 20:44:39.980021	2016-12-19 20:44:39.980021
8624	ANITECH HEAVY DUTY POWER 5WAY 5M รางปลั๊กไฟ H805	https://www.tvdirect.tv/anitech-heavy-duty-power-5way-5m-h805	440	0112500203345	2016-12-19 20:44:41.861734	2016-12-19 20:44:41.861734
8625	CASIKO ไดร์เป่าผม CK-3210	https://www.tvdirect.tv/casiko-ck-3210	690	0110700209484	2016-12-19 20:44:46.402698	2016-12-19 20:44:46.402698
8626	STABLE LINESDUO ALARM ปลั๊กไฟ 5 เต้า สาย 3 เมตร	https://www.tvdirect.tv/stable-linesduo-alarm-5-3	1390	0112300300695	2016-12-19 20:44:48.990815	2016-12-19 20:44:48.990815
8627	Smart Home Mini Washing Machine Col. Green เครื่องซักผ้าขนาดเล็ก SM-MW01 สีเขียว	https://www.tvdirect.tv/smarthome-mini-washing-machine-col-green-sm-mw01	1990	0112300208137	2016-12-19 20:44:50.871959	2016-12-19 20:44:50.871959
8628	Smart Home Mini Washing Machine Col. Blue เครื่องซักผ้าขนาดเล็ก SM-MW01 สีฟ้า	https://www.tvdirect.tv/smarthome-mini-washing-machine-col-blue-sm-mw01	1990	0112300208144	2016-12-19 20:44:54.365159	2016-12-19 20:44:54.365159
8629	My Home Hair dryers HD-1001 ไดร์เป่าผมรุ่น HD-1001	https://www.tvdirect.tv/my-home-hair-dryers-hd-1001-hd-1001	259	0110700209624	2016-12-19 20:44:56.087748	2016-12-19 20:44:56.087748
8630	ECOVACS CLEANING ROBOT หุ่นยนต์เช็ดกระจก	https://www.tvdirect.tv/ecovacs-cleaning-robot	20500	0112300208335	2016-12-19 20:44:58.001216	2016-12-19 20:44:58.001216
8631	KONION เครื่องซักผ้า MINI ฝาบน 3.0 KG สีม่วง	https://www.tvdirect.tv/konion-mini-3-0-kg	1990	0112300208342	2016-12-19 20:44:59.883751	2016-12-19 20:44:59.883751
8632	KONION เครื่องซักผ้า MINI ฝาบน 3.0 KG สีน้ำเงิน	https://www.tvdirect.tv/konion-mini-3-0-kg-3308	1990	0112300208359	2016-12-19 20:45:02.005433	2016-12-19 20:45:02.005433
8633	KONION เครื่องซักผ้า MINI ฝาบน 3.5 KG สีเขียว	https://www.tvdirect.tv/konion-mini-3-5-kg-green	2290	0112300208366	2016-12-19 20:45:04.33103	2016-12-19 20:45:04.33103
8634	KONION เครื่องซักผ้า MINI ฝาบน 3.5 KG สีชมพู	https://www.tvdirect.tv/konion-mini-3-5-kg-pink	2290	0112300208373	2016-12-19 20:45:06.572766	2016-12-19 20:45:06.572766
8635	KONION WASHING MACHINE เครื่องซักผ้า 9 KG รุ่น XPB90-344SUV สีขาว	https://www.tvdirect.tv/konion-washing-machine-9-kg-xpb90-344suv	3590	0112300208403	2016-12-19 20:45:08.46975	2016-12-19 20:45:08.46975
8636	KONION WASHING MACHINE เครื่องซักผ้า 11 KG รุ่น XPB110-333SUV สีขาว	https://www.tvdirect.tv/konion-washing-machine-11-kg-xpb110-333suv	4590	0112300208410	2016-12-19 20:45:10.439141	2016-12-19 20:45:10.439141
8637	KONION WASHING MACHINE เครื่องซักผ้า 13 KG รุ่น XPB113-355SUV  สีขาว	https://www.tvdirect.tv/konion-washing-machine-13-kg-xpb113-355suv	5590	0112300208427	2016-12-19 20:45:12.295166	2016-12-19 20:45:12.295166
8638	REMINGTON HAIR BRUSH IRON อุปกรณ์จัดแต่งทรงผม รุ่น AS-7051	https://www.tvdirect.tv/remington-hair-brush-iron-as-7051	2950	0110700209860	2016-12-19 20:45:14.308213	2016-12-19 20:45:14.308213
8639	REMINGTON HAIR BRUSH IRON อุปกรณ์จัดแต่งทรงผม รุ่น AS-8090	https://www.tvdirect.tv/remington-hair-brush-iron-as-8090	3650	0110700209877	2016-12-19 20:45:16.187153	2016-12-19 20:45:16.187153
8640	REMINGTON MACHINE CURLER เครื่องม้วนผม รุ่น PRO SOFT CURL CI-6325	https://www.tvdirect.tv/remington-machine-curler-pro-soft-curl-ci-6325	2400	0110700209884	2016-12-19 20:45:17.933218	2016-12-19 20:45:17.933218
8641	REMINGTON HAIR BRUSH IRON โรลไฟฟ้า รุ่น EXPRESS SET 10 H-1022	https://www.tvdirect.tv/remington-hair-brush-iron-express-set-10-h-1022	2950	0110700209891	2016-12-19 20:45:21.376194	2016-12-19 20:45:21.376194
8642	REMINGTON โรลไฟฟ้า รุ่น Ionic Rollers KF-20I	https://www.tvdirect.tv/remington-ionic-rollers-kf-20i	3000	0110700209907	2016-12-19 20:45:23.206396	2016-12-19 20:45:23.206396
8643	REMINGTON โรลไฟฟ้า รุ่น Fast Curls KF-40E	https://www.tvdirect.tv/remington-fast-curls-kf-40e	3550	0110700209914	2016-12-19 20:45:25.043231	2016-12-19 20:45:25.043231
8644	REMINGTON STRAIGHTENER เครื่องหนีบผม รุ่นCERAMIC SLIM S-1510	https://www.tvdirect.tv/remington-straightener-ceramic-slim-s-1510	1550	0110700209921	2016-12-19 20:45:26.979003	2016-12-19 20:45:26.979003
8645	REMINGTON STRAIGHTENER เครื่องหนีบผม รุ่นPRO-ION STRAIGHT S-7710	https://www.tvdirect.tv/remington-straightener-pro-ion-straight-s-7710	3400	0110700209938	2016-12-19 20:45:28.781737	2016-12-19 20:45:28.781737
8646	REMINGTON STRAIGHTENER เครื่องหนีบผม รุ่นKERATIN THERAPY S-8590	https://www.tvdirect.tv/remington-straightener-keratin-therapy-s-8590	3500	0110700209945	2016-12-19 20:45:30.646532	2016-12-19 20:45:30.646532
8647	REMINGTON HAIR DRYER ไดร์เป่าผม รุ่นTRAVEL DRYER 1400 D-2400	https://www.tvdirect.tv/remington-hair-dryer-travel-dryer-1400-d-2400	1600	0110700209952	2016-12-19 20:45:32.637089	2016-12-19 20:45:32.637089
8648	REMINGTON HAIR DRYER ไดร์เป่าผม รุ่นPOWER DRY 2000 D-3010	https://www.tvdirect.tv/remington-hair-dryer-power-dry-2000-d-3010	2050	0110700209969	2016-12-19 20:45:34.526682	2016-12-19 20:45:34.526682
8649	REMINGTON HAIR DRYER ไดร์เป่าผม รุ่นPRO 2100 DRYER D-5017	https://www.tvdirect.tv/remington-hair-dryer-pro-2100-dryer-d-5017	3900	0110700209976	2016-12-19 20:45:36.491108	2016-12-19 20:45:36.491108
8650	REMINGTON HAIR DRYER ไดร์เป่าผม รุ่นYOUR STYLE D-5219	https://www.tvdirect.tv/remington-hair-dryer-your-style-d-5219	3450	0110700209983	2016-12-19 20:45:38.393963	2016-12-19 20:45:38.393963
8651	REMINGTON HAIR DRYER ไดร์เป่าผม รุ่นEASY CORD D-5801	https://www.tvdirect.tv/remington-hair-dryer-easy-cord-d-5801	3200	0110700209990	2016-12-19 20:45:40.161752	2016-12-19 20:45:40.161752
8652	Samsung LED Series 4 ขนาด 32 นิ้ว	https://www.tvdirect.tv/fairtex-samsung-led-32	8890	0114100300189	2016-12-19 20:45:43.9043	2016-12-19 20:45:43.9043
8653	Music Box อมตะเพชรแท้ ลูกทุ่งซุปเปอร์ฮิต รุ่น AS-A1	https://www.tvdirect.tv/music-box-as-a1	1690	0111200301443	2016-12-19 20:45:46.864372	2016-12-19 20:45:46.864372
8654	AS ลูกทุ่งฮิต 1,000 ล้าน เครื่องเล่นเพลงแบบพกพา รุ่น AS-F1	https://www.tvdirect.tv/1-000-as-f1-1300-1975-2643	1690	0111200301463	2016-12-19 20:45:48.473478	2016-12-19 20:45:48.473478
8655	SONAR PORTABLE SPEAKERS วิทยุลำโพง DA-14 สีฟ้า แถมฟรี หูฟัง RV-600	https://www.tvdirect.tv/sonar-portable-speakers-da-14-rv-600	790	0111200201576	2016-12-19 20:45:50.100865	2016-12-19 20:45:50.100865
8656	SONAR PORTABLE SPEAKERS วิทยุลำโพง DA-14 สีดำ แถมฟรี หูฟัง RV-600	https://www.tvdirect.tv/sonar-portable-speakers-da-14-rv-600-3497	790	0111200201583	2016-12-19 20:45:51.52289	2016-12-19 20:45:51.52289
8657	SONAR PORTABLE RADIO วิทยุ SP-202 สีเบจแถมฟรี หูฟัง RV-600	https://www.tvdirect.tv/sonar-portable-radio-sp-202-rv-600	990	0111200201552	2016-12-19 20:45:53.010859	2016-12-19 20:45:53.010859
8658	Sonar Portable Radio วิทยุ SP-202 สีดำแถมฟรี หูฟัง RV-600	https://www.tvdirect.tv/sonar-portable-radio-sp-202-rv-600-3499	990	0111200201569	2016-12-19 20:45:54.58153	2016-12-19 20:45:54.58153
8659	SONAR DVD PLAYER เครื่องเล่นDVD S-535และไมค์ลอยคู่WM-200	https://www.tvdirect.tv/sonar-dvd-player-dvd-s-535-wm-200	1450	0111200201590	2016-12-19 20:45:56.095995	2016-12-19 20:45:56.095995
8660	Samsung Blu-ray Home Entertainment System	https://www.tvdirect.tv/fairtex-samsung-home-entertainment	8990	0114100300219	2016-12-19 20:45:58.510718	2016-12-19 20:45:58.510718
8661	Family เครื่องเล่นดีวีดีและลำโพง Family D-447 สีชมพู	https://www.tvdirect.tv/family-d-447-pink	990	0111200201279	2016-12-19 20:46:01.608382	2016-12-19 20:46:01.608382
8662	Family เครื่องเล่นดีวีดีและลำโพง Family D-447 สีม่วง	https://www.tvdirect.tv/family-d-447-purple	990	0111200201286	2016-12-19 20:46:03.310388	2016-12-19 20:46:03.310388
8663	Family เครื่องเล่นดีวีดีและลำโพง Family D-447 สีแดง	https://www.tvdirect.tv/family-d-447-red	990	0111200201309	2016-12-19 20:46:04.812771	2016-12-19 20:46:04.812771
8664	Family เครื่องเล่นดีวีดีและลำโพง Family D-447 สีฟ้า	https://www.tvdirect.tv/family-d-447-blue	990	0111200201293	2016-12-19 20:46:06.56967	2016-12-19 20:46:06.56967
8665	SKG ลำโพงSUB WOOFER 2.1CH	https://www.tvdirect.tv/skg-sub-woofer-2-1ch	2990	0111200201460	2016-12-19 20:46:07.982949	2016-12-19 20:46:07.982949
8666	ACCORD AC-999 เตาแก๊สอินฟาเรด	https://www.tvdirect.tv/accord-ac-999	1180	0112400223599	2016-12-19 20:46:11.976449	2016-12-19 20:46:11.976449
8667	HANABISHI เตาอินฟาเรด HIF-238	https://www.tvdirect.tv/hanabishi-hif-238	1690	0112400222745	2016-12-19 20:46:13.671972	2016-12-19 20:46:13.671972
8668	Smart Home gas stove 1 Head เตาแก๊สหัวเดียว	https://www.tvdirect.tv/smart-home-gas-stove-1-head	790	0112400221465	2016-12-19 20:46:15.340554	2016-12-19 20:46:15.340554
8669	Smart Home Gas Stove 2 Head เตาแก๊สสองหัว	https://www.tvdirect.tv/smart-home-gas-stove-2-head	1520	0112400221472	2016-12-19 20:46:17.078654	2016-12-19 20:46:17.078654
8670	SMART HOME เตาแก๊สหัวคู๋แบบผสม SM-GA2H-02	https://www.tvdirect.tv/smart-home-sm-ga2h-02	1250	0112400223117	2016-12-19 20:46:18.728248	2016-12-19 20:46:18.728248
8671	SMART HOME เตาแก๊สหัวเดียวอินฟาเรด SM-GA1H-02	https://www.tvdirect.tv/smart-home-sm-ga1h-02	620	0112400223100	2016-12-19 20:46:20.444622	2016-12-19 20:46:20.444622
8672	Tecno+ เตาแก๊สTNS IR 130 GB	https://www.tvdirect.tv/tecno-tns-ir-130-gb	1090	0112400222400	2016-12-19 20:46:22.988054	2016-12-19 20:46:22.988054
8673	Tecno+ เตาแก๊สTNS IR 2710 GB	https://www.tvdirect.tv/tecno-tns-ir-2710-gb	1890	0112400222417	2016-12-19 20:46:25.364622	2016-12-19 20:46:25.364622
8674	Tecno+ เตาแก๊สTNS IR 3710 GB	https://www.tvdirect.tv/tecno-tns-ir-3710-gb	2290	0112400222424	2016-12-19 20:46:27.57351	2016-12-19 20:46:27.57351
8675	Tecno+ เตาแม่เหล็กไฟฟ้าTNS IDS 2000 BR	https://www.tvdirect.tv/tecno-tns-ids-2000-br	3290	0112400222387	2016-12-19 20:46:29.860324	2016-12-19 20:46:29.860324
8676	Tecno+ เตาแม่เหล็กไฟฟ้าTNS IDS 2000 BSC	https://www.tvdirect.tv/tecno-tns-ids-2000-bsc	3590	0112400222394	2016-12-19 20:46:32.274388	2016-12-19 20:46:32.274388
8677	Tecno+ เตาแม่เหล็กไฟฟ้าTNS IDS 2000 CB	https://www.tvdirect.tv/tecno-tns-ids-2000-cb	1790	0112400222370	2016-12-19 20:46:34.769484	2016-12-19 20:46:34.769484
8678	ACCORD AC-523 หม้ออบไอร้อน	https://www.tvdirect.tv/accord-ac-523	2000	0112400223627	2016-12-19 20:46:38.010848	2016-12-19 20:46:38.010848
8679	HANABISHI Halogen Oven Cookers หม้ออบลมร้อน HCO-11A ขาว	https://www.tvdirect.tv/hanabishi-halogen-oven-cookers-hco-11a-white	1490	0112400224305	2016-12-19 20:46:39.620935	2016-12-19 20:46:39.620935
8680	HANABISHI Halogen Oven Cookers หม้ออบลมร้อน HCO-11A แดง	https://www.tvdirect.tv/hanabishi-halogen-oven-cookers-hco-11a-red	1490	0112400224299	2016-12-19 20:46:41.408738	2016-12-19 20:46:41.408738
8681	LACOR AIR DRIED FRUITS เครื่องทำผลไม้อบแห้ง	https://www.tvdirect.tv/lacor-air-dried-fruits	3000	0112400224145	2016-12-19 20:46:43.112226	2016-12-19 20:46:43.112226
8682	LACOR FOOD STEAMER เครื่องอบอาหาร	https://www.tvdirect.tv/lacor-food-steamer	3500	0112400224152	2016-12-19 20:46:44.716381	2016-12-19 20:46:44.716381
8683	Orbit เครื่องอบ พร้อมปิ้งย่าง รุ่น NEO	https://www.tvdirect.tv/orbit-neo	3500	0112400222097	2016-12-19 20:46:46.276413	2016-12-19 20:46:46.276413
8684	SKG หม้ออบลมร้อน Halogen 1,300 วัตต์	https://www.tvdirect.tv/skg-halogen-1-300	1190	0112400222639	2016-12-19 20:46:47.884351	2016-12-19 20:46:47.884351
8685	Smart Home เครื่องอบลมร้อน Halogen MV008	https://www.tvdirect.tv/smart-home-halogen-mv008	1250	0112400221441	2016-12-19 20:46:49.453996	2016-12-19 20:46:49.453996
8686	SONAR หม้ออบลมร้อน Halogen 7 ลิตร CV-307H	https://www.tvdirect.tv/sonar-halogen-7-cv-307h	990	0112400224091	2016-12-19 20:46:51.098887	2016-12-19 20:46:51.098887
8687	SONAR หม้ออบลมร้อนฮาโลเจน หม้อสแตนเลส CV-705	https://www.tvdirect.tv/sonar-cv-705	1340	0112400223025	2016-12-19 20:46:52.852656	2016-12-19 20:46:52.852656
8688	SONAR หม้ออบลมร้อนฮาโลเจน หม้อแก้ว CV-707H	https://www.tvdirect.tv/sonar-cv-707h	1250	0112400223032	2016-12-19 20:46:54.527633	2016-12-19 20:46:54.527633
8689	Tecno+ เตาอบTNP DG 558 S	https://www.tvdirect.tv/tecno-tnp-dg-558-s	19900	0112400222455	2016-12-19 20:46:56.799227	2016-12-19 20:46:56.799227
8690	Tecno+ เตาอบTNP O 456 DG	https://www.tvdirect.tv/tecno-tnp-o-456-dg	15900	0112400222448	2016-12-19 20:46:59.21141	2016-12-19 20:46:59.21141
8691	Tecno+ เตาอบTNP O 456 MN	https://www.tvdirect.tv/tecno-tnp-o-456-mn	13900	0112400222431	2016-12-19 20:47:01.543312	2016-12-19 20:47:01.543312
8692	Tecno+ เตาอบไฟฟ้า TNP 1212J-H6E	https://www.tvdirect.tv/tecno-tnp-1212j-h6e	1990	0112400222462	2016-12-19 20:47:04.196762	2016-12-19 20:47:04.196762
8693	Tecno+ เตาอบไฟฟ้า TNP 1528Q-H7	https://www.tvdirect.tv/tecno-tnp-1528q-h7	3390	0112400222479	2016-12-19 20:47:06.578073	2016-12-19 20:47:06.578073
8694	Tecno+ เตาอบไฟฟ้า TNP 2038Q-H7	https://www.tvdirect.tv/tecno-tnp-2038q-h7	3990	0112400222486	2016-12-19 20:47:08.976712	2016-12-19 20:47:08.976712
8695	Tecno+เตาอบไฟฟ้า TNP 2042HQ-H7	https://www.tvdirect.tv/tecno-tnp-2042hq-h7	5290	0112400221816	2016-12-19 20:47:11.265412	2016-12-19 20:47:11.265412
8696	ACCORD AC-4411 เครื่องคั้นแยกกาก	https://www.tvdirect.tv/accord-ac-4411	780	0112400223603	2016-12-19 20:47:14.651356	2016-12-19 20:47:14.651356
8697	ACCORD AC-4422 เครื่องคั้นแยกกาก	https://www.tvdirect.tv/accord-ac-4422	1500	0112400223610	2016-12-19 20:47:16.289965	2016-12-19 20:47:16.289965
8698	HH SOCIETY Fruit squeezer extractor Red color เครื่องสกัดน้ำผัก-ผลไม้ HHS-S500 สีแดง	https://www.tvdirect.tv/hh-society-fruit-squeezer-extractor-red-color-hhs-s500	1290	0112400223865	2016-12-19 20:47:17.962313	2016-12-19 20:47:17.962313
8699	HH SOCIETY Fruit squeezer extractor Silver color เครื่องสกัดน้ำผัก-ผลไม้ HHS-S500 สีเงิน	https://www.tvdirect.tv/hh-society-fruit-squeezer-extractor-silver-color-hhs-s500	1290	0112400223858	2016-12-19 20:47:19.672914	2016-12-19 20:47:19.672914
8700	KUVINGS MINCER หัวทำสมู๊ทตี้และเครื่องบดอาหาร	https://www.tvdirect.tv/kuvings-mincer	1200	0112400224541	2016-12-19 20:47:21.325143	2016-12-19 20:47:21.325143
8701	KUVINGS SILENT JUICER เครื่องสกัดน้ำผลไม้ NS-150CBM2	https://www.tvdirect.tv/kuvings-silent-juicer-ns-150cbm2	9900	0112400224565	2016-12-19 20:47:23.044743	2016-12-19 20:47:23.044743
8702	KUVINGS WHOLE SLOW JUICER เครื่องสกัดน้ำผลไม้ รุ่น B6000W	https://www.tvdirect.tv/kuvings-whole-slow-juicer-b6000w	12900	0112400224558	2016-12-19 20:47:24.741599	2016-12-19 20:47:24.741599
8703	LACOR FRUIT PROCESSOR เครื่องคั้นน้ำผักผลไม้	https://www.tvdirect.tv/lacor-fruit-processor	8500	0112400224190	2016-12-19 20:47:26.478145	2016-12-19 20:47:26.478145
8704	LACOR HAND MIXER แกนปั่นอเนกประสงค์	https://www.tvdirect.tv/lacor-hand-mixer	4250	0112400224398	2016-12-19 20:47:30.099157	2016-12-19 20:47:30.099157
8705	LACOR HOME MEAT SLICER เครื่องสไลด์เนื้อ	https://www.tvdirect.tv/lacor-home-meat-slicer	4600	0112400224138	2016-12-19 20:47:31.720464	2016-12-19 20:47:31.720464
8706	LACOR MEAT GRINDER JS-69068 เครื่องบดเนื้อ	https://www.tvdirect.tv/lacor-meat-grinder-js-69068	9650	0112400224121	2016-12-19 20:47:33.334758	2016-12-19 20:47:33.334758
8707	LACOR MULTI BLENDER 8 Function เครื่องปั่นอเนกประสงค์ 8 รูปแบบ	https://www.tvdirect.tv/lacor-multi-blender-8-function-8	7450	0112400224220	2016-12-19 20:47:35.002614	2016-12-19 20:47:35.002614
8708	LACOR SQUEZEER W-LEVER เครื่องคั้นน้ำส้ม	https://www.tvdirect.tv/lacor-squezeer-w-lever	2650	0112400224206	2016-12-19 20:47:36.823433	2016-12-19 20:47:36.823433
8709	ORBIT BLENDER เครื่องปั่น รุ่น BL-949M	https://www.tvdirect.tv/orbit-blender-bl-949m	1300	0112400224480	2016-12-19 20:47:38.486429	2016-12-19 20:47:38.486429
8710	Orbit เครื่องบดสับอาหาร รุ่น EASY CHOP II	https://www.tvdirect.tv/orbit-easy-chop-ii	1500	0112400222066	2016-12-19 20:47:40.099816	2016-12-19 20:47:40.099816
8711	Orbit เครื่องปั่น รุ่น BL-990M	https://www.tvdirect.tv/orbit-bl-990m	1500	0112400222080	2016-12-19 20:47:41.776955	2016-12-19 20:47:41.776955
8712	Orbit เครื่องสกัดน้ำผลไม้ รุ่น COLOMBIA	https://www.tvdirect.tv/orbit-coloumbia	2500	0112400222073	2016-12-19 20:47:43.388931	2016-12-19 20:47:43.388931
8713	Princess Multifunction Slide Black เครื่องเตรียมอาหาร ขูด สับ สไลซ์ สีดำ	https://www.tvdirect.tv/princess-multifunction-slide-black	2390	0112400225418	2016-12-19 20:47:45.746062	2016-12-19 20:47:45.746062
8714	Princess Slow Juicer Black เครื่องสกัดน้ำผักผลไม้ สีดำ	https://www.tvdirect.tv/princess-slow-juicer-black	4190	0112400225425	2016-12-19 20:47:48.103253	2016-12-19 20:47:48.103253
8715	RUSSELL HOBBS BLENDER เครื่องเตรียมอาหาร รุ่น 20240-56	https://www.tvdirect.tv/russell-hobbs-blender-20240-56	5950	0112400224442	2016-12-19 20:47:51.558876	2016-12-19 20:47:51.558876
8716	Russell Hobbs เครื่องบด สับอาหาร รุ่น 20320-56	https://www.tvdirect.tv/russell-hobbs-20320-56	1950	0112400222301	2016-12-19 20:47:53.092213	2016-12-19 20:47:53.092213
8717	Russell Hobbs เครื่องบดสับอาหาร รุ่น 19440-56	https://www.tvdirect.tv/russell-hobbs-19440-56	1100	0112400222257	2016-12-19 20:47:54.723308	2016-12-19 20:47:54.723308
8718	Russell Hobbs เครื่องปั่น Mix & Go รุ่น 21350-56	https://www.tvdirect.tv/russell-hobbs-mix-go-21350-56	1600	0112400222332	2016-12-19 20:47:56.381155	2016-12-19 20:47:56.381155
8719	Russell Hobbs เครื่องปั่น รุ่น 18996-56	https://www.tvdirect.tv/russell-hobbs-18996-56	3900	0112400222318	2016-12-19 20:47:58.040462	2016-12-19 20:47:58.040462
8720	Russell Hobbs เครื่องปั่น รุ่น 19450-56	https://www.tvdirect.tv/russell-hobbs-19450-56	2200	0112400222219	2016-12-19 20:47:59.706307	2016-12-19 20:47:59.706307
8721	Russell Hobbs เครื่องสกัดแยกกาก รุ่น 20366-56	https://www.tvdirect.tv/russell-hobbs-20366-56	4200	0112400222325	2016-12-19 20:48:01.275203	2016-12-19 20:48:01.275203
8722	SKG Panastar เครื่องปั่นแยกน้ำแยกกาก 4 in1	https://www.tvdirect.tv/skg-panastar-4-in1	1790	0112400222578	2016-12-19 20:48:03.139843	2016-12-19 20:48:03.139843
8723	SOKO เครื่องคั้นน้ำแยกกาก SK-1185	https://www.tvdirect.tv/soko-sk-1185	990	0112400223700	2016-12-19 20:48:05.595222	2016-12-19 20:48:05.595222
8724	The Ultimate Juicer เครื่องคั้นน้ำผลไม้สด	https://www.tvdirect.tv/ultimate-juicer	990	0122400601257	2016-12-19 20:48:07.184473	2016-12-19 20:48:07.184473
8725	Fusion Juicer เครื่องสกัดน้ำแยกกาก	https://www.tvdirect.tv/fusion-juicer	2990	0122400601066	2016-12-19 20:48:08.807562	2016-12-19 20:48:08.807562
8726	Power Juicer Express เครื่องสกัดน้ำแยกกาก	https://www.tvdirect.tv/power-juicer-express	2490	0122400600755	2016-12-19 20:48:10.336914	2016-12-19 20:48:10.336914
8727	Russell Hobbs เครื่องปั่นอาหารมือถือ รุ่น 18970-56	https://www.tvdirect.tv/russell-hobbs-18970-56	1615	0112400222196	2016-12-19 20:48:11.85799	2016-12-19 20:48:11.85799
8728	Smart Blender KS-790 เครื่องปั่นพลังสูง	https://www.tvdirect.tv/smart-blender-ks-790	2990	0122400400010	2016-12-19 20:48:12.61203	2016-12-19 20:48:12.61203
8729	HH SOCIETY ESPRESSO MAKER BN-610+GRINDER เครื่องชงกาแฟ+เครื่องบดกาแฟ SY601-ดำ	https://www.tvdirect.tv/hh-society-espresso-maker-bn-610-grinder-sy601	1990	0112400223872	2016-12-19 20:48:15.548281	2016-12-19 20:48:15.548281
8730	LACOR COFFEE MACHINE TEMPO เครื่องชงกาแฟ	https://www.tvdirect.tv/lacor-coffee-machine-tempo	2200	0112400224176	2016-12-19 20:48:17.087186	2016-12-19 20:48:17.087186
8731	LACOR FILTER COFFEE MACHINE 1.80 L เครื่องชงกาแฟ 1.80 ลิตร	https://www.tvdirect.tv/lacor-filter-coffee-machine-1-80-l-1-80	2950	0112400224183	2016-12-19 20:48:18.747686	2016-12-19 20:48:18.747686
8732	Orbit เครื่องชงกาแฟ รุ่น CM-3021	https://www.tvdirect.tv/orbit-cm-3021	850	0112400222035	2016-12-19 20:48:20.352784	2016-12-19 20:48:20.352784
8733	PERSONAL COFFEE MAKER เครืองชงกาแฟ รุ่น JC-A3B สีชมพู	https://www.tvdirect.tv/personal-coffee-maker-jc-a3b-pink	1490	0122400500123	2016-12-19 20:48:22.6128	2016-12-19 20:48:22.6128
8734	PERSONAL COFFEE MAKER เครื่องชงกาแฟ  รุ่น JC-A3B สีน้ำเงิน	https://www.tvdirect.tv/personal-coffee-maker-jc-a3b-blue	1490	0122400500130	2016-12-19 20:48:24.977763	2016-12-19 20:48:24.977763
8735	Russell Hobbs เครื่องชงกาแฟ รุ่น 19620-56	https://www.tvdirect.tv/russell-hobbs-19620-56	1500	0112400222141	2016-12-19 20:48:26.564561	2016-12-19 20:48:26.564561
8736	Russell Hobbs เครื่องชงกาแฟ รุ่น 20130-56	https://www.tvdirect.tv/russell-hobbs-20130-56	2400	0112400222158	2016-12-19 20:48:28.18062	2016-12-19 20:48:28.18062
8737	CASIKO เครื่องทำขนมไข่ CK-5002	https://www.tvdirect.tv/casiko-ck-5556	639	0112400223755	2016-12-19 20:48:31.717052	2016-12-19 20:48:31.717052
8738	CASIKO เครื่องทำขนมไทยากิรูปปลา CK-5009	https://www.tvdirect.tv/casiko-ck-5009	950	0112400223724	2016-12-19 20:48:34.155164	2016-12-19 20:48:34.155164
8739	CASIKO เครื่องทำคัพเค้ก CK-5006	https://www.tvdirect.tv/casiko-ck-5006	950	0112400223748	2016-12-19 20:48:36.492669	2016-12-19 20:48:36.492669
8740	CASIKO เครื่องทำวาฟเฟิลไส้กรอก CK-5008	https://www.tvdirect.tv/casiko-ck-5008	950	0112400223717	2016-12-19 20:48:39.005296	2016-12-19 20:48:39.005296
8741	SKG เครื่องทำแฮมเบอร์เกอร์สีฟ้า	https://www.tvdirect.tv/skg-blue	890	0112400222646	2016-12-19 20:48:40.666391	2016-12-19 20:48:40.666391
8742	SKG เครื่องทำแฮมเบอร์เกอร์สีเขียว	https://www.tvdirect.tv/skg-green	890	0112400222653	2016-12-19 20:48:42.320269	2016-12-19 20:48:42.320269
8743	SONAR BREAKFAST SET EK-181D + ET-2S	https://www.tvdirect.tv/sonar-breakfast-set-ek-181d-et-2s	799	0112400223423	2016-12-19 20:48:43.97313	2016-12-19 20:48:43.97313
8744	SONARเครื่องทำออมเล็ต รุ่น OM-023	https://www.tvdirect.tv/sonar-om-023	699	0112400223447	2016-12-19 20:48:45.588006	2016-12-19 20:48:45.588006
8745	Smart Nutri Drink Maker Glass 3 + Smart Timer 	https://www.tvdirect.tv/smart-nutri-drink-maker-glass-3-smart-timer	2990	SmartNutrDrinkMakerGlass3	2016-12-19 20:48:47.971104	2016-12-19 20:48:47.971104
8746	In-House Toaster TL-125 (Blue) เครื่องปิ้งขนมปังสีฟ้า TL-125	https://www.tvdirect.tv/in-house-toaster-tl-125-blue-tl-125	399	0112400224046	2016-12-19 20:48:51.223496	2016-12-19 20:48:51.223496
8747	In-House Toaster TL-127 (White) เครื่องปิ้งขนมปังสีขาว TL-127	https://www.tvdirect.tv/in-house-toaster-tl-127-white-tl-127	399	0112400224039	2016-12-19 20:48:52.920575	2016-12-19 20:48:52.920575
8748	ORBIT SANDWICH MAKER เครื่องทำแซนด์วิช รุ่น TAKARA	https://www.tvdirect.tv/orbit-sandwich-maker-takara	850	0112400224497	2016-12-19 20:48:54.648733	2016-12-19 20:48:54.648733
8749	Orbit เครื่องปิ้งขนมปัง รุ่น Titus	https://www.tvdirect.tv/orbit-titus	700	0112400222059	2016-12-19 20:48:56.407942	2016-12-19 20:48:56.407942
8750	Russell Hobbs เครื่องทำแซนด์วิช รุ่น 17936-56	https://www.tvdirect.tv/russell-hobbs-17936-56	1100	0112400222264	2016-12-19 20:48:58.202874	2016-12-19 20:48:58.202874
8751	Russell Hobbs เครื่องปิ้งขนมปัง รุ่น 20700-56	https://www.tvdirect.tv/russell-hobbs-20700-56	1700	0112400222134	2016-12-19 20:48:59.851987	2016-12-19 20:48:59.851987
8752	SMART HOME เครื่องปิ้งขนมปัง 2แผ่น SM-T02	https://www.tvdirect.tv/smart-home-2-sm-t02	315	0112400223087	2016-12-19 20:49:01.507968	2016-12-19 20:49:01.507968
8753	SONAR BREAKFAST SET DM-007 + SM-W030 + ET-2S	https://www.tvdirect.tv/sonar-breakfast-set-dm-007-sm-w030-et-2s	1590	0112400223184	2016-12-19 20:49:03.275412	2016-12-19 20:49:03.275412
8754	SONAR เครื่องทำเพรทเซล SM-P 002	https://www.tvdirect.tv/sonar-sm-p-002	790	0112400223191	2016-12-19 20:49:05.10648	2016-12-19 20:49:05.10648
8755	SONAR เครื่องทำโดนัท รุ่น DM-007 -ขาว	https://www.tvdirect.tv/sonar-dm-007-white	690	0112400222950	2016-12-19 20:49:06.883665	2016-12-19 20:49:06.883665
8756	SONAR เครื่องทำโดนัท รุ่น DM-007 -ดำ	https://www.tvdirect.tv/sonar-dm-007-black	620	0112400222967	2016-12-19 20:49:08.65132	2016-12-19 20:49:08.65132
8757	SONAR เครื่องทำโดนัท รุ่น DM-007 -แดง	https://www.tvdirect.tv/sonar-dm-007-red	620	0112400222974	2016-12-19 20:49:10.350922	2016-12-19 20:49:10.350922
8758	Toaster Model PE9900 เครื่องปิ้งขนมปัง 3 IN 1	https://www.tvdirect.tv/toaster-model-pe9900-3-in-1	745	0122300600220	2016-12-19 20:49:12.047207	2016-12-19 20:49:12.047207
8759	ACCORD AC-25S กระติกน้ำร้อนไฟฟ้า	https://www.tvdirect.tv/accord-ac-25s	690	0112400223634	2016-12-19 20:49:15.358848	2016-12-19 20:49:15.358848
8760	LACOR TEMPPO WATER KETTLE 1500W กาต้มน้ำไฟฟ้า	https://www.tvdirect.tv/lacor-temppo-water-kettle-1500w	2250	0112400224169	2016-12-19 20:49:17.348815	2016-12-19 20:49:17.348815
8761	My Home Electric Kettles 1.5 L KT-1502 (Blue) กาต้มน้ำร้อนไฟฟ้า 1.5 ลิตร สีฟ้า	https://www.tvdirect.tv/my-home-electric-kettles-1-5-l-kt-1502-blue-1-5	399	0112400224022	2016-12-19 20:49:19.057224	2016-12-19 20:49:19.057224
8762	My Home Thermo Pots 2.5 L JP-2532 กระติกน้ำร้อน 2.5 ลิตร JP-2532	https://www.tvdirect.tv/my-home-thermo-pots-2-5-l-jp-2532-2-5-jp-2532	449	0112400224060	2016-12-19 20:49:20.795534	2016-12-19 20:49:20.795534
8763	Orbit กาต้มน้ำไฟฟ้า รุ่น KET-8015	https://www.tvdirect.tv/orbit-ket-8015	700	0112400222028	2016-12-19 20:49:22.553386	2016-12-19 20:49:22.553386
8764	Russell Hobbs กาต้มน้ำไฟฟ้า รุ่น 19630-70	https://www.tvdirect.tv/russell-hobbs-19630-70	1300	0112400222103	2016-12-19 20:49:24.343257	2016-12-19 20:49:24.343257
8765	Russell Hobbs กาต้มน้ำไฟฟ้า รุ่น 20420-70	https://www.tvdirect.tv/russell-hobbs-20420-70	2000	0112400222110	2016-12-19 20:49:26.156044	2016-12-19 20:49:26.156044
8766	Russell Hobbs กาต้มน้ำไฟฟ้า รุ่น 21150-70	https://www.tvdirect.tv/russell-hobbs-21150-70	2500	0112400222127	2016-12-19 20:49:27.791584	2016-12-19 20:49:27.791584
8767	SMART HOME กาต้มน้ำ 1.8L CA-1002	https://www.tvdirect.tv/smart-home-1-8l-ca-1002	450	0112400223063	2016-12-19 20:49:29.668696	2016-12-19 20:49:29.668696
8768	SMART HOME กาต้มน้ำ 1.8L CA-1009	https://www.tvdirect.tv/smart-home-1-8l-ca-1009	360	0112400223056	2016-12-19 20:49:31.5093	2016-12-19 20:49:31.5093
8769	SMART HOME กาต้มน้ำอเนกประสงค์ 1.5L CA-1005	https://www.tvdirect.tv/smart-home-1-5l-ca-1005	450	0112400223070	2016-12-19 20:49:33.441608	2016-12-19 20:49:33.441608
8770	SONAR Breakfast Set 2 in 1 กาต้มน้ำไฟฟ้าไร้สาย รุ่น EK-150S แถมเครื่องทำโดนัท	https://www.tvdirect.tv/sonar-breakfast-set-2-in-1-ek-150s	790	0112400224626	2016-12-19 20:49:35.180435	2016-12-19 20:49:35.180435
8771	SONAR Healthy Set 2 กาต้มน้ำไฟฟ้า รุ่น JF-26P แถมเครื่องทำโดนัท	https://www.tvdirect.tv/sonar-healthy-set-2-jf-26p	2990	0112400224619	2016-12-19 20:49:36.914017	2016-12-19 20:49:36.914017
8772	SONAR Hot & Cold Water Dispenserเครื่องทำน้ำร้อน-น้ำเย็น รุ่น WD-CS205HC	https://www.tvdirect.tv/sonar-hot-cold-water-dispenser-wd-cs205hc	7490	0112300207956	2016-12-19 20:49:38.692398	2016-12-19 20:49:38.692398
8773	SONAR Hot & Cold Water Dispenserเครื่องทำน้ำร้อน-น้ำเย็น รุ่น WD-ES165HC	https://www.tvdirect.tv/sonar-hot-cold-water-dispenser-wd-es165hc	3590	0112300207949	2016-12-19 20:49:40.502018	2016-12-19 20:49:40.502018
8774	SONARกระติกน้ำร้อน 2.5 ลิตร รุ่น SP-T201	https://www.tvdirect.tv/sonar-2-5-sp-t201	599	0112400223430	2016-12-19 20:49:42.232132	2016-12-19 20:49:42.232132
8775	BALZANO AIR FRYER BLACK หม้อทอดไฟฟ้าระบบดิจิตอล สีดำ	https://www.tvdirect.tv/balzano-air-fryer-black	3990	0112400224510	2016-12-19 20:49:45.445211	2016-12-19 20:49:45.445211
8776	EASY BRUNCH อีซี่บรันช์ อุปกรณ์ทำอาหารสาระพัดเมนู	https://www.tvdirect.tv/easy-brunch	990	0122400500161	2016-12-19 20:49:46.917543	2016-12-19 20:49:46.917543
8777	HANABISHI Electric Grill BBQ เตาบาร์บีคิว HSG-5701	https://www.tvdirect.tv/hanabishi-electric-grill-bbq-hsg-5701	1590	0112400224282	2016-12-19 20:49:48.645462	2016-12-19 20:49:48.645462
8778	HANABISHI Electric Grill เตาปิ้งย่าง HSG-90T S1 สีดำ	https://www.tvdirect.tv/hanabishi-electric-grill-hsg-90t-s1	1790	0112400224329	2016-12-19 20:49:50.377392	2016-12-19 20:49:50.377392
8779	HANABISHI Electric Pans กระทะไฟฟ้า HEP-10 สีชมพู ลายดอกไม้	https://www.tvdirect.tv/hanabishi-electric-pans-hep-10	499	0112400223179	2016-12-19 20:49:52.03194	2016-12-19 20:49:52.03194
8780	HANABISHI Stew Cooker หม้อตุ๋น HSC-235	https://www.tvdirect.tv/hanabishi-stew-cooker-hsc-235	599	0112400224312	2016-12-19 20:49:53.686696	2016-12-19 20:49:53.686696
8781	In-House Suki & BBQ Pots SK-3003 (Red) หม้อสุกี้ BBQ 	https://www.tvdirect.tv/in-house-suki-bbq-pots-sk-3003-red-bbq	1190	0112400224077	2016-12-19 20:49:55.411023	2016-12-19 20:49:55.411023
8782	KONION AIR FRYER หม้อทอดไร้น้ำมัน 2 ลิตร สีดำ	https://www.tvdirect.tv/konion-air-fryer-2	3990	0112300208380	2016-12-19 20:49:57.210851	2016-12-19 20:49:57.210851
8783	LACOR MULTI COOKER เครื่องทอด อเนกประสงค์	https://www.tvdirect.tv/lacor-multi-cooker	4700	0112400224213	2016-12-19 20:49:59.05143	2016-12-19 20:49:59.05143
8784	Miracle Hot grill กระทะร้อนปิ้งย่าง	https://www.tvdirect.tv/miracle-hot-grill	1490	0122400601318	2016-12-19 20:50:00.873008	2016-12-19 20:50:00.873008
8785	My Home Electric Grills XH-4425 เตาปิ้งย่างบาร์บีคิว	https://www.tvdirect.tv/my-home-electric-grills-xh-4425	1290	0112400224008	2016-12-19 20:50:03.53394	2016-12-19 20:50:03.53394
8786	My Home Suki pots SK-3003 CBR หม้อสุกี้ไฟฟ้าพร้อมซึ้ง	https://www.tvdirect.tv/my-home-suki-pots-sk-3003-cbr	699	0112400224015	2016-12-19 20:50:05.703341	2016-12-19 20:50:05.703341
8787	NEO GRILL เตาปิ้งย่างอเนกประสงค์อินฟราเรด	https://www.tvdirect.tv/neo-grill	2990	0112400223414	2016-12-19 20:50:08.395575	2016-12-19 20:50:08.395575
8788	ORBIT AIR FRYER หม้อทอดไร้น้ำมัน CICADA 3.2 ลิตร	https://www.tvdirect.tv/orbit-air-fryer-cicada-3-2	4950	0112400224473	2016-12-19 20:50:10.336685	2016-12-19 20:50:10.336685
8789	Ronco Ready Grill เครื่องปิ้งย่างอเนกประสงค์	https://www.tvdirect.tv/ronco-ready-grill	1690	0122400601271	2016-12-19 20:50:12.108854	2016-12-19 20:50:12.108854
8790	RUSSELL HOBBS เครื่องปิ่งย่าง รุ่น COMPACT GRILL 18850-56	https://www.tvdirect.tv/russell-hobbs-compact-grill-18850-56	2300	0112400224435	2016-12-19 20:50:13.850341	2016-12-19 20:50:13.850341
8791	Smart Home Electric Pans กระทะไฟฟ้าอเนกประสงค์	https://www.tvdirect.tv/smarthome-electric-pans	799	0112400223926	2016-12-19 20:50:15.582195	2016-12-19 20:50:15.582195
8792	SMART HOME กระทะไฟฟ้าอเนกประสงค์ NH-100A	https://www.tvdirect.tv/smart-home-nh-100a	980	0112400223094	2016-12-19 20:50:17.384727	2016-12-19 20:50:17.384727
8793	SMART HOME หม้อชาบู SP-2001	https://www.tvdirect.tv/smart-home-sp-2001	890	0112400223148	2016-12-19 20:50:19.087477	2016-12-19 20:50:19.087477
8794	Smart Home เตาบาร์บีคิว BBQ	https://www.tvdirect.tv/smart-home-bbq	630	0112400221458	2016-12-19 20:50:20.799039	2016-12-19 20:50:20.799039
8795	SONAR กระทะไฟฟ้า 2 ชั้น SF-A22-เขียว	https://www.tvdirect.tv/sonar-2-sf-a22	810	0112400222943	2016-12-19 20:50:23.904818	2016-12-19 20:50:23.904818
8796	SONAR หม้อต้มอเนกประสงค์มินิ SR-C501	https://www.tvdirect.tv/sonar-sr-c501	790	0112400224107	2016-12-19 20:50:27.625018	2016-12-19 20:50:27.625018
8797	SONAR หม้อสุกี้อเนกประสงค์ 6in1 SR-D811	https://www.tvdirect.tv/sonar-6in1-sr-d811	699	0112400224084	2016-12-19 20:50:29.324033	2016-12-19 20:50:29.324033
8798	SONARหม้อสุกี้บาร์บีคิว SF-M41 -ฟ้า	https://www.tvdirect.tv/sonar-sf-m41	1290	0112400223454	2016-12-19 20:50:31.092331	2016-12-19 20:50:31.092331
8799	Tecno+ หม้อทอดไร้น้ำมัน TNP AF Vesuvius 1300 W	https://www.tvdirect.tv/tecno-tnp-af-vesuvius-1300-w	3990	0112400222509	2016-12-19 20:50:33.611344	2016-12-19 20:50:33.611344
8800	FLAVOR CHEF กระทะไฟฟ้าเคลือบแซฟไฟร์	https://www.tvdirect.tv/flavor-chef	1690	0122400600991	2016-12-19 20:50:35.306478	2016-12-19 20:50:35.306478
8801	HARRY BLACKSTONE GOURMET GRILLเครื่องปิ้งย่างไฟฟ้า	https://www.tvdirect.tv/harry-blackstone-gourmet-grill	990	0122400601325	2016-12-19 20:50:37.061055	2016-12-19 20:50:37.061055
8802	Tepan Smart Pan Premiun Ceramic Coating กระทะเทปันไฟฟ้าเคลือบเซรามิก	https://www.tvdirect.tv/tepan-smart-pan-premiun-ceramic-coating	1490	0122400400072	2016-12-19 20:50:38.759908	2016-12-19 20:50:38.759908
8803	TUTTY FRUITY เครื่องทำไอศครีม	https://www.tvdirect.tv/tutty-fruity	1990	0122400601141	2016-12-19 20:50:41.247442	2016-12-19 20:50:41.247442
8804	Frozen Fruitty Pro เครื่องทำไอศกรีมและสไลด์ผักผลไม้ รุ่น WTF-99E	https://www.tvdirect.tv/frozen-fruitty-pro-wtf-99e	1990	0122400500109	2016-12-19 20:50:42.839336	2016-12-19 20:50:42.839336
8805	Zisha Stew Cooker หม้อตุ๋น ขนาด 3.8 ลิตร รุ่น KSC38-M	https://www.tvdirect.tv/zisha-stew-cooker-3-8-ksc38-m	1990	0122400600014	2016-12-19 20:50:45.400171	2016-12-19 20:50:45.400171
8806	RUSSELL HOBBS DOUGH MIXER เครื่องตีแบบมือถือ รุ่น 18965-56	https://www.tvdirect.tv/russell-hobbs-dough-mixer-18965-56	2300	0112400224466	2016-12-19 20:50:48.135328	2016-12-19 20:50:48.135328
8807	RUSSELL HOBBS DOUGH MIXER เครื่องตีแป้งแบบขาตั้ง รุ่น 21200-56	https://www.tvdirect.tv/russell-hobbs-dough-mixer-21200-56	4350	0112400224459	2016-12-19 20:50:49.781966	2016-12-19 20:50:49.781966
8808	Russell Hobbs เครื่องผสมอาหาร รุ่น 19460-56	https://www.tvdirect.tv/russell-hobbs-19460-56	3000	0112400222240	2016-12-19 20:50:51.501962	2016-12-19 20:50:51.501962
8809	Russell Hobbs เครื่องผสมอาหารมือถือ รุ่น 18960-56	https://www.tvdirect.tv/russell-hobbs-18960-56	1900	0112400222189	2016-12-19 20:50:53.112668	2016-12-19 20:50:53.112668
8810	Russell Hobbsเครื่องปั่นอาหารมือถือ 3 in 1 รุ่น 18980-56	https://www.tvdirect.tv/russell-hobbs-3-in-1-18980-56	2500	0112400222202	2016-12-19 20:50:54.692489	2016-12-19 20:50:54.692489
8811	SOKO เครื่องตีไข่ CK-1188	https://www.tvdirect.tv/soko-ck-1188	1250	0112400223731	2016-12-19 20:50:57.047482	2016-12-19 20:50:57.047482
8812	Miracle Icezy Snowy เครื่องทำน้ำแข็งเกล็ดหิมะ	https://www.tvdirect.tv/miracle-icezy-snowy	1490	0122400601301	2016-12-19 20:50:59.584944	2016-12-19 20:50:59.584944
8813	Smart Home Ice Maker เครื่องทำน้ำแข็งใส SM-ICE80	https://www.tvdirect.tv/smarthome-ice-maker-sm-ice80	890	0112400223933	2016-12-19 20:51:01.123343	2016-12-19 20:51:01.123343
8814	Smart Ice Shaver เครื่องบดน้ำแข็ง	https://www.tvdirect.tv/smart-ice-shaver	1490	0121500300770	2016-12-19 20:51:02.945149	2016-12-19 20:51:02.945149
8815	Yogutto Homemade Yogurt Maker เครื่องทำโยเกิร์ตแบบธรรมชาติ	https://www.tvdirect.tv/yogutto-homemade-yogurt-maker	1899	0112400223762	2016-12-19 20:51:06.20287	2016-12-19 20:51:06.20287
8816	HANABISHI กระทะไฟฟ้า 16SG+เครื่องปั่น508G	https://www.tvdirect.tv/hanabishi-16sg-508g	1290	0112400222813	2016-12-19 20:51:16.382841	2016-12-19 20:51:16.382841
8817	POPCORN MAKER เครื่องทำป๊อปคอร์น	https://www.tvdirect.tv/popcorn-maker-1937	1290	0122400601363	2016-12-19 20:51:20.160765	2016-12-19 20:51:20.160765
8818	SMART HOME หม้อหุงข้าว 1.8L SRC1803	https://www.tvdirect.tv/smart-home-1-8l-src1803	450	0112400223124	2016-12-19 20:51:22.32086	2016-12-19 20:51:22.32086
8819	SMART HOME หม้อหุงข้าว 1.8L SRC1802	https://www.tvdirect.tv/smart-home-1-8l-src1802	630	0112400223131	2016-12-19 20:51:24.320405	2016-12-19 20:51:24.320405
8820	HH SOCIETY Security Camera กล้องวงจรปิด CCTV รุ่น E-CH7004-4 สีดำ	https://www.tvdirect.tv/hh-society-security-camera-cctv-e-ch7004-4	4990	0112500203604	2016-12-19 20:51:36.184356	2016-12-19 20:51:36.184356
8821	Smart Home Electric Grill Model เตาปิ้งย่างไฟฟ้า SM-BBQ02	https://www.tvdirect.tv/smarthome-electric-grill-model-sm-bbq02	1290	0112400223919	2016-12-19 20:51:37.999462	2016-12-19 20:51:37.999462
8822	WATASHI EASY EASY ชุดกล้องวงจรปิด อีซี่ๆ HDCVI - 2 กล้อง	https://www.tvdirect.tv/watashi-easy-easy-hdcvi-2	8888	0112800300010	2016-12-19 20:51:39.747837	2016-12-19 20:51:39.747837
8823	My Home Conventional rice cooker 1.8 L A-705 หม้อหุงข้าวอุ่นทิพย์ 1.8 ลิตร	https://www.tvdirect.tv/my-home-conventional-rice-cooker-1-8-l-a-705-1-8	489	0112400224053	2016-12-19 20:51:41.694251	2016-12-19 20:51:41.694251
8824	WATASHI EASY EASY ชุดกล้องวงจรปิด อีซี่ๆ HDCVI - 4 กล้อง	https://www.tvdirect.tv/watashi-easy-easy-hdcvi-4	14300	0112800300034	2016-12-19 20:51:45.221287	2016-12-19 20:51:45.221287
8825	WATASHI WIFI IP CAMERA กล้องวงจรปิดไร้สาย	https://www.tvdirect.tv/watashi-wifi-ip-camera	3990	0112800300027	2016-12-19 20:51:47.032087	2016-12-19 20:51:47.032087
8826	KONION RICE COOKER หม้อหุงข้าวดิจิตอล GR-1183 สีขาว	https://www.tvdirect.tv/konion-rice-cooker-gr-1183	1990	0112300208397	2016-12-19 20:51:51.069255	2016-12-19 20:51:51.069255
8827	ซองกันน้ำ สีขาว	https://www.tvdirect.tv/waterproof-white	199	0110200300401	2016-12-19 20:52:21.073486	2016-12-19 20:52:21.073486
8828	ซองกันน้ำ สีดำ	https://www.tvdirect.tv/waterproof-black	199	0110200300418	2016-12-19 20:52:22.609318	2016-12-19 20:52:22.609318
8829	iPad Cushion เบาะรองไอแพด	https://www.tvdirect.tv/ipad-cushion	299	0122300601081	2016-12-19 20:52:24.224963	2016-12-19 20:52:24.224963
8830	SI Hold All Organizer กระเป๋าใส่เอกสารส่วนตัว	https://www.tvdirect.tv/si-hold-all-organizer	399	0122500600280	2016-12-19 20:52:25.778993	2016-12-19 20:52:25.778993
8831	REMAX LEATHER BAG 9.4 FOR IPAD AIR2/ IPAD AIR 9.4" กระเป๋า	https://www.tvdirect.tv/remax-leather-bag-9-4-for-ipad-air2-ipad-air-9-4	699	0112500202720	2016-12-19 20:52:27.409931	2016-12-19 20:52:27.409931
8832	ANITECH WIRELESS MOUSE BLACK ไวเลสเมาส์ สีดำ MW211	https://www.tvdirect.tv/anitech-wireless-mouse-mw211-black	329	0112500202850	2016-12-19 20:52:30.961006	2016-12-19 20:52:30.961006
8833	ANITECH WIRELESS MOUSE WHITE ไวเลสเมาส์ สีขาว MW211	https://www.tvdirect.tv/anitech-wireless-mouse-mw211-white	329	0112500202867	2016-12-19 20:52:32.50778	2016-12-19 20:52:32.50778
8834	ANITECH SET KEYBOARD ชุดคีย์บอร์ด และเมาส์ PA800	https://www.tvdirect.tv/anitech-set-keyboard-pa800	329	0112500202874	2016-12-19 20:52:34.136053	2016-12-19 20:52:34.136053
8835	ANITECH ชุดคีย์บอร์ด และเมาส์ไร้สาย P501	https://www.tvdirect.tv/anitech-p501	590	0112500202881	2016-12-19 20:52:35.854727	2016-12-19 20:52:35.854727
8836	ANITECH SPEAKER GREY ลำโพง สีเทา SK219	https://www.tvdirect.tv/anitech-speaker-sk219-grey	319	0112500202904	2016-12-19 20:52:37.457216	2016-12-19 20:52:37.457216
8837	ANITECH SPEAKER PINK ลำโพง สีชมพู SK219	https://www.tvdirect.tv/anitech-speaker-sk219-pink	319	0112500202911	2016-12-19 20:52:39.163522	2016-12-19 20:52:39.163522
8838	ANITECH SPEAKER GREEN ลำโพง สีเขียว SK219	https://www.tvdirect.tv/anitech-speaker-sk219-green	319	0112500202928	2016-12-19 20:52:40.874048	2016-12-19 20:52:40.874048
8839	ANITECH SPEAKER 2.1 ลำโพง SK210	https://www.tvdirect.tv/anitech-speaker-2-1-sk210	529	0112500202935	2016-12-19 20:52:42.699248	2016-12-19 20:52:42.699248
8840	ANITECH BLUETOOTH SPEAKER ลำโพง สีเทา V100	https://www.tvdirect.tv/anitech-bluetooth-speaker-v100	599	0112500202942	2016-12-19 20:52:44.563819	2016-12-19 20:52:44.563819
8841	ANITECH BLUETOOTH SPEAKER ลำโพง สีชมพู V100	https://www.tvdirect.tv/anitech-bluetooth-speaker-v100-2090	599	0112500202959	2016-12-19 20:52:46.384016	2016-12-19 20:52:46.384016
8842	ANITECH BLUETOOTH SPEAKER ลำโพง สีฟ้า V100	https://www.tvdirect.tv/anitech-bluetooth-speaker-v100-2091	599	0112500202966	2016-12-19 20:52:48.155586	2016-12-19 20:52:48.155586
8843	ANITECH BLUETOOTH SPEAKER GREY ลำโพง สีเทา V200	https://www.tvdirect.tv/anitech-bluetooth-speaker-v200-grey	1133	0112500202973	2016-12-19 20:52:49.899591	2016-12-19 20:52:49.899591
8844	ANITECH BLUETOOTH SPEAKER GREEN ลำโพง สีเขียว V200	https://www.tvdirect.tv/anitech-bluetooth-speaker-v200-green	1133	0112500202980	2016-12-19 20:52:51.719507	2016-12-19 20:52:51.719507
8845	ANITECH BLUETOOTH SPEAKER BLUE ลำโพง สีฟ้า V200	https://www.tvdirect.tv/anitech-bluetooth-speaker-v200-blue	1133	0112500202997	2016-12-19 20:52:53.57118	2016-12-19 20:52:53.57118
8846	ANITECH HEADPHONE หูฟัง AK71	https://www.tvdirect.tv/anitech-headphone-ak71	389	0112500203000	2016-12-19 20:52:55.487216	2016-12-19 20:52:55.487216
8847	ANITECH HEADPHONE GREY หูฟัง สีเทา AK58	https://www.tvdirect.tv/anitech-headphone-ak58-grey	339	0112500203017	2016-12-19 20:52:57.376012	2016-12-19 20:52:57.376012
8848	ANITECH HEADPHONE BLUE หูฟัง สีฟ้า AK58	https://www.tvdirect.tv/anitech-headphone-ak58-blue	339	0112500203024	2016-12-19 20:52:59.2712	2016-12-19 20:52:59.2712
8849	ANITECH HEADPHONE PINK หูฟัง สีชมพู AK58	https://www.tvdirect.tv/anitech-headphone-ak58-pink	339	0112500203031	2016-12-19 20:53:03.801699	2016-12-19 20:53:03.801699
8850	ANITECH HEADPHONE BLACK หูฟัง สีดำ AK58	https://www.tvdirect.tv/anitech-headphone-ak58-black	339	0112500203048	2016-12-19 20:53:05.701343	2016-12-19 20:53:05.701343
8851	ANITECH HEADPHONE หูฟัง AK72	https://www.tvdirect.tv/anitech-headphone-ak72	399	0112500203055	2016-12-19 20:53:07.542479	2016-12-19 20:53:07.542479
8852	ANITECH HEADPHONE GREY หูฟัง สีเทา AK73	https://www.tvdirect.tv/anitech-headphone-ak73-grey	299	0112500203079	2016-12-19 20:53:09.352089	2016-12-19 20:53:09.352089
8853	ANITECH HEADPHONE GREEN หูฟัง สีเขียว AK73	https://www.tvdirect.tv/anitech-headphone-ak73-green	299	0112500203062	2016-12-19 20:53:11.227704	2016-12-19 20:53:11.227704
8854	REMAX 4USB TRAVEL CHARGER COL. BLACK อะแดปเตอร์ชาร์จไฟ-ดำ	https://www.tvdirect.tv/remax-4usb-travel-charger-col-black	459	0112500203895	2016-12-19 20:53:12.882126	2016-12-19 20:53:12.882126
8855	REMAX POWER BANK PRODA NOTE COL. BLACK แบตสำรอง-สีดำ	https://www.tvdirect.tv/remax-power-bank-proda-note-col-black	859	0112500203956	2016-12-19 20:53:14.535723	2016-12-19 20:53:14.535723
8856	REMAX POWER BANK PRODA NOTE COL. WHITE แบตสำรอง-สีขาว	https://www.tvdirect.tv/remax-power-bank-proda-note-col-white	859	0112500203871	2016-12-19 20:53:16.156508	2016-12-19 20:53:16.156508
8857	REMAX CAR CHARGERS COL. BLACK หัวชาร์จรถ 3USB สีดำ	https://www.tvdirect.tv/remax-car-chargers-col-black-3usb	359	0112500203857	2016-12-19 20:53:17.760373	2016-12-19 20:53:17.760373
8858	REMAX CAR CHARGERS COL. WHITE หัวชาร์จรถ 3USB สีขาว	https://www.tvdirect.tv/remax-car-chargers-col-white-3usb	359	0112500203840	2016-12-19 20:53:19.383846	2016-12-19 20:53:19.383846
8859	REMAX BLUETOOTH HEADSET COL. WHITE หูฟัง -สีขาว	https://www.tvdirect.tv/remax-bluetooth-headset-col-white	569	0112500203833	2016-12-19 20:53:21.06259	2016-12-19 20:53:21.06259
8860	REMAX BLUETOOTH HEADSET COL. BLACK หูฟัง -สีดำ	https://www.tvdirect.tv/remax-bluetooth-headset-col-black	569	0112500203826	2016-12-19 20:53:22.685884	2016-12-19 20:53:22.685884
8861	REMAX ENJOY CAR STAND COL. BLACK แท่นชาร์จ - สีดำ	https://www.tvdirect.tv/remax-enjoy-car-stand-col-black	299	0112500203789	2016-12-19 20:53:24.296968	2016-12-19 20:53:24.296968
8862	MAX ADAPTER-USB COL. BLACK อะแดปเตอร์ชาร์จไฟ-สีดำ	https://www.tvdirect.tv/max-adapter-usb-col-black	790	0112500203741	2016-12-19 20:53:25.931745	2016-12-19 20:53:25.931745
8863	MAX ADAPTER-USB COL. WHITE อะแดปเตอร์ชาร์จไฟ-สีขาว	https://www.tvdirect.tv/max-adapter-usb-col-white	790	0112500203734	2016-12-19 20:53:29.711917	2016-12-19 20:53:29.711917
8864	MAX POWER BANK แบตสำรอง 10000 MAH	https://www.tvdirect.tv/max-power-bank-10000-mah	799	PowerBank10000Mah	2016-12-19 20:53:31.636938	2016-12-19 20:53:31.636938
8865	REMAX SMALLTALK - RM501 หูฟัง 	https://www.tvdirect.tv/remax-smalltalk-rm501	239	SmalltalkRM501	2016-12-19 20:53:33.476888	2016-12-19 20:53:33.476888
8866	REMAX POWER BANK COOZY COL.แบตสำรอง	https://www.tvdirect.tv/remax-power-bank-coozy-col	799	PowerBankCoozyColor	2016-12-19 20:53:35.474178	2016-12-19 20:53:35.474178
8867	REMAX POWER BANK PRODA JANE COL.  แบตสำรอง	https://www.tvdirect.tv/remax-power-bank-proda-jane-col	759	PowerBankProdaJane	2016-12-19 20:53:38.775745	2016-12-19 20:53:38.775745
8868	NORIBELL 3D SMARTGLASSES Silver แว่นตาสามมิติเสมือนจริง สีเงิน	https://www.tvdirect.tv/noribell-3d-smartglasses-silver	1990	0111200201538	2016-12-19 20:53:40.479224	2016-12-19 20:53:40.479224
8869	NORIBELL 3D SMARTGLASSES Gold แว่นตาสามมิติเสมือนจริง สีทอง	https://www.tvdirect.tv/noribell-3d-smartglasses-gold	1990	0111200201545	2016-12-19 20:53:42.107909	2016-12-19 20:53:42.107909
8870	KINGSTON MICRO SD-เมมโมรี่การ์ด 32G CLASS 10	https://www.tvdirect.tv/kingston-micro-sd-32g-class-10	395	0112500204106	2016-12-19 20:53:43.741393	2016-12-19 20:53:43.741393
8871	FANTASY WIRELESS CHARGER FOR SAMSUNG&IPHONE-WHITE แท่นชาร์จมือถือไร้สายสำหรับซัมซุงและไอโฟน สีขาว	https://www.tvdirect.tv/fantasy-wireless-charger-for-samsung-iphone-white	649	0112500204038	2016-12-19 20:53:45.456957	2016-12-19 20:53:45.456957
8872	FANTASY WIRELESS CHARGER FOR SAMSUNG&IPHONE-BLACK แท่นชาร์จมือถือไร้สายสำหรับซัมซุงและไอโฟน สีดำ	https://www.tvdirect.tv/fantasy-wireless-charger-for-samsung-iphone-black	649	0112500204021	2016-12-19 20:53:47.133348	2016-12-19 20:53:47.133348
8873	REMAX SPK BLUETOOTH RB - M5 BLUE ลำโพงบลูทูธ	https://www.tvdirect.tv/remax-spk-bluetooth-rb-m5-blue	749	0112500202645	2016-12-19 20:53:48.8899	2016-12-19 20:53:48.8899
8874	INTEX Swimming Pool สระสวนสนุกเป่าลม-สไลเดอร์ฮิปโป 57150	https://www.tvdirect.tv/intex-swimming-pool-57150	1390	0111400203097	2016-12-19 20:54:29.548273	2016-12-19 20:54:29.548273
8875	INTEX Swimming Pool สระสวนสนุกเป่าลม-สไลเดอร์ KITTY 57137	https://www.tvdirect.tv/intex-swimming-pool-kitty-57137	1590	0111400203103	2016-12-19 20:54:31.121608	2016-12-19 20:54:31.121608
8876	BIBISWIM BABY SWIM GREEN สระว่ายน้ำและห่วงยางคอ รุ่นBB-EP-02 สีเขียว	https://www.tvdirect.tv/bibiswim-baby-swim-green-bb-ep-02	1690	0112600200725	2016-12-19 20:54:32.636192	2016-12-19 20:54:32.636192
8877	BIBISWIM BABY SWIM PINK สระว่ายน้ำและห่วงยางคอ รุ่นBB-BR-02 สีชมพู	https://www.tvdirect.tv/bibiswim-baby-swim-pink-bb-br-02	1390	0112600200701	2016-12-19 20:54:34.15686	2016-12-19 20:54:34.15686
8878	INTEX Easy Set Inflatable Pool Sky Blue 6 Ft สระน้ำเป่าลม EASY6 มาพร้อมที่สูบลม 6 ฟุต สีฟ้าน้ำทะเล	https://www.tvdirect.tv/intex-easy-set-inflatable-pool-sky-blue-6-ft-easy6-6	1050	0111400203110	2016-12-19 20:54:35.700551	2016-12-19 20:54:35.700551
8879	INTEX Easy Set Inflatable Pool 8 Ft Blue สระน้ำเป่าลม EASY8 มาพร้อมที่สูบลม 8ฟุต สีฟ้า	https://www.tvdirect.tv/intex-easy-set-inflatable-pool-8-ft-blue-easy8-8	1620	0111400203127	2016-12-19 20:54:37.221992	2016-12-19 20:54:37.221992
8880	INTEX Easy Set Inflatable Pool 10 Ft Blue สระน้ำเป่าลม EASY10 มาพร้อมที่สูบลม 10 ฟุต ลายปลา	https://www.tvdirect.tv/intex-easy-set-inflatable-pool-10-ft-blue-easy10-10	2815	0111400203134	2016-12-19 20:54:38.879678	2016-12-19 20:54:38.879678
8881	INTEX Inflatable Pool Beach Wave Blue สระน้ำเป่าลม ทรงคลื่น มาพร้อมที่สูบลม สีฟ้า	https://www.tvdirect.tv/intex-inflatable-pool-beach-wave-blue	1695	0112600200756	2016-12-19 20:54:40.493576	2016-12-19 20:54:40.493576
8882	INTEX Fantasy inflatable water park Blue สวนน้ำสไลเดอร์แฟนตาซี มาพร้อมที่สูบลม สีฟ้า	https://www.tvdirect.tv/intex-fantasy-inflatable-water-park-blue	1990	0111400203141	2016-12-19 20:54:41.990944	2016-12-19 20:54:41.990944
8883	INTEX Inflatable ball home Blue บ้านบอลแมจิเคิล มาพร้อมที่สูบลม สีฟ้า	https://www.tvdirect.tv/intex-inflatable-ball-home-blue	1050	0111400203158	2016-12-19 20:54:43.638986	2016-12-19 20:54:43.638986
8884	INTEX Baby Yim Yellow ยิมหนูน้อยซอฟไซด์ มาพร้อมที่สูบลม สีเหลือง	https://www.tvdirect.tv/intex-baby-yim-yellow	1050	0111400203165	2016-12-19 20:54:45.190677	2016-12-19 20:54:45.190677
8885	MODERN CARE เก้าอี้โยกรุ่นทอยส์ - สีชมพู ตัวเบาะลายจุดพาสเทล (RK0116)	https://www.tvdirect.tv/modern-care-rk0116	1890	0112600200206	2016-12-19 20:54:48.734021	2016-12-19 20:54:48.734021
8886	MODERN CARE รถหัดเดิน 2-in-1 สีฟ้า (WK3011)	https://www.tvdirect.tv/modern-care-wk3011	1390	0112600200213	2016-12-19 20:54:50.316727	2016-12-19 20:54:50.316727
8887	MODERN CARE รถหัดเดิน 2-in-1 สีชมพู (WK3026)	https://www.tvdirect.tv/modern-care-wk3026	1390	0112600200220	2016-12-19 20:54:51.914773	2016-12-19 20:54:51.914773
8888	MODERN CARE รถหัดเดิน 2-in-1 สีเขียว (WK3034)	https://www.tvdirect.tv/modern-care-wk3034	1390	0112600200237	2016-12-19 20:54:53.495032	2016-12-19 20:54:53.495032
8889	MODERN CARE รถหัดเดิน เจ้าปลาน้อย - สีชมพู (WK3046)	https://www.tvdirect.tv/modern-care-wk3046	990	0112600200244	2016-12-19 20:54:55.00799	2016-12-19 20:54:55.00799
8890	MODERN CARE รถหัดเดิน เจ้าปลาน้อย - สีฟ้า  (WK3051)	https://www.tvdirect.tv/modern-care-wk3051	990	0112600200251	2016-12-19 20:54:56.534886	2016-12-19 20:54:56.534886
8891	MODERN CARE รถหัดเดิน ดีลักซ์ 4-in-1 สีชมพู (WK3076)	https://www.tvdirect.tv/modern-care-4in1-wk3076	2490	0112600200268	2016-12-19 20:54:58.110495	2016-12-19 20:54:58.110495
8892	MODERN CARE รถหัดเดิน รุ่นบัดเจ็ท - สีชมพู (WK3146)	https://www.tvdirect.tv/modern-care-wk3146	550	0112600200275	2016-12-19 20:54:59.65643	2016-12-19 20:54:59.65643
8893	MODERN CARE รถหัดเดิน รุ่นบัดเจ็ท - สีเขียว (WK3151)	https://www.tvdirect.tv/modern-care-wk3164	550	0112600200282	2016-12-19 20:55:01.096554	2016-12-19 20:55:01.096554
8894	MODERN CARE รถหัดเดิน รุ่นบัดเจ็ท - สีส้ม (WK3164)	https://www.tvdirect.tv/modern-care-wk3175	550	0112600200299	2016-12-19 20:55:02.877188	2016-12-19 20:55:02.877188
8895	MODERN CARE รถหัดเดิน รุ่นบัดเจ็ท - สีฟ้า (WK3175)	https://www.tvdirect.tv/modern-care-wk3151	550	0112600200305	2016-12-19 20:55:04.694626	2016-12-19 20:55:04.694626
8896	MODERN CARE เครื่องนึ่งขวดนม - สีฟ้า (SZ4061)	https://www.tvdirect.tv/modern-care-sz4061	1190	0112600200312	2016-12-19 20:55:06.400108	2016-12-19 20:55:06.400108
8897	MODERN CARE เครื่องนึ่งขวดนม - สีเขียว (SZ4054)	https://www.tvdirect.tv/modern-care-sz4054	1190	0112600200329	2016-12-19 20:55:08.048191	2016-12-19 20:55:08.048191
8898	MODERN CARE เครื่องนึ่งขวดนมดิจิตอลSZ4071-ฟ้า	https://www.tvdirect.tv/modern-care-sz4071	1590	0112600200336	2016-12-19 20:55:09.653894	2016-12-19 20:55:09.653894
8899	MODERN CAREเครื่องนึ่งขวดนมดิจิตอลSZ4086-ชมพู	https://www.tvdirect.tv/modern-care-sz4086	1590	0112600200343	2016-12-19 20:55:11.092599	2016-12-19 20:55:11.092599
8900	MODERN CAREเครื่องนึ่งพร้อมอบแห้งSZ4041 -ฟ้า	https://www.tvdirect.tv/modern-care-sz4041	2790	0112600200350	2016-12-19 20:55:12.562373	2016-12-19 20:55:12.562373
8901	MODERN CARE รถเข็นเด็กมินิ SL5021-ฟ้า	https://www.tvdirect.tv/modern-care-sl5021	1290	0112600200367	2016-12-19 20:55:14.137591	2016-12-19 20:55:14.137591
8902	MODERN CARE รถเข็นเด็กมินิ SL5017-แดง	https://www.tvdirect.tv/modern-care-sl5017	1290	0112600200374	2016-12-19 20:55:15.682795	2016-12-19 20:55:15.682795
8903	MODERN CARE รถเข็นเด็กมินิทู SL5064 -เขียว	https://www.tvdirect.tv/modern-care-sl5064	1390	0112600200381	2016-12-19 20:55:17.080201	2016-12-19 20:55:17.080201
8904	MODERN CARE รถเข็นเด็กมินิทู SL5057 -แดง	https://www.tvdirect.tv/modern-care-sl5057	1390	0112600200398	2016-12-19 20:55:18.586938	2016-12-19 20:55:18.586938
8905	MODERN CARE รถเข็นเด็กแม๊กซี่ SL5077-แดง	https://www.tvdirect.tv/modern-care-sl5077	1990	0112600200404	2016-12-19 20:55:21.702544	2016-12-19 20:55:21.702544
8906	MODERN CARE รถเข็นเด็กแม๊กซี่ SL5081-ฟ้า	https://www.tvdirect.tv/modern-care-sl5081	1990	0112600200411	2016-12-19 20:55:23.231233	2016-12-19 20:55:23.231233
8907	MODERN CARE รถเข็นเด็ก แฮนดี้ Full Canopy SL5097 -แดง	https://www.tvdirect.tv/modern-care-sl5097	1350	0112600200428	2016-12-19 20:55:24.788917	2016-12-19 20:55:24.788917
8908	MODERN CARE รถเข็นเด็ก แฮนดี้ Full Canopy SL5101 -ฟ้า	https://www.tvdirect.tv/modern-care-sl5101	1350	0112600200435	2016-12-19 20:55:26.389198	2016-12-19 20:55:26.389198
8909	MODERN CARE กระโถนฝึกเด็ก3in1 PT8019 -ม่วง	https://www.tvdirect.tv/modern-care-3in1-pt8019	690	0112600200480	2016-12-19 20:55:27.931105	2016-12-19 20:55:27.931105
8910	MODERN CARE ที่ปั้มนมก้านโยก MP9010 -ขาว	https://www.tvdirect.tv/modern-care-mp9010	550	0112600200497	2016-12-19 20:55:29.499722	2016-12-19 20:55:29.499722
8911	MODERN CARE เครื่องปั้มนมไฟฟ้า EP0902 -ฟ้า	https://www.tvdirect.tv/modern-care-ep-0902	1990	0112600200503	2016-12-19 20:55:30.9744	2016-12-19 20:55:30.9744
8912	MODERN CARE เครื่องปั้มนมไฟฟ้า EP0904 -ขาว	https://www.tvdirect.tv/modern-care-ep-0904	1990	0112600200510	2016-12-19 20:55:32.398239	2016-12-19 20:55:32.398239
8913	BIBISWIM BABY SWIM BLUEสระว่ายน้ำและห่วงยางคอ รุ่นBB-PD-02 สีฟ้า	https://www.tvdirect.tv/bibiswim-baby-swim-blue-bb-pd-02	1690	0112600200718	2016-12-19 20:55:33.966937	2016-12-19 20:55:33.966937
8914	OONEW 5 in1 multi-function baby food cooker ที่นึ่งปั่นอาหารเด็ก	https://www.tvdirect.tv/oonew-5-in1-multi-function-baby-food-cooker	4390	0112400222561	2016-12-19 20:55:40.191233	2016-12-19 20:55:40.191233
8915	Hun Hun เตียงไม้เด็ก ลายหมีสีฟ้า ฟรีชุดเครื่องนอน	https://www.tvdirect.tv/hun-hun-2149	5900	0112600200530	2016-12-19 20:55:44.080648	2016-12-19 20:55:44.080648
8916	MAMYPOKO Tape Extra Dry Size S ผ้าอ้อมสำเร็จรูปแบบเทป ไซส์ S 76 ชิ้น X 3 แพ็ค	https://www.tvdirect.tv/mamypoko-tape-extra-dry-super-jumbo-s-76-x-3	1650	0112600300025	2016-12-19 20:55:45.7348	2016-12-19 20:55:45.7348
8917	MICKEY MOUSE Backpack Bag กระเป๋าเป้ 16นิ้ว MFK-61895	https://www.tvdirect.tv/mickey-mouse-backpack-bag-16-mfk-61895	795	0110200206796	2016-12-19 20:55:47.381437	2016-12-19 20:55:47.381437
8918	MINNIE MOUSE Backpack Bag กระเป๋าเป้ 11นิ้ว MFK-62022	https://www.tvdirect.tv/minnie-mouse-backpack-bag-11-mfk-62022	445	0110200206802	2016-12-19 20:55:48.977996	2016-12-19 20:55:48.977996
8919	MINNIE MOUSE Trolley กระเป๋าล้อลาก 13นิ้ว MFK-62025	https://www.tvdirect.tv/minnie-mouse-trolley-13-mfk-62025	995	0110200206819	2016-12-19 20:55:50.577837	2016-12-19 20:55:50.577837
8920	MICKEY MOUSE Backpack Bag กระเป๋าเป้ 13นิ้ว MFK-61867	https://www.tvdirect.tv/mickey-mouse-backpack-bag-13-mfk-61867	445	0110200206826	2016-12-19 20:55:52.269789	2016-12-19 20:55:52.269789
8921	MINNIE MOUSE Backpack Bag กระเป๋าเป้ 13นิ้ว MFK-61868	https://www.tvdirect.tv/minnie-mouse-backpack-bag-13-mfk-61868	445	0110200206833	2016-12-19 20:55:53.900171	2016-12-19 20:55:53.900171
8922	Tutor Pen ปากกาอัจฉริยะ แถมฟรี! นิทานคลาสสิค แผ่นดนตรี การ์ดคำศัพท์	https://www.tvdirect.tv/tutor-pen	2990	0111300201056	2016-12-19 20:55:57.341706	2016-12-19 20:55:57.341706
8923	MAMYPOKO Pants Extra Soft Girls Size XXL ผ้าอ้อมสำเร็จรูปแบบกางเกง ไซส์ XXL 38 ชิ้น X 3 แพ็ค	https://www.tvdirect.tv/mamypoko-pants-extra-soft-girls-super-jumbo-xxl-38-x-3	1450	0112600300146	2016-12-19 20:55:59.164544	2016-12-19 20:55:59.164544
8924	MAMYPOKO Pants Extra Soft Boys Size L ผ้าอ้อมสำเร็จรูปแบบกางเกง ไซส์ L 52 ชิ้น X 3 แพ็ค	https://www.tvdirect.tv/mamypoko-pants-extra-soft-boys-super-jumbo-l-52-x-3	1450	0112600300087	2016-12-19 20:56:00.778933	2016-12-19 20:56:00.778933
8925	SLIM'N LIFT INFUSED  กางเกงกระชับสัดส่วนและลดเซลลูไลท์	https://www.tvdirect.tv/slim-n-lift-infused	990	SLIM N LIFT INFUSED	2016-12-19 20:56:34.231264	2016-12-19 20:56:34.231264
\.


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('products_id_seq', 8925, true);


--
-- Data for Name: relations; Type: TABLE DATA; Schema: public; Owner: user
--

COPY relations (id, product_id, category_id, created_at, updated_at) FROM stdin;
31842	7351	2179	2016-12-19 19:58:57.548393	2016-12-19 19:58:57.548393
31843	7352	2179	2016-12-19 19:58:58.328443	2016-12-19 19:58:58.328443
31844	7353	2179	2016-12-19 19:58:59.120814	2016-12-19 19:58:59.120814
31845	7354	2179	2016-12-19 19:58:59.956501	2016-12-19 19:58:59.956501
31846	7355	2179	2016-12-19 19:59:02.329618	2016-12-19 19:59:02.329618
31847	7356	2179	2016-12-19 19:59:03.843883	2016-12-19 19:59:03.843883
31848	7357	2179	2016-12-19 19:59:04.614289	2016-12-19 19:59:04.614289
31849	7358	2179	2016-12-19 19:59:05.384912	2016-12-19 19:59:05.384912
31850	7359	2179	2016-12-19 19:59:06.198731	2016-12-19 19:59:06.198731
31851	7360	2179	2016-12-19 19:59:07.057585	2016-12-19 19:59:07.057585
31852	7361	2179	2016-12-19 19:59:07.87527	2016-12-19 19:59:07.87527
31853	7362	2179	2016-12-19 19:59:08.65388	2016-12-19 19:59:08.65388
31854	7363	2179	2016-12-19 19:59:09.449013	2016-12-19 19:59:09.449013
31855	7364	2179	2016-12-19 19:59:10.183504	2016-12-19 19:59:10.183504
31856	7365	2179	2016-12-19 19:59:11.03106	2016-12-19 19:59:11.03106
31857	7366	2179	2016-12-19 19:59:11.857101	2016-12-19 19:59:11.857101
31858	7367	2179	2016-12-19 19:59:12.82893	2016-12-19 19:59:12.82893
31859	7368	2179	2016-12-19 19:59:13.584503	2016-12-19 19:59:13.584503
31860	7369	2179	2016-12-19 19:59:14.427118	2016-12-19 19:59:14.427118
31861	7370	2179	2016-12-19 19:59:15.292057	2016-12-19 19:59:15.292057
31862	7371	2179	2016-12-19 19:59:16.083961	2016-12-19 19:59:16.083961
31863	7372	2179	2016-12-19 19:59:16.952505	2016-12-19 19:59:16.952505
31864	7373	2179	2016-12-19 19:59:17.700212	2016-12-19 19:59:17.700212
31865	7374	2179	2016-12-19 19:59:18.526031	2016-12-19 19:59:18.526031
31866	7375	2179	2016-12-19 19:59:20.310937	2016-12-19 19:59:20.310937
31867	7376	2179	2016-12-19 19:59:21.024527	2016-12-19 19:59:21.024527
31868	7377	2179	2016-12-19 19:59:21.839677	2016-12-19 19:59:21.839677
31869	7378	2182	2016-12-19 19:59:24.338141	2016-12-19 19:59:24.338141
31870	7379	2182	2016-12-19 19:59:25.324779	2016-12-19 19:59:25.324779
31871	7380	2182	2016-12-19 19:59:26.099686	2016-12-19 19:59:26.099686
31872	7381	2182	2016-12-19 19:59:26.959497	2016-12-19 19:59:26.959497
31873	7382	2182	2016-12-19 19:59:27.728855	2016-12-19 19:59:27.728855
31874	7383	2182	2016-12-19 19:59:29.634821	2016-12-19 19:59:29.634821
31875	7384	2182	2016-12-19 19:59:30.39144	2016-12-19 19:59:30.39144
31876	7385	2182	2016-12-19 19:59:31.141361	2016-12-19 19:59:31.141361
31877	7386	2182	2016-12-19 19:59:31.899197	2016-12-19 19:59:31.899197
31878	7387	2182	2016-12-19 19:59:32.703098	2016-12-19 19:59:32.703098
31879	7388	2182	2016-12-19 19:59:33.574245	2016-12-19 19:59:33.574245
31880	7389	2182	2016-12-19 19:59:34.306567	2016-12-19 19:59:34.306567
31881	7390	2182	2016-12-19 19:59:36.33585	2016-12-19 19:59:36.33585
31882	7391	2182	2016-12-19 19:59:37.105291	2016-12-19 19:59:37.105291
31883	7392	2182	2016-12-19 19:59:37.898618	2016-12-19 19:59:37.898618
31884	7393	2182	2016-12-19 19:59:38.691861	2016-12-19 19:59:38.691861
31885	7394	2182	2016-12-19 19:59:41.368029	2016-12-19 19:59:41.368029
31886	7395	2182	2016-12-19 19:59:42.079247	2016-12-19 19:59:42.079247
31887	7396	2182	2016-12-19 19:59:42.772713	2016-12-19 19:59:42.772713
31888	7397	2182	2016-12-19 19:59:44.617036	2016-12-19 19:59:44.617036
31889	7398	2182	2016-12-19 19:59:47.510523	2016-12-19 19:59:47.510523
31890	7399	2182	2016-12-19 19:59:49.124975	2016-12-19 19:59:49.124975
31891	7400	2182	2016-12-19 19:59:50.88582	2016-12-19 19:59:50.88582
31892	7401	2182	2016-12-19 19:59:52.967175	2016-12-19 19:59:52.967175
31893	7402	2182	2016-12-19 19:59:54.76348	2016-12-19 19:59:54.76348
31894	7378	2181	2016-12-19 19:59:56.68456	2016-12-19 19:59:56.68456
31895	7379	2181	2016-12-19 19:59:56.711958	2016-12-19 19:59:56.711958
31896	7403	2181	2016-12-19 19:59:57.468748	2016-12-19 19:59:57.468748
31897	7380	2181	2016-12-19 19:59:57.483678	2016-12-19 19:59:57.483678
31898	7381	2181	2016-12-19 19:59:57.499336	2016-12-19 19:59:57.499336
31899	7382	2181	2016-12-19 19:59:57.521748	2016-12-19 19:59:57.521748
31900	7404	2181	2016-12-19 19:59:58.441164	2016-12-19 19:59:58.441164
31901	7383	2181	2016-12-19 19:59:58.454516	2016-12-19 19:59:58.454516
31902	7405	2181	2016-12-19 20:00:00.353713	2016-12-19 20:00:00.353713
31903	7406	2181	2016-12-19 20:00:01.118162	2016-12-19 20:00:01.118162
31904	7384	2181	2016-12-19 20:00:01.141088	2016-12-19 20:00:01.141088
31905	7407	2181	2016-12-19 20:00:05.354796	2016-12-19 20:00:05.354796
31906	7408	2181	2016-12-19 20:00:07.916118	2016-12-19 20:00:07.916118
31907	7385	2181	2016-12-19 20:00:07.928743	2016-12-19 20:00:07.928743
31908	7386	2181	2016-12-19 20:00:07.949176	2016-12-19 20:00:07.949176
31909	7387	2181	2016-12-19 20:00:07.964971	2016-12-19 20:00:07.964971
31910	7388	2181	2016-12-19 20:00:07.981186	2016-12-19 20:00:07.981186
31911	7389	2181	2016-12-19 20:00:08.001253	2016-12-19 20:00:08.001253
31912	7409	2181	2016-12-19 20:00:08.928602	2016-12-19 20:00:08.928602
31913	7410	2181	2016-12-19 20:00:09.897586	2016-12-19 20:00:09.897586
31914	7390	2181	2016-12-19 20:00:12.217659	2016-12-19 20:00:12.217659
31915	7411	2181	2016-12-19 20:00:14.696829	2016-12-19 20:00:14.696829
31916	7412	2181	2016-12-19 20:00:17.052302	2016-12-19 20:00:17.052302
31917	7413	2181	2016-12-19 20:00:19.26462	2016-12-19 20:00:19.26462
31918	7391	2181	2016-12-19 20:00:19.275191	2016-12-19 20:00:19.275191
31919	7392	2181	2016-12-19 20:00:19.291097	2016-12-19 20:00:19.291097
31920	7393	2181	2016-12-19 20:00:19.307746	2016-12-19 20:00:19.307746
31921	7394	2181	2016-12-19 20:00:19.331132	2016-12-19 20:00:19.331132
31922	7395	2181	2016-12-19 20:00:19.342539	2016-12-19 20:00:19.342539
31923	7396	2181	2016-12-19 20:00:19.363298	2016-12-19 20:00:19.363298
31924	7414	2181	2016-12-19 20:00:21.346644	2016-12-19 20:00:21.346644
31925	7415	2181	2016-12-19 20:00:23.051389	2016-12-19 20:00:23.051389
31926	7416	2181	2016-12-19 20:00:25.090572	2016-12-19 20:00:25.090572
31927	7417	2181	2016-12-19 20:00:26.971416	2016-12-19 20:00:26.971416
31928	7418	2181	2016-12-19 20:00:28.997705	2016-12-19 20:00:28.997705
31929	7419	2181	2016-12-19 20:00:30.722709	2016-12-19 20:00:30.722709
31930	7420	2181	2016-12-19 20:00:32.582726	2016-12-19 20:00:32.582726
31931	7421	2181	2016-12-19 20:00:34.702337	2016-12-19 20:00:34.702337
31932	7422	2181	2016-12-19 20:00:36.886117	2016-12-19 20:00:36.886117
31933	7423	2181	2016-12-19 20:00:37.788262	2016-12-19 20:00:37.788262
31934	7424	2181	2016-12-19 20:00:40.628681	2016-12-19 20:00:40.628681
31935	7425	2181	2016-12-19 20:00:42.597976	2016-12-19 20:00:42.597976
31936	7426	2181	2016-12-19 20:00:44.678077	2016-12-19 20:00:44.678077
31937	7427	2181	2016-12-19 20:00:46.628507	2016-12-19 20:00:46.628507
31938	7428	2181	2016-12-19 20:00:48.773843	2016-12-19 20:00:48.773843
31939	7429	2181	2016-12-19 20:00:50.351424	2016-12-19 20:00:50.351424
31940	7430	2181	2016-12-19 20:00:52.257486	2016-12-19 20:00:52.257486
31941	7397	2181	2016-12-19 20:00:52.276141	2016-12-19 20:00:52.276141
31942	7431	2181	2016-12-19 20:00:53.090026	2016-12-19 20:00:53.090026
31943	7432	2181	2016-12-19 20:00:53.874057	2016-12-19 20:00:53.874057
31944	7433	2181	2016-12-19 20:00:54.708724	2016-12-19 20:00:54.708724
31945	7377	2181	2016-12-19 20:00:54.725776	2016-12-19 20:00:54.725776
31946	7376	2181	2016-12-19 20:00:54.740082	2016-12-19 20:00:54.740082
31947	7375	2181	2016-12-19 20:00:54.759512	2016-12-19 20:00:54.759512
31948	7398	2181	2016-12-19 20:00:54.777408	2016-12-19 20:00:54.777408
31949	7399	2181	2016-12-19 20:00:54.799069	2016-12-19 20:00:54.799069
31950	7400	2181	2016-12-19 20:00:54.815361	2016-12-19 20:00:54.815361
31951	7401	2181	2016-12-19 20:00:54.835727	2016-12-19 20:00:54.835727
31952	7402	2181	2016-12-19 20:00:54.853857	2016-12-19 20:00:54.853857
31953	7403	2183	2016-12-19 20:00:56.59168	2016-12-19 20:00:56.59168
31954	7404	2183	2016-12-19 20:00:56.660207	2016-12-19 20:00:56.660207
31955	7409	2183	2016-12-19 20:00:56.683722	2016-12-19 20:00:56.683722
31956	7410	2183	2016-12-19 20:00:56.703133	2016-12-19 20:00:56.703133
31957	7415	2183	2016-12-19 20:00:56.726979	2016-12-19 20:00:56.726979
31958	7423	2183	2016-12-19 20:00:56.750944	2016-12-19 20:00:56.750944
31959	7424	2183	2016-12-19 20:00:56.77761	2016-12-19 20:00:56.77761
31960	7425	2183	2016-12-19 20:00:56.802055	2016-12-19 20:00:56.802055
31961	7426	2183	2016-12-19 20:00:56.82067	2016-12-19 20:00:56.82067
31962	7427	2183	2016-12-19 20:00:56.839717	2016-12-19 20:00:56.839717
31963	7428	2183	2016-12-19 20:00:56.866636	2016-12-19 20:00:56.866636
31964	7429	2183	2016-12-19 20:00:56.884623	2016-12-19 20:00:56.884623
31965	7430	2183	2016-12-19 20:00:56.904706	2016-12-19 20:00:56.904706
31966	7431	2183	2016-12-19 20:00:56.925433	2016-12-19 20:00:56.925433
31967	7432	2183	2016-12-19 20:00:56.942166	2016-12-19 20:00:56.942166
31968	7433	2183	2016-12-19 20:00:56.963591	2016-12-19 20:00:56.963591
31969	7376	2183	2016-12-19 20:00:56.978129	2016-12-19 20:00:56.978129
31970	7375	2183	2016-12-19 20:00:57.006249	2016-12-19 20:00:57.006249
31971	7434	2184	2016-12-19 20:01:00.410763	2016-12-19 20:01:00.410763
31972	7435	2184	2016-12-19 20:01:02.501519	2016-12-19 20:01:02.501519
31973	7436	2184	2016-12-19 20:01:04.33909	2016-12-19 20:01:04.33909
31974	7437	2184	2016-12-19 20:01:06.187674	2016-12-19 20:01:06.187674
31975	7438	2184	2016-12-19 20:01:07.90476	2016-12-19 20:01:07.90476
31976	7439	2184	2016-12-19 20:01:11.616955	2016-12-19 20:01:11.616955
31977	7440	2184	2016-12-19 20:01:13.277444	2016-12-19 20:01:13.277444
31978	7441	2184	2016-12-19 20:01:14.895336	2016-12-19 20:01:14.895336
31979	7422	2184	2016-12-19 20:01:14.910174	2016-12-19 20:01:14.910174
31980	7398	2184	2016-12-19 20:01:14.921547	2016-12-19 20:01:14.921547
31981	7374	2187	2016-12-19 20:01:17.048678	2016-12-19 20:01:17.048678
31982	7374	2185	2016-12-19 20:01:18.142543	2016-12-19 20:01:18.142543
31983	7442	2185	2016-12-19 20:01:19.634496	2016-12-19 20:01:19.634496
31984	7443	2185	2016-12-19 20:01:21.268571	2016-12-19 20:01:21.268571
31985	7443	2188	2016-12-19 20:01:22.319261	2016-12-19 20:01:22.319261
31986	7442	2188	2016-12-19 20:01:22.380625	2016-12-19 20:01:22.380625
31987	7444	2190	2016-12-19 20:01:24.881313	2016-12-19 20:01:24.881313
31988	7445	2191	2016-12-19 20:01:27.85607	2016-12-19 20:01:27.85607
31989	7355	2191	2016-12-19 20:01:27.870573	2016-12-19 20:01:27.870573
31990	7446	2191	2016-12-19 20:01:29.371699	2016-12-19 20:01:29.371699
31991	7447	2191	2016-12-19 20:01:30.981296	2016-12-19 20:01:30.981296
31992	7359	2191	2016-12-19 20:01:30.997228	2016-12-19 20:01:30.997228
31993	7448	2191	2016-12-19 20:01:31.859353	2016-12-19 20:01:31.859353
31994	7449	2192	2016-12-19 20:01:34.621647	2016-12-19 20:01:34.621647
31995	7351	2192	2016-12-19 20:01:34.632111	2016-12-19 20:01:34.632111
31996	7450	2192	2016-12-19 20:01:35.496067	2016-12-19 20:01:35.496067
31997	7451	2192	2016-12-19 20:01:37.208636	2016-12-19 20:01:37.208636
31998	7452	2192	2016-12-19 20:01:38.838247	2016-12-19 20:01:38.838247
31999	7453	2192	2016-12-19 20:01:40.478755	2016-12-19 20:01:40.478755
32000	7454	2192	2016-12-19 20:01:42.007531	2016-12-19 20:01:42.007531
32001	7455	2192	2016-12-19 20:01:43.702595	2016-12-19 20:01:43.702595
32002	7456	2192	2016-12-19 20:01:45.298605	2016-12-19 20:01:45.298605
32003	7457	2192	2016-12-19 20:01:46.732423	2016-12-19 20:01:46.732423
32004	7458	2192	2016-12-19 20:01:48.566156	2016-12-19 20:01:48.566156
32005	7459	2192	2016-12-19 20:01:49.335337	2016-12-19 20:01:49.335337
32006	7460	2192	2016-12-19 20:01:50.2295	2016-12-19 20:01:50.2295
32007	7461	2192	2016-12-19 20:01:51.099627	2016-12-19 20:01:51.099627
32008	7462	2192	2016-12-19 20:01:52.618781	2016-12-19 20:01:52.618781
32009	7351	2189	2016-12-19 20:01:54.467742	2016-12-19 20:01:54.467742
32010	7365	2189	2016-12-19 20:01:54.54285	2016-12-19 20:01:54.54285
32011	7463	2189	2016-12-19 20:01:56.736726	2016-12-19 20:01:56.736726
32012	7464	2189	2016-12-19 20:01:58.365187	2016-12-19 20:01:58.365187
32013	7453	2189	2016-12-19 20:01:58.375199	2016-12-19 20:01:58.375199
32014	7452	2189	2016-12-19 20:01:58.39101	2016-12-19 20:01:58.39101
32015	7465	2189	2016-12-19 20:02:00.089631	2016-12-19 20:02:00.089631
32016	7454	2189	2016-12-19 20:02:00.102979	2016-12-19 20:02:00.102979
32017	7451	2189	2016-12-19 20:02:00.12764	2016-12-19 20:02:00.12764
32018	7456	2189	2016-12-19 20:02:00.145732	2016-12-19 20:02:00.145732
32019	7455	2189	2016-12-19 20:02:00.174641	2016-12-19 20:02:00.174641
32020	7359	2189	2016-12-19 20:02:00.184506	2016-12-19 20:02:00.184506
32021	7458	2189	2016-12-19 20:02:00.203076	2016-12-19 20:02:00.203076
32022	7457	2189	2016-12-19 20:02:00.220879	2016-12-19 20:02:00.220879
32023	7466	2189	2016-12-19 20:02:02.084994	2016-12-19 20:02:02.084994
32024	7467	2189	2016-12-19 20:02:03.924042	2016-12-19 20:02:03.924042
32025	7468	2189	2016-12-19 20:02:05.844433	2016-12-19 20:02:05.844433
32026	7469	2189	2016-12-19 20:02:07.578369	2016-12-19 20:02:07.578369
32027	7470	2189	2016-12-19 20:02:09.33023	2016-12-19 20:02:09.33023
32028	7448	2189	2016-12-19 20:02:09.354859	2016-12-19 20:02:09.354859
32029	7471	2189	2016-12-19 20:02:13.809648	2016-12-19 20:02:13.809648
32030	7450	2189	2016-12-19 20:02:13.819481	2016-12-19 20:02:13.819481
32031	7472	2189	2016-12-19 20:02:15.431812	2016-12-19 20:02:15.431812
32032	7473	2189	2016-12-19 20:02:17.089097	2016-12-19 20:02:17.089097
32033	7474	2189	2016-12-19 20:02:18.663883	2016-12-19 20:02:18.663883
32034	7475	2189	2016-12-19 20:02:20.296964	2016-12-19 20:02:20.296964
32035	7476	2189	2016-12-19 20:02:22.032048	2016-12-19 20:02:22.032048
32036	7477	2189	2016-12-19 20:02:23.628038	2016-12-19 20:02:23.628038
32037	7478	2189	2016-12-19 20:02:25.283648	2016-12-19 20:02:25.283648
32038	7479	2189	2016-12-19 20:02:26.919212	2016-12-19 20:02:26.919212
32039	7480	2189	2016-12-19 20:02:28.652661	2016-12-19 20:02:28.652661
32040	7481	2189	2016-12-19 20:02:30.387118	2016-12-19 20:02:30.387118
32041	7482	2189	2016-12-19 20:02:32.137188	2016-12-19 20:02:32.137188
32042	7483	2189	2016-12-19 20:02:33.881029	2016-12-19 20:02:33.881029
32043	7484	2189	2016-12-19 20:02:35.70104	2016-12-19 20:02:35.70104
32044	7445	2189	2016-12-19 20:02:35.718682	2016-12-19 20:02:35.718682
32045	7449	2189	2016-12-19 20:02:35.733594	2016-12-19 20:02:35.733594
32046	7485	2189	2016-12-19 20:02:37.554568	2016-12-19 20:02:37.554568
32047	7486	2189	2016-12-19 20:02:39.213283	2016-12-19 20:02:39.213283
32048	7446	2189	2016-12-19 20:02:39.229562	2016-12-19 20:02:39.229562
32049	7447	2189	2016-12-19 20:02:41.151633	2016-12-19 20:02:41.151633
32050	7487	2189	2016-12-19 20:02:42.903576	2016-12-19 20:02:42.903576
32051	7488	2189	2016-12-19 20:02:44.757559	2016-12-19 20:02:44.757559
32052	7462	2189	2016-12-19 20:02:44.777785	2016-12-19 20:02:44.777785
32053	7355	2189	2016-12-19 20:02:44.788832	2016-12-19 20:02:44.788832
32054	7460	2189	2016-12-19 20:02:44.81348	2016-12-19 20:02:44.81348
32055	7459	2189	2016-12-19 20:02:44.834441	2016-12-19 20:02:44.834441
32056	7461	2189	2016-12-19 20:02:44.854048	2016-12-19 20:02:44.854048
32057	7489	2189	2016-12-19 20:02:46.591165	2016-12-19 20:02:46.591165
32058	7490	2189	2016-12-19 20:02:48.40129	2016-12-19 20:02:48.40129
32059	7491	2189	2016-12-19 20:02:50.13492	2016-12-19 20:02:50.13492
32060	7444	2189	2016-12-19 20:02:50.147984	2016-12-19 20:02:50.147984
32061	7442	2189	2016-12-19 20:02:50.173452	2016-12-19 20:02:50.173452
32062	7463	2193	2016-12-19 20:02:51.238484	2016-12-19 20:02:51.238484
32063	7491	2193	2016-12-19 20:02:51.294058	2016-12-19 20:02:51.294058
32064	7378	2180	2016-12-19 20:02:53.126334	2016-12-19 20:02:53.126334
32065	7351	2180	2016-12-19 20:02:53.189975	2016-12-19 20:02:53.189975
32066	7379	2180	2016-12-19 20:02:53.214373	2016-12-19 20:02:53.214373
32067	7403	2180	2016-12-19 20:02:53.223377	2016-12-19 20:02:53.223377
32068	7380	2180	2016-12-19 20:02:53.24457	2016-12-19 20:02:53.24457
32069	7381	2180	2016-12-19 20:02:53.2594	2016-12-19 20:02:53.2594
32070	7382	2180	2016-12-19 20:02:53.285672	2016-12-19 20:02:53.285672
32071	7404	2180	2016-12-19 20:02:53.296612	2016-12-19 20:02:53.296612
32072	7383	2180	2016-12-19 20:02:53.311417	2016-12-19 20:02:53.311417
32073	7405	2180	2016-12-19 20:02:53.329119	2016-12-19 20:02:53.329119
32074	7406	2180	2016-12-19 20:02:53.347954	2016-12-19 20:02:53.347954
32075	7384	2180	2016-12-19 20:02:53.367089	2016-12-19 20:02:53.367089
32076	7407	2180	2016-12-19 20:02:53.376352	2016-12-19 20:02:53.376352
32077	7408	2180	2016-12-19 20:02:53.387004	2016-12-19 20:02:53.387004
32078	7385	2180	2016-12-19 20:02:53.403788	2016-12-19 20:02:53.403788
32079	7386	2180	2016-12-19 20:02:53.423602	2016-12-19 20:02:53.423602
32080	7387	2180	2016-12-19 20:02:53.437981	2016-12-19 20:02:53.437981
32081	7388	2180	2016-12-19 20:02:53.45844	2016-12-19 20:02:53.45844
32082	7389	2180	2016-12-19 20:02:53.473434	2016-12-19 20:02:53.473434
32083	7409	2180	2016-12-19 20:02:53.493187	2016-12-19 20:02:53.493187
32084	7410	2180	2016-12-19 20:02:55.418299	2016-12-19 20:02:55.418299
32085	7390	2180	2016-12-19 20:02:55.446704	2016-12-19 20:02:55.446704
32086	7391	2180	2016-12-19 20:02:55.465475	2016-12-19 20:02:55.465475
32087	7392	2180	2016-12-19 20:02:55.485344	2016-12-19 20:02:55.485344
32088	7393	2180	2016-12-19 20:02:55.518117	2016-12-19 20:02:55.518117
32089	7394	2180	2016-12-19 20:02:55.540964	2016-12-19 20:02:55.540964
32090	7395	2180	2016-12-19 20:02:55.566296	2016-12-19 20:02:55.566296
32091	7396	2180	2016-12-19 20:02:55.594341	2016-12-19 20:02:55.594341
32092	7414	2180	2016-12-19 20:02:55.621698	2016-12-19 20:02:55.621698
32093	7416	2180	2016-12-19 20:02:55.642657	2016-12-19 20:02:55.642657
32094	7422	2180	2016-12-19 20:02:55.675338	2016-12-19 20:02:55.675338
32095	7434	2180	2016-12-19 20:02:55.686764	2016-12-19 20:02:55.686764
32096	7435	2180	2016-12-19 20:02:55.702649	2016-12-19 20:02:55.702649
32097	7436	2180	2016-12-19 20:02:55.720504	2016-12-19 20:02:55.720504
32098	7437	2180	2016-12-19 20:02:55.738515	2016-12-19 20:02:55.738515
32099	7438	2180	2016-12-19 20:02:55.762192	2016-12-19 20:02:55.762192
32100	7439	2180	2016-12-19 20:02:55.781389	2016-12-19 20:02:55.781389
32101	7440	2180	2016-12-19 20:02:55.80088	2016-12-19 20:02:55.80088
32102	7441	2180	2016-12-19 20:02:55.820346	2016-12-19 20:02:55.820346
32103	7359	2180	2016-12-19 20:02:55.840081	2016-12-19 20:02:55.840081
32104	7453	2180	2016-12-19 20:02:57.571085	2016-12-19 20:02:57.571085
32105	7452	2180	2016-12-19 20:02:57.627368	2016-12-19 20:02:57.627368
32106	7454	2180	2016-12-19 20:02:57.647626	2016-12-19 20:02:57.647626
32107	7451	2180	2016-12-19 20:02:57.665465	2016-12-19 20:02:57.665465
32108	7456	2180	2016-12-19 20:02:57.685996	2016-12-19 20:02:57.685996
32109	7455	2180	2016-12-19 20:02:57.707357	2016-12-19 20:02:57.707357
32110	7458	2180	2016-12-19 20:02:57.721814	2016-12-19 20:02:57.721814
32111	7457	2180	2016-12-19 20:02:57.749649	2016-12-19 20:02:57.749649
32112	7450	2180	2016-12-19 20:02:57.774527	2016-12-19 20:02:57.774527
32113	7365	2180	2016-12-19 20:02:57.7858	2016-12-19 20:02:57.7858
32114	7463	2180	2016-12-19 20:02:57.799381	2016-12-19 20:02:57.799381
32115	7464	2180	2016-12-19 20:02:57.825091	2016-12-19 20:02:57.825091
32116	7465	2180	2016-12-19 20:02:57.852606	2016-12-19 20:02:57.852606
32117	7466	2180	2016-12-19 20:02:57.863242	2016-12-19 20:02:57.863242
32118	7467	2180	2016-12-19 20:02:57.893093	2016-12-19 20:02:57.893093
32119	7468	2180	2016-12-19 20:02:57.90984	2016-12-19 20:02:57.90984
32120	7469	2180	2016-12-19 20:02:57.929152	2016-12-19 20:02:57.929152
32121	7470	2180	2016-12-19 20:02:57.947773	2016-12-19 20:02:57.947773
32122	7471	2180	2016-12-19 20:02:57.966438	2016-12-19 20:02:57.966438
32123	7472	2180	2016-12-19 20:02:57.982967	2016-12-19 20:02:57.982967
32124	7473	2180	2016-12-19 20:02:59.975744	2016-12-19 20:02:59.975744
32125	7474	2180	2016-12-19 20:03:00.046321	2016-12-19 20:03:00.046321
32126	7475	2180	2016-12-19 20:03:00.058084	2016-12-19 20:03:00.058084
32127	7476	2180	2016-12-19 20:03:00.086463	2016-12-19 20:03:00.086463
32128	7477	2180	2016-12-19 20:03:00.099008	2016-12-19 20:03:00.099008
32129	7478	2180	2016-12-19 20:03:00.126733	2016-12-19 20:03:00.126733
32130	7479	2180	2016-12-19 20:03:00.144995	2016-12-19 20:03:00.144995
32131	7480	2180	2016-12-19 20:03:00.163385	2016-12-19 20:03:00.163385
32132	7481	2180	2016-12-19 20:03:00.178037	2016-12-19 20:03:00.178037
32133	7423	2180	2016-12-19 20:03:00.204324	2016-12-19 20:03:00.204324
32134	7424	2180	2016-12-19 20:03:00.214794	2016-12-19 20:03:00.214794
32135	7492	2180	2016-12-19 20:03:00.939312	2016-12-19 20:03:00.939312
32136	7493	2180	2016-12-19 20:03:01.803024	2016-12-19 20:03:01.803024
32137	7494	2180	2016-12-19 20:03:03.70986	2016-12-19 20:03:03.70986
32138	7495	2180	2016-12-19 20:03:06.741675	2016-12-19 20:03:06.741675
32139	7411	2180	2016-12-19 20:03:06.761188	2016-12-19 20:03:06.761188
32140	7412	2180	2016-12-19 20:03:06.781931	2016-12-19 20:03:06.781931
32141	7413	2180	2016-12-19 20:03:06.802324	2016-12-19 20:03:06.802324
32142	7415	2180	2016-12-19 20:03:06.820611	2016-12-19 20:03:06.820611
32143	7417	2180	2016-12-19 20:03:06.836791	2016-12-19 20:03:06.836791
32144	7418	2180	2016-12-19 20:03:08.968393	2016-12-19 20:03:08.968393
32145	7419	2180	2016-12-19 20:03:09.033045	2016-12-19 20:03:09.033045
32146	7420	2180	2016-12-19 20:03:09.048423	2016-12-19 20:03:09.048423
32147	7421	2180	2016-12-19 20:03:09.068076	2016-12-19 20:03:09.068076
32148	7496	2180	2016-12-19 20:03:11.096579	2016-12-19 20:03:11.096579
32149	7448	2180	2016-12-19 20:03:11.11245	2016-12-19 20:03:11.11245
32150	7358	2180	2016-12-19 20:03:11.141983	2016-12-19 20:03:11.141983
32151	7482	2180	2016-12-19 20:03:11.162831	2016-12-19 20:03:11.162831
32152	7483	2180	2016-12-19 20:03:11.182482	2016-12-19 20:03:11.182482
32153	7484	2180	2016-12-19 20:03:11.205105	2016-12-19 20:03:11.205105
32154	7445	2180	2016-12-19 20:03:11.219969	2016-12-19 20:03:11.219969
32155	7497	2180	2016-12-19 20:03:13.097468	2016-12-19 20:03:13.097468
32156	7498	2180	2016-12-19 20:03:14.874754	2016-12-19 20:03:14.874754
32157	7425	2180	2016-12-19 20:03:14.890181	2016-12-19 20:03:14.890181
32158	7426	2180	2016-12-19 20:03:14.902697	2016-12-19 20:03:14.902697
32159	7499	2180	2016-12-19 20:03:15.730949	2016-12-19 20:03:15.730949
32160	7500	2180	2016-12-19 20:03:16.531522	2016-12-19 20:03:16.531522
32161	7501	2180	2016-12-19 20:03:17.402066	2016-12-19 20:03:17.402066
32162	7449	2180	2016-12-19 20:03:17.430393	2016-12-19 20:03:17.430393
32163	7427	2180	2016-12-19 20:03:17.439035	2016-12-19 20:03:17.439035
32164	7428	2180	2016-12-19 20:03:19.532245	2016-12-19 20:03:19.532245
32165	7429	2180	2016-12-19 20:03:19.597932	2016-12-19 20:03:19.597932
32166	7430	2180	2016-12-19 20:03:19.612874	2016-12-19 20:03:19.612874
32167	7397	2180	2016-12-19 20:03:19.644647	2016-12-19 20:03:19.644647
32168	7485	2180	2016-12-19 20:03:19.663122	2016-12-19 20:03:19.663122
32169	7486	2180	2016-12-19 20:03:19.690506	2016-12-19 20:03:19.690506
32170	7446	2180	2016-12-19 20:03:19.715371	2016-12-19 20:03:19.715371
32171	7447	2180	2016-12-19 20:03:19.725395	2016-12-19 20:03:19.725395
32172	7487	2180	2016-12-19 20:03:19.74837	2016-12-19 20:03:19.74837
32173	7488	2180	2016-12-19 20:03:19.779895	2016-12-19 20:03:19.779895
32174	7462	2180	2016-12-19 20:03:19.797894	2016-12-19 20:03:19.797894
32175	7431	2180	2016-12-19 20:03:19.81226	2016-12-19 20:03:19.81226
32176	7432	2180	2016-12-19 20:03:19.839224	2016-12-19 20:03:19.839224
32177	7433	2180	2016-12-19 20:03:19.856341	2016-12-19 20:03:19.856341
32178	7355	2180	2016-12-19 20:03:19.867725	2016-12-19 20:03:19.867725
32179	7377	2180	2016-12-19 20:03:19.889161	2016-12-19 20:03:19.889161
32180	7376	2180	2016-12-19 20:03:19.910179	2016-12-19 20:03:19.910179
32181	7375	2180	2016-12-19 20:03:19.925134	2016-12-19 20:03:19.925134
32182	7460	2180	2016-12-19 20:03:19.941014	2016-12-19 20:03:19.941014
32183	7459	2180	2016-12-19 20:03:19.963411	2016-12-19 20:03:19.963411
32184	7461	2180	2016-12-19 20:03:21.820985	2016-12-19 20:03:21.820985
32185	7374	2180	2016-12-19 20:03:21.886077	2016-12-19 20:03:21.886077
32186	7398	2180	2016-12-19 20:03:21.901235	2016-12-19 20:03:21.901235
32187	7399	2180	2016-12-19 20:03:21.914825	2016-12-19 20:03:21.914825
32188	7400	2180	2016-12-19 20:03:21.926136	2016-12-19 20:03:21.926136
32189	7401	2180	2016-12-19 20:03:21.942648	2016-12-19 20:03:21.942648
32190	7444	2180	2016-12-19 20:03:21.954926	2016-12-19 20:03:21.954926
32191	7443	2180	2016-12-19 20:03:21.979676	2016-12-19 20:03:21.979676
32192	7489	2180	2016-12-19 20:03:21.9902	2016-12-19 20:03:21.9902
32193	7490	2180	2016-12-19 20:03:22.007311	2016-12-19 20:03:22.007311
32194	7491	2180	2016-12-19 20:03:22.032306	2016-12-19 20:03:22.032306
32195	7442	2180	2016-12-19 20:03:22.04413	2016-12-19 20:03:22.04413
32196	7502	2180	2016-12-19 20:03:24.798704	2016-12-19 20:03:24.798704
32197	7503	2180	2016-12-19 20:03:26.503687	2016-12-19 20:03:26.503687
32198	7402	2180	2016-12-19 20:03:26.514378	2016-12-19 20:03:26.514378
32199	7498	2194	2016-12-19 20:03:27.637674	2016-12-19 20:03:27.637674
32200	7500	2194	2016-12-19 20:03:27.697216	2016-12-19 20:03:27.697216
32201	7497	2194	2016-12-19 20:03:27.718393	2016-12-19 20:03:27.718393
32202	7499	2194	2016-12-19 20:03:27.734199	2016-12-19 20:03:27.734199
32203	7498	2195	2016-12-19 20:03:28.879454	2016-12-19 20:03:28.879454
32204	7500	2195	2016-12-19 20:03:28.950797	2016-12-19 20:03:28.950797
32205	7497	2195	2016-12-19 20:03:28.965872	2016-12-19 20:03:28.965872
32206	7499	2195	2016-12-19 20:03:28.979345	2016-12-19 20:03:28.979345
32207	7504	2198	2016-12-19 20:03:31.545509	2016-12-19 20:03:31.545509
32208	7505	2198	2016-12-19 20:03:32.52473	2016-12-19 20:03:32.52473
32209	7506	2198	2016-12-19 20:03:33.319839	2016-12-19 20:03:33.319839
32210	7507	2198	2016-12-19 20:03:35.122788	2016-12-19 20:03:35.122788
32211	7508	2198	2016-12-19 20:03:36.905943	2016-12-19 20:03:36.905943
32212	7509	2198	2016-12-19 20:03:38.745242	2016-12-19 20:03:38.745242
32213	7510	2198	2016-12-19 20:03:39.723761	2016-12-19 20:03:39.723761
32214	7511	2199	2016-12-19 20:03:44.724402	2016-12-19 20:03:44.724402
32215	7512	2199	2016-12-19 20:03:45.61707	2016-12-19 20:03:45.61707
32216	7513	2199	2016-12-19 20:03:46.46194	2016-12-19 20:03:46.46194
32217	7514	2199	2016-12-19 20:03:47.363618	2016-12-19 20:03:47.363618
32218	7515	2199	2016-12-19 20:03:48.266621	2016-12-19 20:03:48.266621
32219	7516	2199	2016-12-19 20:03:49.569121	2016-12-19 20:03:49.569121
32220	7517	2199	2016-12-19 20:03:52.364239	2016-12-19 20:03:52.364239
32221	7518	2199	2016-12-19 20:03:53.274853	2016-12-19 20:03:53.274853
32222	7519	2199	2016-12-19 20:03:54.121762	2016-12-19 20:03:54.121762
32223	7520	2199	2016-12-19 20:03:54.979191	2016-12-19 20:03:54.979191
32224	7521	2199	2016-12-19 20:03:55.950839	2016-12-19 20:03:55.950839
32225	7522	2199	2016-12-19 20:03:56.832237	2016-12-19 20:03:56.832237
32226	7523	2199	2016-12-19 20:03:58.293385	2016-12-19 20:03:58.293385
32227	7524	2199	2016-12-19 20:03:59.129994	2016-12-19 20:03:59.129994
32228	7525	2199	2016-12-19 20:03:59.959417	2016-12-19 20:03:59.959417
32229	7360	2199	2016-12-19 20:03:59.973452	2016-12-19 20:03:59.973452
32230	7526	2199	2016-12-19 20:04:00.770134	2016-12-19 20:04:00.770134
32231	7527	2199	2016-12-19 20:04:04.020432	2016-12-19 20:04:04.020432
32232	7528	2199	2016-12-19 20:04:07.627423	2016-12-19 20:04:07.627423
32233	7529	2199	2016-12-19 20:04:08.496841	2016-12-19 20:04:08.496841
32234	7530	2199	2016-12-19 20:04:15.536465	2016-12-19 20:04:15.536465
32235	7531	2199	2016-12-19 20:04:19.358479	2016-12-19 20:04:19.358479
32236	7532	2199	2016-12-19 20:04:23.01468	2016-12-19 20:04:23.01468
32237	7533	2199	2016-12-19 20:04:25.644928	2016-12-19 20:04:25.644928
32238	7534	2199	2016-12-19 20:04:28.389123	2016-12-19 20:04:28.389123
32239	7535	2199	2016-12-19 20:04:31.731943	2016-12-19 20:04:31.731943
32240	7536	2199	2016-12-19 20:04:35.225374	2016-12-19 20:04:35.225374
32241	7537	2199	2016-12-19 20:04:37.738546	2016-12-19 20:04:37.738546
32242	7538	2199	2016-12-19 20:04:40.26455	2016-12-19 20:04:40.26455
32243	7539	2199	2016-12-19 20:04:42.656591	2016-12-19 20:04:42.656591
32244	7540	2199	2016-12-19 20:04:45.178139	2016-12-19 20:04:45.178139
32245	7541	2199	2016-12-19 20:04:47.709855	2016-12-19 20:04:47.709855
32246	7542	2199	2016-12-19 20:04:50.145901	2016-12-19 20:04:50.145901
32247	7543	2199	2016-12-19 20:04:52.678446	2016-12-19 20:04:52.678446
32248	7544	2199	2016-12-19 20:04:55.246074	2016-12-19 20:04:55.246074
32249	7545	2199	2016-12-19 20:04:57.698995	2016-12-19 20:04:57.698995
32250	7546	2199	2016-12-19 20:05:00.483237	2016-12-19 20:05:00.483237
32251	7547	2199	2016-12-19 20:05:04.276115	2016-12-19 20:05:04.276115
32252	7548	2199	2016-12-19 20:05:07.107485	2016-12-19 20:05:07.107485
32253	7549	2199	2016-12-19 20:05:09.879122	2016-12-19 20:05:09.879122
32254	7550	2199	2016-12-19 20:05:16.320185	2016-12-19 20:05:16.320185
32255	7551	2199	2016-12-19 20:05:18.642448	2016-12-19 20:05:18.642448
32256	7552	2199	2016-12-19 20:05:20.965651	2016-12-19 20:05:20.965651
32257	7553	2199	2016-12-19 20:05:23.33171	2016-12-19 20:05:23.33171
32258	7554	2199	2016-12-19 20:05:25.799361	2016-12-19 20:05:25.799361
32259	7555	2199	2016-12-19 20:05:28.186612	2016-12-19 20:05:28.186612
32260	7556	2199	2016-12-19 20:05:30.510259	2016-12-19 20:05:30.510259
32261	7557	2199	2016-12-19 20:05:33.217451	2016-12-19 20:05:33.217451
32262	7558	2199	2016-12-19 20:05:36.017023	2016-12-19 20:05:36.017023
32263	7559	2199	2016-12-19 20:05:38.643441	2016-12-19 20:05:38.643441
32264	7560	2199	2016-12-19 20:05:41.223107	2016-12-19 20:05:41.223107
32265	7561	2199	2016-12-19 20:05:43.88311	2016-12-19 20:05:43.88311
32266	7562	2199	2016-12-19 20:05:46.188383	2016-12-19 20:05:46.188383
32267	7563	2199	2016-12-19 20:05:48.636758	2016-12-19 20:05:48.636758
32268	7564	2199	2016-12-19 20:05:51.337851	2016-12-19 20:05:51.337851
32269	7565	2199	2016-12-19 20:05:53.888114	2016-12-19 20:05:53.888114
32270	7566	2199	2016-12-19 20:05:56.211779	2016-12-19 20:05:56.211779
32271	7567	2199	2016-12-19 20:05:58.293353	2016-12-19 20:05:58.293353
32272	7568	2199	2016-12-19 20:06:00.466518	2016-12-19 20:06:00.466518
32273	7569	2199	2016-12-19 20:06:02.77341	2016-12-19 20:06:02.77341
32274	7570	2199	2016-12-19 20:06:09.160262	2016-12-19 20:06:09.160262
32275	7571	2199	2016-12-19 20:06:11.736953	2016-12-19 20:06:11.736953
32276	7572	2199	2016-12-19 20:06:14.06896	2016-12-19 20:06:14.06896
32277	7367	2199	2016-12-19 20:06:14.084654	2016-12-19 20:06:14.084654
32278	7573	2199	2016-12-19 20:06:16.818321	2016-12-19 20:06:16.818321
32279	7574	2199	2016-12-19 20:06:19.305825	2016-12-19 20:06:19.305825
32280	7575	2199	2016-12-19 20:06:21.936975	2016-12-19 20:06:21.936975
32281	7576	2199	2016-12-19 20:06:24.822982	2016-12-19 20:06:24.822982
32282	7577	2199	2016-12-19 20:06:27.722371	2016-12-19 20:06:27.722371
32283	7578	2199	2016-12-19 20:06:30.560457	2016-12-19 20:06:30.560457
32284	7579	2199	2016-12-19 20:06:33.506411	2016-12-19 20:06:33.506411
32285	7580	2199	2016-12-19 20:06:36.288753	2016-12-19 20:06:36.288753
32286	7581	2199	2016-12-19 20:06:39.033551	2016-12-19 20:06:39.033551
32287	7582	2199	2016-12-19 20:06:41.542454	2016-12-19 20:06:41.542454
32288	7516	2197	2016-12-19 20:06:45.973035	2016-12-19 20:06:45.973035
32289	7517	2197	2016-12-19 20:06:46.030901	2016-12-19 20:06:46.030901
32290	7504	2197	2016-12-19 20:06:46.065491	2016-12-19 20:06:46.065491
32291	7511	2197	2016-12-19 20:06:46.086739	2016-12-19 20:06:46.086739
32292	7512	2197	2016-12-19 20:06:46.114973	2016-12-19 20:06:46.114973
32293	7513	2197	2016-12-19 20:06:46.125056	2016-12-19 20:06:46.125056
32294	7514	2197	2016-12-19 20:06:46.15881	2016-12-19 20:06:46.15881
32295	7515	2197	2016-12-19 20:06:46.179705	2016-12-19 20:06:46.179705
32296	7518	2197	2016-12-19 20:06:46.194339	2016-12-19 20:06:46.194339
32297	7519	2197	2016-12-19 20:06:46.206021	2016-12-19 20:06:46.206021
32298	7520	2197	2016-12-19 20:06:46.223692	2016-12-19 20:06:46.223692
32299	7521	2197	2016-12-19 20:06:46.237103	2016-12-19 20:06:46.237103
32300	7505	2197	2016-12-19 20:06:46.250776	2016-12-19 20:06:46.250776
32301	7583	2197	2016-12-19 20:06:47.141072	2016-12-19 20:06:47.141072
32302	7522	2197	2016-12-19 20:06:47.160614	2016-12-19 20:06:47.160614
32303	7506	2197	2016-12-19 20:06:47.172588	2016-12-19 20:06:47.172588
32304	7584	2197	2016-12-19 20:06:47.921781	2016-12-19 20:06:47.921781
32305	7523	2197	2016-12-19 20:06:47.947044	2016-12-19 20:06:47.947044
32306	7524	2197	2016-12-19 20:06:47.961139	2016-12-19 20:06:47.961139
32307	7525	2197	2016-12-19 20:06:47.983192	2016-12-19 20:06:47.983192
32308	7360	2197	2016-12-19 20:06:50.796695	2016-12-19 20:06:50.796695
32309	7526	2197	2016-12-19 20:06:50.859477	2016-12-19 20:06:50.859477
32310	7527	2197	2016-12-19 20:06:50.879236	2016-12-19 20:06:50.879236
32311	7528	2197	2016-12-19 20:06:50.902007	2016-12-19 20:06:50.902007
32312	7529	2197	2016-12-19 20:06:50.922832	2016-12-19 20:06:50.922832
32313	7530	2197	2016-12-19 20:06:50.937237	2016-12-19 20:06:50.937237
32314	7531	2197	2016-12-19 20:06:50.960118	2016-12-19 20:06:50.960118
32315	7532	2197	2016-12-19 20:06:50.972598	2016-12-19 20:06:50.972598
32316	7533	2197	2016-12-19 20:06:50.995589	2016-12-19 20:06:50.995589
32317	7534	2197	2016-12-19 20:06:51.009741	2016-12-19 20:06:51.009741
32318	7535	2197	2016-12-19 20:06:51.033096	2016-12-19 20:06:51.033096
32319	7536	2197	2016-12-19 20:06:51.05697	2016-12-19 20:06:51.05697
32320	7585	2197	2016-12-19 20:06:54.015838	2016-12-19 20:06:54.015838
32321	7537	2197	2016-12-19 20:06:54.03145	2016-12-19 20:06:54.03145
32322	7538	2197	2016-12-19 20:06:54.049794	2016-12-19 20:06:54.049794
32323	7586	2197	2016-12-19 20:06:56.403407	2016-12-19 20:06:56.403407
32324	7587	2197	2016-12-19 20:06:58.638272	2016-12-19 20:06:58.638272
32325	7588	2197	2016-12-19 20:07:01.060291	2016-12-19 20:07:01.060291
32326	7589	2197	2016-12-19 20:07:03.689865	2016-12-19 20:07:03.689865
32327	7590	2197	2016-12-19 20:07:06.071599	2016-12-19 20:07:06.071599
32328	7591	2197	2016-12-19 20:07:10.937977	2016-12-19 20:07:10.937977
32329	7592	2197	2016-12-19 20:07:13.433186	2016-12-19 20:07:13.433186
32330	7593	2197	2016-12-19 20:07:15.868279	2016-12-19 20:07:15.868279
32331	7594	2197	2016-12-19 20:07:18.24408	2016-12-19 20:07:18.24408
32332	7595	2197	2016-12-19 20:07:20.53852	2016-12-19 20:07:20.53852
32333	7596	2197	2016-12-19 20:07:22.922131	2016-12-19 20:07:22.922131
32334	7597	2197	2016-12-19 20:07:25.266711	2016-12-19 20:07:25.266711
32335	7507	2197	2016-12-19 20:07:25.289759	2016-12-19 20:07:25.289759
32336	7508	2197	2016-12-19 20:07:25.367698	2016-12-19 20:07:25.367698
32337	7509	2197	2016-12-19 20:07:25.393552	2016-12-19 20:07:25.393552
32338	7598	2197	2016-12-19 20:07:27.907928	2016-12-19 20:07:27.907928
32339	7599	2197	2016-12-19 20:07:30.33096	2016-12-19 20:07:30.33096
32340	7600	2197	2016-12-19 20:07:32.719821	2016-12-19 20:07:32.719821
32341	7601	2197	2016-12-19 20:07:35.086476	2016-12-19 20:07:35.086476
32342	7510	2197	2016-12-19 20:07:35.104157	2016-12-19 20:07:35.104157
32343	7539	2197	2016-12-19 20:07:35.121188	2016-12-19 20:07:35.121188
32344	7540	2197	2016-12-19 20:07:35.141667	2016-12-19 20:07:35.141667
32345	7541	2197	2016-12-19 20:07:35.163694	2016-12-19 20:07:35.163694
32346	7542	2197	2016-12-19 20:07:35.185536	2016-12-19 20:07:35.185536
32347	7543	2197	2016-12-19 20:07:35.198215	2016-12-19 20:07:35.198215
32348	7544	2197	2016-12-19 20:07:39.357927	2016-12-19 20:07:39.357927
32349	7545	2197	2016-12-19 20:07:39.417932	2016-12-19 20:07:39.417932
32350	7546	2197	2016-12-19 20:07:39.441441	2016-12-19 20:07:39.441441
32351	7547	2197	2016-12-19 20:07:39.453122	2016-12-19 20:07:39.453122
32352	7548	2197	2016-12-19 20:07:39.462067	2016-12-19 20:07:39.462067
32353	7549	2197	2016-12-19 20:07:39.485954	2016-12-19 20:07:39.485954
32354	7550	2197	2016-12-19 20:07:39.51689	2016-12-19 20:07:39.51689
32355	7551	2197	2016-12-19 20:07:39.527983	2016-12-19 20:07:39.527983
32356	7552	2197	2016-12-19 20:07:39.553066	2016-12-19 20:07:39.553066
32357	7553	2197	2016-12-19 20:07:39.563321	2016-12-19 20:07:39.563321
32358	7554	2197	2016-12-19 20:07:39.589327	2016-12-19 20:07:39.589327
32359	7555	2197	2016-12-19 20:07:39.603519	2016-12-19 20:07:39.603519
32360	7556	2197	2016-12-19 20:07:39.615438	2016-12-19 20:07:39.615438
32361	7602	2197	2016-12-19 20:07:41.912568	2016-12-19 20:07:41.912568
32362	7557	2197	2016-12-19 20:07:41.929425	2016-12-19 20:07:41.929425
32363	7558	2197	2016-12-19 20:07:41.942476	2016-12-19 20:07:41.942476
32364	7559	2197	2016-12-19 20:07:41.952561	2016-12-19 20:07:41.952561
32365	7560	2197	2016-12-19 20:07:41.974946	2016-12-19 20:07:41.974946
32366	7561	2197	2016-12-19 20:07:41.985741	2016-12-19 20:07:41.985741
32367	7603	2197	2016-12-19 20:07:42.857278	2016-12-19 20:07:42.857278
32368	7604	2197	2016-12-19 20:07:47.537031	2016-12-19 20:07:47.537031
32369	7605	2197	2016-12-19 20:07:48.40725	2016-12-19 20:07:48.40725
32370	7606	2197	2016-12-19 20:07:49.252907	2016-12-19 20:07:49.252907
32371	7562	2197	2016-12-19 20:07:49.270199	2016-12-19 20:07:49.270199
32372	7563	2197	2016-12-19 20:07:49.282716	2016-12-19 20:07:49.282716
32373	7607	2197	2016-12-19 20:07:50.111805	2016-12-19 20:07:50.111805
32374	7608	2197	2016-12-19 20:07:50.959178	2016-12-19 20:07:50.959178
32375	7609	2197	2016-12-19 20:07:53.721022	2016-12-19 20:07:53.721022
32376	7610	2197	2016-12-19 20:07:56.036139	2016-12-19 20:07:56.036139
32377	7611	2197	2016-12-19 20:07:58.44344	2016-12-19 20:07:58.44344
32378	7612	2197	2016-12-19 20:08:00.672086	2016-12-19 20:08:00.672086
32379	7613	2197	2016-12-19 20:08:03.26658	2016-12-19 20:08:03.26658
32380	7614	2197	2016-12-19 20:08:05.893265	2016-12-19 20:08:05.893265
32381	7615	2197	2016-12-19 20:08:08.384809	2016-12-19 20:08:08.384809
32382	7616	2197	2016-12-19 20:08:10.608556	2016-12-19 20:08:10.608556
32383	7617	2197	2016-12-19 20:08:12.974881	2016-12-19 20:08:12.974881
32384	7618	2197	2016-12-19 20:08:15.506949	2016-12-19 20:08:15.506949
32385	7619	2197	2016-12-19 20:08:17.951616	2016-12-19 20:08:17.951616
32386	7372	2197	2016-12-19 20:08:17.980384	2016-12-19 20:08:17.980384
32387	7564	2197	2016-12-19 20:08:17.991314	2016-12-19 20:08:17.991314
32388	7565	2197	2016-12-19 20:08:21.917572	2016-12-19 20:08:21.917572
32389	7566	2197	2016-12-19 20:08:21.994295	2016-12-19 20:08:21.994295
32390	7370	2197	2016-12-19 20:08:22.012504	2016-12-19 20:08:22.012504
32391	7567	2197	2016-12-19 20:08:22.02862	2016-12-19 20:08:22.02862
32392	7568	2197	2016-12-19 20:08:22.040368	2016-12-19 20:08:22.040368
32393	7569	2197	2016-12-19 20:08:22.061298	2016-12-19 20:08:22.061298
32394	7570	2197	2016-12-19 20:08:22.078521	2016-12-19 20:08:22.078521
32395	7571	2197	2016-12-19 20:08:22.103869	2016-12-19 20:08:22.103869
32396	7572	2197	2016-12-19 20:08:22.119319	2016-12-19 20:08:22.119319
32397	7367	2197	2016-12-19 20:08:22.135095	2016-12-19 20:08:22.135095
32398	7576	2197	2016-12-19 20:08:22.158934	2016-12-19 20:08:22.158934
32399	7620	2197	2016-12-19 20:08:24.791007	2016-12-19 20:08:24.791007
32400	7621	2197	2016-12-19 20:08:27.464327	2016-12-19 20:08:27.464327
32401	7622	2197	2016-12-19 20:08:30.007159	2016-12-19 20:08:30.007159
32402	7623	2197	2016-12-19 20:08:32.384677	2016-12-19 20:08:32.384677
32403	7573	2197	2016-12-19 20:08:32.40003	2016-12-19 20:08:32.40003
32404	7574	2197	2016-12-19 20:08:32.416825	2016-12-19 20:08:32.416825
32405	7575	2197	2016-12-19 20:08:32.425994	2016-12-19 20:08:32.425994
32406	7577	2197	2016-12-19 20:08:32.438924	2016-12-19 20:08:32.438924
32407	7578	2197	2016-12-19 20:08:32.448821	2016-12-19 20:08:32.448821
32408	7579	2197	2016-12-19 20:08:34.470083	2016-12-19 20:08:34.470083
32409	7580	2197	2016-12-19 20:08:34.524715	2016-12-19 20:08:34.524715
32410	7581	2197	2016-12-19 20:08:34.536665	2016-12-19 20:08:34.536665
32411	7582	2197	2016-12-19 20:08:34.553494	2016-12-19 20:08:34.553494
32412	7624	2197	2016-12-19 20:08:37.809906	2016-12-19 20:08:37.809906
32413	7583	2200	2016-12-19 20:08:40.357395	2016-12-19 20:08:40.357395
32414	7585	2200	2016-12-19 20:08:40.418602	2016-12-19 20:08:40.418602
32415	7590	2200	2016-12-19 20:08:40.441132	2016-12-19 20:08:40.441132
32416	7591	2200	2016-12-19 20:08:40.467879	2016-12-19 20:08:40.467879
32417	7592	2200	2016-12-19 20:08:40.479457	2016-12-19 20:08:40.479457
32418	7593	2200	2016-12-19 20:08:40.492584	2016-12-19 20:08:40.492584
32419	7594	2200	2016-12-19 20:08:40.509007	2016-12-19 20:08:40.509007
32420	7595	2200	2016-12-19 20:08:40.530185	2016-12-19 20:08:40.530185
32421	7596	2200	2016-12-19 20:08:40.554234	2016-12-19 20:08:40.554234
32422	7597	2200	2016-12-19 20:08:40.570182	2016-12-19 20:08:40.570182
32423	7600	2200	2016-12-19 20:08:40.589541	2016-12-19 20:08:40.589541
32424	7601	2200	2016-12-19 20:08:40.602243	2016-12-19 20:08:40.602243
32425	7602	2200	2016-12-19 20:08:40.625483	2016-12-19 20:08:40.625483
32426	7603	2200	2016-12-19 20:08:40.648051	2016-12-19 20:08:40.648051
32427	7604	2200	2016-12-19 20:08:40.661348	2016-12-19 20:08:40.661348
32428	7605	2200	2016-12-19 20:08:40.679705	2016-12-19 20:08:40.679705
32429	7606	2200	2016-12-19 20:08:40.696852	2016-12-19 20:08:40.696852
32430	7607	2200	2016-12-19 20:08:40.717297	2016-12-19 20:08:40.717297
32431	7608	2200	2016-12-19 20:08:40.733037	2016-12-19 20:08:40.733037
32432	7609	2200	2016-12-19 20:08:40.755219	2016-12-19 20:08:40.755219
32433	7610	2200	2016-12-19 20:08:43.478205	2016-12-19 20:08:43.478205
32434	7611	2200	2016-12-19 20:08:43.539976	2016-12-19 20:08:43.539976
32435	7612	2200	2016-12-19 20:08:43.5581	2016-12-19 20:08:43.5581
32436	7613	2200	2016-12-19 20:08:43.570611	2016-12-19 20:08:43.570611
32437	7614	2200	2016-12-19 20:08:43.581284	2016-12-19 20:08:43.581284
32438	7615	2200	2016-12-19 20:08:43.602558	2016-12-19 20:08:43.602558
32439	7616	2200	2016-12-19 20:08:43.614695	2016-12-19 20:08:43.614695
32440	7617	2200	2016-12-19 20:08:43.627412	2016-12-19 20:08:43.627412
32441	7618	2200	2016-12-19 20:08:43.642358	2016-12-19 20:08:43.642358
32442	7619	2200	2016-12-19 20:08:43.660047	2016-12-19 20:08:43.660047
32443	7372	2200	2016-12-19 20:08:43.675731	2016-12-19 20:08:43.675731
32444	7370	2200	2016-12-19 20:08:43.684864	2016-12-19 20:08:43.684864
32445	7620	2200	2016-12-19 20:08:43.697478	2016-12-19 20:08:43.697478
32446	7621	2200	2016-12-19 20:08:43.723053	2016-12-19 20:08:43.723053
32447	7622	2200	2016-12-19 20:08:43.738848	2016-12-19 20:08:43.738848
32448	7623	2200	2016-12-19 20:08:43.758485	2016-12-19 20:08:43.758485
32449	7624	2200	2016-12-19 20:08:43.775769	2016-12-19 20:08:43.775769
32450	7625	2201	2016-12-19 20:08:48.147699	2016-12-19 20:08:48.147699
32451	7626	2201	2016-12-19 20:08:50.778251	2016-12-19 20:08:50.778251
32452	7627	2201	2016-12-19 20:08:53.310302	2016-12-19 20:08:53.310302
32453	7628	2201	2016-12-19 20:08:55.744947	2016-12-19 20:08:55.744947
32454	7629	2201	2016-12-19 20:08:58.31921	2016-12-19 20:08:58.31921
32455	7630	2201	2016-12-19 20:09:00.224334	2016-12-19 20:09:00.224334
32456	7631	2201	2016-12-19 20:09:02.196366	2016-12-19 20:09:02.196366
32457	7632	2201	2016-12-19 20:09:03.977237	2016-12-19 20:09:03.977237
32458	7633	2201	2016-12-19 20:09:05.861435	2016-12-19 20:09:05.861435
32459	7634	2201	2016-12-19 20:09:07.856947	2016-12-19 20:09:07.856947
32460	7635	2201	2016-12-19 20:09:09.37258	2016-12-19 20:09:09.37258
32461	7636	2201	2016-12-19 20:09:10.959173	2016-12-19 20:09:10.959173
32462	7637	2201	2016-12-19 20:09:15.293879	2016-12-19 20:09:15.293879
32463	7638	2201	2016-12-19 20:09:16.78486	2016-12-19 20:09:16.78486
32464	7639	2201	2016-12-19 20:09:17.649331	2016-12-19 20:09:17.649331
32465	7640	2201	2016-12-19 20:09:18.519184	2016-12-19 20:09:18.519184
32466	7641	2201	2016-12-19 20:09:20.170612	2016-12-19 20:09:20.170612
32467	7642	2203	2016-12-19 20:09:22.901881	2016-12-19 20:09:22.901881
32468	7643	2203	2016-12-19 20:09:24.498942	2016-12-19 20:09:24.498942
32469	7644	2203	2016-12-19 20:09:25.860801	2016-12-19 20:09:25.860801
32470	7645	2203	2016-12-19 20:09:27.51311	2016-12-19 20:09:27.51311
32471	7646	2203	2016-12-19 20:09:29.141357	2016-12-19 20:09:29.141357
32472	7647	2202	2016-12-19 20:09:31.723701	2016-12-19 20:09:31.723701
32473	7648	2202	2016-12-19 20:09:32.54712	2016-12-19 20:09:32.54712
32474	7649	2202	2016-12-19 20:09:34.337196	2016-12-19 20:09:34.337196
32475	7650	2202	2016-12-19 20:09:36.202893	2016-12-19 20:09:36.202893
32476	7642	2202	2016-12-19 20:09:36.226277	2016-12-19 20:09:36.226277
32477	7643	2202	2016-12-19 20:09:36.24144	2016-12-19 20:09:36.24144
32478	7651	2202	2016-12-19 20:09:37.642722	2016-12-19 20:09:37.642722
32479	7644	2202	2016-12-19 20:09:37.652759	2016-12-19 20:09:37.652759
32480	7645	2202	2016-12-19 20:09:37.675806	2016-12-19 20:09:37.675806
32481	7646	2202	2016-12-19 20:09:37.690542	2016-12-19 20:09:37.690542
32482	7649	2204	2016-12-19 20:09:38.801188	2016-12-19 20:09:38.801188
32483	7650	2204	2016-12-19 20:09:38.870892	2016-12-19 20:09:38.870892
32484	7651	2204	2016-12-19 20:09:38.888267	2016-12-19 20:09:38.888267
32485	7652	2206	2016-12-19 20:09:41.402925	2016-12-19 20:09:41.402925
32486	7653	2206	2016-12-19 20:09:42.973916	2016-12-19 20:09:42.973916
32487	7654	2206	2016-12-19 20:09:44.611981	2016-12-19 20:09:44.611981
32488	7655	2206	2016-12-19 20:09:46.421486	2016-12-19 20:09:46.421486
32489	7656	2206	2016-12-19 20:09:48.05483	2016-12-19 20:09:48.05483
32490	7657	2206	2016-12-19 20:09:49.650663	2016-12-19 20:09:49.650663
32491	7658	2207	2016-12-19 20:09:53.669171	2016-12-19 20:09:53.669171
32492	7659	2207	2016-12-19 20:09:56.047514	2016-12-19 20:09:56.047514
32493	7660	2207	2016-12-19 20:09:58.59607	2016-12-19 20:09:58.59607
32494	7661	2207	2016-12-19 20:10:00.028899	2016-12-19 20:10:00.028899
32495	7662	2207	2016-12-19 20:10:01.43032	2016-12-19 20:10:01.43032
32496	7663	2207	2016-12-19 20:10:03.164891	2016-12-19 20:10:03.164891
32497	7664	2207	2016-12-19 20:10:04.782548	2016-12-19 20:10:04.782548
32498	7665	2207	2016-12-19 20:10:06.342321	2016-12-19 20:10:06.342321
32499	7666	2207	2016-12-19 20:10:07.88778	2016-12-19 20:10:07.88778
32500	7667	2207	2016-12-19 20:10:09.792405	2016-12-19 20:10:09.792405
32501	7668	2207	2016-12-19 20:10:11.115633	2016-12-19 20:10:11.115633
32502	7669	2207	2016-12-19 20:10:12.578847	2016-12-19 20:10:12.578847
32503	7670	2207	2016-12-19 20:10:14.040927	2016-12-19 20:10:14.040927
32504	7671	2207	2016-12-19 20:10:15.451459	2016-12-19 20:10:15.451459
32505	7672	2207	2016-12-19 20:10:16.897027	2016-12-19 20:10:16.897027
32506	7673	2207	2016-12-19 20:10:18.247957	2016-12-19 20:10:18.247957
32507	7674	2207	2016-12-19 20:10:19.647257	2016-12-19 20:10:19.647257
32508	7675	2207	2016-12-19 20:10:21.090192	2016-12-19 20:10:21.090192
32509	7676	2207	2016-12-19 20:10:22.547523	2016-12-19 20:10:22.547523
32510	7677	2207	2016-12-19 20:10:24.026619	2016-12-19 20:10:24.026619
32511	7678	2207	2016-12-19 20:10:26.645538	2016-12-19 20:10:26.645538
32512	7679	2207	2016-12-19 20:10:28.502189	2016-12-19 20:10:28.502189
32513	7680	2207	2016-12-19 20:10:29.955563	2016-12-19 20:10:29.955563
32514	7681	2207	2016-12-19 20:10:31.357086	2016-12-19 20:10:31.357086
32515	7658	2205	2016-12-19 20:10:33.446587	2016-12-19 20:10:33.446587
32516	7659	2205	2016-12-19 20:10:33.470781	2016-12-19 20:10:33.470781
32517	7660	2205	2016-12-19 20:10:33.496847	2016-12-19 20:10:33.496847
32518	7661	2205	2016-12-19 20:10:33.530026	2016-12-19 20:10:33.530026
32519	7662	2205	2016-12-19 20:10:33.544645	2016-12-19 20:10:33.544645
32520	7663	2205	2016-12-19 20:10:33.583443	2016-12-19 20:10:33.583443
32521	7664	2205	2016-12-19 20:10:33.604316	2016-12-19 20:10:33.604316
32522	7652	2205	2016-12-19 20:10:33.615282	2016-12-19 20:10:33.615282
32523	7682	2205	2016-12-19 20:10:34.381383	2016-12-19 20:10:34.381383
32524	7683	2205	2016-12-19 20:10:36.090012	2016-12-19 20:10:36.090012
32525	7684	2205	2016-12-19 20:10:37.915854	2016-12-19 20:10:37.915854
32526	7665	2205	2016-12-19 20:10:37.945901	2016-12-19 20:10:37.945901
32527	7666	2205	2016-12-19 20:10:37.957058	2016-12-19 20:10:37.957058
32528	7667	2205	2016-12-19 20:10:37.985317	2016-12-19 20:10:37.985317
32529	7668	2205	2016-12-19 20:10:37.998919	2016-12-19 20:10:37.998919
32530	7685	2205	2016-12-19 20:10:39.719482	2016-12-19 20:10:39.719482
32531	7653	2205	2016-12-19 20:10:39.73871	2016-12-19 20:10:39.73871
32532	7669	2205	2016-12-19 20:10:39.767352	2016-12-19 20:10:39.767352
32533	7670	2205	2016-12-19 20:10:39.782437	2016-12-19 20:10:39.782437
32534	7671	2205	2016-12-19 20:10:39.805348	2016-12-19 20:10:39.805348
32535	7672	2205	2016-12-19 20:10:41.794446	2016-12-19 20:10:41.794446
32536	7673	2205	2016-12-19 20:10:41.863612	2016-12-19 20:10:41.863612
32537	7674	2205	2016-12-19 20:10:41.883621	2016-12-19 20:10:41.883621
32538	7675	2205	2016-12-19 20:10:41.908025	2016-12-19 20:10:41.908025
32539	7676	2205	2016-12-19 20:10:41.930394	2016-12-19 20:10:41.930394
32540	7677	2205	2016-12-19 20:10:41.951988	2016-12-19 20:10:41.951988
32541	7678	2205	2016-12-19 20:10:41.967058	2016-12-19 20:10:41.967058
32542	7679	2205	2016-12-19 20:10:41.987965	2016-12-19 20:10:41.987965
32543	7680	2205	2016-12-19 20:10:42.009993	2016-12-19 20:10:42.009993
32544	7681	2205	2016-12-19 20:10:42.03086	2016-12-19 20:10:42.03086
32545	7686	2205	2016-12-19 20:10:43.628207	2016-12-19 20:10:43.628207
32546	7687	2205	2016-12-19 20:10:45.514598	2016-12-19 20:10:45.514598
32547	7654	2205	2016-12-19 20:10:45.529464	2016-12-19 20:10:45.529464
32548	7655	2205	2016-12-19 20:10:45.557326	2016-12-19 20:10:45.557326
32549	7656	2205	2016-12-19 20:10:45.58014	2016-12-19 20:10:45.58014
32550	7657	2205	2016-12-19 20:10:45.602967	2016-12-19 20:10:45.602967
32551	7685	2208	2016-12-19 20:10:46.645348	2016-12-19 20:10:46.645348
32552	7686	2208	2016-12-19 20:10:46.706022	2016-12-19 20:10:46.706022
32553	7687	2208	2016-12-19 20:10:46.719623	2016-12-19 20:10:46.719623
32554	7688	2209	2016-12-19 20:10:50.410092	2016-12-19 20:10:50.410092
32555	7689	2209	2016-12-19 20:10:52.110485	2016-12-19 20:10:52.110485
32556	7690	2209	2016-12-19 20:10:53.842508	2016-12-19 20:10:53.842508
32557	7691	2209	2016-12-19 20:10:55.670479	2016-12-19 20:10:55.670479
32558	7692	2209	2016-12-19 20:10:57.423622	2016-12-19 20:10:57.423622
32559	7693	2209	2016-12-19 20:10:59.281744	2016-12-19 20:10:59.281744
32560	7694	2209	2016-12-19 20:11:03.275105	2016-12-19 20:11:03.275105
32561	7695	2209	2016-12-19 20:11:04.994019	2016-12-19 20:11:04.994019
32562	7696	2209	2016-12-19 20:11:06.713939	2016-12-19 20:11:06.713939
32563	7697	2209	2016-12-19 20:11:08.532207	2016-12-19 20:11:08.532207
32564	7698	2209	2016-12-19 20:11:10.310654	2016-12-19 20:11:10.310654
32565	7699	2209	2016-12-19 20:11:11.944431	2016-12-19 20:11:11.944431
32566	7700	2209	2016-12-19 20:11:13.705644	2016-12-19 20:11:13.705644
32567	7701	2209	2016-12-19 20:11:15.40799	2016-12-19 20:11:15.40799
32568	7702	2209	2016-12-19 20:11:17.071134	2016-12-19 20:11:17.071134
32569	7703	2209	2016-12-19 20:11:18.75847	2016-12-19 20:11:18.75847
32570	7704	2209	2016-12-19 20:11:19.601314	2016-12-19 20:11:19.601314
32571	7705	2209	2016-12-19 20:11:20.406634	2016-12-19 20:11:20.406634
32572	7706	2209	2016-12-19 20:11:21.243285	2016-12-19 20:11:21.243285
32573	7707	2209	2016-12-19 20:11:22.903595	2016-12-19 20:11:22.903595
32574	7708	2209	2016-12-19 20:11:25.787808	2016-12-19 20:11:25.787808
32575	7709	2209	2016-12-19 20:11:27.340302	2016-12-19 20:11:27.340302
32576	7710	2209	2016-12-19 20:11:29.024031	2016-12-19 20:11:29.024031
32577	7711	2209	2016-12-19 20:11:30.785899	2016-12-19 20:11:30.785899
32578	7712	2209	2016-12-19 20:11:32.458808	2016-12-19 20:11:32.458808
32579	7713	2209	2016-12-19 20:11:34.187415	2016-12-19 20:11:34.187415
32580	7714	2209	2016-12-19 20:11:35.609447	2016-12-19 20:11:35.609447
32581	7715	2209	2016-12-19 20:11:37.281471	2016-12-19 20:11:37.281471
32582	7688	2210	2016-12-19 20:11:39.036971	2016-12-19 20:11:39.036971
32583	7689	2210	2016-12-19 20:11:39.090268	2016-12-19 20:11:39.090268
32584	7690	2210	2016-12-19 20:11:39.116364	2016-12-19 20:11:39.116364
32585	7691	2210	2016-12-19 20:11:39.127986	2016-12-19 20:11:39.127986
32586	7692	2210	2016-12-19 20:11:39.14703	2016-12-19 20:11:39.14703
32587	7693	2210	2016-12-19 20:11:39.159035	2016-12-19 20:11:39.159035
32588	7694	2210	2016-12-19 20:11:39.177778	2016-12-19 20:11:39.177778
32589	7695	2210	2016-12-19 20:11:39.196025	2016-12-19 20:11:39.196025
32590	7696	2210	2016-12-19 20:11:39.209041	2016-12-19 20:11:39.209041
32591	7697	2210	2016-12-19 20:11:39.231633	2016-12-19 20:11:39.231633
32592	7698	2210	2016-12-19 20:11:39.242601	2016-12-19 20:11:39.242601
32593	7699	2210	2016-12-19 20:11:39.256586	2016-12-19 20:11:39.256586
32594	7700	2210	2016-12-19 20:11:39.274276	2016-12-19 20:11:39.274276
32595	7701	2210	2016-12-19 20:11:39.296033	2016-12-19 20:11:39.296033
32596	7702	2210	2016-12-19 20:11:39.312899	2016-12-19 20:11:39.312899
32597	7703	2210	2016-12-19 20:11:39.323704	2016-12-19 20:11:39.323704
32598	7704	2210	2016-12-19 20:11:39.348893	2016-12-19 20:11:39.348893
32599	7705	2210	2016-12-19 20:11:39.368034	2016-12-19 20:11:39.368034
32600	7706	2210	2016-12-19 20:11:39.392883	2016-12-19 20:11:39.392883
32601	7707	2210	2016-12-19 20:11:39.435599	2016-12-19 20:11:39.435599
32602	7708	2210	2016-12-19 20:11:40.70418	2016-12-19 20:11:40.70418
32603	7709	2210	2016-12-19 20:11:40.765972	2016-12-19 20:11:40.765972
32604	7710	2210	2016-12-19 20:11:40.787355	2016-12-19 20:11:40.787355
32605	7711	2210	2016-12-19 20:11:40.817066	2016-12-19 20:11:40.817066
32606	7712	2210	2016-12-19 20:11:40.843334	2016-12-19 20:11:40.843334
32607	7713	2210	2016-12-19 20:11:40.872382	2016-12-19 20:11:40.872382
32608	7714	2210	2016-12-19 20:11:40.888963	2016-12-19 20:11:40.888963
32609	7715	2210	2016-12-19 20:11:40.911818	2016-12-19 20:11:40.911818
32610	7716	2212	2016-12-19 20:11:45.043228	2016-12-19 20:11:45.043228
32611	7717	2212	2016-12-19 20:11:47.607449	2016-12-19 20:11:47.607449
32612	7718	2212	2016-12-19 20:11:50.21509	2016-12-19 20:11:50.21509
32613	7719	2212	2016-12-19 20:11:52.029267	2016-12-19 20:11:52.029267
32614	7720	2212	2016-12-19 20:11:54.111334	2016-12-19 20:11:54.111334
32615	7721	2212	2016-12-19 20:11:56.00416	2016-12-19 20:11:56.00416
32616	7722	2212	2016-12-19 20:11:57.905621	2016-12-19 20:11:57.905621
32617	7723	2212	2016-12-19 20:11:59.683093	2016-12-19 20:11:59.683093
32618	7724	2212	2016-12-19 20:12:02.3576	2016-12-19 20:12:02.3576
32619	7725	2212	2016-12-19 20:12:04.956281	2016-12-19 20:12:04.956281
32620	7726	2212	2016-12-19 20:12:07.63319	2016-12-19 20:12:07.63319
32621	7727	2212	2016-12-19 20:12:10.165515	2016-12-19 20:12:10.165515
32622	7728	2212	2016-12-19 20:12:12.905845	2016-12-19 20:12:12.905845
32623	7729	2212	2016-12-19 20:12:15.470233	2016-12-19 20:12:15.470233
32624	7730	2212	2016-12-19 20:12:16.325972	2016-12-19 20:12:16.325972
32625	7731	2212	2016-12-19 20:12:19.079085	2016-12-19 20:12:19.079085
32626	7732	2212	2016-12-19 20:12:20.954756	2016-12-19 20:12:20.954756
32627	7733	2212	2016-12-19 20:12:23.536298	2016-12-19 20:12:23.536298
32628	7734	2212	2016-12-19 20:12:25.253727	2016-12-19 20:12:25.253727
32629	7735	2212	2016-12-19 20:12:28.270949	2016-12-19 20:12:28.270949
32630	7736	2212	2016-12-19 20:12:31.870268	2016-12-19 20:12:31.870268
32631	7737	2212	2016-12-19 20:12:33.870645	2016-12-19 20:12:33.870645
32632	7738	2212	2016-12-19 20:12:35.494529	2016-12-19 20:12:35.494529
32633	7739	2212	2016-12-19 20:12:37.03666	2016-12-19 20:12:37.03666
32634	7740	2212	2016-12-19 20:12:38.905324	2016-12-19 20:12:38.905324
32635	7741	2212	2016-12-19 20:12:40.570721	2016-12-19 20:12:40.570721
32636	7742	2212	2016-12-19 20:12:42.330875	2016-12-19 20:12:42.330875
32637	7743	2212	2016-12-19 20:12:44.942335	2016-12-19 20:12:44.942335
32638	7744	2212	2016-12-19 20:12:46.533412	2016-12-19 20:12:46.533412
32639	7745	2212	2016-12-19 20:12:48.098138	2016-12-19 20:12:48.098138
32640	7746	2212	2016-12-19 20:12:49.86497	2016-12-19 20:12:49.86497
32641	7747	2212	2016-12-19 20:12:51.509873	2016-12-19 20:12:51.509873
32642	7748	2212	2016-12-19 20:12:53.216067	2016-12-19 20:12:53.216067
32643	7749	2212	2016-12-19 20:12:54.811071	2016-12-19 20:12:54.811071
32644	7750	2212	2016-12-19 20:12:56.654673	2016-12-19 20:12:56.654673
32645	7751	2212	2016-12-19 20:12:58.499632	2016-12-19 20:12:58.499632
32646	7752	2212	2016-12-19 20:13:00.753563	2016-12-19 20:13:00.753563
32647	7753	2212	2016-12-19 20:13:02.682607	2016-12-19 20:13:02.682607
32648	7754	2212	2016-12-19 20:13:04.544229	2016-12-19 20:13:04.544229
32649	7755	2212	2016-12-19 20:13:06.469654	2016-12-19 20:13:06.469654
32650	7756	2212	2016-12-19 20:13:09.374968	2016-12-19 20:13:09.374968
32651	7757	2212	2016-12-19 20:13:11.157674	2016-12-19 20:13:11.157674
32652	7758	2212	2016-12-19 20:13:12.855592	2016-12-19 20:13:12.855592
32653	7759	2213	2016-12-19 20:13:16.32411	2016-12-19 20:13:16.32411
32654	7760	2213	2016-12-19 20:13:18.16026	2016-12-19 20:13:18.16026
32655	7761	2213	2016-12-19 20:13:20.040482	2016-12-19 20:13:20.040482
32656	7762	2213	2016-12-19 20:13:21.848409	2016-12-19 20:13:21.848409
32657	7763	2213	2016-12-19 20:13:23.773501	2016-12-19 20:13:23.773501
32658	7764	2213	2016-12-19 20:13:25.627173	2016-12-19 20:13:25.627173
32659	7765	2213	2016-12-19 20:13:27.420715	2016-12-19 20:13:27.420715
32660	7766	2213	2016-12-19 20:13:29.365692	2016-12-19 20:13:29.365692
32661	7767	2213	2016-12-19 20:13:31.183682	2016-12-19 20:13:31.183682
32662	7768	2213	2016-12-19 20:13:33.042267	2016-12-19 20:13:33.042267
32663	7769	2213	2016-12-19 20:13:34.858668	2016-12-19 20:13:34.858668
32664	7770	2213	2016-12-19 20:13:36.722633	2016-12-19 20:13:36.722633
32665	7771	2213	2016-12-19 20:13:38.6127	2016-12-19 20:13:38.6127
32666	7772	2213	2016-12-19 20:13:39.415625	2016-12-19 20:13:39.415625
32667	7773	2213	2016-12-19 20:13:41.397557	2016-12-19 20:13:41.397557
32668	7774	2213	2016-12-19 20:13:43.4562	2016-12-19 20:13:43.4562
32669	7775	2213	2016-12-19 20:13:45.307054	2016-12-19 20:13:45.307054
32670	7776	2213	2016-12-19 20:13:46.164135	2016-12-19 20:13:46.164135
32671	7777	2213	2016-12-19 20:13:48.051704	2016-12-19 20:13:48.051704
32672	7778	2214	2016-12-19 20:13:51.415023	2016-12-19 20:13:51.415023
32673	7779	2214	2016-12-19 20:13:54.001858	2016-12-19 20:13:54.001858
32674	7780	2214	2016-12-19 20:13:56.514119	2016-12-19 20:13:56.514119
32675	7781	2214	2016-12-19 20:13:58.269137	2016-12-19 20:13:58.269137
32676	7738	2214	2016-12-19 20:13:58.278564	2016-12-19 20:13:58.278564
32677	7739	2214	2016-12-19 20:13:58.288931	2016-12-19 20:13:58.288931
32678	7782	2214	2016-12-19 20:13:59.804591	2016-12-19 20:13:59.804591
32679	7783	2214	2016-12-19 20:14:01.734366	2016-12-19 20:14:01.734366
32680	7784	2214	2016-12-19 20:14:03.721685	2016-12-19 20:14:03.721685
32681	7785	2214	2016-12-19 20:14:05.505326	2016-12-19 20:14:05.505326
32682	7786	2214	2016-12-19 20:14:09.236692	2016-12-19 20:14:09.236692
32683	7787	2214	2016-12-19 20:14:10.843479	2016-12-19 20:14:10.843479
32684	7788	2214	2016-12-19 20:14:12.506402	2016-12-19 20:14:12.506402
32685	7789	2214	2016-12-19 20:14:14.196185	2016-12-19 20:14:14.196185
32686	7790	2214	2016-12-19 20:14:15.819239	2016-12-19 20:14:15.819239
32687	7791	2215	2016-12-19 20:14:19.27051	2016-12-19 20:14:19.27051
32688	7792	2215	2016-12-19 20:14:21.202825	2016-12-19 20:14:21.202825
32689	7793	2215	2016-12-19 20:14:23.190747	2016-12-19 20:14:23.190747
32690	7794	2215	2016-12-19 20:14:25.009011	2016-12-19 20:14:25.009011
32691	7795	2215	2016-12-19 20:14:27.007042	2016-12-19 20:14:27.007042
32692	7796	2215	2016-12-19 20:14:28.605846	2016-12-19 20:14:28.605846
32693	7797	2215	2016-12-19 20:14:31.114251	2016-12-19 20:14:31.114251
32694	7798	2215	2016-12-19 20:14:33.8296	2016-12-19 20:14:33.8296
32695	7799	2215	2016-12-19 20:14:35.381957	2016-12-19 20:14:35.381957
32696	7800	2215	2016-12-19 20:14:36.878716	2016-12-19 20:14:36.878716
32697	7801	2215	2016-12-19 20:14:38.496363	2016-12-19 20:14:38.496363
32698	7802	2215	2016-12-19 20:14:40.094651	2016-12-19 20:14:40.094651
32699	7803	2215	2016-12-19 20:14:41.68969	2016-12-19 20:14:41.68969
32700	7804	2215	2016-12-19 20:14:43.282695	2016-12-19 20:14:43.282695
32701	7805	2215	2016-12-19 20:14:44.881762	2016-12-19 20:14:44.881762
32702	7806	2215	2016-12-19 20:14:46.491703	2016-12-19 20:14:46.491703
32703	7807	2215	2016-12-19 20:14:47.293994	2016-12-19 20:14:47.293994
32704	7808	2215	2016-12-19 20:14:49.083862	2016-12-19 20:14:49.083862
32705	7809	2215	2016-12-19 20:14:50.858879	2016-12-19 20:14:50.858879
32706	7810	2215	2016-12-19 20:14:52.754365	2016-12-19 20:14:52.754365
32707	7811	2215	2016-12-19 20:14:55.812185	2016-12-19 20:14:55.812185
32708	7812	2215	2016-12-19 20:14:57.588192	2016-12-19 20:14:57.588192
32709	7813	2215	2016-12-19 20:14:59.372038	2016-12-19 20:14:59.372038
32710	7814	2215	2016-12-19 20:15:01.154706	2016-12-19 20:15:01.154706
32711	7815	2215	2016-12-19 20:15:04.134908	2016-12-19 20:15:04.134908
32712	7816	2215	2016-12-19 20:15:06.137992	2016-12-19 20:15:06.137992
32713	7817	2215	2016-12-19 20:15:08.024538	2016-12-19 20:15:08.024538
32714	7818	2216	2016-12-19 20:15:11.017623	2016-12-19 20:15:11.017623
32715	7819	2216	2016-12-19 20:15:13.672193	2016-12-19 20:15:13.672193
32716	7820	2216	2016-12-19 20:15:15.362565	2016-12-19 20:15:15.362565
32717	7821	2216	2016-12-19 20:15:16.897311	2016-12-19 20:15:16.897311
32718	7739	2216	2016-12-19 20:15:16.909804	2016-12-19 20:15:16.909804
32719	7822	2216	2016-12-19 20:15:18.590866	2016-12-19 20:15:18.590866
32720	7823	2216	2016-12-19 20:15:20.226978	2016-12-19 20:15:20.226978
32721	7740	2216	2016-12-19 20:15:20.25922	2016-12-19 20:15:20.25922
32722	7824	2216	2016-12-19 20:15:21.141832	2016-12-19 20:15:21.141832
32723	7825	2216	2016-12-19 20:15:21.95385	2016-12-19 20:15:21.95385
32724	7826	2216	2016-12-19 20:15:22.697752	2016-12-19 20:15:22.697752
32725	7827	2216	2016-12-19 20:15:24.602846	2016-12-19 20:15:24.602846
32726	7828	2216	2016-12-19 20:15:27.56345	2016-12-19 20:15:27.56345
32727	7829	2216	2016-12-19 20:15:30.3013	2016-12-19 20:15:30.3013
32728	7830	2216	2016-12-19 20:15:32.382745	2016-12-19 20:15:32.382745
32729	7831	2216	2016-12-19 20:15:34.285581	2016-12-19 20:15:34.285581
32730	7411	2217	2016-12-19 20:15:36.207012	2016-12-19 20:15:36.207012
32731	7412	2217	2016-12-19 20:15:36.261988	2016-12-19 20:15:36.261988
32732	7413	2217	2016-12-19 20:15:36.294682	2016-12-19 20:15:36.294682
32733	7832	2217	2016-12-19 20:15:37.874057	2016-12-19 20:15:37.874057
32734	7415	2217	2016-12-19 20:15:37.895082	2016-12-19 20:15:37.895082
32735	7417	2217	2016-12-19 20:15:37.905724	2016-12-19 20:15:37.905724
32736	7418	2217	2016-12-19 20:15:37.927566	2016-12-19 20:15:37.927566
32737	7419	2217	2016-12-19 20:15:37.943094	2016-12-19 20:15:37.943094
32738	7420	2217	2016-12-19 20:15:37.963474	2016-12-19 20:15:37.963474
32739	7421	2217	2016-12-19 20:15:37.978892	2016-12-19 20:15:37.978892
32740	7423	2217	2016-12-19 20:15:37.992051	2016-12-19 20:15:37.992051
32741	7424	2217	2016-12-19 20:15:38.008982	2016-12-19 20:15:38.008982
32742	7492	2217	2016-12-19 20:15:38.035033	2016-12-19 20:15:38.035033
32743	7493	2217	2016-12-19 20:15:38.049105	2016-12-19 20:15:38.049105
32744	7429	2217	2016-12-19 20:15:38.063498	2016-12-19 20:15:38.063498
32745	7833	2217	2016-12-19 20:15:39.946572	2016-12-19 20:15:39.946572
32746	7431	2217	2016-12-19 20:15:39.956861	2016-12-19 20:15:39.956861
32747	7432	2217	2016-12-19 20:15:39.977792	2016-12-19 20:15:39.977792
32748	7433	2217	2016-12-19 20:15:39.988363	2016-12-19 20:15:39.988363
32749	7834	2217	2016-12-19 20:15:40.838733	2016-12-19 20:15:40.838733
32750	7835	2217	2016-12-19 20:15:42.767147	2016-12-19 20:15:42.767147
32751	7836	2217	2016-12-19 20:15:44.599966	2016-12-19 20:15:44.599966
32752	7837	2218	2016-12-19 20:15:48.278193	2016-12-19 20:15:48.278193
32753	7838	2218	2016-12-19 20:15:50.056476	2016-12-19 20:15:50.056476
32754	7839	2218	2016-12-19 20:15:51.954399	2016-12-19 20:15:51.954399
32755	7840	2218	2016-12-19 20:15:53.84698	2016-12-19 20:15:53.84698
32756	7841	2218	2016-12-19 20:15:55.706606	2016-12-19 20:15:55.706606
32757	7842	2218	2016-12-19 20:15:57.5409	2016-12-19 20:15:57.5409
32758	7843	2218	2016-12-19 20:15:59.394319	2016-12-19 20:15:59.394319
32759	7844	2218	2016-12-19 20:16:01.353321	2016-12-19 20:16:01.353321
32760	7845	2218	2016-12-19 20:16:03.507553	2016-12-19 20:16:03.507553
32761	7846	2218	2016-12-19 20:16:05.359436	2016-12-19 20:16:05.359436
32762	7832	2218	2016-12-19 20:16:05.376535	2016-12-19 20:16:05.376535
32763	7847	2218	2016-12-19 20:16:07.93746	2016-12-19 20:16:07.93746
32764	7848	2218	2016-12-19 20:16:10.633444	2016-12-19 20:16:10.633444
32765	7849	2218	2016-12-19 20:16:12.295022	2016-12-19 20:16:12.295022
32766	7850	2218	2016-12-19 20:16:13.890512	2016-12-19 20:16:13.890512
32767	7851	2218	2016-12-19 20:16:15.79402	2016-12-19 20:16:15.79402
32768	7504	2196	2016-12-19 20:16:19.729947	2016-12-19 20:16:19.729947
32769	7511	2196	2016-12-19 20:16:19.799833	2016-12-19 20:16:19.799833
32770	7512	2196	2016-12-19 20:16:19.814259	2016-12-19 20:16:19.814259
32771	7513	2196	2016-12-19 20:16:19.826995	2016-12-19 20:16:19.826995
32772	7514	2196	2016-12-19 20:16:19.840056	2016-12-19 20:16:19.840056
32773	7515	2196	2016-12-19 20:16:19.864961	2016-12-19 20:16:19.864961
32774	7518	2196	2016-12-19 20:16:19.884481	2016-12-19 20:16:19.884481
32775	7519	2196	2016-12-19 20:16:19.904588	2016-12-19 20:16:19.904588
32776	7520	2196	2016-12-19 20:16:19.917265	2016-12-19 20:16:19.917265
32777	7521	2196	2016-12-19 20:16:19.92963	2016-12-19 20:16:19.92963
32778	7505	2196	2016-12-19 20:16:19.945115	2016-12-19 20:16:19.945115
32779	7583	2196	2016-12-19 20:16:19.960589	2016-12-19 20:16:19.960589
32780	7522	2196	2016-12-19 20:16:19.976166	2016-12-19 20:16:19.976166
32781	7506	2196	2016-12-19 20:16:19.989874	2016-12-19 20:16:19.989874
32782	7584	2196	2016-12-19 20:16:20.000909	2016-12-19 20:16:20.000909
32783	7523	2196	2016-12-19 20:16:20.016844	2016-12-19 20:16:20.016844
32784	7524	2196	2016-12-19 20:16:20.030589	2016-12-19 20:16:20.030589
32785	7525	2196	2016-12-19 20:16:20.043855	2016-12-19 20:16:20.043855
32786	7360	2196	2016-12-19 20:16:20.066551	2016-12-19 20:16:20.066551
32787	7526	2196	2016-12-19 20:16:20.078207	2016-12-19 20:16:20.078207
32788	7527	2196	2016-12-19 20:16:22.99268	2016-12-19 20:16:22.99268
32789	7528	2196	2016-12-19 20:16:23.057134	2016-12-19 20:16:23.057134
32790	7529	2196	2016-12-19 20:16:23.076843	2016-12-19 20:16:23.076843
32791	7530	2196	2016-12-19 20:16:23.100919	2016-12-19 20:16:23.100919
32792	7531	2196	2016-12-19 20:16:23.108845	2016-12-19 20:16:23.108845
32793	7532	2196	2016-12-19 20:16:23.129535	2016-12-19 20:16:23.129535
32794	7533	2196	2016-12-19 20:16:23.145371	2016-12-19 20:16:23.145371
32795	7534	2196	2016-12-19 20:16:23.164144	2016-12-19 20:16:23.164144
32796	7535	2196	2016-12-19 20:16:23.186855	2016-12-19 20:16:23.186855
32797	7536	2196	2016-12-19 20:16:23.208122	2016-12-19 20:16:23.208122
32798	7585	2196	2016-12-19 20:16:23.219793	2016-12-19 20:16:23.219793
32799	7537	2196	2016-12-19 20:16:23.249475	2016-12-19 20:16:23.249475
32800	7538	2196	2016-12-19 20:16:23.258662	2016-12-19 20:16:23.258662
32801	7586	2196	2016-12-19 20:16:23.276071	2016-12-19 20:16:23.276071
32802	7587	2196	2016-12-19 20:16:23.290905	2016-12-19 20:16:23.290905
32803	7588	2196	2016-12-19 20:16:23.312714	2016-12-19 20:16:23.312714
32804	7589	2196	2016-12-19 20:16:23.325672	2016-12-19 20:16:23.325672
32805	7590	2196	2016-12-19 20:16:23.336611	2016-12-19 20:16:23.336611
32806	7591	2196	2016-12-19 20:16:23.361333	2016-12-19 20:16:23.361333
32807	7592	2196	2016-12-19 20:16:23.369547	2016-12-19 20:16:23.369547
32808	7593	2196	2016-12-19 20:16:26.084245	2016-12-19 20:16:26.084245
32809	7594	2196	2016-12-19 20:16:26.155633	2016-12-19 20:16:26.155633
32810	7595	2196	2016-12-19 20:16:26.166787	2016-12-19 20:16:26.166787
32811	7596	2196	2016-12-19 20:16:26.186468	2016-12-19 20:16:26.186468
32812	7597	2196	2016-12-19 20:16:26.210059	2016-12-19 20:16:26.210059
32813	7507	2196	2016-12-19 20:16:26.244452	2016-12-19 20:16:26.244452
32814	7508	2196	2016-12-19 20:16:26.261119	2016-12-19 20:16:26.261119
32815	7509	2196	2016-12-19 20:16:26.279562	2016-12-19 20:16:26.279562
32816	7598	2196	2016-12-19 20:16:26.303018	2016-12-19 20:16:26.303018
32817	7599	2196	2016-12-19 20:16:26.32198	2016-12-19 20:16:26.32198
32818	7600	2196	2016-12-19 20:16:26.338587	2016-12-19 20:16:26.338587
32819	7601	2196	2016-12-19 20:16:26.357134	2016-12-19 20:16:26.357134
32820	7557	2196	2016-12-19 20:16:26.378962	2016-12-19 20:16:26.378962
32821	7558	2196	2016-12-19 20:16:26.388883	2016-12-19 20:16:26.388883
32822	7559	2196	2016-12-19 20:16:26.41374	2016-12-19 20:16:26.41374
32823	7560	2196	2016-12-19 20:16:26.432131	2016-12-19 20:16:26.432131
32824	7561	2196	2016-12-19 20:16:26.447601	2016-12-19 20:16:26.447601
32825	7372	2196	2016-12-19 20:16:26.459605	2016-12-19 20:16:26.459605
32826	7370	2196	2016-12-19 20:16:26.478791	2016-12-19 20:16:26.478791
32827	7716	2196	2016-12-19 20:16:26.496054	2016-12-19 20:16:26.496054
32828	7717	2196	2016-12-19 20:16:28.324549	2016-12-19 20:16:28.324549
32829	7718	2196	2016-12-19 20:16:28.437676	2016-12-19 20:16:28.437676
32830	7719	2196	2016-12-19 20:16:28.445391	2016-12-19 20:16:28.445391
32831	7720	2196	2016-12-19 20:16:28.46816	2016-12-19 20:16:28.46816
32832	7721	2196	2016-12-19 20:16:28.485361	2016-12-19 20:16:28.485361
32833	7722	2196	2016-12-19 20:16:28.507222	2016-12-19 20:16:28.507222
32834	7723	2196	2016-12-19 20:16:28.521092	2016-12-19 20:16:28.521092
32835	7724	2196	2016-12-19 20:16:28.531349	2016-12-19 20:16:28.531349
32836	7725	2196	2016-12-19 20:16:28.559057	2016-12-19 20:16:28.559057
32837	7726	2196	2016-12-19 20:16:28.571972	2016-12-19 20:16:28.571972
32838	7727	2196	2016-12-19 20:16:28.592358	2016-12-19 20:16:28.592358
32839	7728	2196	2016-12-19 20:16:28.61421	2016-12-19 20:16:28.61421
32840	7729	2196	2016-12-19 20:16:28.630442	2016-12-19 20:16:28.630442
32841	7730	2196	2016-12-19 20:16:28.651751	2016-12-19 20:16:28.651751
32842	7731	2196	2016-12-19 20:16:28.669666	2016-12-19 20:16:28.669666
32843	7732	2196	2016-12-19 20:16:28.684813	2016-12-19 20:16:28.684813
32844	7733	2196	2016-12-19 20:16:28.706604	2016-12-19 20:16:28.706604
32845	7735	2196	2016-12-19 20:16:28.732759	2016-12-19 20:16:28.732759
32846	7736	2196	2016-12-19 20:16:28.761115	2016-12-19 20:16:28.761115
32847	7737	2196	2016-12-19 20:16:28.783092	2016-12-19 20:16:28.783092
32848	7740	2196	2016-12-19 20:16:30.832134	2016-12-19 20:16:30.832134
32849	7743	2196	2016-12-19 20:16:30.905201	2016-12-19 20:16:30.905201
32850	7746	2196	2016-12-19 20:16:30.914676	2016-12-19 20:16:30.914676
32851	7747	2196	2016-12-19 20:16:30.936377	2016-12-19 20:16:30.936377
32852	7748	2196	2016-12-19 20:16:30.951568	2016-12-19 20:16:30.951568
32853	7749	2196	2016-12-19 20:16:30.974824	2016-12-19 20:16:30.974824
32854	7625	2196	2016-12-19 20:16:30.989455	2016-12-19 20:16:30.989455
32855	7626	2196	2016-12-19 20:16:31.006373	2016-12-19 20:16:31.006373
32856	7627	2196	2016-12-19 20:16:31.02241	2016-12-19 20:16:31.02241
32857	7628	2196	2016-12-19 20:16:31.043027	2016-12-19 20:16:31.043027
32858	7629	2196	2016-12-19 20:16:31.060141	2016-12-19 20:16:31.060141
32859	7630	2196	2016-12-19 20:16:31.076117	2016-12-19 20:16:31.076117
32860	7631	2196	2016-12-19 20:16:31.093904	2016-12-19 20:16:31.093904
32861	7632	2196	2016-12-19 20:16:31.114714	2016-12-19 20:16:31.114714
32862	7633	2196	2016-12-19 20:16:31.135647	2016-12-19 20:16:31.135647
32863	7634	2196	2016-12-19 20:16:31.149431	2016-12-19 20:16:31.149431
32864	7639	2196	2016-12-19 20:16:31.159888	2016-12-19 20:16:31.159888
32865	7759	2196	2016-12-19 20:16:31.175318	2016-12-19 20:16:31.175318
32866	7760	2196	2016-12-19 20:16:31.188925	2016-12-19 20:16:31.188925
32867	7761	2196	2016-12-19 20:16:31.201467	2016-12-19 20:16:31.201467
32868	7762	2196	2016-12-19 20:16:33.176296	2016-12-19 20:16:33.176296
32869	7688	2196	2016-12-19 20:16:33.236382	2016-12-19 20:16:33.236382
32870	7689	2196	2016-12-19 20:16:33.255218	2016-12-19 20:16:33.255218
32871	7690	2196	2016-12-19 20:16:33.269595	2016-12-19 20:16:33.269595
32872	7763	2196	2016-12-19 20:16:33.291653	2016-12-19 20:16:33.291653
32873	7764	2196	2016-12-19 20:16:33.306269	2016-12-19 20:16:33.306269
32874	7765	2196	2016-12-19 20:16:33.322254	2016-12-19 20:16:33.322254
32875	7766	2196	2016-12-19 20:16:33.336302	2016-12-19 20:16:33.336302
32876	7691	2196	2016-12-19 20:16:33.357374	2016-12-19 20:16:33.357374
32877	7658	2196	2016-12-19 20:16:33.371088	2016-12-19 20:16:33.371088
32878	7659	2196	2016-12-19 20:16:33.395657	2016-12-19 20:16:33.395657
32879	7660	2196	2016-12-19 20:16:33.405212	2016-12-19 20:16:33.405212
32880	7767	2196	2016-12-19 20:16:33.418508	2016-12-19 20:16:33.418508
32881	7768	2196	2016-12-19 20:16:33.439241	2016-12-19 20:16:33.439241
32882	7769	2196	2016-12-19 20:16:33.456674	2016-12-19 20:16:33.456674
32883	7770	2196	2016-12-19 20:16:33.46867	2016-12-19 20:16:33.46867
32884	7771	2196	2016-12-19 20:16:33.488904	2016-12-19 20:16:33.488904
32885	7692	2196	2016-12-19 20:16:33.507731	2016-12-19 20:16:33.507731
32886	7693	2196	2016-12-19 20:16:33.526751	2016-12-19 20:16:33.526751
32887	7694	2196	2016-12-19 20:16:33.548617	2016-12-19 20:16:33.548617
32888	7695	2196	2016-12-19 20:16:36.016521	2016-12-19 20:16:36.016521
32889	7696	2196	2016-12-19 20:16:36.076934	2016-12-19 20:16:36.076934
32890	7697	2196	2016-12-19 20:16:36.09501	2016-12-19 20:16:36.09501
32891	7698	2196	2016-12-19 20:16:36.114001	2016-12-19 20:16:36.114001
32892	7699	2196	2016-12-19 20:16:36.125068	2016-12-19 20:16:36.125068
32893	7700	2196	2016-12-19 20:16:36.141328	2016-12-19 20:16:36.141328
32894	7701	2196	2016-12-19 20:16:36.156894	2016-12-19 20:16:36.156894
32895	7702	2196	2016-12-19 20:16:36.174962	2016-12-19 20:16:36.174962
32896	7703	2196	2016-12-19 20:16:36.186065	2016-12-19 20:16:36.186065
32897	7772	2196	2016-12-19 20:16:36.20278	2016-12-19 20:16:36.20278
32898	7706	2196	2016-12-19 20:16:36.221089	2016-12-19 20:16:36.221089
32899	7647	2196	2016-12-19 20:16:36.237762	2016-12-19 20:16:36.237762
32900	7648	2196	2016-12-19 20:16:36.255865	2016-12-19 20:16:36.255865
32901	7516	2196	2016-12-19 20:16:36.27081	2016-12-19 20:16:36.27081
32902	7517	2196	2016-12-19 20:16:36.279506	2016-12-19 20:16:36.279506
32903	7778	2196	2016-12-19 20:16:36.297029	2016-12-19 20:16:36.297029
32904	7779	2196	2016-12-19 20:16:36.314608	2016-12-19 20:16:36.314608
32905	7780	2196	2016-12-19 20:16:36.332753	2016-12-19 20:16:36.332753
32906	7783	2196	2016-12-19 20:16:36.348177	2016-12-19 20:16:36.348177
32907	7784	2196	2016-12-19 20:16:36.368129	2016-12-19 20:16:36.368129
32908	7790	2196	2016-12-19 20:16:38.106518	2016-12-19 20:16:38.106518
32909	7791	2196	2016-12-19 20:16:38.164596	2016-12-19 20:16:38.164596
32910	7792	2196	2016-12-19 20:16:38.182508	2016-12-19 20:16:38.182508
32911	7793	2196	2016-12-19 20:16:38.192277	2016-12-19 20:16:38.192277
32912	7794	2196	2016-12-19 20:16:38.208106	2016-12-19 20:16:38.208106
32913	7795	2196	2016-12-19 20:16:38.225855	2016-12-19 20:16:38.225855
32914	7797	2196	2016-12-19 20:16:38.243586	2016-12-19 20:16:38.243586
32915	7798	2196	2016-12-19 20:16:38.260549	2016-12-19 20:16:38.260549
32916	7819	2196	2016-12-19 20:16:38.275284	2016-12-19 20:16:38.275284
32917	7837	2196	2016-12-19 20:16:38.292062	2016-12-19 20:16:38.292062
32918	7838	2196	2016-12-19 20:16:38.305375	2016-12-19 20:16:38.305375
32919	7839	2196	2016-12-19 20:16:38.328603	2016-12-19 20:16:38.328603
32920	7852	2196	2016-12-19 20:16:40.294116	2016-12-19 20:16:40.294116
32921	7840	2196	2016-12-19 20:16:40.303844	2016-12-19 20:16:40.303844
32922	7841	2196	2016-12-19 20:16:40.317444	2016-12-19 20:16:40.317444
32923	7842	2196	2016-12-19 20:16:40.339402	2016-12-19 20:16:40.339402
32924	7843	2196	2016-12-19 20:16:40.351048	2016-12-19 20:16:40.351048
32925	7844	2196	2016-12-19 20:16:40.375947	2016-12-19 20:16:40.375947
32926	7845	2196	2016-12-19 20:16:40.394988	2016-12-19 20:16:40.394988
32927	7846	2196	2016-12-19 20:16:40.413991	2016-12-19 20:16:40.413991
32928	7853	2196	2016-12-19 20:16:44.392553	2016-12-19 20:16:44.392553
32929	7854	2196	2016-12-19 20:16:46.439472	2016-12-19 20:16:46.439472
32930	7855	2196	2016-12-19 20:16:49.30227	2016-12-19 20:16:49.30227
32931	7847	2196	2016-12-19 20:16:49.317512	2016-12-19 20:16:49.317512
32932	7848	2196	2016-12-19 20:16:49.329007	2016-12-19 20:16:49.329007
32933	7856	2196	2016-12-19 20:16:51.304749	2016-12-19 20:16:51.304749
32934	7857	2196	2016-12-19 20:16:53.217602	2016-12-19 20:16:53.217602
32935	7858	2196	2016-12-19 20:16:55.237091	2016-12-19 20:16:55.237091
32936	7859	2196	2016-12-19 20:16:57.118267	2016-12-19 20:16:57.118267
32937	7860	2196	2016-12-19 20:16:58.960718	2016-12-19 20:16:58.960718
32938	7861	2196	2016-12-19 20:17:00.993307	2016-12-19 20:17:00.993307
32939	7862	2196	2016-12-19 20:17:03.175687	2016-12-19 20:17:03.175687
32940	7863	2196	2016-12-19 20:17:05.079256	2016-12-19 20:17:05.079256
32941	7864	2196	2016-12-19 20:17:06.958782	2016-12-19 20:17:06.958782
32942	7865	2196	2016-12-19 20:17:08.974872	2016-12-19 20:17:08.974872
32943	7866	2196	2016-12-19 20:17:10.922892	2016-12-19 20:17:10.922892
32944	7867	2196	2016-12-19 20:17:12.933864	2016-12-19 20:17:12.933864
32945	7868	2196	2016-12-19 20:17:14.851544	2016-12-19 20:17:14.851544
32946	7869	2196	2016-12-19 20:17:16.854508	2016-12-19 20:17:16.854508
32947	7818	2196	2016-12-19 20:17:16.877503	2016-12-19 20:17:16.877503
32948	7796	2196	2016-12-19 20:17:19.22799	2016-12-19 20:17:19.22799
32949	7411	2196	2016-12-19 20:17:19.270213	2016-12-19 20:17:19.270213
32950	7412	2196	2016-12-19 20:17:19.298951	2016-12-19 20:17:19.298951
32951	7413	2196	2016-12-19 20:17:19.309879	2016-12-19 20:17:19.309879
32952	7832	2196	2016-12-19 20:17:19.325312	2016-12-19 20:17:19.325312
32953	7415	2196	2016-12-19 20:17:19.341739	2016-12-19 20:17:19.341739
32954	7417	2196	2016-12-19 20:17:19.360993	2016-12-19 20:17:19.360993
32955	7418	2196	2016-12-19 20:17:19.373598	2016-12-19 20:17:19.373598
32956	7419	2196	2016-12-19 20:17:19.38351	2016-12-19 20:17:19.38351
32957	7420	2196	2016-12-19 20:17:19.395579	2016-12-19 20:17:19.395579
32958	7421	2196	2016-12-19 20:17:19.415614	2016-12-19 20:17:19.415614
32959	7661	2196	2016-12-19 20:17:19.429453	2016-12-19 20:17:19.429453
32960	7704	2196	2016-12-19 20:17:19.438935	2016-12-19 20:17:19.438935
32961	7705	2196	2016-12-19 20:17:19.471803	2016-12-19 20:17:19.471803
32962	7773	2196	2016-12-19 20:17:19.48587	2016-12-19 20:17:19.48587
32963	7774	2196	2016-12-19 20:17:19.508051	2016-12-19 20:17:19.508051
32964	7510	2196	2016-12-19 20:17:19.524899	2016-12-19 20:17:19.524899
32965	7539	2196	2016-12-19 20:17:19.544573	2016-12-19 20:17:19.544573
32966	7540	2196	2016-12-19 20:17:19.559531	2016-12-19 20:17:19.559531
32967	7541	2196	2016-12-19 20:17:19.579066	2016-12-19 20:17:19.579066
32968	7542	2196	2016-12-19 20:17:25.271719	2016-12-19 20:17:25.271719
32969	7543	2196	2016-12-19 20:17:25.283599	2016-12-19 20:17:25.283599
32970	7544	2196	2016-12-19 20:17:25.302994	2016-12-19 20:17:25.302994
32971	7545	2196	2016-12-19 20:17:25.323137	2016-12-19 20:17:25.323137
32972	7546	2196	2016-12-19 20:17:25.344137	2016-12-19 20:17:25.344137
32973	7547	2196	2016-12-19 20:17:25.35937	2016-12-19 20:17:25.35937
32974	7548	2196	2016-12-19 20:17:25.368274	2016-12-19 20:17:25.368274
32975	7549	2196	2016-12-19 20:17:25.385921	2016-12-19 20:17:25.385921
32976	7550	2196	2016-12-19 20:17:25.404216	2016-12-19 20:17:25.404216
32977	7551	2196	2016-12-19 20:17:25.423508	2016-12-19 20:17:25.423508
32978	7552	2196	2016-12-19 20:17:25.455888	2016-12-19 20:17:25.455888
32979	7553	2196	2016-12-19 20:17:25.466993	2016-12-19 20:17:25.466993
32980	7554	2196	2016-12-19 20:17:25.484122	2016-12-19 20:17:25.484122
32981	7555	2196	2016-12-19 20:17:25.509623	2016-12-19 20:17:25.509623
32982	7556	2196	2016-12-19 20:17:25.522169	2016-12-19 20:17:25.522169
32983	7602	2196	2016-12-19 20:17:25.547264	2016-12-19 20:17:25.547264
32984	7734	2196	2016-12-19 20:17:25.558126	2016-12-19 20:17:25.558126
32985	7603	2196	2016-12-19 20:17:25.580848	2016-12-19 20:17:25.580848
32986	7604	2196	2016-12-19 20:17:25.59709	2016-12-19 20:17:25.59709
32987	7605	2196	2016-12-19 20:17:25.621892	2016-12-19 20:17:25.621892
32988	7606	2196	2016-12-19 20:17:28.871775	2016-12-19 20:17:28.871775
32989	7562	2196	2016-12-19 20:17:28.943653	2016-12-19 20:17:28.943653
32990	7563	2196	2016-12-19 20:17:28.957439	2016-12-19 20:17:28.957439
32991	7607	2196	2016-12-19 20:17:28.981562	2016-12-19 20:17:28.981562
32992	7608	2196	2016-12-19 20:17:29.004762	2016-12-19 20:17:29.004762
32993	7609	2196	2016-12-19 20:17:29.020582	2016-12-19 20:17:29.020582
32994	7610	2196	2016-12-19 20:17:29.036971	2016-12-19 20:17:29.036971
32995	7611	2196	2016-12-19 20:17:29.061501	2016-12-19 20:17:29.061501
32996	7612	2196	2016-12-19 20:17:29.079872	2016-12-19 20:17:29.079872
32997	7613	2196	2016-12-19 20:17:29.100969	2016-12-19 20:17:29.100969
32998	7614	2196	2016-12-19 20:17:29.119766	2016-12-19 20:17:29.119766
32999	7615	2196	2016-12-19 20:17:29.138644	2016-12-19 20:17:29.138644
33000	7616	2196	2016-12-19 20:17:29.155358	2016-12-19 20:17:29.155358
33001	7617	2196	2016-12-19 20:17:29.164899	2016-12-19 20:17:29.164899
33002	7618	2196	2016-12-19 20:17:29.185011	2016-12-19 20:17:29.185011
33003	7619	2196	2016-12-19 20:17:29.198768	2016-12-19 20:17:29.198768
33004	7635	2196	2016-12-19 20:17:29.217601	2016-12-19 20:17:29.217601
33005	7636	2196	2016-12-19 20:17:29.233985	2016-12-19 20:17:29.233985
33006	7637	2196	2016-12-19 20:17:29.254253	2016-12-19 20:17:29.254253
33007	7638	2196	2016-12-19 20:17:29.270181	2016-12-19 20:17:29.270181
33008	7423	2196	2016-12-19 20:17:31.955382	2016-12-19 20:17:31.955382
33009	7424	2196	2016-12-19 20:17:32.026168	2016-12-19 20:17:32.026168
33010	7492	2196	2016-12-19 20:17:32.036494	2016-12-19 20:17:32.036494
33011	7493	2196	2016-12-19 20:17:32.062871	2016-12-19 20:17:32.062871
33012	7849	2196	2016-12-19 20:17:32.076335	2016-12-19 20:17:32.076335
33013	7775	2196	2016-12-19 20:17:32.103965	2016-12-19 20:17:32.103965
33014	7662	2196	2016-12-19 20:17:32.113301	2016-12-19 20:17:32.113301
33015	7663	2196	2016-12-19 20:17:32.13609	2016-12-19 20:17:32.13609
33016	7664	2196	2016-12-19 20:17:32.155989	2016-12-19 20:17:32.155989
33017	7781	2196	2016-12-19 20:17:32.166929	2016-12-19 20:17:32.166929
33018	7652	2196	2016-12-19 20:17:32.18871	2016-12-19 20:17:32.18871
33019	7564	2196	2016-12-19 20:17:32.205681	2016-12-19 20:17:32.205681
33020	7565	2196	2016-12-19 20:17:32.233127	2016-12-19 20:17:32.233127
33021	7820	2196	2016-12-19 20:17:32.247194	2016-12-19 20:17:32.247194
33022	7821	2196	2016-12-19 20:17:32.261414	2016-12-19 20:17:32.261414
33023	7738	2196	2016-12-19 20:17:32.272279	2016-12-19 20:17:32.272279
33024	7739	2196	2016-12-19 20:17:32.29026	2016-12-19 20:17:32.29026
33025	7850	2196	2016-12-19 20:17:32.307665	2016-12-19 20:17:32.307665
33026	7822	2196	2016-12-19 20:17:32.324756	2016-12-19 20:17:32.324756
33027	7823	2196	2016-12-19 20:17:32.33456	2016-12-19 20:17:32.33456
33028	7782	2196	2016-12-19 20:17:34.280668	2016-12-19 20:17:34.280668
33029	7566	2196	2016-12-19 20:17:34.348998	2016-12-19 20:17:34.348998
33030	7785	2196	2016-12-19 20:17:34.359858	2016-12-19 20:17:34.359858
33031	7786	2196	2016-12-19 20:17:34.391542	2016-12-19 20:17:34.391542
33032	7787	2196	2016-12-19 20:17:34.423532	2016-12-19 20:17:34.423532
33033	7788	2196	2016-12-19 20:17:34.44322	2016-12-19 20:17:34.44322
33034	7789	2196	2016-12-19 20:17:34.464934	2016-12-19 20:17:34.464934
33035	7429	2196	2016-12-19 20:17:34.482597	2016-12-19 20:17:34.482597
33036	7741	2196	2016-12-19 20:17:34.506761	2016-12-19 20:17:34.506761
33037	7742	2196	2016-12-19 20:17:34.52196	2016-12-19 20:17:34.52196
33038	7744	2196	2016-12-19 20:17:34.544989	2016-12-19 20:17:34.544989
33039	7745	2196	2016-12-19 20:17:34.556575	2016-12-19 20:17:34.556575
33040	7799	2196	2016-12-19 20:17:34.575907	2016-12-19 20:17:34.575907
33041	7800	2196	2016-12-19 20:17:34.592283	2016-12-19 20:17:34.592283
33042	7801	2196	2016-12-19 20:17:34.619614	2016-12-19 20:17:34.619614
33043	7802	2196	2016-12-19 20:17:34.631603	2016-12-19 20:17:34.631603
33044	7803	2196	2016-12-19 20:17:34.654669	2016-12-19 20:17:34.654669
33045	7804	2196	2016-12-19 20:17:34.671637	2016-12-19 20:17:34.671637
33046	7805	2196	2016-12-19 20:17:34.694825	2016-12-19 20:17:34.694825
33047	7806	2196	2016-12-19 20:17:34.715414	2016-12-19 20:17:34.715414
33048	7750	2196	2016-12-19 20:17:37.297731	2016-12-19 20:17:37.297731
33049	7751	2196	2016-12-19 20:17:37.312225	2016-12-19 20:17:37.312225
33050	7752	2196	2016-12-19 20:17:37.331233	2016-12-19 20:17:37.331233
33051	7567	2196	2016-12-19 20:17:37.348728	2016-12-19 20:17:37.348728
33052	7568	2196	2016-12-19 20:17:37.364488	2016-12-19 20:17:37.364488
33053	7569	2196	2016-12-19 20:17:37.386627	2016-12-19 20:17:37.386627
33054	7570	2196	2016-12-19 20:17:37.402953	2016-12-19 20:17:37.402953
33055	7571	2196	2016-12-19 20:17:37.425087	2016-12-19 20:17:37.425087
33056	7572	2196	2016-12-19 20:17:37.441336	2016-12-19 20:17:37.441336
33057	7833	2196	2016-12-19 20:17:37.461055	2016-12-19 20:17:37.461055
33058	7431	2196	2016-12-19 20:17:37.47801	2016-12-19 20:17:37.47801
33059	7432	2196	2016-12-19 20:17:37.50106	2016-12-19 20:17:37.50106
33060	7433	2196	2016-12-19 20:17:37.520473	2016-12-19 20:17:37.520473
33061	7834	2196	2016-12-19 20:17:37.536822	2016-12-19 20:17:37.536822
33062	7807	2196	2016-12-19 20:17:37.55598	2016-12-19 20:17:37.55598
33063	7824	2196	2016-12-19 20:17:37.569397	2016-12-19 20:17:37.569397
33064	7776	2196	2016-12-19 20:17:37.584438	2016-12-19 20:17:37.584438
33065	7835	2196	2016-12-19 20:17:37.601568	2016-12-19 20:17:37.601568
33066	7825	2196	2016-12-19 20:17:37.623326	2016-12-19 20:17:37.623326
33067	7826	2196	2016-12-19 20:17:37.640053	2016-12-19 20:17:37.640053
33068	7640	2196	2016-12-19 20:17:40.97652	2016-12-19 20:17:40.97652
33069	7682	2196	2016-12-19 20:17:41.043942	2016-12-19 20:17:41.043942
33070	7683	2196	2016-12-19 20:17:41.067468	2016-12-19 20:17:41.067468
33071	7684	2196	2016-12-19 20:17:41.174965	2016-12-19 20:17:41.174965
33072	7753	2196	2016-12-19 20:17:41.207873	2016-12-19 20:17:41.207873
33073	7367	2196	2016-12-19 20:17:41.223431	2016-12-19 20:17:41.223431
33074	7620	2196	2016-12-19 20:17:41.253123	2016-12-19 20:17:41.253123
33075	7621	2196	2016-12-19 20:17:41.263852	2016-12-19 20:17:41.263852
33076	7622	2196	2016-12-19 20:17:41.284331	2016-12-19 20:17:41.284331
33077	7623	2196	2016-12-19 20:17:41.30684	2016-12-19 20:17:41.30684
33078	7573	2196	2016-12-19 20:17:41.327583	2016-12-19 20:17:41.327583
33079	7574	2196	2016-12-19 20:17:41.343647	2016-12-19 20:17:41.343647
33080	7575	2196	2016-12-19 20:17:41.365296	2016-12-19 20:17:41.365296
33081	7577	2196	2016-12-19 20:17:41.380241	2016-12-19 20:17:41.380241
33082	7578	2196	2016-12-19 20:17:41.404391	2016-12-19 20:17:41.404391
33083	7579	2196	2016-12-19 20:17:41.418675	2016-12-19 20:17:41.418675
33084	7580	2196	2016-12-19 20:17:41.445012	2016-12-19 20:17:41.445012
33085	7581	2196	2016-12-19 20:17:41.462715	2016-12-19 20:17:41.462715
33086	7582	2196	2016-12-19 20:17:41.486259	2016-12-19 20:17:41.486259
33087	7624	2196	2016-12-19 20:17:41.508176	2016-12-19 20:17:41.508176
33088	7642	2196	2016-12-19 20:17:43.366673	2016-12-19 20:17:43.366673
33089	7643	2196	2016-12-19 20:17:43.504902	2016-12-19 20:17:43.504902
33090	7754	2196	2016-12-19 20:17:43.520275	2016-12-19 20:17:43.520275
33091	7755	2196	2016-12-19 20:17:43.557011	2016-12-19 20:17:43.557011
33092	7756	2196	2016-12-19 20:17:43.584806	2016-12-19 20:17:43.584806
33093	7757	2196	2016-12-19 20:17:43.611418	2016-12-19 20:17:43.611418
33094	7645	2196	2016-12-19 20:17:43.633363	2016-12-19 20:17:43.633363
33095	7646	2196	2016-12-19 20:17:43.659248	2016-12-19 20:17:43.659248
33096	7715	2196	2016-12-19 20:17:43.678237	2016-12-19 20:17:43.678237
33097	7758	2196	2016-12-19 20:17:43.694969	2016-12-19 20:17:43.694969
33098	7810	2196	2016-12-19 20:17:43.711268	2016-12-19 20:17:43.711268
33099	7707	2196	2016-12-19 20:17:43.739125	2016-12-19 20:17:43.739125
33100	7708	2196	2016-12-19 20:17:43.75599	2016-12-19 20:17:43.75599
33101	7709	2196	2016-12-19 20:17:43.779503	2016-12-19 20:17:43.779503
33102	7649	2196	2016-12-19 20:17:43.798359	2016-12-19 20:17:43.798359
33103	7650	2196	2016-12-19 20:17:43.818681	2016-12-19 20:17:43.818681
33104	7710	2196	2016-12-19 20:17:43.836855	2016-12-19 20:17:43.836855
33105	7711	2196	2016-12-19 20:17:43.849007	2016-12-19 20:17:43.849007
33106	7712	2196	2016-12-19 20:17:43.874487	2016-12-19 20:17:43.874487
33107	7713	2196	2016-12-19 20:17:43.888686	2016-12-19 20:17:43.888686
33108	7777	2196	2016-12-19 20:17:45.920287	2016-12-19 20:17:45.920287
33109	7667	2196	2016-12-19 20:17:45.982094	2016-12-19 20:17:45.982094
33110	7576	2196	2016-12-19 20:17:45.996241	2016-12-19 20:17:45.996241
33111	7687	2196	2016-12-19 20:17:46.020634	2016-12-19 20:17:46.020634
33112	7808	2196	2016-12-19 20:17:46.041365	2016-12-19 20:17:46.041365
33113	7809	2196	2016-12-19 20:17:46.066	2016-12-19 20:17:46.066
33114	7811	2196	2016-12-19 20:17:46.094848	2016-12-19 20:17:46.094848
33115	7812	2196	2016-12-19 20:17:46.107133	2016-12-19 20:17:46.107133
33116	7813	2196	2016-12-19 20:17:46.125793	2016-12-19 20:17:46.125793
33117	7814	2196	2016-12-19 20:17:46.144854	2016-12-19 20:17:46.144854
33118	7815	2196	2016-12-19 20:17:46.158439	2016-12-19 20:17:46.158439
33119	7816	2196	2016-12-19 20:17:46.176959	2016-12-19 20:17:46.176959
33120	7827	2196	2016-12-19 20:17:46.188145	2016-12-19 20:17:46.188145
33121	7828	2196	2016-12-19 20:17:46.199797	2016-12-19 20:17:46.199797
33122	7829	2196	2016-12-19 20:17:46.215992	2016-12-19 20:17:46.215992
33123	7830	2196	2016-12-19 20:17:46.233008	2016-12-19 20:17:46.233008
33124	7831	2196	2016-12-19 20:17:46.252023	2016-12-19 20:17:46.252023
33125	7851	2196	2016-12-19 20:17:46.264572	2016-12-19 20:17:46.264572
33126	7836	2196	2016-12-19 20:17:46.285523	2016-12-19 20:17:46.285523
33127	7665	2196	2016-12-19 20:17:46.298698	2016-12-19 20:17:46.298698
33128	7817	2196	2016-12-19 20:17:48.023092	2016-12-19 20:17:48.023092
33129	7714	2196	2016-12-19 20:17:48.080419	2016-12-19 20:17:48.080419
33130	7641	2196	2016-12-19 20:17:48.089882	2016-12-19 20:17:48.089882
33131	7666	2196	2016-12-19 20:17:48.106673	2016-12-19 20:17:48.106673
33132	7651	2196	2016-12-19 20:17:48.116976	2016-12-19 20:17:48.116976
33133	7668	2196	2016-12-19 20:17:48.129293	2016-12-19 20:17:48.129293
33134	7685	2196	2016-12-19 20:17:48.150121	2016-12-19 20:17:48.150121
33135	7653	2196	2016-12-19 20:17:48.182441	2016-12-19 20:17:48.182441
33136	7669	2196	2016-12-19 20:17:48.199735	2016-12-19 20:17:48.199735
33137	7670	2196	2016-12-19 20:17:48.222662	2016-12-19 20:17:48.222662
33138	7671	2196	2016-12-19 20:17:48.23566	2016-12-19 20:17:48.23566
33139	7672	2196	2016-12-19 20:17:48.259017	2016-12-19 20:17:48.259017
33140	7673	2196	2016-12-19 20:17:48.274626	2016-12-19 20:17:48.274626
33141	7674	2196	2016-12-19 20:17:48.301945	2016-12-19 20:17:48.301945
33142	7675	2196	2016-12-19 20:17:48.321615	2016-12-19 20:17:48.321615
33143	7676	2196	2016-12-19 20:17:48.342134	2016-12-19 20:17:48.342134
33144	7677	2196	2016-12-19 20:17:48.359178	2016-12-19 20:17:48.359178
33145	7678	2196	2016-12-19 20:17:48.379049	2016-12-19 20:17:48.379049
33146	7679	2196	2016-12-19 20:17:48.395034	2016-12-19 20:17:48.395034
33147	7680	2196	2016-12-19 20:17:48.428021	2016-12-19 20:17:48.428021
33148	7681	2196	2016-12-19 20:17:50.2548	2016-12-19 20:17:50.2548
33149	7686	2196	2016-12-19 20:17:50.307597	2016-12-19 20:17:50.307597
33150	7644	2196	2016-12-19 20:17:50.323816	2016-12-19 20:17:50.323816
33151	7654	2196	2016-12-19 20:17:50.347855	2016-12-19 20:17:50.347855
33152	7655	2196	2016-12-19 20:17:50.360315	2016-12-19 20:17:50.360315
33153	7656	2196	2016-12-19 20:17:50.37857	2016-12-19 20:17:50.37857
33154	7657	2196	2016-12-19 20:17:50.394741	2016-12-19 20:17:50.394741
33155	7747	2211	2016-12-19 20:17:51.993365	2016-12-19 20:17:51.993365
33156	7748	2211	2016-12-19 20:17:52.06877	2016-12-19 20:17:52.06877
33157	7749	2211	2016-12-19 20:17:52.078888	2016-12-19 20:17:52.078888
33158	7790	2211	2016-12-19 20:17:52.094634	2016-12-19 20:17:52.094634
33159	7837	2211	2016-12-19 20:17:52.106167	2016-12-19 20:17:52.106167
33160	7838	2211	2016-12-19 20:17:52.134069	2016-12-19 20:17:52.134069
33161	7839	2211	2016-12-19 20:17:52.152265	2016-12-19 20:17:52.152265
33162	7791	2211	2016-12-19 20:17:52.173131	2016-12-19 20:17:52.173131
33163	7792	2211	2016-12-19 20:17:52.194833	2016-12-19 20:17:52.194833
33164	7794	2211	2016-12-19 20:17:52.219534	2016-12-19 20:17:52.219534
33165	7759	2211	2016-12-19 20:17:52.231062	2016-12-19 20:17:52.231062
33166	7760	2211	2016-12-19 20:17:52.25094	2016-12-19 20:17:52.25094
33167	7761	2211	2016-12-19 20:17:52.26602	2016-12-19 20:17:52.26602
33168	7762	2211	2016-12-19 20:17:52.286956	2016-12-19 20:17:52.286956
33169	7763	2211	2016-12-19 20:17:52.309664	2016-12-19 20:17:52.309664
33170	7764	2211	2016-12-19 20:17:52.327847	2016-12-19 20:17:52.327847
33171	7765	2211	2016-12-19 20:17:52.339082	2016-12-19 20:17:52.339082
33172	7766	2211	2016-12-19 20:17:52.363379	2016-12-19 20:17:52.363379
33173	7795	2211	2016-12-19 20:17:52.382563	2016-12-19 20:17:52.382563
33174	7793	2211	2016-12-19 20:17:52.392255	2016-12-19 20:17:52.392255
33175	7716	2211	2016-12-19 20:17:54.104809	2016-12-19 20:17:54.104809
33176	7717	2211	2016-12-19 20:17:54.12073	2016-12-19 20:17:54.12073
33177	7718	2211	2016-12-19 20:17:54.141511	2016-12-19 20:17:54.141511
33178	7852	2211	2016-12-19 20:17:54.156894	2016-12-19 20:17:54.156894
33179	7818	2211	2016-12-19 20:17:54.174819	2016-12-19 20:17:54.174819
33180	7796	2211	2016-12-19 20:17:54.199899	2016-12-19 20:17:54.199899
33181	7719	2211	2016-12-19 20:17:54.210473	2016-12-19 20:17:54.210473
33182	7411	2211	2016-12-19 20:17:54.229143	2016-12-19 20:17:54.229143
33183	7412	2211	2016-12-19 20:17:54.244611	2016-12-19 20:17:54.244611
33184	7413	2211	2016-12-19 20:17:54.264484	2016-12-19 20:17:54.264484
33185	7840	2211	2016-12-19 20:17:54.277512	2016-12-19 20:17:54.277512
33186	7841	2211	2016-12-19 20:17:54.291717	2016-12-19 20:17:54.291717
33187	7842	2211	2016-12-19 20:17:54.314252	2016-12-19 20:17:54.314252
33188	7843	2211	2016-12-19 20:17:54.33326	2016-12-19 20:17:54.33326
33189	7844	2211	2016-12-19 20:17:54.351339	2016-12-19 20:17:54.351339
33190	7845	2211	2016-12-19 20:17:54.364068	2016-12-19 20:17:54.364068
33191	7778	2211	2016-12-19 20:17:54.380455	2016-12-19 20:17:54.380455
33192	7767	2211	2016-12-19 20:17:54.400436	2016-12-19 20:17:54.400436
33193	7846	2211	2016-12-19 20:17:54.411846	2016-12-19 20:17:54.411846
33194	7832	2211	2016-12-19 20:17:54.433768	2016-12-19 20:17:54.433768
33195	7415	2211	2016-12-19 20:17:56.059593	2016-12-19 20:17:56.059593
33196	7417	2211	2016-12-19 20:17:56.125749	2016-12-19 20:17:56.125749
33197	7418	2211	2016-12-19 20:17:56.147277	2016-12-19 20:17:56.147277
33198	7419	2211	2016-12-19 20:17:56.161168	2016-12-19 20:17:56.161168
33199	7420	2211	2016-12-19 20:17:56.171682	2016-12-19 20:17:56.171682
33200	7421	2211	2016-12-19 20:17:56.183229	2016-12-19 20:17:56.183229
33201	7768	2211	2016-12-19 20:17:56.205055	2016-12-19 20:17:56.205055
33202	7720	2211	2016-12-19 20:17:56.216418	2016-12-19 20:17:56.216418
33203	7721	2211	2016-12-19 20:17:56.234924	2016-12-19 20:17:56.234924
33204	7722	2211	2016-12-19 20:17:56.248741	2016-12-19 20:17:56.248741
33205	7723	2211	2016-12-19 20:17:56.267837	2016-12-19 20:17:56.267837
33206	7769	2211	2016-12-19 20:17:56.288575	2016-12-19 20:17:56.288575
33207	7770	2211	2016-12-19 20:17:56.30619	2016-12-19 20:17:56.30619
33208	7853	2211	2016-12-19 20:17:56.322011	2016-12-19 20:17:56.322011
33209	7854	2211	2016-12-19 20:17:56.340333	2016-12-19 20:17:56.340333
33210	7771	2211	2016-12-19 20:17:56.362606	2016-12-19 20:17:56.362606
33211	7724	2211	2016-12-19 20:17:56.386823	2016-12-19 20:17:56.386823
33212	7725	2211	2016-12-19 20:17:56.403112	2016-12-19 20:17:56.403112
33213	7726	2211	2016-12-19 20:17:56.420511	2016-12-19 20:17:56.420511
33214	7727	2211	2016-12-19 20:17:56.438077	2016-12-19 20:17:56.438077
33215	7855	2211	2016-12-19 20:17:58.216494	2016-12-19 20:17:58.216494
33216	7728	2211	2016-12-19 20:17:58.395455	2016-12-19 20:17:58.395455
33217	7729	2211	2016-12-19 20:17:58.406153	2016-12-19 20:17:58.406153
33218	7819	2211	2016-12-19 20:17:58.434579	2016-12-19 20:17:58.434579
33219	7847	2211	2016-12-19 20:17:58.451528	2016-12-19 20:17:58.451528
33220	7848	2211	2016-12-19 20:17:58.478696	2016-12-19 20:17:58.478696
33221	7730	2211	2016-12-19 20:17:58.501459	2016-12-19 20:17:58.501459
33222	7731	2211	2016-12-19 20:17:58.524798	2016-12-19 20:17:58.524798
33223	7856	2211	2016-12-19 20:17:58.544417	2016-12-19 20:17:58.544417
33224	7857	2211	2016-12-19 20:17:58.560546	2016-12-19 20:17:58.560546
33225	7858	2211	2016-12-19 20:17:58.581103	2016-12-19 20:17:58.581103
33226	7859	2211	2016-12-19 20:17:58.602403	2016-12-19 20:17:58.602403
33227	7860	2211	2016-12-19 20:17:58.623155	2016-12-19 20:17:58.623155
33228	7732	2211	2016-12-19 20:17:58.639222	2016-12-19 20:17:58.639222
33229	7861	2211	2016-12-19 20:17:58.654488	2016-12-19 20:17:58.654488
33230	7862	2211	2016-12-19 20:17:58.667594	2016-12-19 20:17:58.667594
33231	7863	2211	2016-12-19 20:17:58.691823	2016-12-19 20:17:58.691823
33232	7864	2211	2016-12-19 20:17:58.711363	2016-12-19 20:17:58.711363
33233	7865	2211	2016-12-19 20:17:58.728291	2016-12-19 20:17:58.728291
33234	7866	2211	2016-12-19 20:17:58.745881	2016-12-19 20:17:58.745881
33235	7867	2211	2016-12-19 20:18:00.57939	2016-12-19 20:18:00.57939
33236	7868	2211	2016-12-19 20:18:00.654195	2016-12-19 20:18:00.654195
33237	7869	2211	2016-12-19 20:18:00.666707	2016-12-19 20:18:00.666707
33238	7733	2211	2016-12-19 20:18:00.68482	2016-12-19 20:18:00.68482
33239	7772	2211	2016-12-19 20:18:00.70355	2016-12-19 20:18:00.70355
33240	7773	2211	2016-12-19 20:18:00.721182	2016-12-19 20:18:00.721182
33241	7774	2211	2016-12-19 20:18:00.741918	2016-12-19 20:18:00.741918
33242	7779	2211	2016-12-19 20:18:00.772614	2016-12-19 20:18:00.772614
33243	7780	2211	2016-12-19 20:18:00.783277	2016-12-19 20:18:00.783277
33244	7734	2211	2016-12-19 20:18:00.810365	2016-12-19 20:18:00.810365
33245	7423	2211	2016-12-19 20:18:00.822394	2016-12-19 20:18:00.822394
33246	7424	2211	2016-12-19 20:18:00.845138	2016-12-19 20:18:00.845138
33247	7492	2211	2016-12-19 20:18:00.855078	2016-12-19 20:18:00.855078
33248	7493	2211	2016-12-19 20:18:00.874284	2016-12-19 20:18:00.874284
33249	7849	2211	2016-12-19 20:18:00.897281	2016-12-19 20:18:00.897281
33250	7775	2211	2016-12-19 20:18:00.916461	2016-12-19 20:18:00.916461
33251	7781	2211	2016-12-19 20:18:00.933008	2016-12-19 20:18:00.933008
33252	7797	2211	2016-12-19 20:18:00.945972	2016-12-19 20:18:00.945972
33253	7798	2211	2016-12-19 20:18:00.9596	2016-12-19 20:18:00.9596
33254	7735	2211	2016-12-19 20:18:00.977527	2016-12-19 20:18:00.977527
33255	7736	2211	2016-12-19 20:18:03.040425	2016-12-19 20:18:03.040425
33256	7737	2211	2016-12-19 20:18:03.109814	2016-12-19 20:18:03.109814
33257	7820	2211	2016-12-19 20:18:03.127238	2016-12-19 20:18:03.127238
33258	7821	2211	2016-12-19 20:18:03.152367	2016-12-19 20:18:03.152367
33259	7738	2211	2016-12-19 20:18:03.167872	2016-12-19 20:18:03.167872
33260	7739	2211	2016-12-19 20:18:03.18556	2016-12-19 20:18:03.18556
33261	7850	2211	2016-12-19 20:18:03.206288	2016-12-19 20:18:03.206288
33262	7822	2211	2016-12-19 20:18:03.216569	2016-12-19 20:18:03.216569
33263	7823	2211	2016-12-19 20:18:03.236493	2016-12-19 20:18:03.236493
33264	7782	2211	2016-12-19 20:18:03.256908	2016-12-19 20:18:03.256908
33265	7783	2211	2016-12-19 20:18:03.274886	2016-12-19 20:18:03.274886
33266	7784	2211	2016-12-19 20:18:03.292266	2016-12-19 20:18:03.292266
33267	7740	2211	2016-12-19 20:18:03.313512	2016-12-19 20:18:03.313512
33268	7785	2211	2016-12-19 20:18:03.329916	2016-12-19 20:18:03.329916
33269	7786	2211	2016-12-19 20:18:03.353477	2016-12-19 20:18:03.353477
33270	7787	2211	2016-12-19 20:18:03.36864	2016-12-19 20:18:03.36864
33271	7788	2211	2016-12-19 20:18:03.38527	2016-12-19 20:18:03.38527
33272	7789	2211	2016-12-19 20:18:03.397634	2016-12-19 20:18:03.397634
33273	7429	2211	2016-12-19 20:18:03.407948	2016-12-19 20:18:03.407948
33274	7741	2211	2016-12-19 20:18:03.428609	2016-12-19 20:18:03.428609
33275	7742	2211	2016-12-19 20:18:05.387324	2016-12-19 20:18:05.387324
33276	7743	2211	2016-12-19 20:18:05.469461	2016-12-19 20:18:05.469461
33277	7744	2211	2016-12-19 20:18:05.481367	2016-12-19 20:18:05.481367
33278	7745	2211	2016-12-19 20:18:05.502867	2016-12-19 20:18:05.502867
33279	7746	2211	2016-12-19 20:18:05.522176	2016-12-19 20:18:05.522176
33280	7799	2211	2016-12-19 20:18:05.538634	2016-12-19 20:18:05.538634
33281	7800	2211	2016-12-19 20:18:05.547608	2016-12-19 20:18:05.547608
33282	7801	2211	2016-12-19 20:18:05.561146	2016-12-19 20:18:05.561146
33283	7802	2211	2016-12-19 20:18:05.582327	2016-12-19 20:18:05.582327
33284	7803	2211	2016-12-19 20:18:05.598296	2016-12-19 20:18:05.598296
33285	7804	2211	2016-12-19 20:18:05.623914	2016-12-19 20:18:05.623914
33286	7805	2211	2016-12-19 20:18:05.633866	2016-12-19 20:18:05.633866
33287	7806	2211	2016-12-19 20:18:05.654282	2016-12-19 20:18:05.654282
33288	7750	2211	2016-12-19 20:18:05.66814	2016-12-19 20:18:05.66814
33289	7751	2211	2016-12-19 20:18:05.694117	2016-12-19 20:18:05.694117
33290	7752	2211	2016-12-19 20:18:05.705838	2016-12-19 20:18:05.705838
33291	7833	2211	2016-12-19 20:18:05.729243	2016-12-19 20:18:05.729243
33292	7431	2211	2016-12-19 20:18:05.742017	2016-12-19 20:18:05.742017
33293	7432	2211	2016-12-19 20:18:05.766101	2016-12-19 20:18:05.766101
33294	7433	2211	2016-12-19 20:18:05.777083	2016-12-19 20:18:05.777083
33295	7834	2211	2016-12-19 20:18:07.821721	2016-12-19 20:18:07.821721
33296	7807	2211	2016-12-19 20:18:07.884482	2016-12-19 20:18:07.884482
33297	7824	2211	2016-12-19 20:18:07.895972	2016-12-19 20:18:07.895972
33298	7776	2211	2016-12-19 20:18:07.914748	2016-12-19 20:18:07.914748
33299	7835	2211	2016-12-19 20:18:07.932905	2016-12-19 20:18:07.932905
33300	7825	2211	2016-12-19 20:18:07.951453	2016-12-19 20:18:07.951453
33301	7826	2211	2016-12-19 20:18:07.967564	2016-12-19 20:18:07.967564
33302	7753	2211	2016-12-19 20:18:07.989852	2016-12-19 20:18:07.989852
33303	7827	2211	2016-12-19 20:18:07.999378	2016-12-19 20:18:07.999378
33304	7851	2211	2016-12-19 20:18:08.00949	2016-12-19 20:18:08.00949
33305	7777	2211	2016-12-19 20:18:08.030709	2016-12-19 20:18:08.030709
33306	7815	2211	2016-12-19 20:18:08.043052	2016-12-19 20:18:08.043052
33307	7836	2211	2016-12-19 20:18:08.06242	2016-12-19 20:18:08.06242
33308	7754	2211	2016-12-19 20:18:08.076074	2016-12-19 20:18:08.076074
33309	7808	2211	2016-12-19 20:18:08.088664	2016-12-19 20:18:08.088664
33310	7809	2211	2016-12-19 20:18:08.105798	2016-12-19 20:18:08.105798
33311	7810	2211	2016-12-19 20:18:08.125208	2016-12-19 20:18:08.125208
33312	7816	2211	2016-12-19 20:18:08.154905	2016-12-19 20:18:08.154905
33313	7811	2211	2016-12-19 20:18:08.165803	2016-12-19 20:18:08.165803
33314	7812	2211	2016-12-19 20:18:08.182383	2016-12-19 20:18:08.182383
33315	7813	2211	2016-12-19 20:18:09.604684	2016-12-19 20:18:09.604684
33316	7814	2211	2016-12-19 20:18:09.665294	2016-12-19 20:18:09.665294
33317	7828	2211	2016-12-19 20:18:09.684765	2016-12-19 20:18:09.684765
33318	7817	2211	2016-12-19 20:18:09.702945	2016-12-19 20:18:09.702945
33319	7755	2211	2016-12-19 20:18:09.716707	2016-12-19 20:18:09.716707
33320	7756	2211	2016-12-19 20:18:09.734714	2016-12-19 20:18:09.734714
33321	7757	2211	2016-12-19 20:18:09.748865	2016-12-19 20:18:09.748865
33322	7829	2211	2016-12-19 20:18:09.759316	2016-12-19 20:18:09.759316
33323	7830	2211	2016-12-19 20:18:09.78234	2016-12-19 20:18:09.78234
33324	7831	2211	2016-12-19 20:18:09.799822	2016-12-19 20:18:09.799822
33325	7758	2211	2016-12-19 20:18:09.815155	2016-12-19 20:18:09.815155
33326	7856	2219	2016-12-19 20:18:11.211779	2016-12-19 20:18:11.211779
33327	7867	2219	2016-12-19 20:18:11.221751	2016-12-19 20:18:11.221751
33328	7858	2219	2016-12-19 20:18:11.243561	2016-12-19 20:18:11.243561
33329	7857	2219	2016-12-19 20:18:11.260623	2016-12-19 20:18:11.260623
33330	7866	2219	2016-12-19 20:18:11.276639	2016-12-19 20:18:11.276639
33331	7864	2219	2016-12-19 20:18:11.29251	2016-12-19 20:18:11.29251
33332	7862	2219	2016-12-19 20:18:11.316541	2016-12-19 20:18:11.316541
33333	7863	2219	2016-12-19 20:18:11.330608	2016-12-19 20:18:11.330608
33334	7869	2219	2016-12-19 20:18:11.343658	2016-12-19 20:18:11.343658
33335	7865	2219	2016-12-19 20:18:11.357584	2016-12-19 20:18:11.357584
33336	7859	2219	2016-12-19 20:18:11.37341	2016-12-19 20:18:11.37341
33337	7868	2219	2016-12-19 20:18:11.385346	2016-12-19 20:18:11.385346
33338	7860	2219	2016-12-19 20:18:11.413253	2016-12-19 20:18:11.413253
33339	7732	2219	2016-12-19 20:18:11.424907	2016-12-19 20:18:11.424907
33340	7861	2219	2016-12-19 20:18:11.441085	2016-12-19 20:18:11.441085
33341	7870	2222	2016-12-19 20:18:14.793216	2016-12-19 20:18:14.793216
33342	7871	2222	2016-12-19 20:18:16.501029	2016-12-19 20:18:16.501029
33343	7872	2222	2016-12-19 20:18:18.259158	2016-12-19 20:18:18.259158
33344	7873	2222	2016-12-19 20:18:19.966839	2016-12-19 20:18:19.966839
33345	7874	2222	2016-12-19 20:18:21.728162	2016-12-19 20:18:21.728162
33346	7875	2222	2016-12-19 20:18:23.45568	2016-12-19 20:18:23.45568
33347	7369	2222	2016-12-19 20:18:23.471783	2016-12-19 20:18:23.471783
33348	7876	2222	2016-12-19 20:18:25.193799	2016-12-19 20:18:25.193799
33349	7877	2222	2016-12-19 20:18:26.913779	2016-12-19 20:18:26.913779
33350	7878	2222	2016-12-19 20:18:28.606181	2016-12-19 20:18:28.606181
33351	7879	2222	2016-12-19 20:18:29.441772	2016-12-19 20:18:29.441772
33352	7880	2222	2016-12-19 20:18:31.853008	2016-12-19 20:18:31.853008
33353	7881	2222	2016-12-19 20:18:33.639538	2016-12-19 20:18:33.639538
33354	7882	2222	2016-12-19 20:18:35.38648	2016-12-19 20:18:35.38648
33355	7883	2222	2016-12-19 20:18:37.091672	2016-12-19 20:18:37.091672
33356	7884	2222	2016-12-19 20:18:38.888974	2016-12-19 20:18:38.888974
33357	7885	2222	2016-12-19 20:18:40.63781	2016-12-19 20:18:40.63781
33358	7886	2222	2016-12-19 20:18:42.214426	2016-12-19 20:18:42.214426
33359	7887	2222	2016-12-19 20:18:43.928323	2016-12-19 20:18:43.928323
33360	7888	2222	2016-12-19 20:18:45.544868	2016-12-19 20:18:45.544868
33361	7889	2222	2016-12-19 20:18:47.509179	2016-12-19 20:18:47.509179
33362	7890	2222	2016-12-19 20:18:49.291689	2016-12-19 20:18:49.291689
33363	7891	2222	2016-12-19 20:18:51.073512	2016-12-19 20:18:51.073512
33364	7892	2222	2016-12-19 20:18:52.806972	2016-12-19 20:18:52.806972
33365	7893	2222	2016-12-19 20:18:54.507249	2016-12-19 20:18:54.507249
33366	7894	2222	2016-12-19 20:18:56.213362	2016-12-19 20:18:56.213362
33367	7895	2222	2016-12-19 20:18:57.989551	2016-12-19 20:18:57.989551
33368	7896	2223	2016-12-19 20:19:01.222724	2016-12-19 20:19:01.222724
33369	7897	2223	2016-12-19 20:19:03.022327	2016-12-19 20:19:03.022327
33370	7898	2223	2016-12-19 20:19:04.747757	2016-12-19 20:19:04.747757
33371	7899	2223	2016-12-19 20:19:06.572433	2016-12-19 20:19:06.572433
33372	7900	2223	2016-12-19 20:19:08.222498	2016-12-19 20:19:08.222498
33373	7901	2223	2016-12-19 20:19:10.02948	2016-12-19 20:19:10.02948
33374	7902	2223	2016-12-19 20:19:11.65965	2016-12-19 20:19:11.65965
33375	7903	2223	2016-12-19 20:19:14.117101	2016-12-19 20:19:14.117101
33376	7904	2223	2016-12-19 20:19:16.634315	2016-12-19 20:19:16.634315
33377	7905	2223	2016-12-19 20:19:18.450596	2016-12-19 20:19:18.450596
33378	7906	2223	2016-12-19 20:19:20.104553	2016-12-19 20:19:20.104553
33379	7907	2223	2016-12-19 20:19:21.873188	2016-12-19 20:19:21.873188
33380	7908	2223	2016-12-19 20:19:23.603515	2016-12-19 20:19:23.603515
33381	7909	2223	2016-12-19 20:19:25.377604	2016-12-19 20:19:25.377604
33382	7910	2223	2016-12-19 20:19:27.222308	2016-12-19 20:19:27.222308
33383	7911	2223	2016-12-19 20:19:29.150458	2016-12-19 20:19:29.150458
33384	7912	2223	2016-12-19 20:19:30.884923	2016-12-19 20:19:30.884923
33385	7913	2223	2016-12-19 20:19:32.729742	2016-12-19 20:19:32.729742
33386	7914	2223	2016-12-19 20:19:34.657556	2016-12-19 20:19:34.657556
33387	7915	2223	2016-12-19 20:19:37.40573	2016-12-19 20:19:37.40573
33388	7916	2223	2016-12-19 20:19:40.257393	2016-12-19 20:19:40.257393
33389	7917	2223	2016-12-19 20:19:42.163053	2016-12-19 20:19:42.163053
33390	7918	2224	2016-12-19 20:19:45.652511	2016-12-19 20:19:45.652511
33391	7371	2224	2016-12-19 20:19:45.673128	2016-12-19 20:19:45.673128
33392	7919	2224	2016-12-19 20:19:47.477753	2016-12-19 20:19:47.477753
33393	7920	2224	2016-12-19 20:19:49.269532	2016-12-19 20:19:49.269532
33394	7921	2224	2016-12-19 20:19:51.04492	2016-12-19 20:19:51.04492
33395	7922	2224	2016-12-19 20:19:52.685442	2016-12-19 20:19:52.685442
33396	7923	2224	2016-12-19 20:19:54.516737	2016-12-19 20:19:54.516737
33397	7924	2224	2016-12-19 20:19:56.250892	2016-12-19 20:19:56.250892
33398	7925	2224	2016-12-19 20:19:58.090268	2016-12-19 20:19:58.090268
33399	7926	2224	2016-12-19 20:19:59.743933	2016-12-19 20:19:59.743933
33400	7927	2224	2016-12-19 20:20:01.558748	2016-12-19 20:20:01.558748
33401	7928	2224	2016-12-19 20:20:03.801513	2016-12-19 20:20:03.801513
33402	7929	2224	2016-12-19 20:20:05.729209	2016-12-19 20:20:05.729209
33403	7930	2224	2016-12-19 20:20:07.665909	2016-12-19 20:20:07.665909
33404	7931	2224	2016-12-19 20:20:09.570219	2016-12-19 20:20:09.570219
33405	7932	2224	2016-12-19 20:20:11.540306	2016-12-19 20:20:11.540306
33406	7933	2224	2016-12-19 20:20:13.345381	2016-12-19 20:20:13.345381
33407	7934	2224	2016-12-19 20:20:15.141341	2016-12-19 20:20:15.141341
33408	7935	2224	2016-12-19 20:20:17.782815	2016-12-19 20:20:17.782815
33409	7936	2224	2016-12-19 20:20:20.266373	2016-12-19 20:20:20.266373
33410	7937	2224	2016-12-19 20:20:23.868209	2016-12-19 20:20:23.868209
33411	7938	2224	2016-12-19 20:20:25.720871	2016-12-19 20:20:25.720871
33412	7939	2224	2016-12-19 20:20:28.221564	2016-12-19 20:20:28.221564
33413	7940	2224	2016-12-19 20:20:30.706768	2016-12-19 20:20:30.706768
33414	7941	2224	2016-12-19 20:20:32.410739	2016-12-19 20:20:32.410739
33415	7942	2224	2016-12-19 20:20:34.185665	2016-12-19 20:20:34.185665
33416	7943	2224	2016-12-19 20:20:36.036164	2016-12-19 20:20:36.036164
33417	7944	2224	2016-12-19 20:20:39.714306	2016-12-19 20:20:39.714306
33418	7945	2224	2016-12-19 20:20:41.759731	2016-12-19 20:20:41.759731
33419	7946	2224	2016-12-19 20:20:44.465931	2016-12-19 20:20:44.465931
33420	7947	2224	2016-12-19 20:20:47.031104	2016-12-19 20:20:47.031104
33421	7948	2224	2016-12-19 20:20:48.908017	2016-12-19 20:20:48.908017
33422	7949	2224	2016-12-19 20:20:50.707035	2016-12-19 20:20:50.707035
33423	7905	2224	2016-12-19 20:20:50.721661	2016-12-19 20:20:50.721661
33424	7950	2224	2016-12-19 20:20:52.581977	2016-12-19 20:20:52.581977
33425	7951	2224	2016-12-19 20:20:54.385834	2016-12-19 20:20:54.385834
33426	7952	2224	2016-12-19 20:20:56.166094	2016-12-19 20:20:56.166094
33427	7953	2224	2016-12-19 20:20:57.951609	2016-12-19 20:20:57.951609
33428	7954	2224	2016-12-19 20:20:59.744955	2016-12-19 20:20:59.744955
33429	7955	2224	2016-12-19 20:21:01.670274	2016-12-19 20:21:01.670274
33430	7956	2224	2016-12-19 20:21:05.136774	2016-12-19 20:21:05.136774
33431	7957	2224	2016-12-19 20:21:06.998634	2016-12-19 20:21:06.998634
33432	7958	2224	2016-12-19 20:21:08.853497	2016-12-19 20:21:08.853497
33433	7959	2224	2016-12-19 20:21:10.586471	2016-12-19 20:21:10.586471
33434	7960	2224	2016-12-19 20:21:12.270131	2016-12-19 20:21:12.270131
33435	7961	2224	2016-12-19 20:21:13.982023	2016-12-19 20:21:13.982023
33436	7962	2224	2016-12-19 20:21:15.858928	2016-12-19 20:21:15.858928
33437	7963	2224	2016-12-19 20:21:17.751456	2016-12-19 20:21:17.751456
33438	7964	2224	2016-12-19 20:21:19.606391	2016-12-19 20:21:19.606391
33439	7965	2224	2016-12-19 20:21:21.418502	2016-12-19 20:21:21.418502
33440	7966	2224	2016-12-19 20:21:23.215752	2016-12-19 20:21:23.215752
33441	7967	2224	2016-12-19 20:21:24.94354	2016-12-19 20:21:24.94354
33442	7968	2224	2016-12-19 20:21:26.713146	2016-12-19 20:21:26.713146
33443	7969	2224	2016-12-19 20:21:29.301845	2016-12-19 20:21:29.301845
33444	7970	2224	2016-12-19 20:21:30.93336	2016-12-19 20:21:30.93336
33445	7971	2224	2016-12-19 20:21:31.755761	2016-12-19 20:21:31.755761
33446	7353	2225	2016-12-19 20:21:32.933977	2016-12-19 20:21:32.933977
33447	7972	2225	2016-12-19 20:21:34.682772	2016-12-19 20:21:34.682772
33448	7973	2225	2016-12-19 20:21:36.374608	2016-12-19 20:21:36.374608
33449	7902	2225	2016-12-19 20:21:36.389821	2016-12-19 20:21:36.389821
33450	7974	2225	2016-12-19 20:21:38.139065	2016-12-19 20:21:38.139065
33451	7975	2225	2016-12-19 20:21:39.844463	2016-12-19 20:21:39.844463
33452	7976	2226	2016-12-19 20:21:42.61854	2016-12-19 20:21:42.61854
33453	7977	2226	2016-12-19 20:21:44.25989	2016-12-19 20:21:44.25989
33454	7978	2227	2016-12-19 20:21:47.561271	2016-12-19 20:21:47.561271
33455	7979	2227	2016-12-19 20:21:49.478838	2016-12-19 20:21:49.478838
33456	7980	2227	2016-12-19 20:21:51.204441	2016-12-19 20:21:51.204441
33457	7981	2227	2016-12-19 20:21:53.088397	2016-12-19 20:21:53.088397
33458	7982	2227	2016-12-19 20:21:55.574727	2016-12-19 20:21:55.574727
33459	7983	2227	2016-12-19 20:21:58.073577	2016-12-19 20:21:58.073577
33460	7984	2227	2016-12-19 20:21:59.901032	2016-12-19 20:21:59.901032
33461	7985	2227	2016-12-19 20:22:02.696947	2016-12-19 20:22:02.696947
33462	7986	2227	2016-12-19 20:22:05.146899	2016-12-19 20:22:05.146899
33463	7987	2227	2016-12-19 20:22:07.015441	2016-12-19 20:22:07.015441
33464	7988	2227	2016-12-19 20:22:08.808464	2016-12-19 20:22:08.808464
33465	7918	2221	2016-12-19 20:22:10.749288	2016-12-19 20:22:10.749288
33466	7353	2221	2016-12-19 20:22:10.777953	2016-12-19 20:22:10.777953
33467	7905	2221	2016-12-19 20:22:10.803302	2016-12-19 20:22:10.803302
33468	7934	2221	2016-12-19 20:22:10.823068	2016-12-19 20:22:10.823068
33469	7948	2221	2016-12-19 20:22:10.843246	2016-12-19 20:22:10.843246
33470	7976	2221	2016-12-19 20:22:10.870849	2016-12-19 20:22:10.870849
33471	7371	2221	2016-12-19 20:22:10.880752	2016-12-19 20:22:10.880752
33472	7870	2221	2016-12-19 20:22:10.896705	2016-12-19 20:22:10.896705
33473	7871	2221	2016-12-19 20:22:10.919634	2016-12-19 20:22:10.919634
33474	7896	2221	2016-12-19 20:22:10.93978	2016-12-19 20:22:10.93978
33475	7872	2221	2016-12-19 20:22:10.956569	2016-12-19 20:22:10.956569
33476	7989	2221	2016-12-19 20:22:12.922706	2016-12-19 20:22:12.922706
33477	7990	2221	2016-12-19 20:22:14.971726	2016-12-19 20:22:14.971726
33478	7919	2221	2016-12-19 20:22:14.988199	2016-12-19 20:22:14.988199
33479	7920	2221	2016-12-19 20:22:15.023576	2016-12-19 20:22:15.023576
33480	7897	2221	2016-12-19 20:22:15.050013	2016-12-19 20:22:15.050013
33481	7972	2221	2016-12-19 20:22:15.085769	2016-12-19 20:22:15.085769
33482	7921	2221	2016-12-19 20:22:15.108755	2016-12-19 20:22:15.108755
33483	7922	2221	2016-12-19 20:22:15.126169	2016-12-19 20:22:15.126169
33484	7923	2221	2016-12-19 20:22:15.14743	2016-12-19 20:22:15.14743
33485	7898	2221	2016-12-19 20:22:16.777201	2016-12-19 20:22:16.777201
33486	7873	2221	2016-12-19 20:22:16.837463	2016-12-19 20:22:16.837463
33487	7924	2221	2016-12-19 20:22:16.852159	2016-12-19 20:22:16.852159
33488	7973	2221	2016-12-19 20:22:16.875668	2016-12-19 20:22:16.875668
33489	7925	2221	2016-12-19 20:22:16.885979	2016-12-19 20:22:16.885979
33490	7978	2221	2016-12-19 20:22:16.905819	2016-12-19 20:22:16.905819
33491	7979	2221	2016-12-19 20:22:16.923444	2016-12-19 20:22:16.923444
33492	7980	2221	2016-12-19 20:22:16.960297	2016-12-19 20:22:16.960297
33493	7981	2221	2016-12-19 20:22:16.984658	2016-12-19 20:22:16.984658
33494	7899	2221	2016-12-19 20:22:17.00148	2016-12-19 20:22:17.00148
33495	7926	2221	2016-12-19 20:22:17.034691	2016-12-19 20:22:17.034691
33496	7927	2221	2016-12-19 20:22:17.057825	2016-12-19 20:22:17.057825
33497	7928	2221	2016-12-19 20:22:17.068035	2016-12-19 20:22:17.068035
33498	7929	2221	2016-12-19 20:22:17.080228	2016-12-19 20:22:17.080228
33499	7930	2221	2016-12-19 20:22:17.095928	2016-12-19 20:22:17.095928
33500	7931	2221	2016-12-19 20:22:17.127692	2016-12-19 20:22:17.127692
33501	7932	2221	2016-12-19 20:22:17.14501	2016-12-19 20:22:17.14501
33502	7933	2221	2016-12-19 20:22:17.160951	2016-12-19 20:22:17.160951
33503	7900	2221	2016-12-19 20:22:17.173647	2016-12-19 20:22:17.173647
33504	7935	2221	2016-12-19 20:22:17.193416	2016-12-19 20:22:17.193416
33505	7936	2221	2016-12-19 20:22:18.945817	2016-12-19 20:22:18.945817
33506	7937	2221	2016-12-19 20:22:19.026962	2016-12-19 20:22:19.026962
33507	7938	2221	2016-12-19 20:22:19.037755	2016-12-19 20:22:19.037755
33508	7901	2221	2016-12-19 20:22:19.058479	2016-12-19 20:22:19.058479
33509	7939	2221	2016-12-19 20:22:19.081308	2016-12-19 20:22:19.081308
33510	7940	2221	2016-12-19 20:22:19.103917	2016-12-19 20:22:19.103917
33511	7941	2221	2016-12-19 20:22:19.12032	2016-12-19 20:22:19.12032
33512	7942	2221	2016-12-19 20:22:19.140208	2016-12-19 20:22:19.140208
33513	7943	2221	2016-12-19 20:22:19.156147	2016-12-19 20:22:19.156147
33514	7944	2221	2016-12-19 20:22:19.176057	2016-12-19 20:22:19.176057
33515	7902	2221	2016-12-19 20:22:19.194313	2016-12-19 20:22:19.194313
33516	7903	2221	2016-12-19 20:22:19.204869	2016-12-19 20:22:19.204869
33517	7982	2221	2016-12-19 20:22:19.219998	2016-12-19 20:22:19.219998
33518	7983	2221	2016-12-19 20:22:19.23166	2016-12-19 20:22:19.23166
33519	7984	2221	2016-12-19 20:22:19.24116	2016-12-19 20:22:19.24116
33520	7985	2221	2016-12-19 20:22:19.26176	2016-12-19 20:22:19.26176
33521	7986	2221	2016-12-19 20:22:19.272113	2016-12-19 20:22:19.272113
33522	7987	2221	2016-12-19 20:22:19.299372	2016-12-19 20:22:19.299372
33523	7874	2221	2016-12-19 20:22:19.314748	2016-12-19 20:22:19.314748
33524	7875	2221	2016-12-19 20:22:19.338995	2016-12-19 20:22:19.338995
33525	7945	2221	2016-12-19 20:22:21.150556	2016-12-19 20:22:21.150556
33526	7904	2221	2016-12-19 20:22:21.207235	2016-12-19 20:22:21.207235
33527	7946	2221	2016-12-19 20:22:21.224183	2016-12-19 20:22:21.224183
33528	7947	2221	2016-12-19 20:22:21.247327	2016-12-19 20:22:21.247327
33529	7369	2221	2016-12-19 20:22:21.259528	2016-12-19 20:22:21.259528
33530	7949	2221	2016-12-19 20:22:21.281314	2016-12-19 20:22:21.281314
33531	7906	2221	2016-12-19 20:22:21.292201	2016-12-19 20:22:21.292201
33532	7950	2221	2016-12-19 20:22:21.322964	2016-12-19 20:22:21.322964
33533	7951	2221	2016-12-19 20:22:21.338532	2016-12-19 20:22:21.338532
33534	7876	2221	2016-12-19 20:22:21.350829	2016-12-19 20:22:21.350829
33535	7952	2221	2016-12-19 20:22:21.379483	2016-12-19 20:22:21.379483
33536	7953	2221	2016-12-19 20:22:21.409976	2016-12-19 20:22:21.409976
33537	7954	2221	2016-12-19 20:22:21.428465	2016-12-19 20:22:21.428465
33538	7955	2221	2016-12-19 20:22:21.452224	2016-12-19 20:22:21.452224
33539	7956	2221	2016-12-19 20:22:21.473005	2016-12-19 20:22:21.473005
33540	7957	2221	2016-12-19 20:22:21.507177	2016-12-19 20:22:21.507177
33541	7958	2221	2016-12-19 20:22:21.518762	2016-12-19 20:22:21.518762
33542	7959	2221	2016-12-19 20:22:21.539256	2016-12-19 20:22:21.539256
33543	7960	2221	2016-12-19 20:22:21.559781	2016-12-19 20:22:21.559781
33544	7961	2221	2016-12-19 20:22:21.576319	2016-12-19 20:22:21.576319
33545	7907	2221	2016-12-19 20:22:23.458765	2016-12-19 20:22:23.458765
33546	7908	2221	2016-12-19 20:22:23.476838	2016-12-19 20:22:23.476838
33547	7909	2221	2016-12-19 20:22:23.506401	2016-12-19 20:22:23.506401
33548	7910	2221	2016-12-19 20:22:23.528726	2016-12-19 20:22:23.528726
33549	7911	2221	2016-12-19 20:22:23.554894	2016-12-19 20:22:23.554894
33550	7912	2221	2016-12-19 20:22:23.577644	2016-12-19 20:22:23.577644
33551	7962	2221	2016-12-19 20:22:23.59894	2016-12-19 20:22:23.59894
33552	7963	2221	2016-12-19 20:22:23.620774	2016-12-19 20:22:23.620774
33553	7964	2221	2016-12-19 20:22:23.63974	2016-12-19 20:22:23.63974
33554	7965	2221	2016-12-19 20:22:23.66245	2016-12-19 20:22:23.66245
33555	7913	2221	2016-12-19 20:22:23.683228	2016-12-19 20:22:23.683228
33556	7914	2221	2016-12-19 20:22:23.702334	2016-12-19 20:22:23.702334
33557	7966	2221	2016-12-19 20:22:23.714936	2016-12-19 20:22:23.714936
33558	7967	2221	2016-12-19 20:22:23.741853	2016-12-19 20:22:23.741853
33559	7968	2221	2016-12-19 20:22:23.754376	2016-12-19 20:22:23.754376
33560	7877	2221	2016-12-19 20:22:23.787619	2016-12-19 20:22:23.787619
33561	7878	2221	2016-12-19 20:22:23.809594	2016-12-19 20:22:23.809594
33562	7790	2221	2016-12-19 20:22:23.832429	2016-12-19 20:22:23.832429
33563	7747	2221	2016-12-19 20:22:23.855243	2016-12-19 20:22:23.855243
33564	7748	2221	2016-12-19 20:22:23.872816	2016-12-19 20:22:23.872816
33565	7749	2221	2016-12-19 20:22:25.656465	2016-12-19 20:22:25.656465
33566	7879	2221	2016-12-19 20:22:25.677092	2016-12-19 20:22:25.677092
33567	7880	2221	2016-12-19 20:22:25.695185	2016-12-19 20:22:25.695185
33568	7969	2221	2016-12-19 20:22:25.715424	2016-12-19 20:22:25.715424
33569	7915	2221	2016-12-19 20:22:25.746803	2016-12-19 20:22:25.746803
33570	7974	2221	2016-12-19 20:22:25.760507	2016-12-19 20:22:25.760507
33571	7881	2221	2016-12-19 20:22:25.785253	2016-12-19 20:22:25.785253
33572	7882	2221	2016-12-19 20:22:25.808435	2016-12-19 20:22:25.808435
33573	7883	2221	2016-12-19 20:22:25.824534	2016-12-19 20:22:25.824534
33574	7884	2221	2016-12-19 20:22:25.843583	2016-12-19 20:22:25.843583
33575	7885	2221	2016-12-19 20:22:25.864561	2016-12-19 20:22:25.864561
33576	7886	2221	2016-12-19 20:22:25.887745	2016-12-19 20:22:25.887745
33577	7887	2221	2016-12-19 20:22:25.907868	2016-12-19 20:22:25.907868
33578	7888	2221	2016-12-19 20:22:25.93193	2016-12-19 20:22:25.93193
33579	7916	2221	2016-12-19 20:22:25.946264	2016-12-19 20:22:25.946264
33580	7970	2221	2016-12-19 20:22:25.964301	2016-12-19 20:22:25.964301
33581	7991	2221	2016-12-19 20:22:28.169393	2016-12-19 20:22:28.169393
33582	7889	2221	2016-12-19 20:22:28.179289	2016-12-19 20:22:28.179289
33583	7890	2221	2016-12-19 20:22:28.199513	2016-12-19 20:22:28.199513
33584	7891	2221	2016-12-19 20:22:28.219646	2016-12-19 20:22:28.219646
33585	7892	2221	2016-12-19 20:22:29.589574	2016-12-19 20:22:29.589574
33586	7893	2221	2016-12-19 20:22:29.65913	2016-12-19 20:22:29.65913
33587	7894	2221	2016-12-19 20:22:29.674224	2016-12-19 20:22:29.674224
33588	7971	2221	2016-12-19 20:22:29.694545	2016-12-19 20:22:29.694545
33589	7988	2221	2016-12-19 20:22:29.714603	2016-12-19 20:22:29.714603
33590	7917	2221	2016-12-19 20:22:29.73751	2016-12-19 20:22:29.73751
33591	7977	2221	2016-12-19 20:22:29.767984	2016-12-19 20:22:29.767984
33592	7975	2221	2016-12-19 20:22:29.783513	2016-12-19 20:22:29.783513
33593	7895	2221	2016-12-19 20:22:29.79476	2016-12-19 20:22:29.79476
33594	7990	2228	2016-12-19 20:22:30.841857	2016-12-19 20:22:30.841857
33595	7991	2228	2016-12-19 20:22:30.862801	2016-12-19 20:22:30.862801
33596	7992	2230	2016-12-19 20:22:34.468395	2016-12-19 20:22:34.468395
33597	7993	2230	2016-12-19 20:22:36.247265	2016-12-19 20:22:36.247265
33598	7994	2230	2016-12-19 20:22:38.074987	2016-12-19 20:22:38.074987
33599	7995	2230	2016-12-19 20:22:39.892946	2016-12-19 20:22:39.892946
33600	7996	2230	2016-12-19 20:22:41.754976	2016-12-19 20:22:41.754976
33601	7997	2230	2016-12-19 20:22:43.657849	2016-12-19 20:22:43.657849
33602	7998	2230	2016-12-19 20:22:45.48383	2016-12-19 20:22:45.48383
33603	7982	2230	2016-12-19 20:22:45.500779	2016-12-19 20:22:45.500779
33604	7983	2230	2016-12-19 20:22:45.521336	2016-12-19 20:22:45.521336
33605	7984	2230	2016-12-19 20:22:45.533852	2016-12-19 20:22:45.533852
33606	7985	2230	2016-12-19 20:22:45.559348	2016-12-19 20:22:45.559348
33607	7986	2230	2016-12-19 20:22:45.573087	2016-12-19 20:22:45.573087
33608	7987	2230	2016-12-19 20:22:45.602757	2016-12-19 20:22:45.602757
33609	7999	2230	2016-12-19 20:22:47.531809	2016-12-19 20:22:47.531809
33610	8000	2230	2016-12-19 20:22:49.623135	2016-12-19 20:22:49.623135
33611	8001	2230	2016-12-19 20:22:51.682893	2016-12-19 20:22:51.682893
33612	8002	2230	2016-12-19 20:22:53.664174	2016-12-19 20:22:53.664174
33613	8003	2230	2016-12-19 20:22:55.687036	2016-12-19 20:22:55.687036
33614	8004	2230	2016-12-19 20:22:57.723861	2016-12-19 20:22:57.723861
33615	8005	2230	2016-12-19 20:22:59.507279	2016-12-19 20:22:59.507279
33616	8006	2230	2016-12-19 20:23:02.802984	2016-12-19 20:23:02.802984
33617	7353	2231	2016-12-19 20:23:04.914918	2016-12-19 20:23:04.914918
33618	7352	2231	2016-12-19 20:23:04.947383	2016-12-19 20:23:04.947383
33619	8007	2231	2016-12-19 20:23:06.764489	2016-12-19 20:23:06.764489
33620	8008	2231	2016-12-19 20:23:08.617677	2016-12-19 20:23:08.617677
33621	8009	2231	2016-12-19 20:23:10.548705	2016-12-19 20:23:10.548705
33622	8010	2231	2016-12-19 20:23:12.375575	2016-12-19 20:23:12.375575
33623	8011	2231	2016-12-19 20:23:14.162133	2016-12-19 20:23:14.162133
33624	8012	2231	2016-12-19 20:23:15.936413	2016-12-19 20:23:15.936413
33625	8013	2231	2016-12-19 20:23:17.73799	2016-12-19 20:23:17.73799
33626	8014	2231	2016-12-19 20:23:19.519429	2016-12-19 20:23:19.519429
33627	8015	2231	2016-12-19 20:23:21.318317	2016-12-19 20:23:21.318317
33628	8016	2231	2016-12-19 20:23:23.17482	2016-12-19 20:23:23.17482
33629	8017	2231	2016-12-19 20:23:25.01531	2016-12-19 20:23:25.01531
33630	8018	2231	2016-12-19 20:23:26.80036	2016-12-19 20:23:26.80036
33631	8019	2231	2016-12-19 20:23:28.647405	2016-12-19 20:23:28.647405
33632	7357	2231	2016-12-19 20:23:28.670976	2016-12-19 20:23:28.670976
33633	8020	2231	2016-12-19 20:23:30.539237	2016-12-19 20:23:30.539237
33634	8021	2231	2016-12-19 20:23:32.52374	2016-12-19 20:23:32.52374
33635	7361	2231	2016-12-19 20:23:32.532778	2016-12-19 20:23:32.532778
33636	8022	2231	2016-12-19 20:23:34.524152	2016-12-19 20:23:34.524152
33637	8023	2231	2016-12-19 20:23:37.91852	2016-12-19 20:23:37.91852
33638	8024	2231	2016-12-19 20:23:39.777164	2016-12-19 20:23:39.777164
33639	8025	2231	2016-12-19 20:23:41.833746	2016-12-19 20:23:41.833746
33640	8026	2231	2016-12-19 20:23:43.578276	2016-12-19 20:23:43.578276
33641	8027	2231	2016-12-19 20:23:45.356273	2016-12-19 20:23:45.356273
33642	8028	2231	2016-12-19 20:23:49.245394	2016-12-19 20:23:49.245394
33643	8029	2231	2016-12-19 20:23:51.002964	2016-12-19 20:23:51.002964
33644	8030	2231	2016-12-19 20:23:52.885817	2016-12-19 20:23:52.885817
33645	8031	2231	2016-12-19 20:23:54.685844	2016-12-19 20:23:54.685844
33646	8032	2231	2016-12-19 20:23:57.377339	2016-12-19 20:23:57.377339
33647	8033	2231	2016-12-19 20:23:59.193325	2016-12-19 20:23:59.193325
33648	8034	2231	2016-12-19 20:24:00.978966	2016-12-19 20:24:00.978966
33649	8035	2231	2016-12-19 20:24:03.015911	2016-12-19 20:24:03.015911
33650	8036	2231	2016-12-19 20:24:04.941401	2016-12-19 20:24:04.941401
33651	8037	2231	2016-12-19 20:24:06.68246	2016-12-19 20:24:06.68246
33652	8038	2231	2016-12-19 20:24:08.520842	2016-12-19 20:24:08.520842
33653	8039	2231	2016-12-19 20:24:10.370493	2016-12-19 20:24:10.370493
33654	8040	2231	2016-12-19 20:24:12.14413	2016-12-19 20:24:12.14413
33655	7997	2232	2016-12-19 20:24:13.130428	2016-12-19 20:24:13.130428
33656	7997	2233	2016-12-19 20:24:14.224855	2016-12-19 20:24:14.224855
33657	7471	2233	2016-12-19 20:24:14.236084	2016-12-19 20:24:14.236084
33658	7353	2229	2016-12-19 20:24:16.092027	2016-12-19 20:24:16.092027
33659	7352	2229	2016-12-19 20:24:16.15787	2016-12-19 20:24:16.15787
33660	7992	2229	2016-12-19 20:24:16.179195	2016-12-19 20:24:16.179195
33661	7993	2229	2016-12-19 20:24:16.203529	2016-12-19 20:24:16.203529
33662	7995	2229	2016-12-19 20:24:16.213974	2016-12-19 20:24:16.213974
33663	7996	2229	2016-12-19 20:24:16.224921	2016-12-19 20:24:16.224921
33664	8007	2229	2016-12-19 20:24:16.247779	2016-12-19 20:24:16.247779
33665	8008	2229	2016-12-19 20:24:16.260404	2016-12-19 20:24:16.260404
33666	8009	2229	2016-12-19 20:24:16.286232	2016-12-19 20:24:16.286232
33667	8010	2229	2016-12-19 20:24:16.305332	2016-12-19 20:24:16.305332
33668	8011	2229	2016-12-19 20:24:16.327362	2016-12-19 20:24:16.327362
33669	8012	2229	2016-12-19 20:24:16.341065	2016-12-19 20:24:16.341065
33670	7997	2229	2016-12-19 20:24:16.365781	2016-12-19 20:24:16.365781
33671	7994	2229	2016-12-19 20:24:16.383571	2016-12-19 20:24:16.383571
33672	8013	2229	2016-12-19 20:24:16.400213	2016-12-19 20:24:16.400213
33673	8014	2229	2016-12-19 20:24:16.418152	2016-12-19 20:24:16.418152
33674	8015	2229	2016-12-19 20:24:16.434773	2016-12-19 20:24:16.434773
33675	8016	2229	2016-12-19 20:24:16.458311	2016-12-19 20:24:16.458311
33676	8017	2229	2016-12-19 20:24:16.486291	2016-12-19 20:24:16.486291
33677	8018	2229	2016-12-19 20:24:16.49758	2016-12-19 20:24:16.49758
33678	8019	2229	2016-12-19 20:24:18.271904	2016-12-19 20:24:18.271904
33679	7471	2229	2016-12-19 20:24:18.292951	2016-12-19 20:24:18.292951
33680	7998	2229	2016-12-19 20:24:18.304752	2016-12-19 20:24:18.304752
33681	7357	2229	2016-12-19 20:24:18.324398	2016-12-19 20:24:18.324398
33682	7982	2229	2016-12-19 20:24:18.339388	2016-12-19 20:24:18.339388
33683	7983	2229	2016-12-19 20:24:18.361139	2016-12-19 20:24:18.361139
33684	7984	2229	2016-12-19 20:24:18.394901	2016-12-19 20:24:18.394901
33685	7985	2229	2016-12-19 20:24:18.409933	2016-12-19 20:24:18.409933
33686	7986	2229	2016-12-19 20:24:18.427252	2016-12-19 20:24:18.427252
33687	7987	2229	2016-12-19 20:24:18.44013	2016-12-19 20:24:18.44013
33688	8020	2229	2016-12-19 20:24:18.466434	2016-12-19 20:24:18.466434
33689	8021	2229	2016-12-19 20:24:18.486097	2016-12-19 20:24:18.486097
33690	7361	2229	2016-12-19 20:24:18.504713	2016-12-19 20:24:18.504713
33691	8022	2229	2016-12-19 20:24:18.51602	2016-12-19 20:24:18.51602
33692	8023	2229	2016-12-19 20:24:18.542128	2016-12-19 20:24:18.542128
33693	8024	2229	2016-12-19 20:24:18.561771	2016-12-19 20:24:18.561771
33694	8025	2229	2016-12-19 20:24:18.583419	2016-12-19 20:24:18.583419
33695	7999	2229	2016-12-19 20:24:18.592671	2016-12-19 20:24:18.592671
33696	8000	2229	2016-12-19 20:24:18.619999	2016-12-19 20:24:18.619999
33697	8001	2229	2016-12-19 20:24:18.659098	2016-12-19 20:24:18.659098
33698	8026	2229	2016-12-19 20:24:20.342608	2016-12-19 20:24:20.342608
33699	8027	2229	2016-12-19 20:24:20.402876	2016-12-19 20:24:20.402876
33700	8028	2229	2016-12-19 20:24:20.415126	2016-12-19 20:24:20.415126
33701	8029	2229	2016-12-19 20:24:20.44042	2016-12-19 20:24:20.44042
33702	8030	2229	2016-12-19 20:24:20.456367	2016-12-19 20:24:20.456367
33703	8031	2229	2016-12-19 20:24:20.489517	2016-12-19 20:24:20.489517
33704	8032	2229	2016-12-19 20:24:20.508549	2016-12-19 20:24:20.508549
33705	8003	2229	2016-12-19 20:24:20.535805	2016-12-19 20:24:20.535805
33706	8004	2229	2016-12-19 20:24:20.558861	2016-12-19 20:24:20.558861
33707	8033	2229	2016-12-19 20:24:20.592952	2016-12-19 20:24:20.592952
33708	8034	2229	2016-12-19 20:24:20.615583	2016-12-19 20:24:20.615583
33709	8035	2229	2016-12-19 20:24:20.634335	2016-12-19 20:24:20.634335
33710	8036	2229	2016-12-19 20:24:20.651233	2016-12-19 20:24:20.651233
33711	8037	2229	2016-12-19 20:24:20.673495	2016-12-19 20:24:20.673495
33712	8038	2229	2016-12-19 20:24:20.687044	2016-12-19 20:24:20.687044
33713	8041	2229	2016-12-19 20:24:22.607802	2016-12-19 20:24:22.607802
33714	8002	2229	2016-12-19 20:24:22.620095	2016-12-19 20:24:22.620095
33715	8005	2229	2016-12-19 20:24:22.63174	2016-12-19 20:24:22.63174
33716	8006	2229	2016-12-19 20:24:22.648193	2016-12-19 20:24:22.648193
33717	8039	2229	2016-12-19 20:24:22.671009	2016-12-19 20:24:22.671009
33718	8040	2229	2016-12-19 20:24:23.805461	2016-12-19 20:24:23.805461
33719	8012	2234	2016-12-19 20:24:24.823245	2016-12-19 20:24:24.823245
33720	8041	2234	2016-12-19 20:24:24.886192	2016-12-19 20:24:24.886192
33721	8042	2235	2016-12-19 20:24:29.767506	2016-12-19 20:24:29.767506
33722	8043	2235	2016-12-19 20:24:34.01929	2016-12-19 20:24:34.01929
33723	8044	2235	2016-12-19 20:24:38.371058	2016-12-19 20:24:38.371058
33724	8045	2235	2016-12-19 20:24:40.677406	2016-12-19 20:24:40.677406
33725	8046	2235	2016-12-19 20:24:42.653589	2016-12-19 20:24:42.653589
33726	8047	2235	2016-12-19 20:24:44.522078	2016-12-19 20:24:44.522078
33727	8048	2235	2016-12-19 20:24:48.542368	2016-12-19 20:24:48.542368
33728	8049	2235	2016-12-19 20:24:50.476151	2016-12-19 20:24:50.476151
33729	8050	2235	2016-12-19 20:24:52.426776	2016-12-19 20:24:52.426776
33730	8051	2235	2016-12-19 20:24:54.443187	2016-12-19 20:24:54.443187
33731	8052	2235	2016-12-19 20:24:55.310865	2016-12-19 20:24:55.310865
33732	8053	2235	2016-12-19 20:24:56.116663	2016-12-19 20:24:56.116663
33733	8054	2235	2016-12-19 20:24:56.964385	2016-12-19 20:24:56.964385
33734	8055	2235	2016-12-19 20:24:57.777721	2016-12-19 20:24:57.777721
33735	7501	2235	2016-12-19 20:24:57.787987	2016-12-19 20:24:57.787987
33736	8056	2235	2016-12-19 20:24:58.62445	2016-12-19 20:24:58.62445
33737	8057	2235	2016-12-19 20:24:59.42641	2016-12-19 20:24:59.42641
33738	8058	2235	2016-12-19 20:25:00.253619	2016-12-19 20:25:00.253619
33739	8059	2235	2016-12-19 20:25:01.175661	2016-12-19 20:25:01.175661
33740	8060	2235	2016-12-19 20:25:02.136795	2016-12-19 20:25:02.136795
33741	8061	2235	2016-12-19 20:25:05.485305	2016-12-19 20:25:05.485305
33742	8062	2235	2016-12-19 20:25:07.630387	2016-12-19 20:25:07.630387
33743	8063	2235	2016-12-19 20:25:09.679831	2016-12-19 20:25:09.679831
33744	8064	2235	2016-12-19 20:25:11.811841	2016-12-19 20:25:11.811841
33745	8065	2235	2016-12-19 20:25:13.836086	2016-12-19 20:25:13.836086
33746	8066	2235	2016-12-19 20:25:15.744391	2016-12-19 20:25:15.744391
33747	8067	2235	2016-12-19 20:25:17.777131	2016-12-19 20:25:17.777131
33748	8068	2235	2016-12-19 20:25:19.747242	2016-12-19 20:25:19.747242
33749	8069	2235	2016-12-19 20:25:21.795615	2016-12-19 20:25:21.795615
33750	8070	2235	2016-12-19 20:25:23.897941	2016-12-19 20:25:23.897941
33751	8071	2235	2016-12-19 20:25:25.935996	2016-12-19 20:25:25.935996
33752	8072	2235	2016-12-19 20:25:27.952216	2016-12-19 20:25:27.952216
33753	8073	2235	2016-12-19 20:25:29.9565	2016-12-19 20:25:29.9565
33754	8074	2235	2016-12-19 20:25:31.937477	2016-12-19 20:25:31.937477
33755	8075	2235	2016-12-19 20:25:33.937907	2016-12-19 20:25:33.937907
33756	8076	2235	2016-12-19 20:25:36.021306	2016-12-19 20:25:36.021306
33757	8042	2236	2016-12-19 20:25:37.31186	2016-12-19 20:25:37.31186
33758	8062	2236	2016-12-19 20:25:37.346629	2016-12-19 20:25:37.346629
33759	8063	2236	2016-12-19 20:25:37.367662	2016-12-19 20:25:37.367662
33760	8066	2236	2016-12-19 20:25:37.391784	2016-12-19 20:25:37.391784
33761	8067	2236	2016-12-19 20:25:37.406917	2016-12-19 20:25:37.406917
33762	8070	2236	2016-12-19 20:25:37.432381	2016-12-19 20:25:37.432381
33763	8071	2236	2016-12-19 20:25:37.447535	2016-12-19 20:25:37.447535
33764	8072	2236	2016-12-19 20:25:37.472074	2016-12-19 20:25:37.472074
33765	8073	2236	2016-12-19 20:25:37.491058	2016-12-19 20:25:37.491058
33766	8074	2236	2016-12-19 20:25:37.511669	2016-12-19 20:25:37.511669
33767	8075	2236	2016-12-19 20:25:37.526976	2016-12-19 20:25:37.526976
33768	8076	2236	2016-12-19 20:25:37.542937	2016-12-19 20:25:37.542937
33769	8077	2237	2016-12-19 20:25:40.239487	2016-12-19 20:25:40.239487
33770	7583	2237	2016-12-19 20:25:40.259431	2016-12-19 20:25:40.259431
33771	7586	2237	2016-12-19 20:25:40.27549	2016-12-19 20:25:40.27549
33772	7587	2237	2016-12-19 20:25:40.293176	2016-12-19 20:25:40.293176
33773	7588	2237	2016-12-19 20:25:40.317406	2016-12-19 20:25:40.317406
33774	7589	2237	2016-12-19 20:25:40.350365	2016-12-19 20:25:40.350365
33775	8078	2237	2016-12-19 20:25:42.357816	2016-12-19 20:25:42.357816
33776	7603	2237	2016-12-19 20:25:42.372406	2016-12-19 20:25:42.372406
33777	7604	2237	2016-12-19 20:25:42.387192	2016-12-19 20:25:42.387192
33778	8077	2238	2016-12-19 20:25:44.033408	2016-12-19 20:25:44.033408
33779	7583	2238	2016-12-19 20:25:44.095508	2016-12-19 20:25:44.095508
33780	8078	2238	2016-12-19 20:25:44.204606	2016-12-19 20:25:44.204606
33781	7603	2238	2016-12-19 20:25:44.219624	2016-12-19 20:25:44.219624
33782	7604	2238	2016-12-19 20:25:44.236768	2016-12-19 20:25:44.236768
33783	8079	2240	2016-12-19 20:25:47.656465	2016-12-19 20:25:47.656465
33784	7352	2240	2016-12-19 20:25:47.676924	2016-12-19 20:25:47.676924
33785	8080	2240	2016-12-19 20:25:49.275444	2016-12-19 20:25:49.275444
33786	8081	2240	2016-12-19 20:25:50.855773	2016-12-19 20:25:50.855773
33787	8082	2240	2016-12-19 20:25:52.365681	2016-12-19 20:25:52.365681
33788	8083	2240	2016-12-19 20:25:54.005268	2016-12-19 20:25:54.005268
33789	8084	2240	2016-12-19 20:25:55.700096	2016-12-19 20:25:55.700096
33790	8085	2240	2016-12-19 20:25:57.803593	2016-12-19 20:25:57.803593
33791	8086	2240	2016-12-19 20:25:59.425109	2016-12-19 20:25:59.425109
33792	8087	2240	2016-12-19 20:26:01.137663	2016-12-19 20:26:01.137663
33793	8088	2240	2016-12-19 20:26:03.296962	2016-12-19 20:26:03.296962
33794	8089	2240	2016-12-19 20:26:05.016697	2016-12-19 20:26:05.016697
33795	8090	2240	2016-12-19 20:26:06.564153	2016-12-19 20:26:06.564153
33796	8091	2240	2016-12-19 20:26:07.96249	2016-12-19 20:26:07.96249
33797	8092	2240	2016-12-19 20:26:09.481044	2016-12-19 20:26:09.481044
33798	8093	2240	2016-12-19 20:26:11.043673	2016-12-19 20:26:11.043673
33799	8094	2240	2016-12-19 20:26:12.685121	2016-12-19 20:26:12.685121
33800	8095	2240	2016-12-19 20:26:14.404575	2016-12-19 20:26:14.404575
33801	8096	2240	2016-12-19 20:26:15.89936	2016-12-19 20:26:15.89936
33802	8097	2240	2016-12-19 20:26:17.862861	2016-12-19 20:26:17.862861
33803	8098	2240	2016-12-19 20:26:21.188939	2016-12-19 20:26:21.188939
33804	8099	2240	2016-12-19 20:26:22.925046	2016-12-19 20:26:22.925046
33805	8100	2240	2016-12-19 20:26:24.796042	2016-12-19 20:26:24.796042
33806	8101	2240	2016-12-19 20:26:26.63164	2016-12-19 20:26:26.63164
33807	8102	2240	2016-12-19 20:26:28.528342	2016-12-19 20:26:28.528342
33808	8103	2240	2016-12-19 20:26:30.17625	2016-12-19 20:26:30.17625
33809	8104	2240	2016-12-19 20:26:31.917436	2016-12-19 20:26:31.917436
33810	8105	2240	2016-12-19 20:26:33.608908	2016-12-19 20:26:33.608908
33811	8106	2240	2016-12-19 20:26:35.250997	2016-12-19 20:26:35.250997
33812	8107	2240	2016-12-19 20:26:37.100475	2016-12-19 20:26:37.100475
33813	8108	2240	2016-12-19 20:26:38.97214	2016-12-19 20:26:38.97214
33814	8109	2240	2016-12-19 20:26:40.756511	2016-12-19 20:26:40.756511
33815	8110	2240	2016-12-19 20:26:42.558283	2016-12-19 20:26:42.558283
33816	8111	2240	2016-12-19 20:26:44.276921	2016-12-19 20:26:44.276921
33817	8112	2240	2016-12-19 20:26:46.028862	2016-12-19 20:26:46.028862
33818	8113	2240	2016-12-19 20:26:47.943403	2016-12-19 20:26:47.943403
33819	8114	2240	2016-12-19 20:26:51.59893	2016-12-19 20:26:51.59893
33820	8115	2240	2016-12-19 20:26:53.314172	2016-12-19 20:26:53.314172
33821	8116	2240	2016-12-19 20:26:55.062022	2016-12-19 20:26:55.062022
33822	8117	2240	2016-12-19 20:26:56.772869	2016-12-19 20:26:56.772869
33823	8118	2240	2016-12-19 20:27:00.035812	2016-12-19 20:27:00.035812
33824	8119	2240	2016-12-19 20:27:01.654941	2016-12-19 20:27:01.654941
33825	8120	2240	2016-12-19 20:27:03.368812	2016-12-19 20:27:03.368812
33826	8121	2240	2016-12-19 20:27:05.02198	2016-12-19 20:27:05.02198
33827	8122	2240	2016-12-19 20:27:06.593087	2016-12-19 20:27:06.593087
33828	8123	2240	2016-12-19 20:27:08.179097	2016-12-19 20:27:08.179097
33829	8124	2240	2016-12-19 20:27:09.78594	2016-12-19 20:27:09.78594
33830	8125	2240	2016-12-19 20:27:11.480319	2016-12-19 20:27:11.480319
33831	8126	2240	2016-12-19 20:27:13.286144	2016-12-19 20:27:13.286144
33832	8127	2240	2016-12-19 20:27:14.947312	2016-12-19 20:27:14.947312
33833	8128	2240	2016-12-19 20:27:16.662726	2016-12-19 20:27:16.662726
33834	8129	2240	2016-12-19 20:27:18.44506	2016-12-19 20:27:18.44506
33835	8130	2240	2016-12-19 20:27:20.156426	2016-12-19 20:27:20.156426
33836	8131	2240	2016-12-19 20:27:21.826801	2016-12-19 20:27:21.826801
33837	8132	2240	2016-12-19 20:27:23.497402	2016-12-19 20:27:23.497402
33838	8133	2240	2016-12-19 20:27:25.273785	2016-12-19 20:27:25.273785
33839	8134	2240	2016-12-19 20:27:27.005293	2016-12-19 20:27:27.005293
33840	8135	2240	2016-12-19 20:27:28.631459	2016-12-19 20:27:28.631459
33841	8136	2240	2016-12-19 20:27:30.390881	2016-12-19 20:27:30.390881
33842	8137	2240	2016-12-19 20:27:32.143045	2016-12-19 20:27:32.143045
33843	8138	2240	2016-12-19 20:27:35.9747	2016-12-19 20:27:35.9747
33844	8139	2240	2016-12-19 20:27:38.416558	2016-12-19 20:27:38.416558
33845	8140	2240	2016-12-19 20:27:40.905718	2016-12-19 20:27:40.905718
33846	8141	2240	2016-12-19 20:27:42.558609	2016-12-19 20:27:42.558609
33847	8142	2240	2016-12-19 20:27:44.286252	2016-12-19 20:27:44.286252
33848	8143	2240	2016-12-19 20:27:45.968975	2016-12-19 20:27:45.968975
33849	8144	2240	2016-12-19 20:27:47.635911	2016-12-19 20:27:47.635911
33850	8145	2240	2016-12-19 20:27:49.315814	2016-12-19 20:27:49.315814
33851	8146	2240	2016-12-19 20:27:51.04499	2016-12-19 20:27:51.04499
33852	8147	2240	2016-12-19 20:27:52.699737	2016-12-19 20:27:52.699737
33853	8148	2240	2016-12-19 20:27:54.466502	2016-12-19 20:27:54.466502
33854	8149	2240	2016-12-19 20:27:56.096897	2016-12-19 20:27:56.096897
33855	8150	2240	2016-12-19 20:27:58.203681	2016-12-19 20:27:58.203681
33856	8151	2240	2016-12-19 20:27:59.907577	2016-12-19 20:27:59.907577
33857	8079	2239	2016-12-19 20:28:01.651597	2016-12-19 20:28:01.651597
33858	7352	2239	2016-12-19 20:28:01.722788	2016-12-19 20:28:01.722788
33859	8080	2239	2016-12-19 20:28:01.734187	2016-12-19 20:28:01.734187
33860	8081	2239	2016-12-19 20:28:01.758565	2016-12-19 20:28:01.758565
33861	8082	2239	2016-12-19 20:28:01.777718	2016-12-19 20:28:01.777718
33862	8083	2239	2016-12-19 20:28:01.800742	2016-12-19 20:28:01.800742
33863	8084	2239	2016-12-19 20:28:01.811095	2016-12-19 20:28:01.811095
33864	8085	2239	2016-12-19 20:28:01.841651	2016-12-19 20:28:01.841651
33865	8086	2239	2016-12-19 20:28:01.855322	2016-12-19 20:28:01.855322
33866	8087	2239	2016-12-19 20:28:01.87467	2016-12-19 20:28:01.87467
33867	8088	2239	2016-12-19 20:28:01.897864	2016-12-19 20:28:01.897864
33868	8089	2239	2016-12-19 20:28:01.923121	2016-12-19 20:28:01.923121
33869	8090	2239	2016-12-19 20:28:01.944487	2016-12-19 20:28:01.944487
33870	8091	2239	2016-12-19 20:28:01.960735	2016-12-19 20:28:01.960735
33871	8092	2239	2016-12-19 20:28:01.984686	2016-12-19 20:28:01.984686
33872	8093	2239	2016-12-19 20:28:02.008687	2016-12-19 20:28:02.008687
33873	8094	2239	2016-12-19 20:28:02.024862	2016-12-19 20:28:02.024862
33874	8095	2239	2016-12-19 20:28:02.050102	2016-12-19 20:28:02.050102
33875	8096	2239	2016-12-19 20:28:02.069554	2016-12-19 20:28:02.069554
33876	8097	2239	2016-12-19 20:28:02.091961	2016-12-19 20:28:02.091961
33877	8098	2239	2016-12-19 20:28:03.873268	2016-12-19 20:28:03.873268
33878	8099	2239	2016-12-19 20:28:03.892058	2016-12-19 20:28:03.892058
33879	8100	2239	2016-12-19 20:28:03.914575	2016-12-19 20:28:03.914575
33880	8101	2239	2016-12-19 20:28:03.9293	2016-12-19 20:28:03.9293
33881	8102	2239	2016-12-19 20:28:03.94498	2016-12-19 20:28:03.94498
33882	8103	2239	2016-12-19 20:28:03.964869	2016-12-19 20:28:03.964869
33883	8104	2239	2016-12-19 20:28:03.984579	2016-12-19 20:28:03.984579
33884	8105	2239	2016-12-19 20:28:04.003281	2016-12-19 20:28:04.003281
33885	8106	2239	2016-12-19 20:28:04.024748	2016-12-19 20:28:04.024748
33886	8107	2239	2016-12-19 20:28:04.046855	2016-12-19 20:28:04.046855
33887	8108	2239	2016-12-19 20:28:04.064572	2016-12-19 20:28:04.064572
33888	8109	2239	2016-12-19 20:28:04.077751	2016-12-19 20:28:04.077751
33889	8110	2239	2016-12-19 20:28:04.088195	2016-12-19 20:28:04.088195
33890	8111	2239	2016-12-19 20:28:04.108451	2016-12-19 20:28:04.108451
33891	8112	2239	2016-12-19 20:28:04.128425	2016-12-19 20:28:04.128425
33892	8113	2239	2016-12-19 20:28:04.154212	2016-12-19 20:28:04.154212
33893	8114	2239	2016-12-19 20:28:04.165525	2016-12-19 20:28:04.165525
33894	8115	2239	2016-12-19 20:28:04.188645	2016-12-19 20:28:04.188645
33895	8116	2239	2016-12-19 20:28:04.211236	2016-12-19 20:28:04.211236
33896	8117	2239	2016-12-19 20:28:04.222535	2016-12-19 20:28:04.222535
33897	8118	2239	2016-12-19 20:28:06.131784	2016-12-19 20:28:06.131784
33898	8119	2239	2016-12-19 20:28:06.198976	2016-12-19 20:28:06.198976
33899	8120	2239	2016-12-19 20:28:06.210127	2016-12-19 20:28:06.210127
33900	8121	2239	2016-12-19 20:28:06.239546	2016-12-19 20:28:06.239546
33901	8122	2239	2016-12-19 20:28:06.268244	2016-12-19 20:28:06.268244
33902	8123	2239	2016-12-19 20:28:06.287554	2016-12-19 20:28:06.287554
33903	8124	2239	2016-12-19 20:28:06.307391	2016-12-19 20:28:06.307391
33904	8125	2239	2016-12-19 20:28:06.325299	2016-12-19 20:28:06.325299
33905	8126	2239	2016-12-19 20:28:06.35259	2016-12-19 20:28:06.35259
33906	8127	2239	2016-12-19 20:28:06.382772	2016-12-19 20:28:06.382772
33907	8128	2239	2016-12-19 20:28:06.405327	2016-12-19 20:28:06.405327
33908	8129	2239	2016-12-19 20:28:06.437749	2016-12-19 20:28:06.437749
33909	8130	2239	2016-12-19 20:28:06.472828	2016-12-19 20:28:06.472828
33910	8131	2239	2016-12-19 20:28:06.500331	2016-12-19 20:28:06.500331
33911	8132	2239	2016-12-19 20:28:06.522408	2016-12-19 20:28:06.522408
33912	8133	2239	2016-12-19 20:28:06.533367	2016-12-19 20:28:06.533367
33913	8134	2239	2016-12-19 20:28:06.551901	2016-12-19 20:28:06.551901
33914	8135	2239	2016-12-19 20:28:06.571736	2016-12-19 20:28:06.571736
33915	8136	2239	2016-12-19 20:28:06.603168	2016-12-19 20:28:06.603168
33916	8137	2239	2016-12-19 20:28:06.630166	2016-12-19 20:28:06.630166
33917	8152	2239	2016-12-19 20:28:09.042482	2016-12-19 20:28:09.042482
33918	8138	2239	2016-12-19 20:28:09.064971	2016-12-19 20:28:09.064971
33919	8139	2239	2016-12-19 20:28:09.093165	2016-12-19 20:28:09.093165
33920	8140	2239	2016-12-19 20:28:09.124192	2016-12-19 20:28:09.124192
33921	8141	2239	2016-12-19 20:28:09.138911	2016-12-19 20:28:09.138911
33922	8142	2239	2016-12-19 20:28:09.168925	2016-12-19 20:28:09.168925
33923	8143	2239	2016-12-19 20:28:09.194574	2016-12-19 20:28:09.194574
33924	8144	2239	2016-12-19 20:28:09.217758	2016-12-19 20:28:09.217758
33925	8145	2239	2016-12-19 20:28:09.240391	2016-12-19 20:28:09.240391
33926	8146	2239	2016-12-19 20:28:09.25389	2016-12-19 20:28:09.25389
33927	8147	2239	2016-12-19 20:28:09.272857	2016-12-19 20:28:09.272857
33928	8148	2239	2016-12-19 20:28:09.315528	2016-12-19 20:28:09.315528
33929	8149	2239	2016-12-19 20:28:09.350863	2016-12-19 20:28:09.350863
33930	8150	2239	2016-12-19 20:28:09.368102	2016-12-19 20:28:09.368102
33931	8151	2239	2016-12-19 20:28:09.395748	2016-12-19 20:28:09.395748
33932	8079	2220	2016-12-19 20:28:12.099339	2016-12-19 20:28:12.099339
33933	7918	2220	2016-12-19 20:28:12.168868	2016-12-19 20:28:12.168868
33934	7353	2220	2016-12-19 20:28:12.180232	2016-12-19 20:28:12.180232
33935	7352	2220	2016-12-19 20:28:12.191196	2016-12-19 20:28:12.191196
33936	7790	2220	2016-12-19 20:28:12.20532	2016-12-19 20:28:12.20532
33937	7747	2220	2016-12-19 20:28:12.217526	2016-12-19 20:28:12.217526
33938	7748	2220	2016-12-19 20:28:12.246536	2016-12-19 20:28:12.246536
33939	7749	2220	2016-12-19 20:28:12.258398	2016-12-19 20:28:12.258398
33940	8080	2220	2016-12-19 20:28:12.277929	2016-12-19 20:28:12.277929
33941	8081	2220	2016-12-19 20:28:12.295689	2016-12-19 20:28:12.295689
33942	8082	2220	2016-12-19 20:28:12.32338	2016-12-19 20:28:12.32338
33943	8083	2220	2016-12-19 20:28:12.339412	2016-12-19 20:28:12.339412
33944	8084	2220	2016-12-19 20:28:12.359088	2016-12-19 20:28:12.359088
33945	8085	2220	2016-12-19 20:28:12.370957	2016-12-19 20:28:12.370957
33946	8086	2220	2016-12-19 20:28:12.390466	2016-12-19 20:28:12.390466
33947	8087	2220	2016-12-19 20:28:12.417341	2016-12-19 20:28:12.417341
33948	8088	2220	2016-12-19 20:28:12.430133	2016-12-19 20:28:12.430133
33949	8089	2220	2016-12-19 20:28:12.44874	2016-12-19 20:28:12.44874
33950	8090	2220	2016-12-19 20:28:12.470966	2016-12-19 20:28:12.470966
33951	8091	2220	2016-12-19 20:28:12.491355	2016-12-19 20:28:12.491355
33952	8092	2220	2016-12-19 20:28:14.266328	2016-12-19 20:28:14.266328
33953	8093	2220	2016-12-19 20:28:14.284798	2016-12-19 20:28:14.284798
33954	8094	2220	2016-12-19 20:28:14.317926	2016-12-19 20:28:14.317926
33955	8095	2220	2016-12-19 20:28:14.335906	2016-12-19 20:28:14.335906
33956	8096	2220	2016-12-19 20:28:14.356503	2016-12-19 20:28:14.356503
33957	7976	2220	2016-12-19 20:28:14.375654	2016-12-19 20:28:14.375654
33958	7371	2220	2016-12-19 20:28:14.392144	2016-12-19 20:28:14.392144
33959	7992	2220	2016-12-19 20:28:14.410386	2016-12-19 20:28:14.410386
33960	7993	2220	2016-12-19 20:28:14.428753	2016-12-19 20:28:14.428753
33961	8007	2220	2016-12-19 20:28:14.446062	2016-12-19 20:28:14.446062
33962	7870	2220	2016-12-19 20:28:14.465518	2016-12-19 20:28:14.465518
33963	7871	2220	2016-12-19 20:28:14.487625	2016-12-19 20:28:14.487625
33964	7896	2220	2016-12-19 20:28:14.510754	2016-12-19 20:28:14.510754
33965	8008	2220	2016-12-19 20:28:14.529993	2016-12-19 20:28:14.529993
33966	8012	2220	2016-12-19 20:28:14.551313	2016-12-19 20:28:14.551313
33967	7872	2220	2016-12-19 20:28:14.572788	2016-12-19 20:28:14.572788
33968	7989	2220	2016-12-19 20:28:14.611644	2016-12-19 20:28:14.611644
33969	7990	2220	2016-12-19 20:28:14.625945	2016-12-19 20:28:14.625945
33970	7919	2220	2016-12-19 20:28:14.644202	2016-12-19 20:28:14.644202
33971	7920	2220	2016-12-19 20:28:14.665253	2016-12-19 20:28:14.665253
33972	7897	2220	2016-12-19 20:28:16.584988	2016-12-19 20:28:16.584988
33973	7972	2220	2016-12-19 20:28:16.64419	2016-12-19 20:28:16.64419
33974	7921	2220	2016-12-19 20:28:16.675883	2016-12-19 20:28:16.675883
33975	7922	2220	2016-12-19 20:28:16.696377	2016-12-19 20:28:16.696377
33976	7997	2220	2016-12-19 20:28:16.729384	2016-12-19 20:28:16.729384
33977	7923	2220	2016-12-19 20:28:16.764534	2016-12-19 20:28:16.764534
33978	7898	2220	2016-12-19 20:28:16.776354	2016-12-19 20:28:16.776354
33979	7873	2220	2016-12-19 20:28:16.797434	2016-12-19 20:28:16.797434
33980	7924	2220	2016-12-19 20:28:16.808453	2016-12-19 20:28:16.808453
33981	7973	2220	2016-12-19 20:28:16.820711	2016-12-19 20:28:16.820711
33982	7994	2220	2016-12-19 20:28:16.844767	2016-12-19 20:28:16.844767
33983	8009	2220	2016-12-19 20:28:16.862126	2016-12-19 20:28:16.862126
33984	7925	2220	2016-12-19 20:28:16.883499	2016-12-19 20:28:16.883499
33985	7978	2220	2016-12-19 20:28:16.893209	2016-12-19 20:28:16.893209
33986	7979	2220	2016-12-19 20:28:16.908961	2016-12-19 20:28:16.908961
33987	8010	2220	2016-12-19 20:28:16.926584	2016-12-19 20:28:16.926584
33988	7980	2220	2016-12-19 20:28:16.94909	2016-12-19 20:28:16.94909
33989	7981	2220	2016-12-19 20:28:16.966897	2016-12-19 20:28:16.966897
33990	7899	2220	2016-12-19 20:28:16.98319	2016-12-19 20:28:16.98319
33991	7926	2220	2016-12-19 20:28:16.99974	2016-12-19 20:28:16.99974
33992	7927	2220	2016-12-19 20:28:19.062643	2016-12-19 20:28:19.062643
33993	7928	2220	2016-12-19 20:28:19.121251	2016-12-19 20:28:19.121251
33994	7929	2220	2016-12-19 20:28:19.147877	2016-12-19 20:28:19.147877
33995	7930	2220	2016-12-19 20:28:19.1693	2016-12-19 20:28:19.1693
33996	7931	2220	2016-12-19 20:28:19.19002	2016-12-19 20:28:19.19002
33997	7932	2220	2016-12-19 20:28:19.210945	2016-12-19 20:28:19.210945
33998	8011	2220	2016-12-19 20:28:19.228349	2016-12-19 20:28:19.228349
33999	7995	2220	2016-12-19 20:28:19.252218	2016-12-19 20:28:19.252218
34000	7996	2220	2016-12-19 20:28:19.268818	2016-12-19 20:28:19.268818
34001	7933	2220	2016-12-19 20:28:19.292532	2016-12-19 20:28:19.292532
34002	7900	2220	2016-12-19 20:28:19.311734	2016-12-19 20:28:19.311734
34003	7934	2220	2016-12-19 20:28:19.327709	2016-12-19 20:28:19.327709
34004	8077	2220	2016-12-19 20:28:19.342184	2016-12-19 20:28:19.342184
34005	7583	2220	2016-12-19 20:28:19.369666	2016-12-19 20:28:19.369666
34006	8013	2220	2016-12-19 20:28:19.381648	2016-12-19 20:28:19.381648
34007	7935	2220	2016-12-19 20:28:19.407281	2016-12-19 20:28:19.407281
34008	7936	2220	2016-12-19 20:28:19.42848	2016-12-19 20:28:19.42848
34009	8014	2220	2016-12-19 20:28:19.447471	2016-12-19 20:28:19.447471
34010	7937	2220	2016-12-19 20:28:19.465844	2016-12-19 20:28:19.465844
34011	7938	2220	2016-12-19 20:28:19.489361	2016-12-19 20:28:19.489361
34012	8015	2220	2016-12-19 20:28:21.161652	2016-12-19 20:28:21.161652
34013	7901	2220	2016-12-19 20:28:21.233521	2016-12-19 20:28:21.233521
34014	8016	2220	2016-12-19 20:28:21.264278	2016-12-19 20:28:21.264278
34015	7939	2220	2016-12-19 20:28:21.288397	2016-12-19 20:28:21.288397
34016	7940	2220	2016-12-19 20:28:21.314793	2016-12-19 20:28:21.314793
34017	8017	2220	2016-12-19 20:28:21.324656	2016-12-19 20:28:21.324656
34018	8018	2220	2016-12-19 20:28:21.348442	2016-12-19 20:28:21.348442
34019	8019	2220	2016-12-19 20:28:21.37091	2016-12-19 20:28:21.37091
34020	7941	2220	2016-12-19 20:28:21.389963	2016-12-19 20:28:21.389963
34021	7942	2220	2016-12-19 20:28:21.407408	2016-12-19 20:28:21.407408
34022	7943	2220	2016-12-19 20:28:21.439772	2016-12-19 20:28:21.439772
34023	7944	2220	2016-12-19 20:28:21.462346	2016-12-19 20:28:21.462346
34024	7902	2220	2016-12-19 20:28:21.480906	2016-12-19 20:28:21.480906
34025	7471	2220	2016-12-19 20:28:21.500154	2016-12-19 20:28:21.500154
34026	7998	2220	2016-12-19 20:28:21.511242	2016-12-19 20:28:21.511242
34027	7357	2220	2016-12-19 20:28:21.526789	2016-12-19 20:28:21.526789
34028	7903	2220	2016-12-19 20:28:21.543206	2016-12-19 20:28:21.543206
34029	8042	2220	2016-12-19 20:28:21.560941	2016-12-19 20:28:21.560941
34030	7982	2220	2016-12-19 20:28:21.57838	2016-12-19 20:28:21.57838
34031	7983	2220	2016-12-19 20:28:21.594597	2016-12-19 20:28:21.594597
34032	7984	2220	2016-12-19 20:28:23.389072	2016-12-19 20:28:23.389072
34033	7985	2220	2016-12-19 20:28:23.449465	2016-12-19 20:28:23.449465
34034	7986	2220	2016-12-19 20:28:23.463428	2016-12-19 20:28:23.463428
34035	7987	2220	2016-12-19 20:28:23.487016	2016-12-19 20:28:23.487016
34036	8020	2220	2016-12-19 20:28:23.50031	2016-12-19 20:28:23.50031
34037	7874	2220	2016-12-19 20:28:23.524658	2016-12-19 20:28:23.524658
34038	8043	2220	2016-12-19 20:28:23.541716	2016-12-19 20:28:23.541716
34039	8021	2220	2016-12-19 20:28:23.569789	2016-12-19 20:28:23.569789
34040	8153	2220	2016-12-19 20:28:26.335665	2016-12-19 20:28:26.335665
34041	7586	2220	2016-12-19 20:28:26.349645	2016-12-19 20:28:26.349645
34042	7587	2220	2016-12-19 20:28:26.367841	2016-12-19 20:28:26.367841
34043	7588	2220	2016-12-19 20:28:26.385102	2016-12-19 20:28:26.385102
34044	7589	2220	2016-12-19 20:28:26.396496	2016-12-19 20:28:26.396496
34045	8078	2220	2016-12-19 20:28:26.413315	2016-12-19 20:28:26.413315
34046	7875	2220	2016-12-19 20:28:26.433773	2016-12-19 20:28:26.433773
34047	8097	2220	2016-12-19 20:28:26.457991	2016-12-19 20:28:26.457991
34048	8098	2220	2016-12-19 20:28:26.480892	2016-12-19 20:28:26.480892
34049	8099	2220	2016-12-19 20:28:26.503816	2016-12-19 20:28:26.503816
34050	8100	2220	2016-12-19 20:28:26.518047	2016-12-19 20:28:26.518047
34051	8101	2220	2016-12-19 20:28:26.529491	2016-12-19 20:28:26.529491
34052	8102	2220	2016-12-19 20:28:28.274408	2016-12-19 20:28:28.274408
34053	8103	2220	2016-12-19 20:28:28.338009	2016-12-19 20:28:28.338009
34054	8104	2220	2016-12-19 20:28:28.353471	2016-12-19 20:28:28.353471
34055	8105	2220	2016-12-19 20:28:28.369214	2016-12-19 20:28:28.369214
34056	8106	2220	2016-12-19 20:28:28.390734	2016-12-19 20:28:28.390734
34057	8107	2220	2016-12-19 20:28:28.415107	2016-12-19 20:28:28.415107
34058	8108	2220	2016-12-19 20:28:28.437652	2016-12-19 20:28:28.437652
34059	8109	2220	2016-12-19 20:28:28.456111	2016-12-19 20:28:28.456111
34060	8110	2220	2016-12-19 20:28:28.466215	2016-12-19 20:28:28.466215
34061	8111	2220	2016-12-19 20:28:28.486963	2016-12-19 20:28:28.486963
34062	8112	2220	2016-12-19 20:28:28.50044	2016-12-19 20:28:28.50044
34063	8113	2220	2016-12-19 20:28:28.524146	2016-12-19 20:28:28.524146
34064	8114	2220	2016-12-19 20:28:28.53869	2016-12-19 20:28:28.53869
34065	8115	2220	2016-12-19 20:28:28.548409	2016-12-19 20:28:28.548409
34066	8116	2220	2016-12-19 20:28:28.57549	2016-12-19 20:28:28.57549
34067	8117	2220	2016-12-19 20:28:28.602638	2016-12-19 20:28:28.602638
34068	8118	2220	2016-12-19 20:28:28.614727	2016-12-19 20:28:28.614727
34069	8119	2220	2016-12-19 20:28:28.630688	2016-12-19 20:28:28.630688
34070	8120	2220	2016-12-19 20:28:28.650579	2016-12-19 20:28:28.650579
34071	8121	2220	2016-12-19 20:28:28.665339	2016-12-19 20:28:28.665339
34072	8122	2220	2016-12-19 20:28:30.570654	2016-12-19 20:28:30.570654
34073	8123	2220	2016-12-19 20:28:30.63503	2016-12-19 20:28:30.63503
34074	8124	2220	2016-12-19 20:28:30.649806	2016-12-19 20:28:30.649806
34075	8125	2220	2016-12-19 20:28:30.705846	2016-12-19 20:28:30.705846
34076	8126	2220	2016-12-19 20:28:30.742739	2016-12-19 20:28:30.742739
34077	8127	2220	2016-12-19 20:28:30.752072	2016-12-19 20:28:30.752072
34078	8128	2220	2016-12-19 20:28:30.77427	2016-12-19 20:28:30.77427
34079	8129	2220	2016-12-19 20:28:30.788679	2016-12-19 20:28:30.788679
34080	8130	2220	2016-12-19 20:28:30.818108	2016-12-19 20:28:30.818108
34081	8131	2220	2016-12-19 20:28:30.838846	2016-12-19 20:28:30.838846
34082	8132	2220	2016-12-19 20:28:30.856628	2016-12-19 20:28:30.856628
34083	8133	2220	2016-12-19 20:28:30.87409	2016-12-19 20:28:30.87409
34084	8134	2220	2016-12-19 20:28:30.896272	2016-12-19 20:28:30.896272
34085	8135	2220	2016-12-19 20:28:30.916316	2016-12-19 20:28:30.916316
34086	8136	2220	2016-12-19 20:28:30.93649	2016-12-19 20:28:30.93649
34087	8137	2220	2016-12-19 20:28:30.962236	2016-12-19 20:28:30.962236
34088	7603	2220	2016-12-19 20:28:30.983383	2016-12-19 20:28:30.983383
34089	7604	2220	2016-12-19 20:28:31.002688	2016-12-19 20:28:31.002688
34090	7945	2220	2016-12-19 20:28:31.022511	2016-12-19 20:28:31.022511
34091	7361	2220	2016-12-19 20:28:31.038709	2016-12-19 20:28:31.038709
34092	7904	2220	2016-12-19 20:28:33.797076	2016-12-19 20:28:33.797076
34093	7946	2220	2016-12-19 20:28:33.859934	2016-12-19 20:28:33.859934
34094	7947	2220	2016-12-19 20:28:33.878877	2016-12-19 20:28:33.878877
34095	8044	2220	2016-12-19 20:28:33.896253	2016-12-19 20:28:33.896253
34096	8045	2220	2016-12-19 20:28:33.914028	2016-12-19 20:28:33.914028
34097	8046	2220	2016-12-19 20:28:33.935947	2016-12-19 20:28:33.935947
34098	8047	2220	2016-12-19 20:28:33.956223	2016-12-19 20:28:33.956223
34099	8048	2220	2016-12-19 20:28:33.97033	2016-12-19 20:28:33.97033
34100	8049	2220	2016-12-19 20:28:33.989646	2016-12-19 20:28:33.989646
34101	8050	2220	2016-12-19 20:28:34.007254	2016-12-19 20:28:34.007254
34102	8051	2220	2016-12-19 20:28:34.024058	2016-12-19 20:28:34.024058
34103	8154	2220	2016-12-19 20:28:38.008886	2016-12-19 20:28:38.008886
34104	8052	2220	2016-12-19 20:28:38.026646	2016-12-19 20:28:38.026646
34105	8053	2220	2016-12-19 20:28:38.05516	2016-12-19 20:28:38.05516
34106	8054	2220	2016-12-19 20:28:38.078345	2016-12-19 20:28:38.078345
34107	8155	2220	2016-12-19 20:28:40.706332	2016-12-19 20:28:40.706332
34108	8055	2220	2016-12-19 20:28:40.722202	2016-12-19 20:28:40.722202
34109	7501	2220	2016-12-19 20:28:40.753501	2016-12-19 20:28:40.753501
34110	8056	2220	2016-12-19 20:28:40.766683	2016-12-19 20:28:40.766683
34111	8057	2220	2016-12-19 20:28:40.796577	2016-12-19 20:28:40.796577
34112	8058	2220	2016-12-19 20:28:43.366053	2016-12-19 20:28:43.366053
34113	8059	2220	2016-12-19 20:28:43.430549	2016-12-19 20:28:43.430549
34114	8060	2220	2016-12-19 20:28:43.444035	2016-12-19 20:28:43.444035
34115	8061	2220	2016-12-19 20:28:43.468994	2016-12-19 20:28:43.468994
34116	7369	2220	2016-12-19 20:28:43.483574	2016-12-19 20:28:43.483574
34117	7948	2220	2016-12-19 20:28:43.510614	2016-12-19 20:28:43.510614
34118	7949	2220	2016-12-19 20:28:43.521277	2016-12-19 20:28:43.521277
34119	7905	2220	2016-12-19 20:28:43.536266	2016-12-19 20:28:43.536266
34120	7906	2220	2016-12-19 20:28:43.558921	2016-12-19 20:28:43.558921
34121	7950	2220	2016-12-19 20:28:43.582417	2016-12-19 20:28:43.582417
34122	7951	2220	2016-12-19 20:28:43.597095	2016-12-19 20:28:43.597095
34123	7876	2220	2016-12-19 20:28:43.618995	2016-12-19 20:28:43.618995
34124	7952	2220	2016-12-19 20:28:43.638368	2016-12-19 20:28:43.638368
34125	7953	2220	2016-12-19 20:28:43.657168	2016-12-19 20:28:43.657168
34126	7954	2220	2016-12-19 20:28:43.676894	2016-12-19 20:28:43.676894
34127	7955	2220	2016-12-19 20:28:43.695231	2016-12-19 20:28:43.695231
34128	7956	2220	2016-12-19 20:28:43.712602	2016-12-19 20:28:43.712602
34129	7957	2220	2016-12-19 20:28:43.730152	2016-12-19 20:28:43.730152
34130	7958	2220	2016-12-19 20:28:43.742964	2016-12-19 20:28:43.742964
34131	7959	2220	2016-12-19 20:28:43.768301	2016-12-19 20:28:43.768301
34132	7960	2220	2016-12-19 20:28:45.627384	2016-12-19 20:28:45.627384
34133	7961	2220	2016-12-19 20:28:45.644191	2016-12-19 20:28:45.644191
34134	7907	2220	2016-12-19 20:28:45.672302	2016-12-19 20:28:45.672302
34135	7908	2220	2016-12-19 20:28:45.683442	2016-12-19 20:28:45.683442
34136	7909	2220	2016-12-19 20:28:45.704911	2016-12-19 20:28:45.704911
34137	7910	2220	2016-12-19 20:28:45.725565	2016-12-19 20:28:45.725565
34138	7911	2220	2016-12-19 20:28:45.746795	2016-12-19 20:28:45.746795
34139	7912	2220	2016-12-19 20:28:45.765938	2016-12-19 20:28:45.765938
34140	7962	2220	2016-12-19 20:28:45.784248	2016-12-19 20:28:45.784248
34141	7963	2220	2016-12-19 20:28:45.804696	2016-12-19 20:28:45.804696
34142	7964	2220	2016-12-19 20:28:45.825171	2016-12-19 20:28:45.825171
34143	7965	2220	2016-12-19 20:28:45.847207	2016-12-19 20:28:45.847207
34144	8022	2220	2016-12-19 20:28:45.860408	2016-12-19 20:28:45.860408
34145	7913	2220	2016-12-19 20:28:45.873888	2016-12-19 20:28:45.873888
34146	8023	2220	2016-12-19 20:28:45.887112	2016-12-19 20:28:45.887112
34147	7914	2220	2016-12-19 20:28:45.912786	2016-12-19 20:28:45.912786
34148	7966	2220	2016-12-19 20:28:45.928423	2016-12-19 20:28:45.928423
34149	7967	2220	2016-12-19 20:28:45.943172	2016-12-19 20:28:45.943172
34150	7968	2220	2016-12-19 20:28:45.956902	2016-12-19 20:28:45.956902
34151	7877	2220	2016-12-19 20:28:45.972604	2016-12-19 20:28:45.972604
34152	8024	2220	2016-12-19 20:28:47.919492	2016-12-19 20:28:47.919492
34153	7878	2220	2016-12-19 20:28:47.981875	2016-12-19 20:28:47.981875
34154	8025	2220	2016-12-19 20:28:48.002649	2016-12-19 20:28:48.002649
34155	8152	2220	2016-12-19 20:28:48.019617	2016-12-19 20:28:48.019617
34156	7879	2220	2016-12-19 20:28:48.03313	2016-12-19 20:28:48.03313
34157	7880	2220	2016-12-19 20:28:48.052086	2016-12-19 20:28:48.052086
34158	7969	2220	2016-12-19 20:28:48.066671	2016-12-19 20:28:48.066671
34159	7915	2220	2016-12-19 20:28:48.083764	2016-12-19 20:28:48.083764
34160	7999	2220	2016-12-19 20:28:48.103031	2016-12-19 20:28:48.103031
34161	8000	2220	2016-12-19 20:28:48.111964	2016-12-19 20:28:48.111964
34162	8001	2220	2016-12-19 20:28:48.126997	2016-12-19 20:28:48.126997
34163	8026	2220	2016-12-19 20:28:48.146097	2016-12-19 20:28:48.146097
34164	7974	2220	2016-12-19 20:28:48.165427	2016-12-19 20:28:48.165427
34165	7881	2220	2016-12-19 20:28:48.183242	2016-12-19 20:28:48.183242
34166	7882	2220	2016-12-19 20:28:48.199845	2016-12-19 20:28:48.199845
34167	7883	2220	2016-12-19 20:28:48.216744	2016-12-19 20:28:48.216744
34168	7884	2220	2016-12-19 20:28:48.232159	2016-12-19 20:28:48.232159
34169	7885	2220	2016-12-19 20:28:48.252353	2016-12-19 20:28:48.252353
34170	7886	2220	2016-12-19 20:28:48.266838	2016-12-19 20:28:48.266838
34171	7887	2220	2016-12-19 20:28:48.284575	2016-12-19 20:28:48.284575
34172	8027	2220	2016-12-19 20:28:50.060168	2016-12-19 20:28:50.060168
34173	8028	2220	2016-12-19 20:28:50.07597	2016-12-19 20:28:50.07597
34174	8029	2220	2016-12-19 20:28:50.096962	2016-12-19 20:28:50.096962
34175	8030	2220	2016-12-19 20:28:50.116778	2016-12-19 20:28:50.116778
34176	7888	2220	2016-12-19 20:28:50.134647	2016-12-19 20:28:50.134647
34177	7916	2220	2016-12-19 20:28:50.150722	2016-12-19 20:28:50.150722
34178	7970	2220	2016-12-19 20:28:50.18506	2016-12-19 20:28:50.18506
34179	7991	2220	2016-12-19 20:28:50.196577	2016-12-19 20:28:50.196577
34180	8062	2220	2016-12-19 20:28:50.215201	2016-12-19 20:28:50.215201
34181	8063	2220	2016-12-19 20:28:50.239757	2016-12-19 20:28:50.239757
34182	8031	2220	2016-12-19 20:28:50.266898	2016-12-19 20:28:50.266898
34183	8064	2220	2016-12-19 20:28:50.278432	2016-12-19 20:28:50.278432
34184	8065	2220	2016-12-19 20:28:50.295704	2016-12-19 20:28:50.295704
34185	8066	2220	2016-12-19 20:28:50.323421	2016-12-19 20:28:50.323421
34186	8067	2220	2016-12-19 20:28:50.339495	2016-12-19 20:28:50.339495
34187	8068	2220	2016-12-19 20:28:50.359348	2016-12-19 20:28:50.359348
34188	8069	2220	2016-12-19 20:28:50.378122	2016-12-19 20:28:50.378122
34189	8070	2220	2016-12-19 20:28:50.391066	2016-12-19 20:28:50.391066
34190	8071	2220	2016-12-19 20:28:50.414303	2016-12-19 20:28:50.414303
34191	8072	2220	2016-12-19 20:28:50.426916	2016-12-19 20:28:50.426916
34192	8073	2220	2016-12-19 20:28:52.530828	2016-12-19 20:28:52.530828
34193	8074	2220	2016-12-19 20:28:52.606086	2016-12-19 20:28:52.606086
34194	8075	2220	2016-12-19 20:28:52.622515	2016-12-19 20:28:52.622515
34195	8076	2220	2016-12-19 20:28:52.635809	2016-12-19 20:28:52.635809
34196	7889	2220	2016-12-19 20:28:52.648197	2016-12-19 20:28:52.648197
34197	8138	2220	2016-12-19 20:28:52.658297	2016-12-19 20:28:52.658297
34198	8139	2220	2016-12-19 20:28:52.676988	2016-12-19 20:28:52.676988
34199	8140	2220	2016-12-19 20:28:52.688667	2016-12-19 20:28:52.688667
34200	7890	2220	2016-12-19 20:28:52.705198	2016-12-19 20:28:52.705198
34201	7891	2220	2016-12-19 20:28:52.722094	2016-12-19 20:28:52.722094
34202	7892	2220	2016-12-19 20:28:52.740484	2016-12-19 20:28:52.740484
34203	7893	2220	2016-12-19 20:28:52.760327	2016-12-19 20:28:52.760327
34204	7894	2220	2016-12-19 20:28:52.779707	2016-12-19 20:28:52.779707
34205	7971	2220	2016-12-19 20:28:52.794433	2016-12-19 20:28:52.794433
34206	8032	2220	2016-12-19 20:28:52.804036	2016-12-19 20:28:52.804036
34207	8033	2220	2016-12-19 20:28:52.815606	2016-12-19 20:28:52.815606
34208	8002	2220	2016-12-19 20:28:52.835653	2016-12-19 20:28:52.835653
34209	8034	2220	2016-12-19 20:28:52.846907	2016-12-19 20:28:52.846907
34210	8035	2220	2016-12-19 20:28:52.860778	2016-12-19 20:28:52.860778
34211	8003	2220	2016-12-19 20:28:52.881969	2016-12-19 20:28:52.881969
34212	8036	2220	2016-12-19 20:28:54.709681	2016-12-19 20:28:54.709681
34213	8041	2220	2016-12-19 20:28:54.773831	2016-12-19 20:28:54.773831
34214	8037	2220	2016-12-19 20:28:54.789317	2016-12-19 20:28:54.789317
34215	8004	2220	2016-12-19 20:28:54.805638	2016-12-19 20:28:54.805638
34216	8038	2220	2016-12-19 20:28:54.821035	2016-12-19 20:28:54.821035
34217	8005	2220	2016-12-19 20:28:54.848133	2016-12-19 20:28:54.848133
34218	7988	2220	2016-12-19 20:28:54.859453	2016-12-19 20:28:54.859453
34219	7917	2220	2016-12-19 20:28:54.870354	2016-12-19 20:28:54.870354
34220	7977	2220	2016-12-19 20:28:54.892026	2016-12-19 20:28:54.892026
34221	8006	2220	2016-12-19 20:28:54.906936	2016-12-19 20:28:54.906936
34222	8039	2220	2016-12-19 20:28:54.930642	2016-12-19 20:28:54.930642
34223	8141	2220	2016-12-19 20:28:54.945038	2016-12-19 20:28:54.945038
34224	8142	2220	2016-12-19 20:28:54.966498	2016-12-19 20:28:54.966498
34225	8143	2220	2016-12-19 20:28:54.97959	2016-12-19 20:28:54.97959
34226	8144	2220	2016-12-19 20:28:55.00266	2016-12-19 20:28:55.00266
34227	8145	2220	2016-12-19 20:28:55.016776	2016-12-19 20:28:55.016776
34228	8146	2220	2016-12-19 20:28:55.043753	2016-12-19 20:28:55.043753
34229	8147	2220	2016-12-19 20:28:55.062854	2016-12-19 20:28:55.062854
34230	8148	2220	2016-12-19 20:28:55.082123	2016-12-19 20:28:55.082123
34231	8149	2220	2016-12-19 20:28:55.101712	2016-12-19 20:28:55.101712
34232	8150	2220	2016-12-19 20:28:56.474561	2016-12-19 20:28:56.474561
34233	8151	2220	2016-12-19 20:28:56.535112	2016-12-19 20:28:56.535112
34234	7975	2220	2016-12-19 20:28:56.553852	2016-12-19 20:28:56.553852
34235	7895	2220	2016-12-19 20:28:56.572999	2016-12-19 20:28:56.572999
34236	8040	2220	2016-12-19 20:28:56.590788	2016-12-19 20:28:56.590788
34237	8156	2302	2016-12-19 20:29:01.659816	2016-12-19 20:29:01.659816
34238	8157	2302	2016-12-19 20:29:03.727721	2016-12-19 20:29:03.727721
34239	8158	2302	2016-12-19 20:29:05.78901	2016-12-19 20:29:05.78901
34240	8159	2302	2016-12-19 20:29:07.547962	2016-12-19 20:29:07.547962
34241	8160	2302	2016-12-19 20:29:09.919822	2016-12-19 20:29:09.919822
34242	8161	2302	2016-12-19 20:29:11.644855	2016-12-19 20:29:11.644855
34243	8162	2302	2016-12-19 20:29:13.328996	2016-12-19 20:29:13.328996
34244	8163	2302	2016-12-19 20:29:15.011413	2016-12-19 20:29:15.011413
34245	8164	2302	2016-12-19 20:29:16.775784	2016-12-19 20:29:16.775784
34246	8165	2302	2016-12-19 20:29:18.559369	2016-12-19 20:29:18.559369
34247	8166	2302	2016-12-19 20:29:20.168053	2016-12-19 20:29:20.168053
34248	8167	2302	2016-12-19 20:29:22.075281	2016-12-19 20:29:22.075281
34249	8168	2302	2016-12-19 20:29:23.950249	2016-12-19 20:29:23.950249
34250	8169	2302	2016-12-19 20:29:25.844285	2016-12-19 20:29:25.844285
34251	8170	2302	2016-12-19 20:29:27.939558	2016-12-19 20:29:27.939558
34252	8171	2302	2016-12-19 20:29:29.721757	2016-12-19 20:29:29.721757
34253	8172	2302	2016-12-19 20:29:31.545618	2016-12-19 20:29:31.545618
34254	8173	2302	2016-12-19 20:29:33.356736	2016-12-19 20:29:33.356736
34255	8174	2302	2016-12-19 20:29:35.135057	2016-12-19 20:29:35.135057
34256	8175	2302	2016-12-19 20:29:35.928521	2016-12-19 20:29:35.928521
34257	8176	2302	2016-12-19 20:29:39.87881	2016-12-19 20:29:39.87881
34258	8177	2302	2016-12-19 20:29:42.074485	2016-12-19 20:29:42.074485
34259	8178	2302	2016-12-19 20:29:44.270506	2016-12-19 20:29:44.270506
34260	7465	2302	2016-12-19 20:29:44.282982	2016-12-19 20:29:44.282982
34261	8179	2302	2016-12-19 20:29:45.963573	2016-12-19 20:29:45.963573
34262	8180	2302	2016-12-19 20:29:47.903144	2016-12-19 20:29:47.903144
34263	8181	2302	2016-12-19 20:29:49.851217	2016-12-19 20:29:49.851217
34264	8182	2302	2016-12-19 20:29:51.76962	2016-12-19 20:29:51.76962
34265	8183	2302	2016-12-19 20:29:52.489516	2016-12-19 20:29:52.489516
34266	8184	2302	2016-12-19 20:29:53.273647	2016-12-19 20:29:53.273647
34267	8185	2302	2016-12-19 20:29:54.154093	2016-12-19 20:29:54.154093
34268	8186	2302	2016-12-19 20:29:55.004036	2016-12-19 20:29:55.004036
34269	8187	2302	2016-12-19 20:29:55.764298	2016-12-19 20:29:55.764298
34270	8188	2302	2016-12-19 20:29:56.642859	2016-12-19 20:29:56.642859
34271	7658	2302	2016-12-19 20:29:56.65441	2016-12-19 20:29:56.65441
34272	7659	2302	2016-12-19 20:29:56.672009	2016-12-19 20:29:56.672009
34273	7660	2302	2016-12-19 20:29:56.695525	2016-12-19 20:29:56.695525
34274	8189	2302	2016-12-19 20:30:00.741999	2016-12-19 20:30:00.741999
34275	8190	2302	2016-12-19 20:30:03.190913	2016-12-19 20:30:03.190913
34276	8191	2302	2016-12-19 20:30:05.491586	2016-12-19 20:30:05.491586
34277	8192	2302	2016-12-19 20:30:09.965029	2016-12-19 20:30:09.965029
34278	8193	2302	2016-12-19 20:30:10.758783	2016-12-19 20:30:10.758783
34279	8194	2302	2016-12-19 20:30:11.546565	2016-12-19 20:30:11.546565
34280	8195	2302	2016-12-19 20:30:13.495965	2016-12-19 20:30:13.495965
34281	8196	2302	2016-12-19 20:30:15.248654	2016-12-19 20:30:15.248654
34282	8197	2302	2016-12-19 20:30:16.939893	2016-12-19 20:30:16.939893
34283	8198	2302	2016-12-19 20:30:18.648786	2016-12-19 20:30:18.648786
34284	8199	2302	2016-12-19 20:30:20.44113	2016-12-19 20:30:20.44113
34285	8200	2302	2016-12-19 20:30:22.664159	2016-12-19 20:30:22.664159
34286	8201	2302	2016-12-19 20:30:24.503408	2016-12-19 20:30:24.503408
34287	8202	2302	2016-12-19 20:30:26.35282	2016-12-19 20:30:26.35282
34288	8203	2302	2016-12-19 20:30:28.268869	2016-12-19 20:30:28.268869
34289	8204	2302	2016-12-19 20:30:29.071585	2016-12-19 20:30:29.071585
34290	8205	2302	2016-12-19 20:30:29.879582	2016-12-19 20:30:29.879582
34291	8206	2302	2016-12-19 20:30:31.799873	2016-12-19 20:30:31.799873
34292	8207	2302	2016-12-19 20:30:33.76021	2016-12-19 20:30:33.76021
34293	8208	2302	2016-12-19 20:30:35.830026	2016-12-19 20:30:35.830026
34294	8209	2302	2016-12-19 20:30:37.778566	2016-12-19 20:30:37.778566
34295	7483	2302	2016-12-19 20:30:37.797493	2016-12-19 20:30:37.797493
34296	7484	2302	2016-12-19 20:30:37.812311	2016-12-19 20:30:37.812311
34297	8210	2302	2016-12-19 20:30:42.116011	2016-12-19 20:30:42.116011
34298	8211	2302	2016-12-19 20:30:44.118649	2016-12-19 20:30:44.118649
34299	7639	2302	2016-12-19 20:30:44.137054	2016-12-19 20:30:44.137054
34300	8212	2302	2016-12-19 20:30:45.912829	2016-12-19 20:30:45.912829
34301	8213	2302	2016-12-19 20:30:47.901499	2016-12-19 20:30:47.901499
34302	8214	2302	2016-12-19 20:30:49.756821	2016-12-19 20:30:49.756821
34303	8215	2302	2016-12-19 20:30:51.625983	2016-12-19 20:30:51.625983
34304	8216	2302	2016-12-19 20:30:53.299791	2016-12-19 20:30:53.299791
34305	8217	2302	2016-12-19 20:30:55.10575	2016-12-19 20:30:55.10575
34306	8218	2302	2016-12-19 20:30:56.943148	2016-12-19 20:30:56.943148
34307	8219	2302	2016-12-19 20:30:58.76775	2016-12-19 20:30:58.76775
34308	8220	2302	2016-12-19 20:31:00.676364	2016-12-19 20:31:00.676364
34309	8221	2302	2016-12-19 20:31:01.568231	2016-12-19 20:31:01.568231
34310	8222	2302	2016-12-19 20:31:02.523609	2016-12-19 20:31:02.523609
34311	8223	2302	2016-12-19 20:31:03.403774	2016-12-19 20:31:03.403774
34312	8224	2302	2016-12-19 20:31:05.255262	2016-12-19 20:31:05.255262
34313	8225	2302	2016-12-19 20:31:07.157756	2016-12-19 20:31:07.157756
34314	8226	2302	2016-12-19 20:31:09.20707	2016-12-19 20:31:09.20707
34315	8227	2302	2016-12-19 20:31:11.274502	2016-12-19 20:31:11.274502
34316	8228	2302	2016-12-19 20:31:13.246867	2016-12-19 20:31:13.246867
34317	8229	2302	2016-12-19 20:31:17.204079	2016-12-19 20:31:17.204079
34318	8230	2302	2016-12-19 20:31:19.078899	2016-12-19 20:31:19.078899
34319	8231	2302	2016-12-19 20:31:20.323347	2016-12-19 20:31:20.323347
34320	8232	2302	2016-12-19 20:31:22.063626	2016-12-19 20:31:22.063626
34321	8233	2302	2016-12-19 20:31:23.746446	2016-12-19 20:31:23.746446
34322	8234	2302	2016-12-19 20:31:25.477794	2016-12-19 20:31:25.477794
34323	8235	2302	2016-12-19 20:31:26.322614	2016-12-19 20:31:26.322614
34324	8236	2302	2016-12-19 20:31:28.072863	2016-12-19 20:31:28.072863
34325	8152	2302	2016-12-19 20:31:28.09074	2016-12-19 20:31:28.09074
34326	8237	2302	2016-12-19 20:31:29.989362	2016-12-19 20:31:29.989362
34327	8238	2302	2016-12-19 20:31:31.915687	2016-12-19 20:31:31.915687
34328	8239	2302	2016-12-19 20:31:33.610693	2016-12-19 20:31:33.610693
34329	8240	2302	2016-12-19 20:31:35.489623	2016-12-19 20:31:35.489623
34330	8241	2302	2016-12-19 20:31:37.243841	2016-12-19 20:31:37.243841
34331	8242	2302	2016-12-19 20:31:39.091498	2016-12-19 20:31:39.091498
34332	8243	2302	2016-12-19 20:31:40.918781	2016-12-19 20:31:40.918781
34333	8244	2302	2016-12-19 20:31:42.581001	2016-12-19 20:31:42.581001
34334	8245	2302	2016-12-19 20:31:44.221503	2016-12-19 20:31:44.221503
34335	8246	2302	2016-12-19 20:31:45.968299	2016-12-19 20:31:45.968299
34336	8247	2302	2016-12-19 20:31:47.725687	2016-12-19 20:31:47.725687
34337	8248	2302	2016-12-19 20:31:50.285481	2016-12-19 20:31:50.285481
34338	8249	2302	2016-12-19 20:31:51.211255	2016-12-19 20:31:51.211255
34339	8250	2302	2016-12-19 20:31:53.091729	2016-12-19 20:31:53.091729
34340	8251	2302	2016-12-19 20:31:53.951522	2016-12-19 20:31:53.951522
34341	8252	2302	2016-12-19 20:31:56.057539	2016-12-19 20:31:56.057539
34342	8253	2302	2016-12-19 20:31:58.036452	2016-12-19 20:31:58.036452
34343	8254	2302	2016-12-19 20:31:59.889695	2016-12-19 20:31:59.889695
34344	8153	2242	2016-12-19 20:32:04.135482	2016-12-19 20:32:04.135482
34345	8044	2242	2016-12-19 20:32:04.144244	2016-12-19 20:32:04.144244
34346	8058	2242	2016-12-19 20:32:04.159047	2016-12-19 20:32:04.159047
34347	8059	2242	2016-12-19 20:32:04.184558	2016-12-19 20:32:04.184558
34348	8056	2242	2016-12-19 20:32:04.199385	2016-12-19 20:32:04.199385
34349	8057	2242	2016-12-19 20:32:04.227129	2016-12-19 20:32:04.227129
34350	8047	2242	2016-12-19 20:32:04.239185	2016-12-19 20:32:04.239185
34351	8052	2242	2016-12-19 20:32:04.261564	2016-12-19 20:32:04.261564
34352	8045	2242	2016-12-19 20:32:04.284697	2016-12-19 20:32:04.284697
34353	8053	2242	2016-12-19 20:32:04.296999	2016-12-19 20:32:04.296999
34354	8050	2242	2016-12-19 20:32:04.316333	2016-12-19 20:32:04.316333
34355	8051	2242	2016-12-19 20:32:04.332642	2016-12-19 20:32:04.332642
34356	8049	2242	2016-12-19 20:32:04.35192	2016-12-19 20:32:04.35192
34357	8055	2242	2016-12-19 20:32:04.373544	2016-12-19 20:32:04.373544
34358	7501	2242	2016-12-19 20:32:04.390273	2016-12-19 20:32:04.390273
34359	8054	2242	2016-12-19 20:32:04.406852	2016-12-19 20:32:04.406852
34360	8048	2242	2016-12-19 20:32:04.425356	2016-12-19 20:32:04.425356
34361	8046	2242	2016-12-19 20:32:04.440711	2016-12-19 20:32:04.440711
34362	8060	2242	2016-12-19 20:32:04.468691	2016-12-19 20:32:04.468691
34363	8061	2242	2016-12-19 20:32:04.479728	2016-12-19 20:32:04.479728
34364	8154	2242	2016-12-19 20:32:05.752892	2016-12-19 20:32:05.752892
34365	8155	2242	2016-12-19 20:32:05.814635	2016-12-19 20:32:05.814635
34366	8255	2245	2016-12-19 20:32:08.53941	2016-12-19 20:32:08.53941
34367	8256	2245	2016-12-19 20:32:10.060122	2016-12-19 20:32:10.060122
34368	8257	2245	2016-12-19 20:32:11.577467	2016-12-19 20:32:11.577467
34369	8258	2245	2016-12-19 20:32:13.087285	2016-12-19 20:32:13.087285
34370	8259	2245	2016-12-19 20:32:14.561834	2016-12-19 20:32:14.561834
34371	8260	2245	2016-12-19 20:32:16.122222	2016-12-19 20:32:16.122222
34372	8261	2245	2016-12-19 20:32:17.589275	2016-12-19 20:32:17.589275
34373	8262	2245	2016-12-19 20:32:19.017344	2016-12-19 20:32:19.017344
34374	8263	2245	2016-12-19 20:32:20.448694	2016-12-19 20:32:20.448694
34375	8264	2246	2016-12-19 20:32:23.321714	2016-12-19 20:32:23.321714
34376	8265	2246	2016-12-19 20:32:24.919899	2016-12-19 20:32:24.919899
34377	8266	2246	2016-12-19 20:32:26.746348	2016-12-19 20:32:26.746348
34378	8267	2246	2016-12-19 20:32:28.275356	2016-12-19 20:32:28.275356
34379	8268	2246	2016-12-19 20:32:30.26859	2016-12-19 20:32:30.26859
34380	8269	2246	2016-12-19 20:32:31.767299	2016-12-19 20:32:31.767299
34381	8270	2246	2016-12-19 20:32:33.264623	2016-12-19 20:32:33.264623
34382	8271	2246	2016-12-19 20:32:34.769815	2016-12-19 20:32:34.769815
34383	8272	2246	2016-12-19 20:32:36.655723	2016-12-19 20:32:36.655723
34384	8264	2244	2016-12-19 20:32:38.283398	2016-12-19 20:32:38.283398
34385	8265	2244	2016-12-19 20:32:38.359443	2016-12-19 20:32:38.359443
34386	8266	2244	2016-12-19 20:32:38.370209	2016-12-19 20:32:38.370209
34387	8273	2244	2016-12-19 20:32:39.939439	2016-12-19 20:32:39.939439
34388	8274	2244	2016-12-19 20:32:41.507567	2016-12-19 20:32:41.507567
34389	8255	2244	2016-12-19 20:32:41.527769	2016-12-19 20:32:41.527769
34390	7481	2244	2016-12-19 20:32:41.542867	2016-12-19 20:32:41.542867
34391	7482	2244	2016-12-19 20:32:41.555755	2016-12-19 20:32:41.555755
34392	8256	2244	2016-12-19 20:32:41.584687	2016-12-19 20:32:41.584687
34393	8257	2244	2016-12-19 20:32:41.601634	2016-12-19 20:32:41.601634
34394	8258	2244	2016-12-19 20:32:41.631752	2016-12-19 20:32:41.631752
34395	8259	2244	2016-12-19 20:32:41.644768	2016-12-19 20:32:41.644768
34396	8260	2244	2016-12-19 20:32:41.666056	2016-12-19 20:32:41.666056
34397	8261	2244	2016-12-19 20:32:41.684307	2016-12-19 20:32:41.684307
34398	8262	2244	2016-12-19 20:32:41.702225	2016-12-19 20:32:41.702225
34399	8263	2244	2016-12-19 20:32:41.727448	2016-12-19 20:32:41.727448
34400	8267	2244	2016-12-19 20:32:41.744228	2016-12-19 20:32:41.744228
34401	8268	2244	2016-12-19 20:32:41.764309	2016-12-19 20:32:41.764309
34402	8269	2244	2016-12-19 20:32:41.784983	2016-12-19 20:32:41.784983
34403	8270	2244	2016-12-19 20:32:41.795817	2016-12-19 20:32:41.795817
34404	8271	2244	2016-12-19 20:32:42.972046	2016-12-19 20:32:42.972046
34405	8272	2244	2016-12-19 20:32:43.037397	2016-12-19 20:32:43.037397
34406	8275	2244	2016-12-19 20:32:44.74414	2016-12-19 20:32:44.74414
34407	8276	2244	2016-12-19 20:32:46.143525	2016-12-19 20:32:46.143525
34408	8277	2244	2016-12-19 20:32:47.71598	2016-12-19 20:32:47.71598
34409	8273	2247	2016-12-19 20:32:50.844536	2016-12-19 20:32:50.844536
34410	8274	2247	2016-12-19 20:32:50.916211	2016-12-19 20:32:50.916211
34411	7481	2247	2016-12-19 20:32:50.934843	2016-12-19 20:32:50.934843
34412	7482	2247	2016-12-19 20:32:50.951246	2016-12-19 20:32:50.951246
34413	8275	2247	2016-12-19 20:32:50.968769	2016-12-19 20:32:50.968769
34414	8276	2247	2016-12-19 20:32:50.988049	2016-12-19 20:32:50.988049
34415	8277	2247	2016-12-19 20:32:51.006359	2016-12-19 20:32:51.006359
34416	8278	2249	2016-12-19 20:32:54.015795	2016-12-19 20:32:54.015795
34417	8279	2249	2016-12-19 20:32:55.619425	2016-12-19 20:32:55.619425
34418	8280	2249	2016-12-19 20:32:57.316529	2016-12-19 20:32:57.316529
34419	8281	2249	2016-12-19 20:32:58.935903	2016-12-19 20:32:58.935903
34420	8282	2249	2016-12-19 20:32:59.703684	2016-12-19 20:32:59.703684
34421	8283	2249	2016-12-19 20:33:01.349802	2016-12-19 20:33:01.349802
34422	8284	2249	2016-12-19 20:33:03.060917	2016-12-19 20:33:03.060917
34423	8285	2249	2016-12-19 20:33:04.6954	2016-12-19 20:33:04.6954
34424	8286	2249	2016-12-19 20:33:06.231059	2016-12-19 20:33:06.231059
34425	8287	2249	2016-12-19 20:33:07.882109	2016-12-19 20:33:07.882109
34426	8288	2249	2016-12-19 20:33:09.445406	2016-12-19 20:33:09.445406
34427	8289	2249	2016-12-19 20:33:11.019222	2016-12-19 20:33:11.019222
34428	7373	2249	2016-12-19 20:33:11.034855	2016-12-19 20:33:11.034855
34429	8290	2249	2016-12-19 20:33:12.671293	2016-12-19 20:33:12.671293
34430	8291	2249	2016-12-19 20:33:14.288454	2016-12-19 20:33:14.288454
34431	8292	2249	2016-12-19 20:33:15.950547	2016-12-19 20:33:15.950547
34432	8293	2249	2016-12-19 20:33:17.899284	2016-12-19 20:33:17.899284
34433	8282	2250	2016-12-19 20:33:19.436093	2016-12-19 20:33:19.436093
34434	8283	2250	2016-12-19 20:33:19.503721	2016-12-19 20:33:19.503721
34435	8284	2250	2016-12-19 20:33:19.516535	2016-12-19 20:33:19.516535
34436	8287	2250	2016-12-19 20:33:19.540379	2016-12-19 20:33:19.540379
34437	8294	2250	2016-12-19 20:33:21.293837	2016-12-19 20:33:21.293837
34438	8295	2250	2016-12-19 20:33:23.007895	2016-12-19 20:33:23.007895
34439	8296	2250	2016-12-19 20:33:24.571177	2016-12-19 20:33:24.571177
34440	8297	2250	2016-12-19 20:33:26.189688	2016-12-19 20:33:26.189688
34441	8298	2250	2016-12-19 20:33:27.765023	2016-12-19 20:33:27.765023
34442	8299	2250	2016-12-19 20:33:29.393052	2016-12-19 20:33:29.393052
34443	8300	2250	2016-12-19 20:33:30.966093	2016-12-19 20:33:30.966093
34444	8301	2250	2016-12-19 20:33:32.628782	2016-12-19 20:33:32.628782
34445	8302	2250	2016-12-19 20:33:34.191494	2016-12-19 20:33:34.191494
34446	8303	2250	2016-12-19 20:33:35.897475	2016-12-19 20:33:35.897475
34447	8304	2250	2016-12-19 20:33:37.527213	2016-12-19 20:33:37.527213
34448	8305	2250	2016-12-19 20:33:39.15544	2016-12-19 20:33:39.15544
34449	8306	2250	2016-12-19 20:33:40.847125	2016-12-19 20:33:40.847125
34450	8307	2250	2016-12-19 20:33:42.533883	2016-12-19 20:33:42.533883
34451	8308	2251	2016-12-19 20:33:45.619888	2016-12-19 20:33:45.619888
34452	8309	2251	2016-12-19 20:33:47.742982	2016-12-19 20:33:47.742982
34453	8310	2251	2016-12-19 20:33:49.272497	2016-12-19 20:33:49.272497
34454	8311	2251	2016-12-19 20:33:50.844962	2016-12-19 20:33:50.844962
34455	8312	2251	2016-12-19 20:33:52.474892	2016-12-19 20:33:52.474892
34456	8294	2251	2016-12-19 20:33:52.48915	2016-12-19 20:33:52.48915
34457	8313	2251	2016-12-19 20:33:54.316344	2016-12-19 20:33:54.316344
34458	8314	2251	2016-12-19 20:33:55.455601	2016-12-19 20:33:55.455601
34459	8315	2251	2016-12-19 20:33:57.139453	2016-12-19 20:33:57.139453
34460	8316	2251	2016-12-19 20:33:58.664146	2016-12-19 20:33:58.664146
34461	8317	2251	2016-12-19 20:34:00.234672	2016-12-19 20:34:00.234672
34462	8318	2252	2016-12-19 20:34:03.11689	2016-12-19 20:34:03.11689
34463	8319	2252	2016-12-19 20:34:04.772273	2016-12-19 20:34:04.772273
34464	8320	2252	2016-12-19 20:34:06.456706	2016-12-19 20:34:06.456706
34465	8321	2252	2016-12-19 20:34:08.008288	2016-12-19 20:34:08.008288
34466	8322	2252	2016-12-19 20:34:09.561668	2016-12-19 20:34:09.561668
34467	8323	2252	2016-12-19 20:34:11.100766	2016-12-19 20:34:11.100766
34468	8324	2252	2016-12-19 20:34:12.695884	2016-12-19 20:34:12.695884
34469	8325	2252	2016-12-19 20:34:14.120546	2016-12-19 20:34:14.120546
34470	8326	2252	2016-12-19 20:34:15.803944	2016-12-19 20:34:15.803944
34471	8327	2252	2016-12-19 20:34:17.338681	2016-12-19 20:34:17.338681
34472	8328	2252	2016-12-19 20:34:18.847736	2016-12-19 20:34:18.847736
34473	8329	2252	2016-12-19 20:34:20.566111	2016-12-19 20:34:20.566111
34474	8330	2248	2016-12-19 20:34:23.976503	2016-12-19 20:34:23.976503
34475	8331	2248	2016-12-19 20:34:25.774565	2016-12-19 20:34:25.774565
34476	8278	2248	2016-12-19 20:34:25.783328	2016-12-19 20:34:25.783328
34477	8279	2248	2016-12-19 20:34:25.791488	2016-12-19 20:34:25.791488
34478	8332	2248	2016-12-19 20:34:27.499763	2016-12-19 20:34:27.499763
34479	8308	2248	2016-12-19 20:34:27.52376	2016-12-19 20:34:27.52376
34480	8333	2248	2016-12-19 20:34:29.355726	2016-12-19 20:34:29.355726
34481	8334	2248	2016-12-19 20:34:30.943053	2016-12-19 20:34:30.943053
34482	8309	2248	2016-12-19 20:34:30.966689	2016-12-19 20:34:30.966689
34483	8335	2248	2016-12-19 20:34:32.672855	2016-12-19 20:34:32.672855
34484	8336	2248	2016-12-19 20:34:34.292831	2016-12-19 20:34:34.292831
34485	8337	2248	2016-12-19 20:34:35.94321	2016-12-19 20:34:35.94321
34486	8310	2248	2016-12-19 20:34:35.963449	2016-12-19 20:34:35.963449
34487	8280	2248	2016-12-19 20:34:35.991783	2016-12-19 20:34:35.991783
34488	8338	2248	2016-12-19 20:34:37.747975	2016-12-19 20:34:37.747975
34489	8339	2248	2016-12-19 20:34:39.400749	2016-12-19 20:34:39.400749
34490	8340	2248	2016-12-19 20:34:41.087754	2016-12-19 20:34:41.087754
34491	8341	2248	2016-12-19 20:34:42.778554	2016-12-19 20:34:42.778554
34492	8342	2248	2016-12-19 20:34:44.421474	2016-12-19 20:34:44.421474
34493	8343	2248	2016-12-19 20:34:46.076769	2016-12-19 20:34:46.076769
34494	8344	2248	2016-12-19 20:34:49.32901	2016-12-19 20:34:49.32901
34495	8345	2248	2016-12-19 20:34:51.055666	2016-12-19 20:34:51.055666
34496	8311	2248	2016-12-19 20:34:51.066995	2016-12-19 20:34:51.066995
34497	8312	2248	2016-12-19 20:34:51.08479	2016-12-19 20:34:51.08479
34498	8318	2248	2016-12-19 20:34:51.109459	2016-12-19 20:34:51.109459
34499	8319	2248	2016-12-19 20:34:51.131825	2016-12-19 20:34:51.131825
34500	8320	2248	2016-12-19 20:34:51.151095	2016-12-19 20:34:51.151095
34501	8346	2248	2016-12-19 20:34:52.818359	2016-12-19 20:34:52.818359
34502	8347	2248	2016-12-19 20:34:54.512583	2016-12-19 20:34:54.512583
34503	8321	2248	2016-12-19 20:34:54.536208	2016-12-19 20:34:54.536208
34504	8322	2248	2016-12-19 20:34:54.550982	2016-12-19 20:34:54.550982
34505	8323	2248	2016-12-19 20:34:54.567049	2016-12-19 20:34:54.567049
34506	8348	2248	2016-12-19 20:34:56.303467	2016-12-19 20:34:56.303467
34507	8324	2248	2016-12-19 20:34:56.318085	2016-12-19 20:34:56.318085
34508	8349	2248	2016-12-19 20:34:58.069684	2016-12-19 20:34:58.069684
34509	8350	2248	2016-12-19 20:35:00.01816	2016-12-19 20:35:00.01816
34510	8351	2248	2016-12-19 20:35:01.664837	2016-12-19 20:35:01.664837
34511	8281	2248	2016-12-19 20:35:01.678959	2016-12-19 20:35:01.678959
34512	8282	2248	2016-12-19 20:35:01.704829	2016-12-19 20:35:01.704829
34513	8283	2248	2016-12-19 20:35:01.727349	2016-12-19 20:35:01.727349
34514	8284	2248	2016-12-19 20:35:04.086579	2016-12-19 20:35:04.086579
34515	8285	2248	2016-12-19 20:35:04.153571	2016-12-19 20:35:04.153571
34516	8286	2248	2016-12-19 20:35:04.178442	2016-12-19 20:35:04.178442
34517	8287	2248	2016-12-19 20:35:04.208995	2016-12-19 20:35:04.208995
34518	8288	2248	2016-12-19 20:35:04.248279	2016-12-19 20:35:04.248279
34519	8289	2248	2016-12-19 20:35:04.264468	2016-12-19 20:35:04.264468
34520	8352	2248	2016-12-19 20:35:06.489813	2016-12-19 20:35:06.489813
34521	8353	2248	2016-12-19 20:35:08.196111	2016-12-19 20:35:08.196111
34522	8294	2248	2016-12-19 20:35:08.22037	2016-12-19 20:35:08.22037
34523	8295	2248	2016-12-19 20:35:08.237803	2016-12-19 20:35:08.237803
34524	8325	2248	2016-12-19 20:35:08.254354	2016-12-19 20:35:08.254354
34525	8296	2248	2016-12-19 20:35:08.272814	2016-12-19 20:35:08.272814
34526	8354	2248	2016-12-19 20:35:10.001727	2016-12-19 20:35:10.001727
34527	7373	2248	2016-12-19 20:35:10.023523	2016-12-19 20:35:10.023523
34528	8297	2248	2016-12-19 20:35:10.036028	2016-12-19 20:35:10.036028
34529	8298	2248	2016-12-19 20:35:10.053588	2016-12-19 20:35:10.053588
34530	8355	2248	2016-12-19 20:35:11.687333	2016-12-19 20:35:11.687333
34531	8299	2248	2016-12-19 20:35:11.705323	2016-12-19 20:35:11.705323
34532	8300	2248	2016-12-19 20:35:11.73902	2016-12-19 20:35:11.73902
34533	8301	2248	2016-12-19 20:35:11.758225	2016-12-19 20:35:11.758225
34534	8356	2248	2016-12-19 20:35:15.926127	2016-12-19 20:35:15.926127
34535	8290	2248	2016-12-19 20:35:15.946028	2016-12-19 20:35:15.946028
34536	8357	2248	2016-12-19 20:35:17.629634	2016-12-19 20:35:17.629634
34537	8326	2248	2016-12-19 20:35:17.640851	2016-12-19 20:35:17.640851
34538	8302	2248	2016-12-19 20:35:17.657768	2016-12-19 20:35:17.657768
34539	8303	2248	2016-12-19 20:35:17.674173	2016-12-19 20:35:17.674173
34540	8304	2248	2016-12-19 20:35:17.689684	2016-12-19 20:35:17.689684
34541	8305	2248	2016-12-19 20:35:17.708155	2016-12-19 20:35:17.708155
34542	8306	2248	2016-12-19 20:35:17.723098	2016-12-19 20:35:17.723098
34543	8358	2248	2016-12-19 20:35:19.518169	2016-12-19 20:35:19.518169
34544	8359	2248	2016-12-19 20:35:21.142604	2016-12-19 20:35:21.142604
34545	8360	2248	2016-12-19 20:35:22.988017	2016-12-19 20:35:22.988017
34546	8327	2248	2016-12-19 20:35:22.998039	2016-12-19 20:35:22.998039
34547	8328	2248	2016-12-19 20:35:23.012806	2016-12-19 20:35:23.012806
34548	8361	2248	2016-12-19 20:35:24.678818	2016-12-19 20:35:24.678818
34549	8362	2248	2016-12-19 20:35:26.373279	2016-12-19 20:35:26.373279
34550	8363	2248	2016-12-19 20:35:28.0439	2016-12-19 20:35:28.0439
34551	8291	2248	2016-12-19 20:35:28.05995	2016-12-19 20:35:28.05995
34552	8292	2248	2016-12-19 20:35:28.080194	2016-12-19 20:35:28.080194
34553	8313	2248	2016-12-19 20:35:28.100867	2016-12-19 20:35:28.100867
34554	8152	2248	2016-12-19 20:35:29.782637	2016-12-19 20:35:29.782637
34555	8314	2248	2016-12-19 20:35:29.798231	2016-12-19 20:35:29.798231
34556	8307	2248	2016-12-19 20:35:29.816923	2016-12-19 20:35:29.816923
34557	8364	2248	2016-12-19 20:35:31.554578	2016-12-19 20:35:31.554578
34558	8365	2248	2016-12-19 20:35:33.237491	2016-12-19 20:35:33.237491
34559	8366	2248	2016-12-19 20:35:34.870132	2016-12-19 20:35:34.870132
34560	8367	2248	2016-12-19 20:35:36.520557	2016-12-19 20:35:36.520557
34561	8368	2248	2016-12-19 20:35:40.12128	2016-12-19 20:35:40.12128
34562	8369	2248	2016-12-19 20:35:41.778676	2016-12-19 20:35:41.778676
34563	8370	2248	2016-12-19 20:35:43.672456	2016-12-19 20:35:43.672456
34564	8371	2248	2016-12-19 20:35:45.40558	2016-12-19 20:35:45.40558
34565	8372	2248	2016-12-19 20:35:47.140368	2016-12-19 20:35:47.140368
34566	8373	2248	2016-12-19 20:35:48.943713	2016-12-19 20:35:48.943713
34567	8374	2248	2016-12-19 20:35:51.610665	2016-12-19 20:35:51.610665
34568	8375	2248	2016-12-19 20:35:53.427041	2016-12-19 20:35:53.427041
34569	8376	2248	2016-12-19 20:35:55.221441	2016-12-19 20:35:55.221441
34570	8377	2248	2016-12-19 20:35:56.889499	2016-12-19 20:35:56.889499
34571	8315	2248	2016-12-19 20:35:56.915799	2016-12-19 20:35:56.915799
34572	8378	2248	2016-12-19 20:35:58.899673	2016-12-19 20:35:58.899673
34573	8379	2248	2016-12-19 20:36:00.716756	2016-12-19 20:36:00.716756
34574	8380	2248	2016-12-19 20:36:03.069065	2016-12-19 20:36:03.069065
34575	8293	2248	2016-12-19 20:36:03.083682	2016-12-19 20:36:03.083682
34576	8329	2248	2016-12-19 20:36:03.102311	2016-12-19 20:36:03.102311
34577	8381	2248	2016-12-19 20:36:04.809859	2016-12-19 20:36:04.809859
34578	8382	2248	2016-12-19 20:36:06.539109	2016-12-19 20:36:06.539109
34579	8383	2248	2016-12-19 20:36:08.227773	2016-12-19 20:36:08.227773
34580	8316	2248	2016-12-19 20:36:08.248527	2016-12-19 20:36:08.248527
34581	8384	2248	2016-12-19 20:36:09.939699	2016-12-19 20:36:09.939699
34582	8385	2248	2016-12-19 20:36:11.731307	2016-12-19 20:36:11.731307
34583	8386	2248	2016-12-19 20:36:13.52292	2016-12-19 20:36:13.52292
34584	8387	2248	2016-12-19 20:36:15.365702	2016-12-19 20:36:15.365702
34585	8317	2248	2016-12-19 20:36:15.444056	2016-12-19 20:36:15.444056
34586	8388	2248	2016-12-19 20:36:17.14684	2016-12-19 20:36:17.14684
34587	8338	2253	2016-12-19 20:36:18.694482	2016-12-19 20:36:18.694482
34588	8339	2253	2016-12-19 20:36:18.704399	2016-12-19 20:36:18.704399
34589	8340	2253	2016-12-19 20:36:18.734397	2016-12-19 20:36:18.734397
34590	8341	2253	2016-12-19 20:36:18.751991	2016-12-19 20:36:18.751991
34591	8342	2253	2016-12-19 20:36:18.77617	2016-12-19 20:36:18.77617
34592	8343	2253	2016-12-19 20:36:18.799024	2016-12-19 20:36:18.799024
34593	8344	2253	2016-12-19 20:36:18.813823	2016-12-19 20:36:18.813823
34594	8345	2253	2016-12-19 20:36:18.830164	2016-12-19 20:36:18.830164
34595	8346	2253	2016-12-19 20:36:18.849111	2016-12-19 20:36:18.849111
34596	8347	2253	2016-12-19 20:36:18.871388	2016-12-19 20:36:18.871388
34597	8348	2253	2016-12-19 20:36:18.886709	2016-12-19 20:36:18.886709
34598	8349	2253	2016-12-19 20:36:18.903001	2016-12-19 20:36:18.903001
34599	8350	2253	2016-12-19 20:36:18.922429	2016-12-19 20:36:18.922429
34600	8351	2253	2016-12-19 20:36:18.953963	2016-12-19 20:36:18.953963
34601	8282	2253	2016-12-19 20:36:18.971021	2016-12-19 20:36:18.971021
34602	8283	2253	2016-12-19 20:36:18.98584	2016-12-19 20:36:18.98584
34603	8284	2253	2016-12-19 20:36:19.018376	2016-12-19 20:36:19.018376
34604	8285	2253	2016-12-19 20:36:19.031683	2016-12-19 20:36:19.031683
34605	8286	2253	2016-12-19 20:36:19.052477	2016-12-19 20:36:19.052477
34606	8287	2253	2016-12-19 20:36:19.070761	2016-12-19 20:36:19.070761
34607	8288	2253	2016-12-19 20:36:20.867143	2016-12-19 20:36:20.867143
34608	8289	2253	2016-12-19 20:36:20.929697	2016-12-19 20:36:20.929697
34609	8352	2253	2016-12-19 20:36:20.951974	2016-12-19 20:36:20.951974
34610	8353	2253	2016-12-19 20:36:20.978887	2016-12-19 20:36:20.978887
34611	8295	2253	2016-12-19 20:36:21.006113	2016-12-19 20:36:21.006113
34612	8325	2253	2016-12-19 20:36:21.016106	2016-12-19 20:36:21.016106
34613	8296	2253	2016-12-19 20:36:21.030908	2016-12-19 20:36:21.030908
34614	8354	2253	2016-12-19 20:36:21.053985	2016-12-19 20:36:21.053985
34615	7373	2253	2016-12-19 20:36:21.063799	2016-12-19 20:36:21.063799
34616	8355	2253	2016-12-19 20:36:21.09089	2016-12-19 20:36:21.09089
34617	8356	2253	2016-12-19 20:36:21.105263	2016-12-19 20:36:21.105263
34618	8358	2253	2016-12-19 20:36:21.12998	2016-12-19 20:36:21.12998
34619	8359	2253	2016-12-19 20:36:21.142358	2016-12-19 20:36:21.142358
34620	8360	2253	2016-12-19 20:36:21.161096	2016-12-19 20:36:21.161096
34621	8361	2253	2016-12-19 20:36:21.181189	2016-12-19 20:36:21.181189
34622	8362	2253	2016-12-19 20:36:21.211667	2016-12-19 20:36:21.211667
34623	8363	2253	2016-12-19 20:36:21.222347	2016-12-19 20:36:21.222347
34624	8364	2253	2016-12-19 20:36:21.25171	2016-12-19 20:36:21.25171
34625	8365	2253	2016-12-19 20:36:21.265364	2016-12-19 20:36:21.265364
34626	8366	2253	2016-12-19 20:36:21.291029	2016-12-19 20:36:21.291029
34627	8367	2253	2016-12-19 20:36:22.689782	2016-12-19 20:36:22.689782
34628	8368	2253	2016-12-19 20:36:22.758438	2016-12-19 20:36:22.758438
34629	8369	2253	2016-12-19 20:36:22.77688	2016-12-19 20:36:22.77688
34630	8370	2253	2016-12-19 20:36:22.798353	2016-12-19 20:36:22.798353
34631	8371	2253	2016-12-19 20:36:22.829205	2016-12-19 20:36:22.829205
34632	8372	2253	2016-12-19 20:36:22.845689	2016-12-19 20:36:22.845689
34633	8373	2253	2016-12-19 20:36:22.856986	2016-12-19 20:36:22.856986
34634	8375	2253	2016-12-19 20:36:22.871859	2016-12-19 20:36:22.871859
34635	8376	2253	2016-12-19 20:36:22.888217	2016-12-19 20:36:22.888217
34636	8377	2253	2016-12-19 20:36:22.91517	2016-12-19 20:36:22.91517
34637	8388	2253	2016-12-19 20:36:22.925013	2016-12-19 20:36:22.925013
34638	8389	2255	2016-12-19 20:36:25.887942	2016-12-19 20:36:25.887942
34639	8203	2255	2016-12-19 20:36:25.904048	2016-12-19 20:36:25.904048
34640	8390	2255	2016-12-19 20:36:27.328839	2016-12-19 20:36:27.328839
34641	8391	2255	2016-12-19 20:36:28.90332	2016-12-19 20:36:28.90332
34642	8392	2255	2016-12-19 20:36:30.303075	2016-12-19 20:36:30.303075
34643	8393	2255	2016-12-19 20:36:31.791518	2016-12-19 20:36:31.791518
34644	8394	2255	2016-12-19 20:36:33.250212	2016-12-19 20:36:33.250212
34645	8395	2255	2016-12-19 20:36:34.664496	2016-12-19 20:36:34.664496
34646	8396	2255	2016-12-19 20:36:36.263603	2016-12-19 20:36:36.263603
34647	8397	2255	2016-12-19 20:36:37.74091	2016-12-19 20:36:37.74091
34648	8398	2255	2016-12-19 20:36:39.49139	2016-12-19 20:36:39.49139
34649	8399	2255	2016-12-19 20:36:41.053759	2016-12-19 20:36:41.053759
34650	8400	2255	2016-12-19 20:36:42.518357	2016-12-19 20:36:42.518357
34651	8401	2255	2016-12-19 20:36:43.901299	2016-12-19 20:36:43.901299
34652	8402	2256	2016-12-19 20:36:47.218287	2016-12-19 20:36:47.218287
34653	8403	2256	2016-12-19 20:36:48.670678	2016-12-19 20:36:48.670678
34654	8404	2256	2016-12-19 20:36:50.083554	2016-12-19 20:36:50.083554
34655	8405	2256	2016-12-19 20:36:51.65027	2016-12-19 20:36:51.65027
34656	8406	2256	2016-12-19 20:36:53.228766	2016-12-19 20:36:53.228766
34657	8407	2256	2016-12-19 20:36:54.724867	2016-12-19 20:36:54.724867
34658	8408	2256	2016-12-19 20:36:56.287574	2016-12-19 20:36:56.287574
34659	8409	2256	2016-12-19 20:36:57.819992	2016-12-19 20:36:57.819992
34660	8410	2256	2016-12-19 20:36:59.298392	2016-12-19 20:36:59.298392
34661	8411	2256	2016-12-19 20:37:00.52776	2016-12-19 20:37:00.52776
34662	8412	2256	2016-12-19 20:37:01.770967	2016-12-19 20:37:01.770967
34663	8413	2256	2016-12-19 20:37:02.706474	2016-12-19 20:37:02.706474
34664	8414	2256	2016-12-19 20:37:03.55264	2016-12-19 20:37:03.55264
34665	8415	2257	2016-12-19 20:37:05.449215	2016-12-19 20:37:05.449215
34666	8416	2257	2016-12-19 20:37:06.92343	2016-12-19 20:37:06.92343
34667	8417	2257	2016-12-19 20:37:08.407631	2016-12-19 20:37:08.407631
34668	8418	2257	2016-12-19 20:37:10.101803	2016-12-19 20:37:10.101803
34669	8419	2257	2016-12-19 20:37:11.518313	2016-12-19 20:37:11.518313
34670	8420	2257	2016-12-19 20:37:13.053895	2016-12-19 20:37:13.053895
34671	7453	2258	2016-12-19 20:37:14.380653	2016-12-19 20:37:14.380653
34672	7452	2258	2016-12-19 20:37:14.451616	2016-12-19 20:37:14.451616
34673	7454	2258	2016-12-19 20:37:14.46303	2016-12-19 20:37:14.46303
34674	7451	2258	2016-12-19 20:37:14.471708	2016-12-19 20:37:14.471708
34675	7456	2258	2016-12-19 20:37:14.492327	2016-12-19 20:37:14.492327
34676	7455	2258	2016-12-19 20:37:14.506005	2016-12-19 20:37:14.506005
34677	7458	2258	2016-12-19 20:37:14.531492	2016-12-19 20:37:14.531492
34678	7457	2258	2016-12-19 20:37:14.550193	2016-12-19 20:37:14.550193
34679	7450	2258	2016-12-19 20:37:14.572092	2016-12-19 20:37:14.572092
34680	8276	2259	2016-12-19 20:37:15.630905	2016-12-19 20:37:15.630905
34681	8277	2259	2016-12-19 20:37:15.692716	2016-12-19 20:37:15.692716
34682	8390	2254	2016-12-19 20:37:17.284909	2016-12-19 20:37:17.284909
34683	8393	2254	2016-12-19 20:37:17.36125	2016-12-19 20:37:17.36125
34684	8402	2254	2016-12-19 20:37:17.372343	2016-12-19 20:37:17.372343
34685	8403	2254	2016-12-19 20:37:17.396636	2016-12-19 20:37:17.396636
34686	7453	2254	2016-12-19 20:37:17.424798	2016-12-19 20:37:17.424798
34687	7452	2254	2016-12-19 20:37:17.437302	2016-12-19 20:37:17.437302
34688	8389	2254	2016-12-19 20:37:17.459272	2016-12-19 20:37:17.459272
34689	8421	2254	2016-12-19 20:37:19.317736	2016-12-19 20:37:19.317736
34690	7454	2254	2016-12-19 20:37:19.331878	2016-12-19 20:37:19.331878
34691	7451	2254	2016-12-19 20:37:19.364821	2016-12-19 20:37:19.364821
34692	7456	2254	2016-12-19 20:37:19.386171	2016-12-19 20:37:19.386171
34693	7455	2254	2016-12-19 20:37:19.400482	2016-12-19 20:37:19.400482
34694	8422	2254	2016-12-19 20:37:21.069177	2016-12-19 20:37:21.069177
34695	7458	2254	2016-12-19 20:37:21.098038	2016-12-19 20:37:21.098038
34696	7457	2254	2016-12-19 20:37:21.124644	2016-12-19 20:37:21.124644
34697	8423	2254	2016-12-19 20:37:22.981278	2016-12-19 20:37:22.981278
34698	8424	2254	2016-12-19 20:37:24.848843	2016-12-19 20:37:24.848843
34699	8425	2254	2016-12-19 20:37:26.466419	2016-12-19 20:37:26.466419
34700	8426	2254	2016-12-19 20:37:28.108904	2016-12-19 20:37:28.108904
34701	8203	2254	2016-12-19 20:37:28.120657	2016-12-19 20:37:28.120657
34702	8427	2254	2016-12-19 20:37:31.424328	2016-12-19 20:37:31.424328
34703	8428	2254	2016-12-19 20:37:33.075367	2016-12-19 20:37:33.075367
34704	8429	2254	2016-12-19 20:37:34.736999	2016-12-19 20:37:34.736999
34705	8430	2254	2016-12-19 20:37:36.46537	2016-12-19 20:37:36.46537
34706	8431	2254	2016-12-19 20:37:38.24646	2016-12-19 20:37:38.24646
34707	8432	2254	2016-12-19 20:37:40.008935	2016-12-19 20:37:40.008935
34708	8433	2254	2016-12-19 20:37:41.761787	2016-12-19 20:37:41.761787
34709	8434	2254	2016-12-19 20:37:43.476976	2016-12-19 20:37:43.476976
34710	8435	2254	2016-12-19 20:37:45.083045	2016-12-19 20:37:45.083045
34711	8436	2254	2016-12-19 20:37:46.729577	2016-12-19 20:37:46.729577
34712	7450	2254	2016-12-19 20:37:46.745112	2016-12-19 20:37:46.745112
34713	8404	2254	2016-12-19 20:37:46.774069	2016-12-19 20:37:46.774069
34714	8405	2254	2016-12-19 20:37:46.789294	2016-12-19 20:37:46.789294
34715	8437	2254	2016-12-19 20:37:48.648876	2016-12-19 20:37:48.648876
34716	8438	2254	2016-12-19 20:37:50.40056	2016-12-19 20:37:50.40056
34717	8439	2254	2016-12-19 20:37:52.014726	2016-12-19 20:37:52.014726
34718	8440	2254	2016-12-19 20:37:53.651642	2016-12-19 20:37:53.651642
34719	8441	2254	2016-12-19 20:37:55.442431	2016-12-19 20:37:55.442431
34720	8442	2254	2016-12-19 20:37:57.197497	2016-12-19 20:37:57.197497
34721	8443	2254	2016-12-19 20:37:58.930696	2016-12-19 20:37:58.930696
34722	8444	2254	2016-12-19 20:38:02.615739	2016-12-19 20:38:02.615739
34723	8391	2254	2016-12-19 20:38:02.625937	2016-12-19 20:38:02.625937
34724	8392	2254	2016-12-19 20:38:02.636529	2016-12-19 20:38:02.636529
34725	8394	2254	2016-12-19 20:38:02.646779	2016-12-19 20:38:02.646779
34726	8395	2254	2016-12-19 20:38:02.659526	2016-12-19 20:38:02.659526
34727	8445	2254	2016-12-19 20:38:04.370238	2016-12-19 20:38:04.370238
34728	8446	2254	2016-12-19 20:38:06.130939	2016-12-19 20:38:06.130939
34729	8447	2254	2016-12-19 20:38:07.819209	2016-12-19 20:38:07.819209
34730	8448	2254	2016-12-19 20:38:09.610525	2016-12-19 20:38:09.610525
34731	8449	2254	2016-12-19 20:38:11.348354	2016-12-19 20:38:11.348354
34732	8450	2254	2016-12-19 20:38:13.051631	2016-12-19 20:38:13.051631
34733	8451	2254	2016-12-19 20:38:14.684641	2016-12-19 20:38:14.684641
34734	8452	2254	2016-12-19 20:38:16.436474	2016-12-19 20:38:16.436474
34735	8453	2254	2016-12-19 20:38:18.212761	2016-12-19 20:38:18.212761
34736	8454	2254	2016-12-19 20:38:19.835977	2016-12-19 20:38:19.835977
34737	8455	2254	2016-12-19 20:38:21.542843	2016-12-19 20:38:21.542843
34738	8456	2254	2016-12-19 20:38:25.71486	2016-12-19 20:38:25.71486
34739	8457	2254	2016-12-19 20:38:27.344112	2016-12-19 20:38:27.344112
34740	8415	2254	2016-12-19 20:38:27.355918	2016-12-19 20:38:27.355918
34741	8396	2254	2016-12-19 20:38:27.387104	2016-12-19 20:38:27.387104
34742	8397	2254	2016-12-19 20:38:29.548618	2016-12-19 20:38:29.548618
34743	8398	2254	2016-12-19 20:38:29.620304	2016-12-19 20:38:29.620304
34744	8399	2254	2016-12-19 20:38:29.6384	2016-12-19 20:38:29.6384
34745	8400	2254	2016-12-19 20:38:29.669926	2016-12-19 20:38:29.669926
34746	8406	2254	2016-12-19 20:38:29.685774	2016-12-19 20:38:29.685774
34747	8401	2254	2016-12-19 20:38:29.69759	2016-12-19 20:38:29.69759
34748	8407	2254	2016-12-19 20:38:29.718133	2016-12-19 20:38:29.718133
34749	8416	2254	2016-12-19 20:38:29.734182	2016-12-19 20:38:29.734182
34750	8417	2254	2016-12-19 20:38:29.758679	2016-12-19 20:38:29.758679
34751	8418	2254	2016-12-19 20:38:29.774699	2016-12-19 20:38:29.774699
34752	8408	2254	2016-12-19 20:38:29.788377	2016-12-19 20:38:29.788377
34753	8409	2254	2016-12-19 20:38:29.802226	2016-12-19 20:38:29.802226
34754	8410	2254	2016-12-19 20:38:29.821963	2016-12-19 20:38:29.821963
34755	8419	2254	2016-12-19 20:38:29.835204	2016-12-19 20:38:29.835204
34756	8420	2254	2016-12-19 20:38:29.844479	2016-12-19 20:38:29.844479
34757	8411	2254	2016-12-19 20:38:29.866656	2016-12-19 20:38:29.866656
34758	8412	2254	2016-12-19 20:38:29.876878	2016-12-19 20:38:29.876878
34759	8413	2254	2016-12-19 20:38:29.902248	2016-12-19 20:38:29.902248
34760	8414	2254	2016-12-19 20:38:29.918548	2016-12-19 20:38:29.918548
34761	8276	2254	2016-12-19 20:38:29.929008	2016-12-19 20:38:29.929008
34762	8277	2254	2016-12-19 20:38:31.038906	2016-12-19 20:38:31.038906
34763	8458	2254	2016-12-19 20:38:32.776391	2016-12-19 20:38:32.776391
34764	8459	2254	2016-12-19 20:38:34.478401	2016-12-19 20:38:34.478401
34765	8460	2254	2016-12-19 20:38:36.158547	2016-12-19 20:38:36.158547
34766	8421	2260	2016-12-19 20:38:37.683633	2016-12-19 20:38:37.683633
34767	8423	2260	2016-12-19 20:38:37.73991	2016-12-19 20:38:37.73991
34768	8424	2260	2016-12-19 20:38:37.753228	2016-12-19 20:38:37.753228
34769	8425	2260	2016-12-19 20:38:37.767989	2016-12-19 20:38:37.767989
34770	8426	2260	2016-12-19 20:38:37.777919	2016-12-19 20:38:37.777919
34771	8427	2260	2016-12-19 20:38:37.796266	2016-12-19 20:38:37.796266
34772	8428	2260	2016-12-19 20:38:37.810508	2016-12-19 20:38:37.810508
34773	8429	2260	2016-12-19 20:38:37.82946	2016-12-19 20:38:37.82946
34774	8430	2260	2016-12-19 20:38:37.843631	2016-12-19 20:38:37.843631
34775	8431	2260	2016-12-19 20:38:37.854592	2016-12-19 20:38:37.854592
34776	8432	2260	2016-12-19 20:38:37.878335	2016-12-19 20:38:37.878335
34777	8433	2260	2016-12-19 20:38:37.888703	2016-12-19 20:38:37.888703
34778	8434	2260	2016-12-19 20:38:37.912089	2016-12-19 20:38:37.912089
34779	8435	2260	2016-12-19 20:38:37.922915	2016-12-19 20:38:37.922915
34780	8436	2260	2016-12-19 20:38:37.944014	2016-12-19 20:38:37.944014
34781	8438	2260	2016-12-19 20:38:37.960309	2016-12-19 20:38:37.960309
34782	8439	2260	2016-12-19 20:38:37.972988	2016-12-19 20:38:37.972988
34783	8440	2260	2016-12-19 20:38:37.994001	2016-12-19 20:38:37.994001
34784	8441	2260	2016-12-19 20:38:38.007116	2016-12-19 20:38:38.007116
34785	8442	2260	2016-12-19 20:38:38.029952	2016-12-19 20:38:38.029952
34786	8443	2260	2016-12-19 20:38:39.530438	2016-12-19 20:38:39.530438
34787	8444	2260	2016-12-19 20:38:39.592151	2016-12-19 20:38:39.592151
34788	8445	2260	2016-12-19 20:38:39.606947	2016-12-19 20:38:39.606947
34789	8446	2260	2016-12-19 20:38:39.634861	2016-12-19 20:38:39.634861
34790	8447	2260	2016-12-19 20:38:39.645422	2016-12-19 20:38:39.645422
34791	8448	2260	2016-12-19 20:38:39.662736	2016-12-19 20:38:39.662736
34792	8449	2260	2016-12-19 20:38:39.673459	2016-12-19 20:38:39.673459
34793	8450	2260	2016-12-19 20:38:39.69244	2016-12-19 20:38:39.69244
34794	8451	2260	2016-12-19 20:38:39.708856	2016-12-19 20:38:39.708856
34795	8452	2260	2016-12-19 20:38:39.729888	2016-12-19 20:38:39.729888
34796	8453	2260	2016-12-19 20:38:39.751524	2016-12-19 20:38:39.751524
34797	8454	2260	2016-12-19 20:38:39.772681	2016-12-19 20:38:39.772681
34798	8455	2260	2016-12-19 20:38:39.790009	2016-12-19 20:38:39.790009
34799	8457	2260	2016-12-19 20:38:39.812281	2016-12-19 20:38:39.812281
34800	8458	2260	2016-12-19 20:38:39.830804	2016-12-19 20:38:39.830804
34801	8459	2260	2016-12-19 20:38:39.850018	2016-12-19 20:38:39.850018
34802	8460	2260	2016-12-19 20:38:39.874805	2016-12-19 20:38:39.874805
34803	8461	2261	2016-12-19 20:38:43.073869	2016-12-19 20:38:43.073869
34804	8462	2261	2016-12-19 20:38:44.790653	2016-12-19 20:38:44.790653
34805	8463	2261	2016-12-19 20:38:46.475845	2016-12-19 20:38:46.475845
34806	8464	2261	2016-12-19 20:38:48.127422	2016-12-19 20:38:48.127422
34807	8465	2261	2016-12-19 20:38:49.733553	2016-12-19 20:38:49.733553
34808	8466	2261	2016-12-19 20:38:51.384139	2016-12-19 20:38:51.384139
34809	8467	2261	2016-12-19 20:38:53.005361	2016-12-19 20:38:53.005361
34810	8468	2261	2016-12-19 20:38:54.686753	2016-12-19 20:38:54.686753
34811	8469	2261	2016-12-19 20:38:56.384652	2016-12-19 20:38:56.384652
34812	8470	2261	2016-12-19 20:38:58.225633	2016-12-19 20:38:58.225633
34813	8471	2261	2016-12-19 20:38:59.99233	2016-12-19 20:38:59.99233
34814	8472	2261	2016-12-19 20:39:00.831516	2016-12-19 20:39:00.831516
34815	8473	2261	2016-12-19 20:39:02.931275	2016-12-19 20:39:02.931275
34816	8474	2261	2016-12-19 20:39:04.582191	2016-12-19 20:39:04.582191
34817	8475	2261	2016-12-19 20:39:06.257381	2016-12-19 20:39:06.257381
34818	8476	2261	2016-12-19 20:39:07.940003	2016-12-19 20:39:07.940003
34819	8477	2261	2016-12-19 20:39:09.594814	2016-12-19 20:39:09.594814
34820	8478	2261	2016-12-19 20:39:11.249741	2016-12-19 20:39:11.249741
34821	8479	2261	2016-12-19 20:39:12.00223	2016-12-19 20:39:12.00223
34822	8480	2261	2016-12-19 20:39:12.773766	2016-12-19 20:39:12.773766
34823	8481	2261	2016-12-19 20:39:15.678386	2016-12-19 20:39:15.678386
34824	8482	2261	2016-12-19 20:39:17.398185	2016-12-19 20:39:17.398185
34825	8483	2261	2016-12-19 20:39:19.146077	2016-12-19 20:39:19.146077
34826	8484	2261	2016-12-19 20:39:19.952576	2016-12-19 20:39:19.952576
34827	8485	2261	2016-12-19 20:39:20.768757	2016-12-19 20:39:20.768757
34828	8486	2261	2016-12-19 20:39:22.450501	2016-12-19 20:39:22.450501
34829	8487	2261	2016-12-19 20:39:25.673556	2016-12-19 20:39:25.673556
34830	8488	2261	2016-12-19 20:39:27.37802	2016-12-19 20:39:27.37802
34831	8489	2261	2016-12-19 20:39:29.096137	2016-12-19 20:39:29.096137
34832	8490	2261	2016-12-19 20:39:30.892316	2016-12-19 20:39:30.892316
34833	8461	2262	2016-12-19 20:39:32.532126	2016-12-19 20:39:32.532126
34834	8462	2262	2016-12-19 20:39:32.60105	2016-12-19 20:39:32.60105
34835	8463	2262	2016-12-19 20:39:32.622751	2016-12-19 20:39:32.622751
34836	8464	2262	2016-12-19 20:39:32.639662	2016-12-19 20:39:32.639662
34837	8465	2262	2016-12-19 20:39:32.657389	2016-12-19 20:39:32.657389
34838	8466	2262	2016-12-19 20:39:32.66969	2016-12-19 20:39:32.66969
34839	8467	2262	2016-12-19 20:39:32.6848	2016-12-19 20:39:32.6848
34840	8468	2262	2016-12-19 20:39:32.701062	2016-12-19 20:39:32.701062
34841	8469	2262	2016-12-19 20:39:32.720803	2016-12-19 20:39:32.720803
34842	8470	2262	2016-12-19 20:39:32.738419	2016-12-19 20:39:32.738419
34843	8471	2262	2016-12-19 20:39:32.756856	2016-12-19 20:39:32.756856
34844	8472	2262	2016-12-19 20:39:32.773091	2016-12-19 20:39:32.773091
34845	8476	2262	2016-12-19 20:39:32.789961	2016-12-19 20:39:32.789961
34846	8479	2262	2016-12-19 20:39:32.807806	2016-12-19 20:39:32.807806
34847	8480	2262	2016-12-19 20:39:32.83259	2016-12-19 20:39:32.83259
34848	8481	2262	2016-12-19 20:39:32.849386	2016-12-19 20:39:32.849386
34849	8482	2262	2016-12-19 20:39:32.862777	2016-12-19 20:39:32.862777
34850	8483	2262	2016-12-19 20:39:32.878531	2016-12-19 20:39:32.878531
34851	8484	2262	2016-12-19 20:39:32.898362	2016-12-19 20:39:32.898362
34852	8485	2262	2016-12-19 20:39:32.914402	2016-12-19 20:39:32.914402
34853	8488	2262	2016-12-19 20:39:34.019079	2016-12-19 20:39:34.019079
34854	8486	2262	2016-12-19 20:39:34.076383	2016-12-19 20:39:34.076383
34855	8487	2262	2016-12-19 20:39:34.090733	2016-12-19 20:39:34.090733
34856	8490	2262	2016-12-19 20:39:34.109273	2016-12-19 20:39:34.109273
34857	7366	2264	2016-12-19 20:39:35.466343	2016-12-19 20:39:35.466343
34858	8421	2264	2016-12-19 20:39:35.530704	2016-12-19 20:39:35.530704
34859	8491	2264	2016-12-19 20:39:37.09991	2016-12-19 20:39:37.09991
34860	8492	2264	2016-12-19 20:39:38.830411	2016-12-19 20:39:38.830411
34861	8493	2264	2016-12-19 20:39:40.401108	2016-12-19 20:39:40.401108
34862	8494	2264	2016-12-19 20:39:42.020498	2016-12-19 20:39:42.020498
34863	8495	2264	2016-12-19 20:39:42.814162	2016-12-19 20:39:42.814162
34864	8496	2264	2016-12-19 20:39:44.62039	2016-12-19 20:39:44.62039
34865	8497	2264	2016-12-19 20:39:46.855875	2016-12-19 20:39:46.855875
34866	8498	2264	2016-12-19 20:39:48.556854	2016-12-19 20:39:48.556854
34867	8421	2263	2016-12-19 20:39:50.216999	2016-12-19 20:39:50.216999
34868	8495	2263	2016-12-19 20:39:50.282569	2016-12-19 20:39:50.282569
34869	8499	2263	2016-12-19 20:39:52.104722	2016-12-19 20:39:52.104722
34870	8500	2263	2016-12-19 20:39:53.826911	2016-12-19 20:39:53.826911
34871	8501	2263	2016-12-19 20:39:55.490229	2016-12-19 20:39:55.490229
34872	7366	2263	2016-12-19 20:39:55.507079	2016-12-19 20:39:55.507079
34873	8502	2263	2016-12-19 20:39:57.133102	2016-12-19 20:39:57.133102
34874	8503	2263	2016-12-19 20:39:58.841157	2016-12-19 20:39:58.841157
34875	8504	2263	2016-12-19 20:40:00.632994	2016-12-19 20:40:00.632994
34876	8505	2263	2016-12-19 20:40:03.136953	2016-12-19 20:40:03.136953
34877	8506	2263	2016-12-19 20:40:05.344925	2016-12-19 20:40:05.344925
34878	8507	2263	2016-12-19 20:40:07.185861	2016-12-19 20:40:07.185861
34879	8508	2263	2016-12-19 20:40:09.064828	2016-12-19 20:40:09.064828
34880	8509	2263	2016-12-19 20:40:10.850126	2016-12-19 20:40:10.850126
34881	8510	2263	2016-12-19 20:40:12.563911	2016-12-19 20:40:12.563911
34882	8511	2263	2016-12-19 20:40:14.181874	2016-12-19 20:40:14.181874
34883	8512	2263	2016-12-19 20:40:15.909694	2016-12-19 20:40:15.909694
34884	7368	2263	2016-12-19 20:40:15.926306	2016-12-19 20:40:15.926306
34885	8513	2263	2016-12-19 20:40:17.688583	2016-12-19 20:40:17.688583
34886	8491	2263	2016-12-19 20:40:17.717244	2016-12-19 20:40:17.717244
34887	8492	2263	2016-12-19 20:40:19.354212	2016-12-19 20:40:19.354212
34888	8493	2263	2016-12-19 20:40:19.444662	2016-12-19 20:40:19.444662
34889	8494	2263	2016-12-19 20:40:19.47856	2016-12-19 20:40:19.47856
34890	8514	2263	2016-12-19 20:40:21.197287	2016-12-19 20:40:21.197287
34891	8515	2263	2016-12-19 20:40:22.916512	2016-12-19 20:40:22.916512
34892	8516	2263	2016-12-19 20:40:24.655018	2016-12-19 20:40:24.655018
34893	8517	2263	2016-12-19 20:40:26.376517	2016-12-19 20:40:26.376517
34894	8518	2263	2016-12-19 20:40:28.0782	2016-12-19 20:40:28.0782
34895	8519	2263	2016-12-19 20:40:29.783499	2016-12-19 20:40:29.783499
34896	8496	2263	2016-12-19 20:40:29.810775	2016-12-19 20:40:29.810775
34897	8498	2263	2016-12-19 20:40:29.822056	2016-12-19 20:40:29.822056
34898	8520	2263	2016-12-19 20:40:31.615468	2016-12-19 20:40:31.615468
34899	8521	2263	2016-12-19 20:40:33.409925	2016-12-19 20:40:33.409925
34900	8522	2263	2016-12-19 20:40:35.142909	2016-12-19 20:40:35.142909
34901	8523	2263	2016-12-19 20:40:36.90411	2016-12-19 20:40:36.90411
34902	8524	2263	2016-12-19 20:40:38.892356	2016-12-19 20:40:38.892356
34903	8525	2263	2016-12-19 20:40:40.677033	2016-12-19 20:40:40.677033
34904	8497	2263	2016-12-19 20:40:40.69278	2016-12-19 20:40:40.69278
34905	8499	2265	2016-12-19 20:40:42.533593	2016-12-19 20:40:42.533593
34906	8500	2265	2016-12-19 20:40:42.60714	2016-12-19 20:40:42.60714
34907	8501	2265	2016-12-19 20:40:42.61937	2016-12-19 20:40:42.61937
34908	8502	2265	2016-12-19 20:40:42.645458	2016-12-19 20:40:42.645458
34909	8503	2265	2016-12-19 20:40:42.65683	2016-12-19 20:40:42.65683
34910	8504	2265	2016-12-19 20:40:42.68723	2016-12-19 20:40:42.68723
34911	8505	2265	2016-12-19 20:40:42.698246	2016-12-19 20:40:42.698246
34912	8506	2265	2016-12-19 20:40:42.718677	2016-12-19 20:40:42.718677
34913	8507	2265	2016-12-19 20:40:42.734473	2016-12-19 20:40:42.734473
34914	8508	2265	2016-12-19 20:40:42.748769	2016-12-19 20:40:42.748769
34915	8509	2265	2016-12-19 20:40:42.759553	2016-12-19 20:40:42.759553
34916	8510	2265	2016-12-19 20:40:42.783819	2016-12-19 20:40:42.783819
34917	8511	2265	2016-12-19 20:40:42.799259	2016-12-19 20:40:42.799259
34918	8512	2265	2016-12-19 20:40:42.808004	2016-12-19 20:40:42.808004
34919	7368	2265	2016-12-19 20:40:42.825044	2016-12-19 20:40:42.825044
34920	8513	2265	2016-12-19 20:40:42.83535	2016-12-19 20:40:42.83535
34921	8514	2265	2016-12-19 20:40:42.852211	2016-12-19 20:40:42.852211
34922	8515	2265	2016-12-19 20:40:42.878343	2016-12-19 20:40:42.878343
34923	8516	2265	2016-12-19 20:40:42.889067	2016-12-19 20:40:42.889067
34924	8518	2265	2016-12-19 20:40:42.902058	2016-12-19 20:40:42.902058
34925	8519	2265	2016-12-19 20:40:44.209118	2016-12-19 20:40:44.209118
34926	8520	2265	2016-12-19 20:40:44.268967	2016-12-19 20:40:44.268967
34927	8521	2265	2016-12-19 20:40:44.290139	2016-12-19 20:40:44.290139
34928	8522	2265	2016-12-19 20:40:44.314542	2016-12-19 20:40:44.314542
34929	8523	2265	2016-12-19 20:40:44.332713	2016-12-19 20:40:44.332713
34930	8524	2265	2016-12-19 20:40:44.354596	2016-12-19 20:40:44.354596
34931	8525	2265	2016-12-19 20:40:44.363863	2016-12-19 20:40:44.363863
34932	8526	2266	2016-12-19 20:40:46.930273	2016-12-19 20:40:46.930273
34933	8527	2266	2016-12-19 20:40:48.529075	2016-12-19 20:40:48.529075
34934	8528	2266	2016-12-19 20:40:49.976505	2016-12-19 20:40:49.976505
34935	8529	2266	2016-12-19 20:40:51.432412	2016-12-19 20:40:51.432412
34936	8530	2266	2016-12-19 20:40:52.872333	2016-12-19 20:40:52.872333
34937	8290	2243	2016-12-19 20:40:54.681345	2016-12-19 20:40:54.681345
34938	8499	2243	2016-12-19 20:40:54.742623	2016-12-19 20:40:54.742623
34939	8500	2243	2016-12-19 20:40:54.757435	2016-12-19 20:40:54.757435
34940	8264	2243	2016-12-19 20:40:54.777528	2016-12-19 20:40:54.777528
34941	8265	2243	2016-12-19 20:40:54.791406	2016-12-19 20:40:54.791406
34942	8266	2243	2016-12-19 20:40:54.807387	2016-12-19 20:40:54.807387
34943	8330	2243	2016-12-19 20:40:54.824799	2016-12-19 20:40:54.824799
34944	8331	2243	2016-12-19 20:40:54.836128	2016-12-19 20:40:54.836128
34945	8501	2243	2016-12-19 20:40:54.852504	2016-12-19 20:40:54.852504
34946	8389	2243	2016-12-19 20:40:54.870914	2016-12-19 20:40:54.870914
34947	8402	2243	2016-12-19 20:40:54.887385	2016-12-19 20:40:54.887385
34948	8403	2243	2016-12-19 20:40:54.905155	2016-12-19 20:40:54.905155
34949	8278	2243	2016-12-19 20:40:54.928409	2016-12-19 20:40:54.928409
34950	8461	2243	2016-12-19 20:40:54.949834	2016-12-19 20:40:54.949834
34951	8507	2243	2016-12-19 20:40:54.976607	2016-12-19 20:40:54.976607
34952	8279	2243	2016-12-19 20:40:55.014786	2016-12-19 20:40:55.014786
34953	7366	2243	2016-12-19 20:40:55.035618	2016-12-19 20:40:55.035618
34954	8502	2243	2016-12-19 20:40:55.066434	2016-12-19 20:40:55.066434
34955	8503	2243	2016-12-19 20:40:55.085217	2016-12-19 20:40:55.085217
34956	8462	2243	2016-12-19 20:40:55.104359	2016-12-19 20:40:55.104359
34957	8421	2243	2016-12-19 20:40:56.902722	2016-12-19 20:40:56.902722
34958	8332	2243	2016-12-19 20:40:56.95941	2016-12-19 20:40:56.95941
34959	8308	2243	2016-12-19 20:40:56.97339	2016-12-19 20:40:56.97339
34960	8333	2243	2016-12-19 20:40:56.999091	2016-12-19 20:40:56.999091
34961	8463	2243	2016-12-19 20:40:57.02088	2016-12-19 20:40:57.02088
34962	8464	2243	2016-12-19 20:40:57.05151	2016-12-19 20:40:57.05151
34963	8504	2243	2016-12-19 20:40:57.066662	2016-12-19 20:40:57.066662
34964	8505	2243	2016-12-19 20:40:57.08071	2016-12-19 20:40:57.08071
34965	8506	2243	2016-12-19 20:40:57.096157	2016-12-19 20:40:57.096157
34966	8273	2243	2016-12-19 20:40:57.115174	2016-12-19 20:40:57.115174
34967	8334	2243	2016-12-19 20:40:57.127696	2016-12-19 20:40:57.127696
34968	8465	2243	2016-12-19 20:40:57.152043	2016-12-19 20:40:57.152043
34969	8422	2243	2016-12-19 20:40:57.16754	2016-12-19 20:40:57.16754
34970	7453	2243	2016-12-19 20:40:57.181309	2016-12-19 20:40:57.181309
34971	7452	2243	2016-12-19 20:40:57.203141	2016-12-19 20:40:57.203141
34972	7454	2243	2016-12-19 20:40:57.217848	2016-12-19 20:40:57.217848
34973	8274	2243	2016-12-19 20:40:57.248521	2016-12-19 20:40:57.248521
34974	7451	2243	2016-12-19 20:40:57.264489	2016-12-19 20:40:57.264489
34975	7456	2243	2016-12-19 20:40:57.280001	2016-12-19 20:40:57.280001
34976	7455	2243	2016-12-19 20:40:57.294573	2016-12-19 20:40:57.294573
34977	8508	2243	2016-12-19 20:40:59.099761	2016-12-19 20:40:59.099761
34978	8309	2243	2016-12-19 20:40:59.163532	2016-12-19 20:40:59.163532
34979	7458	2243	2016-12-19 20:40:59.182473	2016-12-19 20:40:59.182473
34980	7457	2243	2016-12-19 20:40:59.199266	2016-12-19 20:40:59.199266
34981	8509	2243	2016-12-19 20:40:59.213999	2016-12-19 20:40:59.213999
34982	8510	2243	2016-12-19 20:40:59.233297	2016-12-19 20:40:59.233297
34983	8511	2243	2016-12-19 20:40:59.2481	2016-12-19 20:40:59.2481
34984	8255	2243	2016-12-19 20:40:59.269194	2016-12-19 20:40:59.269194
34985	8423	2243	2016-12-19 20:40:59.282188	2016-12-19 20:40:59.282188
34986	8335	2243	2016-12-19 20:40:59.293174	2016-12-19 20:40:59.293174
34987	8424	2243	2016-12-19 20:40:59.311113	2016-12-19 20:40:59.311113
34988	8425	2243	2016-12-19 20:40:59.328424	2016-12-19 20:40:59.328424
34989	8426	2243	2016-12-19 20:40:59.349929	2016-12-19 20:40:59.349929
34990	8336	2243	2016-12-19 20:40:59.365907	2016-12-19 20:40:59.365907
34991	8337	2243	2016-12-19 20:40:59.389338	2016-12-19 20:40:59.389338
34992	8310	2243	2016-12-19 20:40:59.404754	2016-12-19 20:40:59.404754
34993	8280	2243	2016-12-19 20:40:59.430982	2016-12-19 20:40:59.430982
34994	8338	2243	2016-12-19 20:40:59.44406	2016-12-19 20:40:59.44406
34995	8339	2243	2016-12-19 20:40:59.472515	2016-12-19 20:40:59.472515
34996	8340	2243	2016-12-19 20:40:59.487145	2016-12-19 20:40:59.487145
34997	8341	2243	2016-12-19 20:41:01.268359	2016-12-19 20:41:01.268359
34998	8342	2243	2016-12-19 20:41:01.335397	2016-12-19 20:41:01.335397
34999	8343	2243	2016-12-19 20:41:01.354346	2016-12-19 20:41:01.354346
35000	8344	2243	2016-12-19 20:41:01.38003	2016-12-19 20:41:01.38003
35001	8345	2243	2016-12-19 20:41:01.392153	2016-12-19 20:41:01.392153
35002	8311	2243	2016-12-19 20:41:01.413118	2016-12-19 20:41:01.413118
35003	8312	2243	2016-12-19 20:41:01.427628	2016-12-19 20:41:01.427628
35004	8318	2243	2016-12-19 20:41:01.451784	2016-12-19 20:41:01.451784
35005	8319	2243	2016-12-19 20:41:01.460476	2016-12-19 20:41:01.460476
35006	8320	2243	2016-12-19 20:41:01.472593	2016-12-19 20:41:01.472593
35007	8346	2243	2016-12-19 20:41:01.49546	2016-12-19 20:41:01.49546
35008	8347	2243	2016-12-19 20:41:01.505954	2016-12-19 20:41:01.505954
35009	8321	2243	2016-12-19 20:41:01.525299	2016-12-19 20:41:01.525299
35010	8322	2243	2016-12-19 20:41:01.538383	2016-12-19 20:41:01.538383
35011	8323	2243	2016-12-19 20:41:01.549283	2016-12-19 20:41:01.549283
35012	8348	2243	2016-12-19 20:41:01.568052	2016-12-19 20:41:01.568052
35013	8324	2243	2016-12-19 20:41:01.58626	2016-12-19 20:41:01.58626
35014	8349	2243	2016-12-19 20:41:01.610807	2016-12-19 20:41:01.610807
35015	8203	2243	2016-12-19 20:41:01.623172	2016-12-19 20:41:01.623172
35016	8466	2243	2016-12-19 20:41:01.637788	2016-12-19 20:41:01.637788
35017	8467	2243	2016-12-19 20:41:03.532039	2016-12-19 20:41:03.532039
35018	8468	2243	2016-12-19 20:41:03.596429	2016-12-19 20:41:03.596429
35019	8469	2243	2016-12-19 20:41:03.608084	2016-12-19 20:41:03.608084
35020	8470	2243	2016-12-19 20:41:03.63223	2016-12-19 20:41:03.63223
35021	8471	2243	2016-12-19 20:41:03.643768	2016-12-19 20:41:03.643768
35022	8427	2243	2016-12-19 20:41:03.655393	2016-12-19 20:41:03.655393
35023	8428	2243	2016-12-19 20:41:03.672125	2016-12-19 20:41:03.672125
35024	8429	2243	2016-12-19 20:41:03.686946	2016-12-19 20:41:03.686946
35025	8430	2243	2016-12-19 20:41:03.699484	2016-12-19 20:41:03.699484
35026	8431	2243	2016-12-19 20:41:03.710288	2016-12-19 20:41:03.710288
35027	8432	2243	2016-12-19 20:41:03.720251	2016-12-19 20:41:03.720251
35028	8433	2243	2016-12-19 20:41:03.734046	2016-12-19 20:41:03.734046
35029	8434	2243	2016-12-19 20:41:03.749334	2016-12-19 20:41:03.749334
35030	8435	2243	2016-12-19 20:41:03.758665	2016-12-19 20:41:03.758665
35031	8436	2243	2016-12-19 20:41:03.788616	2016-12-19 20:41:03.788616
35032	8350	2243	2016-12-19 20:41:03.806432	2016-12-19 20:41:03.806432
35033	8351	2243	2016-12-19 20:41:03.823743	2016-12-19 20:41:03.823743
35034	8281	2243	2016-12-19 20:41:03.838146	2016-12-19 20:41:03.838146
35035	8282	2243	2016-12-19 20:41:03.852144	2016-12-19 20:41:03.852144
35036	8283	2243	2016-12-19 20:41:03.870379	2016-12-19 20:41:03.870379
35037	8284	2243	2016-12-19 20:41:05.973869	2016-12-19 20:41:05.973869
35038	8285	2243	2016-12-19 20:41:06.034271	2016-12-19 20:41:06.034271
35039	8286	2243	2016-12-19 20:41:06.048881	2016-12-19 20:41:06.048881
35040	8287	2243	2016-12-19 20:41:06.066652	2016-12-19 20:41:06.066652
35041	8288	2243	2016-12-19 20:41:06.084675	2016-12-19 20:41:06.084675
35042	8289	2243	2016-12-19 20:41:06.100979	2016-12-19 20:41:06.100979
35043	7450	2243	2016-12-19 20:41:06.124218	2016-12-19 20:41:06.124218
35044	8352	2243	2016-12-19 20:41:06.14281	2016-12-19 20:41:06.14281
35045	8353	2243	2016-12-19 20:41:06.160785	2016-12-19 20:41:06.160785
35046	7481	2243	2016-12-19 20:41:06.182039	2016-12-19 20:41:06.182039
35047	7482	2243	2016-12-19 20:41:06.191186	2016-12-19 20:41:06.191186
35048	8294	2243	2016-12-19 20:41:06.205817	2016-12-19 20:41:06.205817
35049	8512	2243	2016-12-19 20:41:06.2265	2016-12-19 20:41:06.2265
35050	8472	2243	2016-12-19 20:41:06.243366	2016-12-19 20:41:06.243366
35051	8295	2243	2016-12-19 20:41:06.262943	2016-12-19 20:41:06.262943
35052	8325	2243	2016-12-19 20:41:06.277807	2016-12-19 20:41:06.277807
35053	8296	2243	2016-12-19 20:41:06.29871	2016-12-19 20:41:06.29871
35054	7368	2243	2016-12-19 20:41:06.319498	2016-12-19 20:41:06.319498
35055	8473	2243	2016-12-19 20:41:06.340742	2016-12-19 20:41:06.340742
35056	8354	2243	2016-12-19 20:41:06.355981	2016-12-19 20:41:06.355981
35057	8513	2243	2016-12-19 20:41:08.637958	2016-12-19 20:41:08.637958
35058	8404	2243	2016-12-19 20:41:08.69503	2016-12-19 20:41:08.69503
35059	8405	2243	2016-12-19 20:41:08.713241	2016-12-19 20:41:08.713241
35060	7373	2243	2016-12-19 20:41:08.730298	2016-12-19 20:41:08.730298
35061	8256	2243	2016-12-19 20:41:08.749433	2016-12-19 20:41:08.749433
35062	8257	2243	2016-12-19 20:41:08.768082	2016-12-19 20:41:08.768082
35063	8297	2243	2016-12-19 20:41:08.784695	2016-12-19 20:41:08.784695
35064	8298	2243	2016-12-19 20:41:08.807734	2016-12-19 20:41:08.807734
35065	8355	2243	2016-12-19 20:41:08.825083	2016-12-19 20:41:08.825083
35066	8299	2243	2016-12-19 20:41:08.844073	2016-12-19 20:41:08.844073
35067	8300	2243	2016-12-19 20:41:08.861433	2016-12-19 20:41:08.861433
35068	8301	2243	2016-12-19 20:41:08.872367	2016-12-19 20:41:08.872367
35069	8356	2243	2016-12-19 20:41:08.897834	2016-12-19 20:41:08.897834
35070	8531	2243	2016-12-19 20:41:10.978756	2016-12-19 20:41:10.978756
35071	8437	2243	2016-12-19 20:41:10.98992	2016-12-19 20:41:10.98992
35072	8438	2243	2016-12-19 20:41:11.005273	2016-12-19 20:41:11.005273
35073	8439	2243	2016-12-19 20:41:11.020248	2016-12-19 20:41:11.020248
35074	8440	2243	2016-12-19 20:41:11.03179	2016-12-19 20:41:11.03179
35075	8532	2243	2016-12-19 20:41:12.839138	2016-12-19 20:41:12.839138
35076	8533	2243	2016-12-19 20:41:14.611689	2016-12-19 20:41:14.611689
35077	8258	2243	2016-12-19 20:41:16.401469	2016-12-19 20:41:16.401469
35078	8259	2243	2016-12-19 20:41:16.423848	2016-12-19 20:41:16.423848
35079	8260	2243	2016-12-19 20:41:16.437297	2016-12-19 20:41:16.437297
35080	8261	2243	2016-12-19 20:41:16.451675	2016-12-19 20:41:16.451675
35081	8262	2243	2016-12-19 20:41:16.466409	2016-12-19 20:41:16.466409
35082	8263	2243	2016-12-19 20:41:16.486646	2016-12-19 20:41:16.486646
35083	8357	2243	2016-12-19 20:41:16.498387	2016-12-19 20:41:16.498387
35084	8326	2243	2016-12-19 20:41:16.5179	2016-12-19 20:41:16.5179
35085	8474	2243	2016-12-19 20:41:16.534976	2016-12-19 20:41:16.534976
35086	8475	2243	2016-12-19 20:41:16.553836	2016-12-19 20:41:16.553836
35087	8441	2243	2016-12-19 20:41:16.57324	2016-12-19 20:41:16.57324
35088	8442	2243	2016-12-19 20:41:16.591656	2016-12-19 20:41:16.591656
35089	8443	2243	2016-12-19 20:41:16.602468	2016-12-19 20:41:16.602468
35090	8444	2243	2016-12-19 20:41:16.614527	2016-12-19 20:41:16.614527
35091	8476	2243	2016-12-19 20:41:16.637663	2016-12-19 20:41:16.637663
35092	8390	2243	2016-12-19 20:41:16.648355	2016-12-19 20:41:16.648355
35093	8391	2243	2016-12-19 20:41:16.672631	2016-12-19 20:41:16.672631
35094	8392	2243	2016-12-19 20:41:16.682268	2016-12-19 20:41:16.682268
35095	8393	2243	2016-12-19 20:41:16.710167	2016-12-19 20:41:16.710167
35096	8394	2243	2016-12-19 20:41:16.731371	2016-12-19 20:41:16.731371
35097	8395	2243	2016-12-19 20:41:20.39796	2016-12-19 20:41:20.39796
35098	8445	2243	2016-12-19 20:41:20.461978	2016-12-19 20:41:20.461978
35099	8446	2243	2016-12-19 20:41:20.478357	2016-12-19 20:41:20.478357
35100	8447	2243	2016-12-19 20:41:20.497435	2016-12-19 20:41:20.497435
35101	8448	2243	2016-12-19 20:41:20.510563	2016-12-19 20:41:20.510563
35102	8302	2243	2016-12-19 20:41:20.532545	2016-12-19 20:41:20.532545
35103	8303	2243	2016-12-19 20:41:20.550778	2016-12-19 20:41:20.550778
35104	8304	2243	2016-12-19 20:41:20.559947	2016-12-19 20:41:20.559947
35105	8305	2243	2016-12-19 20:41:20.573729	2016-12-19 20:41:20.573729
35106	8306	2243	2016-12-19 20:41:20.589783	2016-12-19 20:41:20.589783
35107	8358	2243	2016-12-19 20:41:20.613174	2016-12-19 20:41:20.613174
35108	8359	2243	2016-12-19 20:41:20.631205	2016-12-19 20:41:20.631205
35109	8360	2243	2016-12-19 20:41:20.64421	2016-12-19 20:41:20.64421
35110	8449	2243	2016-12-19 20:41:20.662789	2016-12-19 20:41:20.662789
35111	8450	2243	2016-12-19 20:41:20.694412	2016-12-19 20:41:20.694412
35112	8451	2243	2016-12-19 20:41:20.70453	2016-12-19 20:41:20.70453
35113	8452	2243	2016-12-19 20:41:20.714125	2016-12-19 20:41:20.714125
35114	8453	2243	2016-12-19 20:41:20.723189	2016-12-19 20:41:20.723189
35115	8327	2243	2016-12-19 20:41:20.737278	2016-12-19 20:41:20.737278
35116	8328	2243	2016-12-19 20:41:20.754387	2016-12-19 20:41:20.754387
35117	8454	2243	2016-12-19 20:41:22.385397	2016-12-19 20:41:22.385397
35118	8455	2243	2016-12-19 20:41:22.526956	2016-12-19 20:41:22.526956
35119	8361	2243	2016-12-19 20:41:22.535473	2016-12-19 20:41:22.535473
35120	8362	2243	2016-12-19 20:41:22.544332	2016-12-19 20:41:22.544332
35121	8363	2243	2016-12-19 20:41:22.559907	2016-12-19 20:41:22.559907
35122	8491	2243	2016-12-19 20:41:22.569573	2016-12-19 20:41:22.569573
35123	8492	2243	2016-12-19 20:41:22.594959	2016-12-19 20:41:22.594959
35124	8493	2243	2016-12-19 20:41:22.604825	2016-12-19 20:41:22.604825
35125	8494	2243	2016-12-19 20:41:22.613869	2016-12-19 20:41:22.613869
35126	8514	2243	2016-12-19 20:41:22.630718	2016-12-19 20:41:22.630718
35127	8456	2243	2016-12-19 20:41:22.641108	2016-12-19 20:41:22.641108
35128	8515	2243	2016-12-19 20:41:22.653269	2016-12-19 20:41:22.653269
35129	8526	2243	2016-12-19 20:41:22.679889	2016-12-19 20:41:22.679889
35130	8527	2243	2016-12-19 20:41:22.689588	2016-12-19 20:41:22.689588
35131	8477	2243	2016-12-19 20:41:22.698293	2016-12-19 20:41:22.698293
35132	8478	2243	2016-12-19 20:41:22.730882	2016-12-19 20:41:22.730882
35133	8291	2243	2016-12-19 20:41:22.744903	2016-12-19 20:41:22.744903
35134	8292	2243	2016-12-19 20:41:22.763072	2016-12-19 20:41:22.763072
35135	8313	2243	2016-12-19 20:41:22.771576	2016-12-19 20:41:22.771576
35136	8457	2243	2016-12-19 20:41:22.787402	2016-12-19 20:41:22.787402
35137	8479	2243	2016-12-19 20:41:24.808998	2016-12-19 20:41:24.808998
35138	8480	2243	2016-12-19 20:41:24.865424	2016-12-19 20:41:24.865424
35139	8516	2243	2016-12-19 20:41:24.878299	2016-12-19 20:41:24.878299
35140	8481	2243	2016-12-19 20:41:24.894016	2016-12-19 20:41:24.894016
35141	8482	2243	2016-12-19 20:41:24.911575	2016-12-19 20:41:24.911575
35142	8483	2243	2016-12-19 20:41:24.927127	2016-12-19 20:41:24.927127
35143	8152	2243	2016-12-19 20:41:24.943065	2016-12-19 20:41:24.943065
35144	8314	2243	2016-12-19 20:41:24.958871	2016-12-19 20:41:24.958871
35145	8484	2243	2016-12-19 20:41:24.976931	2016-12-19 20:41:24.976931
35146	8485	2243	2016-12-19 20:41:24.995304	2016-12-19 20:41:24.995304
35147	8307	2243	2016-12-19 20:41:25.008792	2016-12-19 20:41:25.008792
35148	8415	2243	2016-12-19 20:41:25.020463	2016-12-19 20:41:25.020463
35149	8495	2243	2016-12-19 20:41:25.035636	2016-12-19 20:41:25.035636
35150	8364	2243	2016-12-19 20:41:25.048744	2016-12-19 20:41:25.048744
35151	8365	2243	2016-12-19 20:41:25.062819	2016-12-19 20:41:25.062819
35152	8366	2243	2016-12-19 20:41:25.078016	2016-12-19 20:41:25.078016
35153	8367	2243	2016-12-19 20:41:25.095043	2016-12-19 20:41:25.095043
35154	8368	2243	2016-12-19 20:41:25.107108	2016-12-19 20:41:25.107108
35155	8369	2243	2016-12-19 20:41:25.134277	2016-12-19 20:41:25.134277
35156	8370	2243	2016-12-19 20:41:25.144429	2016-12-19 20:41:25.144429
35157	8371	2243	2016-12-19 20:41:27.001457	2016-12-19 20:41:27.001457
35158	8372	2243	2016-12-19 20:41:27.06912	2016-12-19 20:41:27.06912
35159	8373	2243	2016-12-19 20:41:27.085268	2016-12-19 20:41:27.085268
35160	8374	2243	2016-12-19 20:41:27.107686	2016-12-19 20:41:27.107686
35161	8517	2243	2016-12-19 20:41:27.120393	2016-12-19 20:41:27.120393
35162	8528	2243	2016-12-19 20:41:27.1315	2016-12-19 20:41:27.1315
35163	8529	2243	2016-12-19 20:41:27.154932	2016-12-19 20:41:27.154932
35164	8518	2243	2016-12-19 20:41:27.164867	2016-12-19 20:41:27.164867
35165	8519	2243	2016-12-19 20:41:27.180192	2016-12-19 20:41:27.180192
35166	8396	2243	2016-12-19 20:41:27.195073	2016-12-19 20:41:27.195073
35167	8397	2243	2016-12-19 20:41:27.20706	2016-12-19 20:41:27.20706
35168	8398	2243	2016-12-19 20:41:27.228816	2016-12-19 20:41:27.228816
35169	8399	2243	2016-12-19 20:41:27.239363	2016-12-19 20:41:27.239363
35170	8400	2243	2016-12-19 20:41:27.248521	2016-12-19 20:41:27.248521
35171	8406	2243	2016-12-19 20:41:27.269487	2016-12-19 20:41:27.269487
35172	8401	2243	2016-12-19 20:41:27.297423	2016-12-19 20:41:27.297423
35173	8407	2243	2016-12-19 20:41:27.306903	2016-12-19 20:41:27.306903
35174	8416	2243	2016-12-19 20:41:27.31695	2016-12-19 20:41:27.31695
35175	8417	2243	2016-12-19 20:41:27.343863	2016-12-19 20:41:27.343863
35176	8418	2243	2016-12-19 20:41:27.361505	2016-12-19 20:41:27.361505
35177	8267	2243	2016-12-19 20:41:29.726834	2016-12-19 20:41:29.726834
35178	8268	2243	2016-12-19 20:41:29.785385	2016-12-19 20:41:29.785385
35179	8269	2243	2016-12-19 20:41:29.794912	2016-12-19 20:41:29.794912
35180	8408	2243	2016-12-19 20:41:29.805327	2016-12-19 20:41:29.805327
35181	8409	2243	2016-12-19 20:41:29.823458	2016-12-19 20:41:29.823458
35182	8410	2243	2016-12-19 20:41:29.836326	2016-12-19 20:41:29.836326
35183	8270	2243	2016-12-19 20:41:29.857871	2016-12-19 20:41:29.857871
35184	8271	2243	2016-12-19 20:41:29.87381	2016-12-19 20:41:29.87381
35185	8419	2243	2016-12-19 20:41:29.886959	2016-12-19 20:41:29.886959
35186	8420	2243	2016-12-19 20:41:29.906366	2016-12-19 20:41:29.906366
35187	8375	2243	2016-12-19 20:41:29.918262	2016-12-19 20:41:29.918262
35188	8376	2243	2016-12-19 20:41:29.939785	2016-12-19 20:41:29.939785
35189	8377	2243	2016-12-19 20:41:29.95545	2016-12-19 20:41:29.95545
35190	8315	2243	2016-12-19 20:41:29.969159	2016-12-19 20:41:29.969159
35191	8411	2243	2016-12-19 20:41:29.992355	2016-12-19 20:41:29.992355
35192	8412	2243	2016-12-19 20:41:30.003782	2016-12-19 20:41:30.003782
35193	8413	2243	2016-12-19 20:41:30.028098	2016-12-19 20:41:30.028098
35194	8414	2243	2016-12-19 20:41:30.038863	2016-12-19 20:41:30.038863
35195	8520	2243	2016-12-19 20:41:30.052759	2016-12-19 20:41:30.052759
35196	8521	2243	2016-12-19 20:41:30.073761	2016-12-19 20:41:30.073761
35197	8530	2243	2016-12-19 20:41:31.738233	2016-12-19 20:41:31.738233
35198	8458	2243	2016-12-19 20:41:31.804967	2016-12-19 20:41:31.804967
35199	8522	2243	2016-12-19 20:41:31.825607	2016-12-19 20:41:31.825607
35200	8523	2243	2016-12-19 20:41:31.845018	2016-12-19 20:41:31.845018
35201	8488	2243	2016-12-19 20:41:31.862652	2016-12-19 20:41:31.862652
35202	8489	2243	2016-12-19 20:41:31.882108	2016-12-19 20:41:31.882108
35203	8524	2243	2016-12-19 20:41:31.892776	2016-12-19 20:41:31.892776
35204	8459	2243	2016-12-19 20:41:31.91694	2016-12-19 20:41:31.91694
35205	8460	2243	2016-12-19 20:41:31.927341	2016-12-19 20:41:31.927341
35206	8272	2243	2016-12-19 20:41:31.940553	2016-12-19 20:41:31.940553
35207	8275	2243	2016-12-19 20:41:31.964167	2016-12-19 20:41:31.964167
35208	8525	2243	2016-12-19 20:41:31.984239	2016-12-19 20:41:31.984239
35209	8378	2243	2016-12-19 20:41:32.00283	2016-12-19 20:41:32.00283
35210	8379	2243	2016-12-19 20:41:32.011567	2016-12-19 20:41:32.011567
35211	8380	2243	2016-12-19 20:41:32.03919	2016-12-19 20:41:32.03919
35212	8293	2243	2016-12-19 20:41:32.050325	2016-12-19 20:41:32.050325
35213	8329	2243	2016-12-19 20:41:32.077024	2016-12-19 20:41:32.077024
35214	8381	2243	2016-12-19 20:41:32.087419	2016-12-19 20:41:32.087419
35215	8486	2243	2016-12-19 20:41:32.097102	2016-12-19 20:41:32.097102
35216	8382	2243	2016-12-19 20:41:32.113751	2016-12-19 20:41:32.113751
35217	8487	2243	2016-12-19 20:41:33.680576	2016-12-19 20:41:33.680576
35218	8276	2243	2016-12-19 20:41:33.737686	2016-12-19 20:41:33.737686
35219	8277	2243	2016-12-19 20:41:33.754976	2016-12-19 20:41:33.754976
35220	8383	2243	2016-12-19 20:41:33.772356	2016-12-19 20:41:33.772356
35221	8316	2243	2016-12-19 20:41:33.78985	2016-12-19 20:41:33.78985
35222	8384	2243	2016-12-19 20:41:33.814697	2016-12-19 20:41:33.814697
35223	8385	2243	2016-12-19 20:41:33.842696	2016-12-19 20:41:33.842696
35224	8496	2243	2016-12-19 20:41:33.861413	2016-12-19 20:41:33.861413
35225	8490	2243	2016-12-19 20:41:33.880408	2016-12-19 20:41:33.880408
35226	8386	2243	2016-12-19 20:41:33.90257	2016-12-19 20:41:33.90257
35227	8387	2243	2016-12-19 20:41:33.912325	2016-12-19 20:41:33.912325
35228	8317	2243	2016-12-19 20:41:33.929198	2016-12-19 20:41:33.929198
35229	8388	2243	2016-12-19 20:41:33.943236	2016-12-19 20:41:33.943236
35230	8497	2243	2016-12-19 20:41:33.963731	2016-12-19 20:41:33.963731
35231	8498	2243	2016-12-19 20:41:33.987086	2016-12-19 20:41:33.987086
35232	8532	2267	2016-12-19 20:41:35.020272	2016-12-19 20:41:35.020272
35233	8533	2267	2016-12-19 20:41:35.087643	2016-12-19 20:41:35.087643
35234	8534	2271	2016-12-19 20:41:39.33438	2016-12-19 20:41:39.33438
35235	8535	2271	2016-12-19 20:41:40.954596	2016-12-19 20:41:40.954596
35236	8536	2272	2016-12-19 20:41:44.399268	2016-12-19 20:41:44.399268
35237	8537	2272	2016-12-19 20:41:46.159183	2016-12-19 20:41:46.159183
35238	8538	2272	2016-12-19 20:41:47.810934	2016-12-19 20:41:47.810934
35239	8539	2272	2016-12-19 20:41:49.480589	2016-12-19 20:41:49.480589
35240	8540	2272	2016-12-19 20:41:51.210474	2016-12-19 20:41:51.210474
35241	8541	2272	2016-12-19 20:41:52.982478	2016-12-19 20:41:52.982478
35242	8542	2272	2016-12-19 20:41:54.75491	2016-12-19 20:41:54.75491
35243	8543	2272	2016-12-19 20:41:56.368207	2016-12-19 20:41:56.368207
35244	8544	2272	2016-12-19 20:41:58.068492	2016-12-19 20:41:58.068492
35245	8545	2272	2016-12-19 20:41:59.736639	2016-12-19 20:41:59.736639
35246	8546	2272	2016-12-19 20:42:01.526658	2016-12-19 20:42:01.526658
35247	8547	2272	2016-12-19 20:42:03.473522	2016-12-19 20:42:03.473522
35248	8548	2272	2016-12-19 20:42:05.511385	2016-12-19 20:42:05.511385
35249	8549	2272	2016-12-19 20:42:07.292265	2016-12-19 20:42:07.292265
35250	8550	2272	2016-12-19 20:42:09.164157	2016-12-19 20:42:09.164157
35251	8551	2272	2016-12-19 20:42:10.86306	2016-12-19 20:42:10.86306
35252	8552	2272	2016-12-19 20:42:12.653329	2016-12-19 20:42:12.653329
35253	8553	2272	2016-12-19 20:42:14.43778	2016-12-19 20:42:14.43778
35254	8554	2272	2016-12-19 20:42:16.280253	2016-12-19 20:42:16.280253
35255	8555	2272	2016-12-19 20:42:18.246002	2016-12-19 20:42:18.246002
35256	8556	2272	2016-12-19 20:42:21.530204	2016-12-19 20:42:21.530204
35257	8557	2272	2016-12-19 20:42:23.375886	2016-12-19 20:42:23.375886
35258	8558	2272	2016-12-19 20:42:25.049169	2016-12-19 20:42:25.049169
35259	8559	2272	2016-12-19 20:42:27.003766	2016-12-19 20:42:27.003766
35260	8560	2272	2016-12-19 20:42:28.763369	2016-12-19 20:42:28.763369
35261	8561	2272	2016-12-19 20:42:30.64172	2016-12-19 20:42:30.64172
35262	8562	2272	2016-12-19 20:42:32.408318	2016-12-19 20:42:32.408318
35263	8563	2272	2016-12-19 20:42:34.251793	2016-12-19 20:42:34.251793
35264	8564	2272	2016-12-19 20:42:36.06849	2016-12-19 20:42:36.06849
35265	8565	2272	2016-12-19 20:42:37.877422	2016-12-19 20:42:37.877422
35266	8566	2272	2016-12-19 20:42:39.757422	2016-12-19 20:42:39.757422
35267	8567	2272	2016-12-19 20:42:41.629068	2016-12-19 20:42:41.629068
35268	8568	2272	2016-12-19 20:42:43.502667	2016-12-19 20:42:43.502667
35269	8569	2272	2016-12-19 20:42:45.846242	2016-12-19 20:42:45.846242
35270	8570	2272	2016-12-19 20:42:47.561504	2016-12-19 20:42:47.561504
35271	8571	2273	2016-12-19 20:42:50.20356	2016-12-19 20:42:50.20356
35272	8572	2273	2016-12-19 20:42:51.789558	2016-12-19 20:42:51.789558
35273	8573	2274	2016-12-19 20:42:54.871925	2016-12-19 20:42:54.871925
35274	8574	2274	2016-12-19 20:42:56.641895	2016-12-19 20:42:56.641895
35275	8575	2274	2016-12-19 20:42:58.546585	2016-12-19 20:42:58.546585
35276	8576	2274	2016-12-19 20:43:00.439948	2016-12-19 20:43:00.439948
35277	8577	2275	2016-12-19 20:43:03.897665	2016-12-19 20:43:03.897665
35278	8578	2275	2016-12-19 20:43:06.187111	2016-12-19 20:43:06.187111
35279	8579	2275	2016-12-19 20:43:08.518432	2016-12-19 20:43:08.518432
35280	8580	2275	2016-12-19 20:43:10.876267	2016-12-19 20:43:10.876267
35281	8581	2275	2016-12-19 20:43:13.157267	2016-12-19 20:43:13.157267
35282	8582	2275	2016-12-19 20:43:15.510312	2016-12-19 20:43:15.510312
35283	8583	2275	2016-12-19 20:43:17.823408	2016-12-19 20:43:17.823408
35284	8584	2275	2016-12-19 20:43:20.222287	2016-12-19 20:43:20.222287
35285	8585	2275	2016-12-19 20:43:21.907716	2016-12-19 20:43:21.907716
35286	8586	2275	2016-12-19 20:43:23.568105	2016-12-19 20:43:23.568105
35287	8587	2275	2016-12-19 20:43:25.087838	2016-12-19 20:43:25.087838
35288	8588	2275	2016-12-19 20:43:26.676569	2016-12-19 20:43:26.676569
35289	8589	2275	2016-12-19 20:43:28.379298	2016-12-19 20:43:28.379298
35290	8590	2275	2016-12-19 20:43:30.727251	2016-12-19 20:43:30.727251
35291	8591	2275	2016-12-19 20:43:32.299329	2016-12-19 20:43:32.299329
35292	8592	2275	2016-12-19 20:43:33.905126	2016-12-19 20:43:33.905126
35293	8593	2275	2016-12-19 20:43:35.512327	2016-12-19 20:43:35.512327
35294	8594	2275	2016-12-19 20:43:37.121727	2016-12-19 20:43:37.121727
35295	8595	2275	2016-12-19 20:43:38.703751	2016-12-19 20:43:38.703751
35296	8577	2270	2016-12-19 20:43:40.367316	2016-12-19 20:43:40.367316
35297	8596	2270	2016-12-19 20:43:42.924052	2016-12-19 20:43:42.924052
35298	8597	2270	2016-12-19 20:43:45.403311	2016-12-19 20:43:45.403311
35299	8578	2270	2016-12-19 20:43:45.426973	2016-12-19 20:43:45.426973
35300	8579	2270	2016-12-19 20:43:45.452418	2016-12-19 20:43:45.452418
35301	8580	2270	2016-12-19 20:43:45.470939	2016-12-19 20:43:45.470939
35302	8598	2270	2016-12-19 20:43:47.98905	2016-12-19 20:43:47.98905
35303	8581	2270	2016-12-19 20:43:48.019788	2016-12-19 20:43:48.019788
35304	8582	2270	2016-12-19 20:43:48.039798	2016-12-19 20:43:48.039798
35305	8536	2270	2016-12-19 20:43:48.067032	2016-12-19 20:43:48.067032
35306	8537	2270	2016-12-19 20:43:48.077843	2016-12-19 20:43:48.077843
35307	8538	2270	2016-12-19 20:43:48.094883	2016-12-19 20:43:48.094883
35308	8539	2270	2016-12-19 20:43:48.116732	2016-12-19 20:43:48.116732
35309	8540	2270	2016-12-19 20:43:48.136103	2016-12-19 20:43:48.136103
35310	8541	2270	2016-12-19 20:43:48.155311	2016-12-19 20:43:48.155311
35311	8583	2270	2016-12-19 20:43:48.164499	2016-12-19 20:43:48.164499
35312	8584	2270	2016-12-19 20:43:48.191632	2016-12-19 20:43:48.191632
35313	8573	2270	2016-12-19 20:43:48.210186	2016-12-19 20:43:48.210186
35314	8542	2270	2016-12-19 20:43:48.227942	2016-12-19 20:43:48.227942
35315	8543	2270	2016-12-19 20:43:48.247182	2016-12-19 20:43:48.247182
35316	8544	2270	2016-12-19 20:43:49.891068	2016-12-19 20:43:49.891068
35317	8545	2270	2016-12-19 20:43:49.949821	2016-12-19 20:43:49.949821
35318	8546	2270	2016-12-19 20:43:49.962825	2016-12-19 20:43:49.962825
35319	8547	2270	2016-12-19 20:43:49.989628	2016-12-19 20:43:49.989628
35320	8599	2270	2016-12-19 20:43:51.9463	2016-12-19 20:43:51.9463
35321	8600	2270	2016-12-19 20:43:53.783989	2016-12-19 20:43:53.783989
35322	8601	2270	2016-12-19 20:43:55.572045	2016-12-19 20:43:55.572045
35323	8602	2270	2016-12-19 20:43:57.465054	2016-12-19 20:43:57.465054
35324	8603	2270	2016-12-19 20:43:59.223049	2016-12-19 20:43:59.223049
35325	8604	2270	2016-12-19 20:44:01.027009	2016-12-19 20:44:01.027009
35326	8605	2270	2016-12-19 20:44:02.780628	2016-12-19 20:44:02.780628
35327	8606	2270	2016-12-19 20:44:04.682	2016-12-19 20:44:04.682
35328	8607	2270	2016-12-19 20:44:06.597163	2016-12-19 20:44:06.597163
35329	8608	2270	2016-12-19 20:44:08.50206	2016-12-19 20:44:08.50206
35330	8609	2270	2016-12-19 20:44:10.405952	2016-12-19 20:44:10.405952
35331	8610	2270	2016-12-19 20:44:12.181764	2016-12-19 20:44:12.181764
35332	8611	2270	2016-12-19 20:44:14.033955	2016-12-19 20:44:14.033955
35333	8612	2270	2016-12-19 20:44:15.898903	2016-12-19 20:44:15.898903
35334	8613	2270	2016-12-19 20:44:17.664588	2016-12-19 20:44:17.664588
35335	8614	2270	2016-12-19 20:44:19.448644	2016-12-19 20:44:19.448644
35336	8615	2270	2016-12-19 20:44:22.883177	2016-12-19 20:44:22.883177
35337	8616	2270	2016-12-19 20:44:26.720962	2016-12-19 20:44:26.720962
35338	8617	2270	2016-12-19 20:44:28.437046	2016-12-19 20:44:28.437046
35339	8618	2270	2016-12-19 20:44:30.28699	2016-12-19 20:44:30.28699
35340	8619	2270	2016-12-19 20:44:32.025464	2016-12-19 20:44:32.025464
35341	8620	2270	2016-12-19 20:44:33.932268	2016-12-19 20:44:33.932268
35342	8621	2270	2016-12-19 20:44:35.889083	2016-12-19 20:44:35.889083
35343	8622	2270	2016-12-19 20:44:37.991685	2016-12-19 20:44:37.991685
35344	8623	2270	2016-12-19 20:44:40.039514	2016-12-19 20:44:40.039514
35345	8624	2270	2016-12-19 20:44:41.911897	2016-12-19 20:44:41.911897
35346	8548	2270	2016-12-19 20:44:41.932396	2016-12-19 20:44:41.932396
35347	8549	2270	2016-12-19 20:44:41.944281	2016-12-19 20:44:41.944281
35348	8550	2270	2016-12-19 20:44:41.959353	2016-12-19 20:44:41.959353
35349	8571	2270	2016-12-19 20:44:41.975418	2016-12-19 20:44:41.975418
35350	8585	2270	2016-12-19 20:44:41.986277	2016-12-19 20:44:41.986277
35351	8586	2270	2016-12-19 20:44:42.007879	2016-12-19 20:44:42.007879
35352	8587	2270	2016-12-19 20:44:42.018077	2016-12-19 20:44:42.018077
35353	8551	2270	2016-12-19 20:44:42.030954	2016-12-19 20:44:42.030954
35354	8552	2270	2016-12-19 20:44:42.054277	2016-12-19 20:44:42.054277
35355	8553	2270	2016-12-19 20:44:42.063955	2016-12-19 20:44:42.063955
35356	8554	2270	2016-12-19 20:44:43.641802	2016-12-19 20:44:43.641802
35357	8555	2270	2016-12-19 20:44:43.658555	2016-12-19 20:44:43.658555
35358	8556	2270	2016-12-19 20:44:43.675199	2016-12-19 20:44:43.675199
35359	8557	2270	2016-12-19 20:44:43.685817	2016-12-19 20:44:43.685817
35360	8558	2270	2016-12-19 20:44:43.698826	2016-12-19 20:44:43.698826
35361	8559	2270	2016-12-19 20:44:43.724941	2016-12-19 20:44:43.724941
35362	8560	2270	2016-12-19 20:44:43.739693	2016-12-19 20:44:43.739693
35363	8561	2270	2016-12-19 20:44:43.759471	2016-12-19 20:44:43.759471
35364	8562	2270	2016-12-19 20:44:43.772705	2016-12-19 20:44:43.772705
35365	8563	2270	2016-12-19 20:44:43.795776	2016-12-19 20:44:43.795776
35366	8564	2270	2016-12-19 20:44:43.805426	2016-12-19 20:44:43.805426
35367	8565	2270	2016-12-19 20:44:43.817374	2016-12-19 20:44:43.817374
35368	8566	2270	2016-12-19 20:44:43.852245	2016-12-19 20:44:43.852245
35369	8567	2270	2016-12-19 20:44:43.863682	2016-12-19 20:44:43.863682
35370	8568	2270	2016-12-19 20:44:43.963926	2016-12-19 20:44:43.963926
35371	8625	2270	2016-12-19 20:44:46.456909	2016-12-19 20:44:46.456909
35372	8569	2270	2016-12-19 20:44:46.473297	2016-12-19 20:44:46.473297
35373	8534	2270	2016-12-19 20:44:46.491663	2016-12-19 20:44:46.491663
35374	8626	2270	2016-12-19 20:44:48.996123	2016-12-19 20:44:48.996123
35375	8627	2270	2016-12-19 20:44:50.875853	2016-12-19 20:44:50.875853
35376	8628	2270	2016-12-19 20:44:54.42511	2016-12-19 20:44:54.42511
35377	8473	2270	2016-12-19 20:44:54.438877	2016-12-19 20:44:54.438877
35378	8629	2270	2016-12-19 20:44:56.143313	2016-12-19 20:44:56.143313
35379	8630	2270	2016-12-19 20:44:58.058552	2016-12-19 20:44:58.058552
35380	8631	2270	2016-12-19 20:44:59.937216	2016-12-19 20:44:59.937216
35381	8632	2270	2016-12-19 20:45:02.054413	2016-12-19 20:45:02.054413
35382	8633	2270	2016-12-19 20:45:04.388612	2016-12-19 20:45:04.388612
35383	8634	2270	2016-12-19 20:45:06.622959	2016-12-19 20:45:06.622959
35384	8635	2270	2016-12-19 20:45:08.527721	2016-12-19 20:45:08.527721
35385	8636	2270	2016-12-19 20:45:10.500269	2016-12-19 20:45:10.500269
35386	8637	2270	2016-12-19 20:45:12.298993	2016-12-19 20:45:12.298993
35387	8570	2270	2016-12-19 20:45:12.315294	2016-12-19 20:45:12.315294
35388	8588	2270	2016-12-19 20:45:12.342022	2016-12-19 20:45:12.342022
35389	8589	2270	2016-12-19 20:45:12.359289	2016-12-19 20:45:12.359289
35390	8574	2270	2016-12-19 20:45:12.378956	2016-12-19 20:45:12.378956
35391	8575	2270	2016-12-19 20:45:12.397224	2016-12-19 20:45:12.397224
35392	8576	2270	2016-12-19 20:45:12.407634	2016-12-19 20:45:12.407634
35393	8638	2270	2016-12-19 20:45:14.361756	2016-12-19 20:45:14.361756
35394	8639	2270	2016-12-19 20:45:16.244401	2016-12-19 20:45:16.244401
35395	8640	2270	2016-12-19 20:45:17.964337	2016-12-19 20:45:17.964337
35396	8641	2270	2016-12-19 20:45:21.429304	2016-12-19 20:45:21.429304
35397	8642	2270	2016-12-19 20:45:23.212643	2016-12-19 20:45:23.212643
35398	8643	2270	2016-12-19 20:45:25.097506	2016-12-19 20:45:25.097506
35399	8644	2270	2016-12-19 20:45:27.041111	2016-12-19 20:45:27.041111
35400	8645	2270	2016-12-19 20:45:28.832392	2016-12-19 20:45:28.832392
35401	8646	2270	2016-12-19 20:45:30.701141	2016-12-19 20:45:30.701141
35402	8647	2270	2016-12-19 20:45:32.6933	2016-12-19 20:45:32.6933
35403	8648	2270	2016-12-19 20:45:34.586172	2016-12-19 20:45:34.586172
35404	8649	2270	2016-12-19 20:45:36.545047	2016-12-19 20:45:36.545047
35405	8650	2270	2016-12-19 20:45:38.447941	2016-12-19 20:45:38.447941
35406	8651	2270	2016-12-19 20:45:40.165917	2016-12-19 20:45:40.165917
35407	8590	2270	2016-12-19 20:45:40.183592	2016-12-19 20:45:40.183592
35408	8591	2270	2016-12-19 20:45:40.21309	2016-12-19 20:45:40.21309
35409	8592	2270	2016-12-19 20:45:40.232168	2016-12-19 20:45:40.232168
35410	8593	2270	2016-12-19 20:45:40.250958	2016-12-19 20:45:40.250958
35411	8535	2270	2016-12-19 20:45:40.264293	2016-12-19 20:45:40.264293
35412	8594	2270	2016-12-19 20:45:40.28942	2016-12-19 20:45:40.28942
35413	8496	2270	2016-12-19 20:45:40.310114	2016-12-19 20:45:40.310114
35414	8595	2270	2016-12-19 20:45:40.33535	2016-12-19 20:45:40.33535
35415	8572	2270	2016-12-19 20:45:40.348629	2016-12-19 20:45:40.348629
35416	8596	2276	2016-12-19 20:45:41.351197	2016-12-19 20:45:41.351197
35417	8597	2276	2016-12-19 20:45:41.423028	2016-12-19 20:45:41.423028
35418	8652	2278	2016-12-19 20:45:43.90858	2016-12-19 20:45:43.90858
35419	7362	2279	2016-12-19 20:45:45.187575	2016-12-19 20:45:45.187575
35420	7363	2279	2016-12-19 20:45:45.369244	2016-12-19 20:45:45.369244
35421	8653	2279	2016-12-19 20:45:46.92339	2016-12-19 20:45:46.92339
35422	8654	2279	2016-12-19 20:45:48.53118	2016-12-19 20:45:48.53118
35423	8655	2279	2016-12-19 20:45:50.105254	2016-12-19 20:45:50.105254
35424	8656	2279	2016-12-19 20:45:51.579699	2016-12-19 20:45:51.579699
35425	8657	2279	2016-12-19 20:45:53.069019	2016-12-19 20:45:53.069019
35426	8658	2279	2016-12-19 20:45:54.641078	2016-12-19 20:45:54.641078
35427	8659	2279	2016-12-19 20:45:56.147827	2016-12-19 20:45:56.147827
35428	8660	2280	2016-12-19 20:45:58.538416	2016-12-19 20:45:58.538416
35429	8661	2277	2016-12-19 20:46:01.666088	2016-12-19 20:46:01.666088
35430	8662	2277	2016-12-19 20:46:03.314297	2016-12-19 20:46:03.314297
35431	8663	2277	2016-12-19 20:46:04.865659	2016-12-19 20:46:04.865659
35432	8664	2277	2016-12-19 20:46:06.627847	2016-12-19 20:46:06.627847
35433	8652	2277	2016-12-19 20:46:06.642299	2016-12-19 20:46:06.642299
35434	7362	2277	2016-12-19 20:46:06.654235	2016-12-19 20:46:06.654235
35435	7363	2277	2016-12-19 20:46:06.671315	2016-12-19 20:46:06.671315
35436	8665	2277	2016-12-19 20:46:08.035816	2016-12-19 20:46:08.035816
35437	8660	2277	2016-12-19 20:46:08.066627	2016-12-19 20:46:08.066627
35438	8653	2277	2016-12-19 20:46:08.08016	2016-12-19 20:46:08.08016
35439	8654	2277	2016-12-19 20:46:08.09861	2016-12-19 20:46:08.09861
35440	8655	2277	2016-12-19 20:46:08.115488	2016-12-19 20:46:08.115488
35441	8656	2277	2016-12-19 20:46:08.136815	2016-12-19 20:46:08.136815
35442	8657	2277	2016-12-19 20:46:08.152804	2016-12-19 20:46:08.152804
35443	8658	2277	2016-12-19 20:46:08.16847	2016-12-19 20:46:08.16847
35444	8659	2277	2016-12-19 20:46:08.180323	2016-12-19 20:46:08.180323
35445	8665	2281	2016-12-19 20:46:09.142185	2016-12-19 20:46:09.142185
35446	8666	2283	2016-12-19 20:46:12.032208	2016-12-19 20:46:12.032208
35447	8667	2283	2016-12-19 20:46:13.72767	2016-12-19 20:46:13.72767
35448	8668	2283	2016-12-19 20:46:15.500632	2016-12-19 20:46:15.500632
35449	8669	2283	2016-12-19 20:46:17.131157	2016-12-19 20:46:17.131157
35450	8670	2283	2016-12-19 20:46:18.779942	2016-12-19 20:46:18.779942
35451	8671	2283	2016-12-19 20:46:20.50115	2016-12-19 20:46:20.50115
35452	8672	2283	2016-12-19 20:46:23.041749	2016-12-19 20:46:23.041749
35453	8673	2283	2016-12-19 20:46:25.419391	2016-12-19 20:46:25.419391
35454	8674	2283	2016-12-19 20:46:27.632221	2016-12-19 20:46:27.632221
35455	8675	2283	2016-12-19 20:46:29.910414	2016-12-19 20:46:29.910414
35456	8676	2283	2016-12-19 20:46:32.333607	2016-12-19 20:46:32.333607
35457	8677	2283	2016-12-19 20:46:34.819018	2016-12-19 20:46:34.819018
35458	8678	2284	2016-12-19 20:46:38.015141	2016-12-19 20:46:38.015141
35459	8679	2284	2016-12-19 20:46:39.674082	2016-12-19 20:46:39.674082
35460	8680	2284	2016-12-19 20:46:41.468174	2016-12-19 20:46:41.468174
35461	8681	2284	2016-12-19 20:46:43.171433	2016-12-19 20:46:43.171433
35462	8682	2284	2016-12-19 20:46:44.771126	2016-12-19 20:46:44.771126
35463	8683	2284	2016-12-19 20:46:46.333523	2016-12-19 20:46:46.333523
35464	8684	2284	2016-12-19 20:46:47.940933	2016-12-19 20:46:47.940933
35465	8685	2284	2016-12-19 20:46:49.504901	2016-12-19 20:46:49.504901
35466	8686	2284	2016-12-19 20:46:51.155185	2016-12-19 20:46:51.155185
35467	8687	2284	2016-12-19 20:46:52.905757	2016-12-19 20:46:52.905757
35468	8688	2284	2016-12-19 20:46:54.578636	2016-12-19 20:46:54.578636
35469	8689	2284	2016-12-19 20:46:56.859211	2016-12-19 20:46:56.859211
35470	8690	2284	2016-12-19 20:46:59.216274	2016-12-19 20:46:59.216274
35471	8691	2284	2016-12-19 20:47:01.575443	2016-12-19 20:47:01.575443
35472	8692	2284	2016-12-19 20:47:04.227548	2016-12-19 20:47:04.227548
35473	8693	2284	2016-12-19 20:47:06.631033	2016-12-19 20:47:06.631033
35474	8694	2284	2016-12-19 20:47:09.034267	2016-12-19 20:47:09.034267
35475	8695	2284	2016-12-19 20:47:11.320792	2016-12-19 20:47:11.320792
35476	8696	2285	2016-12-19 20:47:14.705367	2016-12-19 20:47:14.705367
35477	8697	2285	2016-12-19 20:47:16.345481	2016-12-19 20:47:16.345481
35478	7354	2285	2016-12-19 20:47:16.37217	2016-12-19 20:47:16.37217
35479	8698	2285	2016-12-19 20:47:18.017186	2016-12-19 20:47:18.017186
35480	8699	2285	2016-12-19 20:47:19.732477	2016-12-19 20:47:19.732477
35481	8700	2285	2016-12-19 20:47:21.375064	2016-12-19 20:47:21.375064
35482	8701	2285	2016-12-19 20:47:23.099589	2016-12-19 20:47:23.099589
35483	8702	2285	2016-12-19 20:47:24.795618	2016-12-19 20:47:24.795618
35484	8703	2285	2016-12-19 20:47:26.527198	2016-12-19 20:47:26.527198
35485	8704	2285	2016-12-19 20:47:30.15619	2016-12-19 20:47:30.15619
35486	8705	2285	2016-12-19 20:47:31.779342	2016-12-19 20:47:31.779342
35487	8706	2285	2016-12-19 20:47:33.393912	2016-12-19 20:47:33.393912
35488	8707	2285	2016-12-19 20:47:35.054793	2016-12-19 20:47:35.054793
35489	8708	2285	2016-12-19 20:47:36.875674	2016-12-19 20:47:36.875674
35490	8709	2285	2016-12-19 20:47:38.544154	2016-12-19 20:47:38.544154
35491	8710	2285	2016-12-19 20:47:40.153589	2016-12-19 20:47:40.153589
35492	8711	2285	2016-12-19 20:47:41.841103	2016-12-19 20:47:41.841103
35493	8712	2285	2016-12-19 20:47:43.443038	2016-12-19 20:47:43.443038
35494	8713	2285	2016-12-19 20:47:45.799581	2016-12-19 20:47:45.799581
35495	8714	2285	2016-12-19 20:47:48.155611	2016-12-19 20:47:48.155611
35496	8715	2285	2016-12-19 20:47:51.562852	2016-12-19 20:47:51.562852
35497	8716	2285	2016-12-19 20:47:53.144398	2016-12-19 20:47:53.144398
35498	8717	2285	2016-12-19 20:47:54.781787	2016-12-19 20:47:54.781787
35499	8718	2285	2016-12-19 20:47:56.432881	2016-12-19 20:47:56.432881
35500	8719	2285	2016-12-19 20:47:58.09513	2016-12-19 20:47:58.09513
35501	8720	2285	2016-12-19 20:47:59.757112	2016-12-19 20:47:59.757112
35502	8721	2285	2016-12-19 20:48:01.331829	2016-12-19 20:48:01.331829
35503	8722	2285	2016-12-19 20:48:03.192224	2016-12-19 20:48:03.192224
35504	8723	2285	2016-12-19 20:48:05.646434	2016-12-19 20:48:05.646434
35505	8724	2285	2016-12-19 20:48:07.244586	2016-12-19 20:48:07.244586
35506	8725	2285	2016-12-19 20:48:08.862446	2016-12-19 20:48:08.862446
35507	8726	2285	2016-12-19 20:48:10.390982	2016-12-19 20:48:10.390982
35508	8727	2285	2016-12-19 20:48:11.909382	2016-12-19 20:48:11.909382
35509	8728	2285	2016-12-19 20:48:12.670822	2016-12-19 20:48:12.670822
35510	7356	2285	2016-12-19 20:48:12.679666	2016-12-19 20:48:12.679666
35511	8729	2286	2016-12-19 20:48:15.599179	2016-12-19 20:48:15.599179
35512	8730	2286	2016-12-19 20:48:17.091249	2016-12-19 20:48:17.091249
35513	8731	2286	2016-12-19 20:48:18.801577	2016-12-19 20:48:18.801577
35514	8732	2286	2016-12-19 20:48:20.408446	2016-12-19 20:48:20.408446
35515	8733	2286	2016-12-19 20:48:22.671627	2016-12-19 20:48:22.671627
35516	8734	2286	2016-12-19 20:48:25.035848	2016-12-19 20:48:25.035848
35517	8735	2286	2016-12-19 20:48:26.617638	2016-12-19 20:48:26.617638
35518	8736	2286	2016-12-19 20:48:28.186132	2016-12-19 20:48:28.186132
35519	8737	2287	2016-12-19 20:48:31.771167	2016-12-19 20:48:31.771167
35520	8738	2287	2016-12-19 20:48:34.158867	2016-12-19 20:48:34.158867
35521	8739	2287	2016-12-19 20:48:36.547064	2016-12-19 20:48:36.547064
35522	8740	2287	2016-12-19 20:48:39.057483	2016-12-19 20:48:39.057483
35523	8741	2287	2016-12-19 20:48:40.718666	2016-12-19 20:48:40.718666
35524	8742	2287	2016-12-19 20:48:42.370938	2016-12-19 20:48:42.370938
35525	8743	2287	2016-12-19 20:48:44.032	2016-12-19 20:48:44.032
35526	8744	2287	2016-12-19 20:48:45.639908	2016-12-19 20:48:45.639908
35527	7354	2288	2016-12-19 20:48:46.762926	2016-12-19 20:48:46.762926
35528	8745	2288	2016-12-19 20:48:48.027973	2016-12-19 20:48:48.027973
35529	8746	2289	2016-12-19 20:48:51.275606	2016-12-19 20:48:51.275606
35530	8747	2289	2016-12-19 20:48:52.971269	2016-12-19 20:48:52.971269
35531	8748	2289	2016-12-19 20:48:54.700231	2016-12-19 20:48:54.700231
35532	8749	2289	2016-12-19 20:48:56.461026	2016-12-19 20:48:56.461026
35533	8750	2289	2016-12-19 20:48:58.209844	2016-12-19 20:48:58.209844
35534	8751	2289	2016-12-19 20:48:59.905285	2016-12-19 20:48:59.905285
35535	8752	2289	2016-12-19 20:49:01.511713	2016-12-19 20:49:01.511713
35536	8753	2289	2016-12-19 20:49:03.332172	2016-12-19 20:49:03.332172
35537	8754	2289	2016-12-19 20:49:05.15676	2016-12-19 20:49:05.15676
35538	8755	2289	2016-12-19 20:49:06.939452	2016-12-19 20:49:06.939452
35539	8756	2289	2016-12-19 20:49:08.684258	2016-12-19 20:49:08.684258
35540	8757	2289	2016-12-19 20:49:10.406443	2016-12-19 20:49:10.406443
35541	8758	2289	2016-12-19 20:49:12.103035	2016-12-19 20:49:12.103035
35542	8759	2290	2016-12-19 20:49:15.420178	2016-12-19 20:49:15.420178
35543	8760	2290	2016-12-19 20:49:17.352659	2016-12-19 20:49:17.352659
35544	8761	2290	2016-12-19 20:49:19.061268	2016-12-19 20:49:19.061268
35545	8762	2290	2016-12-19 20:49:20.845337	2016-12-19 20:49:20.845337
35546	8763	2290	2016-12-19 20:49:22.605186	2016-12-19 20:49:22.605186
35547	8764	2290	2016-12-19 20:49:24.398731	2016-12-19 20:49:24.398731
35548	8765	2290	2016-12-19 20:49:26.159947	2016-12-19 20:49:26.159947
35549	8766	2290	2016-12-19 20:49:27.846197	2016-12-19 20:49:27.846197
35550	8767	2290	2016-12-19 20:49:29.724667	2016-12-19 20:49:29.724667
35551	8768	2290	2016-12-19 20:49:31.569902	2016-12-19 20:49:31.569902
35552	8769	2290	2016-12-19 20:49:33.505812	2016-12-19 20:49:33.505812
35553	8770	2290	2016-12-19 20:49:35.184473	2016-12-19 20:49:35.184473
35554	8771	2290	2016-12-19 20:49:36.940203	2016-12-19 20:49:36.940203
35555	8772	2290	2016-12-19 20:49:38.753617	2016-12-19 20:49:38.753617
35556	8773	2290	2016-12-19 20:49:40.557582	2016-12-19 20:49:40.557582
35557	8774	2290	2016-12-19 20:49:42.288304	2016-12-19 20:49:42.288304
35558	8775	2291	2016-12-19 20:49:45.500019	2016-12-19 20:49:45.500019
35559	8776	2291	2016-12-19 20:49:46.974203	2016-12-19 20:49:46.974203
35560	8777	2291	2016-12-19 20:49:48.702632	2016-12-19 20:49:48.702632
35561	8778	2291	2016-12-19 20:49:50.381908	2016-12-19 20:49:50.381908
35562	8779	2291	2016-12-19 20:49:52.080951	2016-12-19 20:49:52.080951
35563	8780	2291	2016-12-19 20:49:53.735738	2016-12-19 20:49:53.735738
35564	8781	2291	2016-12-19 20:49:55.583426	2016-12-19 20:49:55.583426
35565	8782	2291	2016-12-19 20:49:57.266009	2016-12-19 20:49:57.266009
35566	8783	2291	2016-12-19 20:49:59.05566	2016-12-19 20:49:59.05566
35567	8784	2291	2016-12-19 20:50:00.931952	2016-12-19 20:50:00.931952
35568	8785	2291	2016-12-19 20:50:03.540528	2016-12-19 20:50:03.540528
35569	8786	2291	2016-12-19 20:50:05.752831	2016-12-19 20:50:05.752831
35570	8787	2291	2016-12-19 20:50:08.448894	2016-12-19 20:50:08.448894
35571	8788	2291	2016-12-19 20:50:10.340911	2016-12-19 20:50:10.340911
35572	8789	2291	2016-12-19 20:50:12.113133	2016-12-19 20:50:12.113133
35573	8790	2291	2016-12-19 20:50:13.909853	2016-12-19 20:50:13.909853
35574	8791	2291	2016-12-19 20:50:15.642542	2016-12-19 20:50:15.642542
35575	8792	2291	2016-12-19 20:50:17.444405	2016-12-19 20:50:17.444405
35576	8793	2291	2016-12-19 20:50:19.137188	2016-12-19 20:50:19.137188
35577	8794	2291	2016-12-19 20:50:20.85838	2016-12-19 20:50:20.85838
35578	8795	2291	2016-12-19 20:50:23.969419	2016-12-19 20:50:23.969419
35579	8796	2291	2016-12-19 20:50:27.680058	2016-12-19 20:50:27.680058
35580	8797	2291	2016-12-19 20:50:29.374939	2016-12-19 20:50:29.374939
35581	8798	2291	2016-12-19 20:50:31.149157	2016-12-19 20:50:31.149157
35582	8799	2291	2016-12-19 20:50:33.667773	2016-12-19 20:50:33.667773
35583	8800	2291	2016-12-19 20:50:35.363153	2016-12-19 20:50:35.363153
35584	8801	2291	2016-12-19 20:50:37.117764	2016-12-19 20:50:37.117764
35585	8802	2291	2016-12-19 20:50:38.814344	2016-12-19 20:50:38.814344
35586	8803	2292	2016-12-19 20:50:41.309259	2016-12-19 20:50:41.309259
35587	8804	2292	2016-12-19 20:50:42.893919	2016-12-19 20:50:42.893919
35588	8805	2293	2016-12-19 20:50:45.456823	2016-12-19 20:50:45.456823
35589	8806	2294	2016-12-19 20:50:48.185672	2016-12-19 20:50:48.185672
35590	8807	2294	2016-12-19 20:50:49.860654	2016-12-19 20:50:49.860654
35591	8808	2294	2016-12-19 20:50:51.553619	2016-12-19 20:50:51.553619
35592	8809	2294	2016-12-19 20:50:53.172045	2016-12-19 20:50:53.172045
35593	8810	2294	2016-12-19 20:50:54.746078	2016-12-19 20:50:54.746078
35594	8811	2294	2016-12-19 20:50:57.051783	2016-12-19 20:50:57.051783
35595	8812	2295	2016-12-19 20:50:59.651019	2016-12-19 20:50:59.651019
35596	8813	2295	2016-12-19 20:51:01.174822	2016-12-19 20:51:01.174822
35597	8814	2295	2016-12-19 20:51:02.949546	2016-12-19 20:51:02.949546
35598	8815	2296	2016-12-19 20:51:06.259918	2016-12-19 20:51:06.259918
35599	8661	2269	2016-12-19 20:51:08.098855	2016-12-19 20:51:08.098855
35600	7354	2269	2016-12-19 20:51:08.106616	2016-12-19 20:51:08.106616
35601	8473	2269	2016-12-19 20:51:08.136908	2016-12-19 20:51:08.136908
35602	8669	2269	2016-12-19 20:51:08.154736	2016-12-19 20:51:08.154736
35603	8668	2269	2016-12-19 20:51:08.180448	2016-12-19 20:51:08.180448
35604	8794	2269	2016-12-19 20:51:08.202706	2016-12-19 20:51:08.202706
35605	8577	2269	2016-12-19 20:51:08.220676	2016-12-19 20:51:08.220676
35606	8685	2269	2016-12-19 20:51:08.235844	2016-12-19 20:51:08.235844
35607	8662	2269	2016-12-19 20:51:08.257258	2016-12-19 20:51:08.257258
35608	8663	2269	2016-12-19 20:51:08.269631	2016-12-19 20:51:08.269631
35609	8664	2269	2016-12-19 20:51:08.279002	2016-12-19 20:51:08.279002
35610	8803	2269	2016-12-19 20:51:08.301333	2016-12-19 20:51:08.301333
35611	8724	2269	2016-12-19 20:51:08.315075	2016-12-19 20:51:08.315075
35612	8789	2269	2016-12-19 20:51:08.3313	2016-12-19 20:51:08.3313
35613	8805	2269	2016-12-19 20:51:08.348081	2016-12-19 20:51:08.348081
35614	8784	2269	2016-12-19 20:51:08.359628	2016-12-19 20:51:08.359628
35615	8812	2269	2016-12-19 20:51:08.37734	2016-12-19 20:51:08.37734
35616	8652	2269	2016-12-19 20:51:08.388057	2016-12-19 20:51:08.388057
35617	8763	2269	2016-12-19 20:51:08.400674	2016-12-19 20:51:08.400674
35618	8732	2269	2016-12-19 20:51:08.422957	2016-12-19 20:51:08.422957
35619	8749	2269	2016-12-19 20:51:10.189418	2016-12-19 20:51:10.189418
35620	8710	2269	2016-12-19 20:51:10.252016	2016-12-19 20:51:10.252016
35621	8712	2269	2016-12-19 20:51:10.272757	2016-12-19 20:51:10.272757
35622	8711	2269	2016-12-19 20:51:10.287553	2016-12-19 20:51:10.287553
35623	8683	2269	2016-12-19 20:51:10.300234	2016-12-19 20:51:10.300234
35624	8764	2269	2016-12-19 20:51:10.3125	2016-12-19 20:51:10.3125
35625	8765	2269	2016-12-19 20:51:10.332263	2016-12-19 20:51:10.332263
35626	8766	2269	2016-12-19 20:51:10.343738	2016-12-19 20:51:10.343738
35627	8751	2269	2016-12-19 20:51:10.371364	2016-12-19 20:51:10.371364
35628	8735	2269	2016-12-19 20:51:10.382291	2016-12-19 20:51:10.382291
35629	8736	2269	2016-12-19 20:51:10.405756	2016-12-19 20:51:10.405756
35630	8809	2269	2016-12-19 20:51:10.416982	2016-12-19 20:51:10.416982
35631	8810	2269	2016-12-19 20:51:10.439783	2016-12-19 20:51:10.439783
35632	8720	2269	2016-12-19 20:51:10.454363	2016-12-19 20:51:10.454363
35633	8808	2269	2016-12-19 20:51:10.470307	2016-12-19 20:51:10.470307
35634	8717	2269	2016-12-19 20:51:10.488464	2016-12-19 20:51:10.488464
35635	8750	2269	2016-12-19 20:51:10.49841	2016-12-19 20:51:10.49841
35636	8716	2269	2016-12-19 20:51:10.521747	2016-12-19 20:51:10.521747
35637	8719	2269	2016-12-19 20:51:10.537032	2016-12-19 20:51:10.537032
35638	8721	2269	2016-12-19 20:51:10.558973	2016-12-19 20:51:10.558973
35639	8718	2269	2016-12-19 20:51:12.19718	2016-12-19 20:51:12.19718
35640	7362	2269	2016-12-19 20:51:12.256316	2016-12-19 20:51:12.256316
35641	8677	2269	2016-12-19 20:51:12.272647	2016-12-19 20:51:12.272647
35642	8675	2269	2016-12-19 20:51:12.294181	2016-12-19 20:51:12.294181
35643	8676	2269	2016-12-19 20:51:12.308624	2016-12-19 20:51:12.308624
35644	8672	2269	2016-12-19 20:51:12.319136	2016-12-19 20:51:12.319136
35645	8673	2269	2016-12-19 20:51:12.343056	2016-12-19 20:51:12.343056
35646	8674	2269	2016-12-19 20:51:12.358097	2016-12-19 20:51:12.358097
35647	8691	2269	2016-12-19 20:51:12.377195	2016-12-19 20:51:12.377195
35648	8690	2269	2016-12-19 20:51:12.402717	2016-12-19 20:51:12.402717
35649	8689	2269	2016-12-19 20:51:12.424678	2016-12-19 20:51:12.424678
35650	8692	2269	2016-12-19 20:51:12.444273	2016-12-19 20:51:12.444273
35651	8693	2269	2016-12-19 20:51:12.475403	2016-12-19 20:51:12.475403
35652	8694	2269	2016-12-19 20:51:12.509942	2016-12-19 20:51:12.509942
35653	8695	2269	2016-12-19 20:51:12.530189	2016-12-19 20:51:12.530189
35654	8799	2269	2016-12-19 20:51:12.552537	2016-12-19 20:51:12.552537
35655	8596	2269	2016-12-19 20:51:12.565456	2016-12-19 20:51:12.565456
35656	8597	2269	2016-12-19 20:51:12.578952	2016-12-19 20:51:12.578952
35657	8578	2269	2016-12-19 20:51:12.596244	2016-12-19 20:51:12.596244
35658	8579	2269	2016-12-19 20:51:12.618258	2016-12-19 20:51:12.618258
35659	8580	2269	2016-12-19 20:51:14.317295	2016-12-19 20:51:14.317295
35660	8598	2269	2016-12-19 20:51:14.3561	2016-12-19 20:51:14.3561
35661	8722	2269	2016-12-19 20:51:14.378465	2016-12-19 20:51:14.378465
35662	7363	2269	2016-12-19 20:51:14.390538	2016-12-19 20:51:14.390538
35663	8684	2269	2016-12-19 20:51:14.413339	2016-12-19 20:51:14.413339
35664	8741	2269	2016-12-19 20:51:14.435865	2016-12-19 20:51:14.435865
35665	8742	2269	2016-12-19 20:51:14.457184	2016-12-19 20:51:14.457184
35666	8665	2269	2016-12-19 20:51:14.486335	2016-12-19 20:51:14.486335
35667	8581	2269	2016-12-19 20:51:14.49873	2016-12-19 20:51:14.49873
35668	8582	2269	2016-12-19 20:51:14.513392	2016-12-19 20:51:14.513392
35669	8667	2269	2016-12-19 20:51:14.534145	2016-12-19 20:51:14.534145
35670	8536	2269	2016-12-19 20:51:14.553027	2016-12-19 20:51:14.553027
35671	8537	2269	2016-12-19 20:51:14.575926	2016-12-19 20:51:14.575926
35672	8538	2269	2016-12-19 20:51:14.593151	2016-12-19 20:51:14.593151
35673	8539	2269	2016-12-19 20:51:14.610322	2016-12-19 20:51:14.610322
35674	8540	2269	2016-12-19 20:51:14.62277	2016-12-19 20:51:14.62277
35675	8541	2269	2016-12-19 20:51:14.643491	2016-12-19 20:51:14.643491
35676	8733	2269	2016-12-19 20:51:14.662723	2016-12-19 20:51:14.662723
35677	8734	2269	2016-12-19 20:51:14.676103	2016-12-19 20:51:14.676103
35678	8816	2269	2016-12-19 20:51:16.442312	2016-12-19 20:51:16.442312
35679	8817	2269	2016-12-19 20:51:20.164633	2016-12-19 20:51:20.164633
35680	8795	2269	2016-12-19 20:51:20.174935	2016-12-19 20:51:20.174935
35681	8755	2269	2016-12-19 20:51:20.19416	2016-12-19 20:51:20.19416
35682	8756	2269	2016-12-19 20:51:20.211033	2016-12-19 20:51:20.211033
35683	8757	2269	2016-12-19 20:51:20.222889	2016-12-19 20:51:20.222889
35684	8687	2269	2016-12-19 20:51:20.252957	2016-12-19 20:51:20.252957
35685	8688	2269	2016-12-19 20:51:20.276144	2016-12-19 20:51:20.276144
35686	8583	2269	2016-12-19 20:51:20.292327	2016-12-19 20:51:20.292327
35687	8584	2269	2016-12-19 20:51:20.309205	2016-12-19 20:51:20.309205
35688	8660	2269	2016-12-19 20:51:20.330833	2016-12-19 20:51:20.330833
35689	8768	2269	2016-12-19 20:51:20.343584	2016-12-19 20:51:20.343584
35690	8767	2269	2016-12-19 20:51:20.364525	2016-12-19 20:51:20.364525
35691	8769	2269	2016-12-19 20:51:20.380106	2016-12-19 20:51:20.380106
35692	8573	2269	2016-12-19 20:51:20.397385	2016-12-19 20:51:20.397385
35693	8752	2269	2016-12-19 20:51:20.41929	2016-12-19 20:51:20.41929
35694	8792	2269	2016-12-19 20:51:20.437865	2016-12-19 20:51:20.437865
35695	8671	2269	2016-12-19 20:51:20.457661	2016-12-19 20:51:20.457661
35696	8670	2269	2016-12-19 20:51:20.471422	2016-12-19 20:51:20.471422
35697	8818	2269	2016-12-19 20:51:22.375585	2016-12-19 20:51:22.375585
35698	8819	2269	2016-12-19 20:51:24.378544	2016-12-19 20:51:24.378544
35699	8793	2269	2016-12-19 20:51:26.17392	2016-12-19 20:51:26.17392
35700	8542	2269	2016-12-19 20:51:26.19818	2016-12-19 20:51:26.19818
35701	8543	2269	2016-12-19 20:51:26.211525	2016-12-19 20:51:26.211525
35702	8544	2269	2016-12-19 20:51:26.234262	2016-12-19 20:51:26.234262
35703	8545	2269	2016-12-19 20:51:26.250034	2016-12-19 20:51:26.250034
35704	8546	2269	2016-12-19 20:51:26.26424	2016-12-19 20:51:26.26424
35705	8547	2269	2016-12-19 20:51:26.279222	2016-12-19 20:51:26.279222
35706	8599	2269	2016-12-19 20:51:26.295825	2016-12-19 20:51:26.295825
35707	8600	2269	2016-12-19 20:51:26.321433	2016-12-19 20:51:26.321433
35708	8601	2269	2016-12-19 20:51:26.33295	2016-12-19 20:51:26.33295
35709	8602	2269	2016-12-19 20:51:26.349481	2016-12-19 20:51:26.349481
35710	8603	2269	2016-12-19 20:51:26.363249	2016-12-19 20:51:26.363249
35711	8604	2269	2016-12-19 20:51:26.383848	2016-12-19 20:51:26.383848
35712	8605	2269	2016-12-19 20:51:26.400029	2016-12-19 20:51:26.400029
35713	8606	2269	2016-12-19 20:51:26.414988	2016-12-19 20:51:26.414988
35714	8607	2269	2016-12-19 20:51:26.432969	2016-12-19 20:51:26.432969
35715	8608	2269	2016-12-19 20:51:26.445094	2016-12-19 20:51:26.445094
35716	8609	2269	2016-12-19 20:51:26.46274	2016-12-19 20:51:26.46274
35717	8610	2269	2016-12-19 20:51:26.47685	2016-12-19 20:51:26.47685
35718	8611	2269	2016-12-19 20:51:26.488482	2016-12-19 20:51:26.488482
35719	8612	2269	2016-12-19 20:51:28.184267	2016-12-19 20:51:28.184267
35720	8613	2269	2016-12-19 20:51:28.249697	2016-12-19 20:51:28.249697
35721	8614	2269	2016-12-19 20:51:28.272411	2016-12-19 20:51:28.272411
35722	8615	2269	2016-12-19 20:51:28.290858	2016-12-19 20:51:28.290858
35723	8616	2269	2016-12-19 20:51:28.300267	2016-12-19 20:51:28.300267
35724	8617	2269	2016-12-19 20:51:28.310056	2016-12-19 20:51:28.310056
35725	8618	2269	2016-12-19 20:51:28.331109	2016-12-19 20:51:28.331109
35726	8619	2269	2016-12-19 20:51:28.342938	2016-12-19 20:51:28.342938
35727	8620	2269	2016-12-19 20:51:28.371406	2016-12-19 20:51:28.371406
35728	8621	2269	2016-12-19 20:51:28.38231	2016-12-19 20:51:28.38231
35729	8622	2269	2016-12-19 20:51:28.392743	2016-12-19 20:51:28.392743
35730	8623	2269	2016-12-19 20:51:28.422477	2016-12-19 20:51:28.422477
35731	8624	2269	2016-12-19 20:51:28.442929	2016-12-19 20:51:28.442929
35732	8753	2269	2016-12-19 20:51:28.459887	2016-12-19 20:51:28.459887
35733	8754	2269	2016-12-19 20:51:28.471307	2016-12-19 20:51:28.471307
35734	8787	2269	2016-12-19 20:51:28.486891	2016-12-19 20:51:28.486891
35735	8745	2269	2016-12-19 20:51:28.504173	2016-12-19 20:51:28.504173
35736	8743	2269	2016-12-19 20:51:28.523424	2016-12-19 20:51:28.523424
35737	8798	2269	2016-12-19 20:51:28.541034	2016-12-19 20:51:28.541034
35738	8548	2269	2016-12-19 20:51:28.555088	2016-12-19 20:51:28.555088
35739	8549	2269	2016-12-19 20:51:30.220644	2016-12-19 20:51:30.220644
35740	8550	2269	2016-12-19 20:51:30.284479	2016-12-19 20:51:30.284479
35741	8744	2269	2016-12-19 20:51:30.296344	2016-12-19 20:51:30.296344
35742	8774	2269	2016-12-19 20:51:30.314076	2016-12-19 20:51:30.314076
35743	8653	2269	2016-12-19 20:51:30.327719	2016-12-19 20:51:30.327719
35744	8571	2269	2016-12-19 20:51:30.350641	2016-12-19 20:51:30.350641
35745	8585	2269	2016-12-19 20:51:30.359993	2016-12-19 20:51:30.359993
35746	8586	2269	2016-12-19 20:51:30.379471	2016-12-19 20:51:30.379471
35747	8587	2269	2016-12-19 20:51:30.406145	2016-12-19 20:51:30.406145
35748	8759	2269	2016-12-19 20:51:30.4245	2016-12-19 20:51:30.4245
35749	8678	2269	2016-12-19 20:51:30.434972	2016-12-19 20:51:30.434972
35750	8697	2269	2016-12-19 20:51:30.465958	2016-12-19 20:51:30.465958
35751	8696	2269	2016-12-19 20:51:30.491328	2016-12-19 20:51:30.491328
35752	8666	2269	2016-12-19 20:51:30.501683	2016-12-19 20:51:30.501683
35753	8551	2269	2016-12-19 20:51:30.518963	2016-12-19 20:51:30.518963
35754	8552	2269	2016-12-19 20:51:30.531132	2016-12-19 20:51:30.531132
35755	8553	2269	2016-12-19 20:51:30.561984	2016-12-19 20:51:30.561984
35756	8554	2269	2016-12-19 20:51:30.574498	2016-12-19 20:51:30.574498
35757	8555	2269	2016-12-19 20:51:30.599209	2016-12-19 20:51:30.599209
35758	8556	2269	2016-12-19 20:51:30.613521	2016-12-19 20:51:30.613521
35759	8557	2269	2016-12-19 20:51:32.267992	2016-12-19 20:51:32.267992
35760	8558	2269	2016-12-19 20:51:32.286772	2016-12-19 20:51:32.286772
35761	8559	2269	2016-12-19 20:51:32.312237	2016-12-19 20:51:32.312237
35762	8560	2269	2016-12-19 20:51:32.329079	2016-12-19 20:51:32.329079
35763	8561	2269	2016-12-19 20:51:32.345373	2016-12-19 20:51:32.345373
35764	8562	2269	2016-12-19 20:51:32.356042	2016-12-19 20:51:32.356042
35765	8563	2269	2016-12-19 20:51:32.374106	2016-12-19 20:51:32.374106
35766	8564	2269	2016-12-19 20:51:32.390518	2016-12-19 20:51:32.390518
35767	8565	2269	2016-12-19 20:51:32.412771	2016-12-19 20:51:32.412771
35768	8566	2269	2016-12-19 20:51:32.427186	2016-12-19 20:51:32.427186
35769	8567	2269	2016-12-19 20:51:32.43705	2016-12-19 20:51:32.43705
35770	8568	2269	2016-12-19 20:51:32.457469	2016-12-19 20:51:32.457469
35771	8723	2269	2016-12-19 20:51:32.472884	2016-12-19 20:51:32.472884
35772	8740	2269	2016-12-19 20:51:32.494816	2016-12-19 20:51:32.494816
35773	8738	2269	2016-12-19 20:51:32.505181	2016-12-19 20:51:32.505181
35774	8625	2269	2016-12-19 20:51:32.53829	2016-12-19 20:51:32.53829
35775	8811	2269	2016-12-19 20:51:32.54985	2016-12-19 20:51:32.54985
35776	8739	2269	2016-12-19 20:51:32.571192	2016-12-19 20:51:32.571192
35777	8737	2269	2016-12-19 20:51:32.585039	2016-12-19 20:51:32.585039
35778	8569	2269	2016-12-19 20:51:32.609602	2016-12-19 20:51:32.609602
35779	8654	2269	2016-12-19 20:51:34.332021	2016-12-19 20:51:34.332021
35780	8815	2269	2016-12-19 20:51:34.391908	2016-12-19 20:51:34.391908
35781	8534	2269	2016-12-19 20:51:34.40875	2016-12-19 20:51:34.40875
35782	8626	2269	2016-12-19 20:51:34.428093	2016-12-19 20:51:34.428093
35783	8699	2269	2016-12-19 20:51:34.444308	2016-12-19 20:51:34.444308
35784	8698	2269	2016-12-19 20:51:34.461828	2016-12-19 20:51:34.461828
35785	8729	2269	2016-12-19 20:51:34.48003	2016-12-19 20:51:34.48003
35786	8820	2269	2016-12-19 20:51:36.23416	2016-12-19 20:51:36.23416
35787	8821	2269	2016-12-19 20:51:38.004564	2016-12-19 20:51:38.004564
35788	8791	2269	2016-12-19 20:51:38.018611	2016-12-19 20:51:38.018611
35789	8813	2269	2016-12-19 20:51:38.044829	2016-12-19 20:51:38.044829
35790	8627	2269	2016-12-19 20:51:38.059084	2016-12-19 20:51:38.059084
35791	8628	2269	2016-12-19 20:51:38.080477	2016-12-19 20:51:38.080477
35792	8822	2269	2016-12-19 20:51:39.801043	2016-12-19 20:51:39.801043
35793	8781	2269	2016-12-19 20:51:39.835859	2016-12-19 20:51:39.835859
35794	8629	2269	2016-12-19 20:51:39.848953	2016-12-19 20:51:39.848953
35795	8762	2269	2016-12-19 20:51:39.868124	2016-12-19 20:51:39.868124
35796	8823	2269	2016-12-19 20:51:41.749389	2016-12-19 20:51:41.749389
35797	8746	2269	2016-12-19 20:51:41.761767	2016-12-19 20:51:41.761767
35798	8747	2269	2016-12-19 20:51:41.777399	2016-12-19 20:51:41.777399
35799	8761	2269	2016-12-19 20:51:43.493578	2016-12-19 20:51:43.493578
35800	8786	2269	2016-12-19 20:51:43.568829	2016-12-19 20:51:43.568829
35801	8785	2269	2016-12-19 20:51:43.593689	2016-12-19 20:51:43.593689
35802	8824	2269	2016-12-19 20:51:45.271074	2016-12-19 20:51:45.271074
35803	8825	2269	2016-12-19 20:51:47.089077	2016-12-19 20:51:47.089077
35804	8772	2269	2016-12-19 20:51:47.097367	2016-12-19 20:51:47.097367
35805	8773	2269	2016-12-19 20:51:47.11041	2016-12-19 20:51:47.11041
35806	8776	2269	2016-12-19 20:51:47.133177	2016-12-19 20:51:47.133177
35807	8731	2269	2016-12-19 20:51:47.143359	2016-12-19 20:51:47.143359
35808	8730	2269	2016-12-19 20:51:47.164935	2016-12-19 20:51:47.164935
35809	8760	2269	2016-12-19 20:51:47.179222	2016-12-19 20:51:47.179222
35810	8682	2269	2016-12-19 20:51:47.189382	2016-12-19 20:51:47.189382
35811	8681	2269	2016-12-19 20:51:47.213118	2016-12-19 20:51:47.213118
35812	8706	2269	2016-12-19 20:51:47.223254	2016-12-19 20:51:47.223254
35813	8705	2269	2016-12-19 20:51:47.242467	2016-12-19 20:51:47.242467
35814	8703	2269	2016-12-19 20:51:47.259529	2016-12-19 20:51:47.259529
35815	8708	2269	2016-12-19 20:51:47.275202	2016-12-19 20:51:47.275202
35816	8783	2269	2016-12-19 20:51:47.29397	2016-12-19 20:51:47.29397
35817	8707	2269	2016-12-19 20:51:47.303776	2016-12-19 20:51:47.303776
35818	8779	2269	2016-12-19 20:51:47.32	2016-12-19 20:51:47.32
35819	8777	2269	2016-12-19 20:51:48.99373	2016-12-19 20:51:48.99373
35820	8680	2269	2016-12-19 20:51:49.052662	2016-12-19 20:51:49.052662
35821	8679	2269	2016-12-19 20:51:49.070048	2016-12-19 20:51:49.070048
35822	8780	2269	2016-12-19 20:51:49.083754	2016-12-19 20:51:49.083754
35823	8778	2269	2016-12-19 20:51:49.103343	2016-12-19 20:51:49.103343
35824	8630	2269	2016-12-19 20:51:49.12302	2016-12-19 20:51:49.12302
35825	8704	2269	2016-12-19 20:51:49.138009	2016-12-19 20:51:49.138009
35826	8631	2269	2016-12-19 20:51:49.150009	2016-12-19 20:51:49.150009
35827	8632	2269	2016-12-19 20:51:49.170547	2016-12-19 20:51:49.170547
35828	8633	2269	2016-12-19 20:51:49.187983	2016-12-19 20:51:49.187983
35829	8634	2269	2016-12-19 20:51:49.205845	2016-12-19 20:51:49.205845
35830	8782	2269	2016-12-19 20:51:49.22153	2016-12-19 20:51:49.22153
35831	8826	2269	2016-12-19 20:51:51.135142	2016-12-19 20:51:51.135142
35832	8635	2269	2016-12-19 20:51:51.144597	2016-12-19 20:51:51.144597
35833	8636	2269	2016-12-19 20:51:51.159536	2016-12-19 20:51:51.159536
35834	8637	2269	2016-12-19 20:51:51.175858	2016-12-19 20:51:51.175858
35835	8570	2269	2016-12-19 20:51:51.192596	2016-12-19 20:51:51.192596
35836	8797	2269	2016-12-19 20:51:51.205764	2016-12-19 20:51:51.205764
35837	8686	2269	2016-12-19 20:51:51.222662	2016-12-19 20:51:51.222662
35838	8796	2269	2016-12-19 20:51:51.240688	2016-12-19 20:51:51.240688
35839	8775	2269	2016-12-19 20:51:52.927568	2016-12-19 20:51:52.927568
35840	8588	2269	2016-12-19 20:51:52.98051	2016-12-19 20:51:52.98051
35841	8589	2269	2016-12-19 20:51:52.992546	2016-12-19 20:51:52.992546
35842	8701	2269	2016-12-19 20:51:53.005042	2016-12-19 20:51:53.005042
35843	8702	2269	2016-12-19 20:51:53.025171	2016-12-19 20:51:53.025171
35844	8700	2269	2016-12-19 20:51:53.039133	2016-12-19 20:51:53.039133
35845	8790	2269	2016-12-19 20:51:53.071149	2016-12-19 20:51:53.071149
35846	8715	2269	2016-12-19 20:51:53.082145	2016-12-19 20:51:53.082145
35847	8807	2269	2016-12-19 20:51:53.093168	2016-12-19 20:51:53.093168
35848	8806	2269	2016-12-19 20:51:53.120313	2016-12-19 20:51:53.120313
35849	8788	2269	2016-12-19 20:51:53.146851	2016-12-19 20:51:53.146851
35850	8709	2269	2016-12-19 20:51:53.157599	2016-12-19 20:51:53.157599
35851	8748	2269	2016-12-19 20:51:53.168907	2016-12-19 20:51:53.168907
35852	8574	2269	2016-12-19 20:51:53.186771	2016-12-19 20:51:53.186771
35853	8575	2269	2016-12-19 20:51:53.200075	2016-12-19 20:51:53.200075
35854	8576	2269	2016-12-19 20:51:53.225536	2016-12-19 20:51:53.225536
35855	8638	2269	2016-12-19 20:51:53.238208	2016-12-19 20:51:53.238208
35856	8639	2269	2016-12-19 20:51:53.258026	2016-12-19 20:51:53.258026
35857	8640	2269	2016-12-19 20:51:53.271444	2016-12-19 20:51:53.271444
35858	8641	2269	2016-12-19 20:51:53.282116	2016-12-19 20:51:53.282116
35859	8642	2269	2016-12-19 20:51:55.119142	2016-12-19 20:51:55.119142
35860	8643	2269	2016-12-19 20:51:55.143125	2016-12-19 20:51:55.143125
35861	8644	2269	2016-12-19 20:51:55.157834	2016-12-19 20:51:55.157834
35862	8645	2269	2016-12-19 20:51:55.17738	2016-12-19 20:51:55.17738
35863	8646	2269	2016-12-19 20:51:55.195595	2016-12-19 20:51:55.195595
35864	8647	2269	2016-12-19 20:51:55.206825	2016-12-19 20:51:55.206825
35865	8648	2269	2016-12-19 20:51:55.226832	2016-12-19 20:51:55.226832
35866	8649	2269	2016-12-19 20:51:55.242585	2016-12-19 20:51:55.242585
35867	8650	2269	2016-12-19 20:51:55.265806	2016-12-19 20:51:55.265806
35868	8651	2269	2016-12-19 20:51:55.275173	2016-12-19 20:51:55.275173
35869	8590	2269	2016-12-19 20:51:55.284326	2016-12-19 20:51:55.284326
35870	8655	2269	2016-12-19 20:51:55.304674	2016-12-19 20:51:55.304674
35871	8656	2269	2016-12-19 20:51:55.321919	2016-12-19 20:51:55.321919
35872	8657	2269	2016-12-19 20:51:55.344342	2016-12-19 20:51:55.344342
35873	8658	2269	2016-12-19 20:51:55.356089	2016-12-19 20:51:55.356089
35874	8659	2269	2016-12-19 20:51:55.383363	2016-12-19 20:51:55.383363
35875	8771	2269	2016-12-19 20:51:55.401276	2016-12-19 20:51:55.401276
35876	8770	2269	2016-12-19 20:51:55.42264	2016-12-19 20:51:55.42264
35877	8374	2269	2016-12-19 20:51:55.437924	2016-12-19 20:51:55.437924
35878	8713	2269	2016-12-19 20:51:55.452947	2016-12-19 20:51:55.452947
35879	8714	2269	2016-12-19 20:51:57.328476	2016-12-19 20:51:57.328476
35880	8725	2269	2016-12-19 20:51:57.386453	2016-12-19 20:51:57.386453
35881	8726	2269	2016-12-19 20:51:57.401606	2016-12-19 20:51:57.401606
35882	8591	2269	2016-12-19 20:51:57.429319	2016-12-19 20:51:57.429319
35883	8728	2269	2016-12-19 20:51:57.439475	2016-12-19 20:51:57.439475
35884	8592	2269	2016-12-19 20:51:57.465964	2016-12-19 20:51:57.465964
35885	8802	2269	2016-12-19 20:51:57.476637	2016-12-19 20:51:57.476637
35886	8814	2269	2016-12-19 20:51:57.49569	2016-12-19 20:51:57.49569
35887	8758	2269	2016-12-19 20:51:57.511029	2016-12-19 20:51:57.511029
35888	8593	2269	2016-12-19 20:51:57.522576	2016-12-19 20:51:57.522576
35889	8727	2269	2016-12-19 20:51:57.539385	2016-12-19 20:51:57.539385
35890	8535	2269	2016-12-19 20:51:57.552822	2016-12-19 20:51:57.552822
35891	8804	2269	2016-12-19 20:51:57.563626	2016-12-19 20:51:57.563626
35892	8800	2269	2016-12-19 20:51:57.591139	2016-12-19 20:51:57.591139
35893	8594	2269	2016-12-19 20:51:57.603708	2016-12-19 20:51:57.603708
35894	8801	2269	2016-12-19 20:51:57.622564	2016-12-19 20:51:57.622564
35895	8496	2269	2016-12-19 20:51:57.633011	2016-12-19 20:51:57.633011
35896	8595	2269	2016-12-19 20:51:57.643624	2016-12-19 20:51:57.643624
35897	8572	2269	2016-12-19 20:51:57.657446	2016-12-19 20:51:57.657446
35898	7356	2269	2016-12-19 20:51:57.673949	2016-12-19 20:51:57.673949
35899	7354	2282	2016-12-19 20:51:59.683843	2016-12-19 20:51:59.683843
35900	8776	2282	2016-12-19 20:51:59.742383	2016-12-19 20:51:59.742383
35901	8669	2282	2016-12-19 20:51:59.758948	2016-12-19 20:51:59.758948
35902	8668	2282	2016-12-19 20:51:59.774317	2016-12-19 20:51:59.774317
35903	8794	2282	2016-12-19 20:51:59.791037	2016-12-19 20:51:59.791037
35904	8685	2282	2016-12-19 20:51:59.802677	2016-12-19 20:51:59.802677
35905	8803	2282	2016-12-19 20:51:59.819998	2016-12-19 20:51:59.819998
35906	8724	2282	2016-12-19 20:51:59.83087	2016-12-19 20:51:59.83087
35907	8789	2282	2016-12-19 20:51:59.854697	2016-12-19 20:51:59.854697
35908	8805	2282	2016-12-19 20:51:59.869553	2016-12-19 20:51:59.869553
35909	8784	2282	2016-12-19 20:51:59.888251	2016-12-19 20:51:59.888251
35910	8812	2282	2016-12-19 20:51:59.900446	2016-12-19 20:51:59.900446
35911	8763	2282	2016-12-19 20:51:59.909057	2016-12-19 20:51:59.909057
35912	8732	2282	2016-12-19 20:51:59.936964	2016-12-19 20:51:59.936964
35913	8749	2282	2016-12-19 20:51:59.948203	2016-12-19 20:51:59.948203
35914	8710	2282	2016-12-19 20:51:59.963571	2016-12-19 20:51:59.963571
35915	8712	2282	2016-12-19 20:51:59.978758	2016-12-19 20:51:59.978758
35916	8711	2282	2016-12-19 20:51:59.990175	2016-12-19 20:51:59.990175
35917	8683	2282	2016-12-19 20:52:00.013538	2016-12-19 20:52:00.013538
35918	8764	2282	2016-12-19 20:52:00.025862	2016-12-19 20:52:00.025862
35919	8765	2282	2016-12-19 20:52:01.991865	2016-12-19 20:52:01.991865
35920	8766	2282	2016-12-19 20:52:02.052075	2016-12-19 20:52:02.052075
35921	8751	2282	2016-12-19 20:52:02.064481	2016-12-19 20:52:02.064481
35922	8735	2282	2016-12-19 20:52:02.08556	2016-12-19 20:52:02.08556
35923	8736	2282	2016-12-19 20:52:02.106454	2016-12-19 20:52:02.106454
35924	8809	2282	2016-12-19 20:52:02.128651	2016-12-19 20:52:02.128651
35925	8810	2282	2016-12-19 20:52:02.143253	2016-12-19 20:52:02.143253
35926	8720	2282	2016-12-19 20:52:02.159471	2016-12-19 20:52:02.159471
35927	8808	2282	2016-12-19 20:52:02.179089	2016-12-19 20:52:02.179089
35928	8717	2282	2016-12-19 20:52:02.200712	2016-12-19 20:52:02.200712
35929	8750	2282	2016-12-19 20:52:02.220592	2016-12-19 20:52:02.220592
35930	8716	2282	2016-12-19 20:52:02.234139	2016-12-19 20:52:02.234139
35931	8719	2282	2016-12-19 20:52:02.254957	2016-12-19 20:52:02.254957
35932	8721	2282	2016-12-19 20:52:02.273298	2016-12-19 20:52:02.273298
35933	8718	2282	2016-12-19 20:52:02.289821	2016-12-19 20:52:02.289821
35934	8677	2282	2016-12-19 20:52:02.303575	2016-12-19 20:52:02.303575
35935	8675	2282	2016-12-19 20:52:02.318364	2016-12-19 20:52:02.318364
35936	8676	2282	2016-12-19 20:52:02.33538	2016-12-19 20:52:02.33538
35937	8672	2282	2016-12-19 20:52:02.348273	2016-12-19 20:52:02.348273
35938	8673	2282	2016-12-19 20:52:02.375239	2016-12-19 20:52:02.375239
35939	8674	2282	2016-12-19 20:52:04.275801	2016-12-19 20:52:04.275801
35940	8691	2282	2016-12-19 20:52:04.334451	2016-12-19 20:52:04.334451
35941	8690	2282	2016-12-19 20:52:04.356318	2016-12-19 20:52:04.356318
35942	8689	2282	2016-12-19 20:52:04.373308	2016-12-19 20:52:04.373308
35943	8692	2282	2016-12-19 20:52:04.393876	2016-12-19 20:52:04.393876
35944	8693	2282	2016-12-19 20:52:04.418301	2016-12-19 20:52:04.418301
35945	8694	2282	2016-12-19 20:52:04.428978	2016-12-19 20:52:04.428978
35946	8695	2282	2016-12-19 20:52:04.447458	2016-12-19 20:52:04.447458
35947	8799	2282	2016-12-19 20:52:04.464898	2016-12-19 20:52:04.464898
35948	8722	2282	2016-12-19 20:52:04.482714	2016-12-19 20:52:04.482714
35949	8684	2282	2016-12-19 20:52:04.493747	2016-12-19 20:52:04.493747
35950	8741	2282	2016-12-19 20:52:04.51632	2016-12-19 20:52:04.51632
35951	8742	2282	2016-12-19 20:52:04.533785	2016-12-19 20:52:04.533785
35952	8667	2282	2016-12-19 20:52:04.547571	2016-12-19 20:52:04.547571
35953	8733	2282	2016-12-19 20:52:04.564921	2016-12-19 20:52:04.564921
35954	8734	2282	2016-12-19 20:52:04.583527	2016-12-19 20:52:04.583527
35955	8816	2282	2016-12-19 20:52:04.603428	2016-12-19 20:52:04.603428
35956	8817	2282	2016-12-19 20:52:04.618973	2016-12-19 20:52:04.618973
35957	8795	2282	2016-12-19 20:52:04.637544	2016-12-19 20:52:04.637544
35958	8755	2282	2016-12-19 20:52:04.648997	2016-12-19 20:52:04.648997
35959	8756	2282	2016-12-19 20:52:06.45848	2016-12-19 20:52:06.45848
35960	8757	2282	2016-12-19 20:52:06.52215	2016-12-19 20:52:06.52215
35961	8687	2282	2016-12-19 20:52:06.538352	2016-12-19 20:52:06.538352
35962	8688	2282	2016-12-19 20:52:06.558742	2016-12-19 20:52:06.558742
35963	8768	2282	2016-12-19 20:52:06.571255	2016-12-19 20:52:06.571255
35964	8767	2282	2016-12-19 20:52:06.597858	2016-12-19 20:52:06.597858
35965	8769	2282	2016-12-19 20:52:06.60972	2016-12-19 20:52:06.60972
35966	8752	2282	2016-12-19 20:52:06.634281	2016-12-19 20:52:06.634281
35967	8792	2282	2016-12-19 20:52:06.645518	2016-12-19 20:52:06.645518
35968	8671	2282	2016-12-19 20:52:06.666775	2016-12-19 20:52:06.666775
35969	8670	2282	2016-12-19 20:52:06.684557	2016-12-19 20:52:06.684557
35970	8818	2282	2016-12-19 20:52:06.70824	2016-12-19 20:52:06.70824
35971	8819	2282	2016-12-19 20:52:06.721159	2016-12-19 20:52:06.721159
35972	8793	2282	2016-12-19 20:52:06.737034	2016-12-19 20:52:06.737034
35973	8753	2282	2016-12-19 20:52:06.755665	2016-12-19 20:52:06.755665
35974	8754	2282	2016-12-19 20:52:06.768457	2016-12-19 20:52:06.768457
35975	8787	2282	2016-12-19 20:52:06.792266	2016-12-19 20:52:06.792266
35976	8745	2282	2016-12-19 20:52:06.809859	2016-12-19 20:52:06.809859
35977	8743	2282	2016-12-19 20:52:06.832018	2016-12-19 20:52:06.832018
35978	8798	2282	2016-12-19 20:52:06.845131	2016-12-19 20:52:06.845131
35979	8744	2282	2016-12-19 20:52:08.568356	2016-12-19 20:52:08.568356
35980	8774	2282	2016-12-19 20:52:08.626621	2016-12-19 20:52:08.626621
35981	8759	2282	2016-12-19 20:52:08.640313	2016-12-19 20:52:08.640313
35982	8678	2282	2016-12-19 20:52:08.655223	2016-12-19 20:52:08.655223
35983	8697	2282	2016-12-19 20:52:08.666319	2016-12-19 20:52:08.666319
35984	8696	2282	2016-12-19 20:52:08.689031	2016-12-19 20:52:08.689031
35985	8666	2282	2016-12-19 20:52:08.701477	2016-12-19 20:52:08.701477
35986	8723	2282	2016-12-19 20:52:08.72632	2016-12-19 20:52:08.72632
35987	8740	2282	2016-12-19 20:52:08.739034	2016-12-19 20:52:08.739034
35988	8738	2282	2016-12-19 20:52:08.756996	2016-12-19 20:52:08.756996
35989	8811	2282	2016-12-19 20:52:08.774001	2016-12-19 20:52:08.774001
35990	8739	2282	2016-12-19 20:52:08.802594	2016-12-19 20:52:08.802594
35991	8737	2282	2016-12-19 20:52:08.815072	2016-12-19 20:52:08.815072
35992	8815	2282	2016-12-19 20:52:08.837874	2016-12-19 20:52:08.837874
35993	8699	2282	2016-12-19 20:52:08.853234	2016-12-19 20:52:08.853234
35994	8698	2282	2016-12-19 20:52:08.87913	2016-12-19 20:52:08.87913
35995	8729	2282	2016-12-19 20:52:08.890147	2016-12-19 20:52:08.890147
35996	8821	2282	2016-12-19 20:52:08.900832	2016-12-19 20:52:08.900832
35997	8791	2282	2016-12-19 20:52:08.9214	2016-12-19 20:52:08.9214
35998	8813	2282	2016-12-19 20:52:08.936562	2016-12-19 20:52:08.936562
35999	8781	2282	2016-12-19 20:52:10.711376	2016-12-19 20:52:10.711376
36000	8762	2282	2016-12-19 20:52:10.769746	2016-12-19 20:52:10.769746
36001	8823	2282	2016-12-19 20:52:10.7801	2016-12-19 20:52:10.7801
36002	8746	2282	2016-12-19 20:52:10.805555	2016-12-19 20:52:10.805555
36003	8747	2282	2016-12-19 20:52:10.820009	2016-12-19 20:52:10.820009
36004	8761	2282	2016-12-19 20:52:10.845873	2016-12-19 20:52:10.845873
36005	8786	2282	2016-12-19 20:52:10.856779	2016-12-19 20:52:10.856779
36006	8785	2282	2016-12-19 20:52:10.868114	2016-12-19 20:52:10.868114
36007	8772	2282	2016-12-19 20:52:10.896793	2016-12-19 20:52:10.896793
36008	8773	2282	2016-12-19 20:52:10.918635	2016-12-19 20:52:10.918635
36009	8731	2282	2016-12-19 20:52:10.933921	2016-12-19 20:52:10.933921
36010	8730	2282	2016-12-19 20:52:10.94535	2016-12-19 20:52:10.94535
36011	8760	2282	2016-12-19 20:52:10.961527	2016-12-19 20:52:10.961527
36012	8682	2282	2016-12-19 20:52:10.980015	2016-12-19 20:52:10.980015
36013	8681	2282	2016-12-19 20:52:11.00375	2016-12-19 20:52:11.00375
36014	8706	2282	2016-12-19 20:52:11.015406	2016-12-19 20:52:11.015406
36015	8705	2282	2016-12-19 20:52:11.035042	2016-12-19 20:52:11.035042
36016	8703	2282	2016-12-19 20:52:11.051981	2016-12-19 20:52:11.051981
36017	8708	2282	2016-12-19 20:52:11.086366	2016-12-19 20:52:11.086366
36018	8783	2282	2016-12-19 20:52:11.100509	2016-12-19 20:52:11.100509
36019	8707	2282	2016-12-19 20:52:12.835528	2016-12-19 20:52:12.835528
36020	8779	2282	2016-12-19 20:52:12.904323	2016-12-19 20:52:12.904323
36021	8777	2282	2016-12-19 20:52:12.917488	2016-12-19 20:52:12.917488
36022	8680	2282	2016-12-19 20:52:12.930144	2016-12-19 20:52:12.930144
36023	8679	2282	2016-12-19 20:52:12.94157	2016-12-19 20:52:12.94157
36024	8780	2282	2016-12-19 20:52:12.955264	2016-12-19 20:52:12.955264
36025	8778	2282	2016-12-19 20:52:12.978751	2016-12-19 20:52:12.978751
36026	8704	2282	2016-12-19 20:52:13.005729	2016-12-19 20:52:13.005729
36027	8782	2282	2016-12-19 20:52:13.025056	2016-12-19 20:52:13.025056
36028	8826	2282	2016-12-19 20:52:13.043364	2016-12-19 20:52:13.043364
36029	8797	2282	2016-12-19 20:52:13.05919	2016-12-19 20:52:13.05919
36030	8686	2282	2016-12-19 20:52:13.079095	2016-12-19 20:52:13.079095
36031	8796	2282	2016-12-19 20:52:13.101155	2016-12-19 20:52:13.101155
36032	8775	2282	2016-12-19 20:52:13.117437	2016-12-19 20:52:13.117437
36033	8701	2282	2016-12-19 20:52:13.136885	2016-12-19 20:52:13.136885
36034	8702	2282	2016-12-19 20:52:13.161859	2016-12-19 20:52:13.161859
36035	8700	2282	2016-12-19 20:52:13.179385	2016-12-19 20:52:13.179385
36036	8790	2282	2016-12-19 20:52:13.191333	2016-12-19 20:52:13.191333
36037	8715	2282	2016-12-19 20:52:13.208925	2016-12-19 20:52:13.208925
36038	8807	2282	2016-12-19 20:52:13.222753	2016-12-19 20:52:13.222753
36039	8806	2282	2016-12-19 20:52:14.945031	2016-12-19 20:52:14.945031
36040	8788	2282	2016-12-19 20:52:15.019869	2016-12-19 20:52:15.019869
36041	8709	2282	2016-12-19 20:52:15.039934	2016-12-19 20:52:15.039934
36042	8748	2282	2016-12-19 20:52:15.058615	2016-12-19 20:52:15.058615
36043	8771	2282	2016-12-19 20:52:15.077331	2016-12-19 20:52:15.077331
36044	8770	2282	2016-12-19 20:52:15.096782	2016-12-19 20:52:15.096782
36045	8374	2282	2016-12-19 20:52:15.131699	2016-12-19 20:52:15.131699
36046	8713	2282	2016-12-19 20:52:15.150564	2016-12-19 20:52:15.150564
36047	8714	2282	2016-12-19 20:52:15.16908	2016-12-19 20:52:15.16908
36048	8725	2282	2016-12-19 20:52:15.181729	2016-12-19 20:52:15.181729
36049	8726	2282	2016-12-19 20:52:15.207601	2016-12-19 20:52:15.207601
36050	8728	2282	2016-12-19 20:52:15.222989	2016-12-19 20:52:15.222989
36051	8802	2282	2016-12-19 20:52:15.242704	2016-12-19 20:52:15.242704
36052	8814	2282	2016-12-19 20:52:15.258341	2016-12-19 20:52:15.258341
36053	8758	2282	2016-12-19 20:52:15.275941	2016-12-19 20:52:15.275941
36054	8727	2282	2016-12-19 20:52:15.291663	2016-12-19 20:52:15.291663
36055	8804	2282	2016-12-19 20:52:15.314051	2016-12-19 20:52:15.314051
36056	8800	2282	2016-12-19 20:52:15.331212	2016-12-19 20:52:15.331212
36057	8801	2282	2016-12-19 20:52:15.350973	2016-12-19 20:52:15.350973
36058	7356	2282	2016-12-19 20:52:15.368218	2016-12-19 20:52:15.368218
36059	8817	2297	2016-12-19 20:52:16.574636	2016-12-19 20:52:16.574636
36060	7647	2299	2016-12-19 20:52:18.132172	2016-12-19 20:52:18.132172
36061	8827	2300	2016-12-19 20:52:21.124268	2016-12-19 20:52:21.124268
36062	8828	2300	2016-12-19 20:52:22.66332	2016-12-19 20:52:22.66332
36063	8829	2300	2016-12-19 20:52:24.282969	2016-12-19 20:52:24.282969
36064	8830	2300	2016-12-19 20:52:25.783358	2016-12-19 20:52:25.783358
36065	8831	2300	2016-12-19 20:52:27.494903	2016-12-19 20:52:27.494903
36066	8827	2298	2016-12-19 20:52:29.208888	2016-12-19 20:52:29.208888
36067	8828	2298	2016-12-19 20:52:29.274318	2016-12-19 20:52:29.274318
36068	8389	2298	2016-12-19 20:52:29.294183	2016-12-19 20:52:29.294183
36069	8832	2298	2016-12-19 20:52:30.964722	2016-12-19 20:52:30.964722
36070	8833	2298	2016-12-19 20:52:32.563947	2016-12-19 20:52:32.563947
36071	8834	2298	2016-12-19 20:52:34.19182	2016-12-19 20:52:34.19182
36072	8835	2298	2016-12-19 20:52:35.858629	2016-12-19 20:52:35.858629
36073	8836	2298	2016-12-19 20:52:37.512539	2016-12-19 20:52:37.512539
36074	8837	2298	2016-12-19 20:52:39.219462	2016-12-19 20:52:39.219462
36075	8838	2298	2016-12-19 20:52:40.927156	2016-12-19 20:52:40.927156
36076	8839	2298	2016-12-19 20:52:42.761559	2016-12-19 20:52:42.761559
36077	8840	2298	2016-12-19 20:52:44.614433	2016-12-19 20:52:44.614433
36078	8841	2298	2016-12-19 20:52:46.439758	2016-12-19 20:52:46.439758
36079	8842	2298	2016-12-19 20:52:48.159635	2016-12-19 20:52:48.159635
36080	8843	2298	2016-12-19 20:52:49.952506	2016-12-19 20:52:49.952506
36081	8844	2298	2016-12-19 20:52:51.778525	2016-12-19 20:52:51.778525
36082	8845	2298	2016-12-19 20:52:53.620724	2016-12-19 20:52:53.620724
36083	8846	2298	2016-12-19 20:52:55.543494	2016-12-19 20:52:55.543494
36084	8847	2298	2016-12-19 20:52:57.425704	2016-12-19 20:52:57.425704
36085	8848	2298	2016-12-19 20:52:59.274881	2016-12-19 20:52:59.274881
36086	8849	2298	2016-12-19 20:53:03.856286	2016-12-19 20:53:03.856286
36087	8850	2298	2016-12-19 20:53:05.760143	2016-12-19 20:53:05.760143
36088	8851	2298	2016-12-19 20:53:07.596989	2016-12-19 20:53:07.596989
36089	8852	2298	2016-12-19 20:53:09.403804	2016-12-19 20:53:09.403804
36090	8853	2298	2016-12-19 20:53:11.235454	2016-12-19 20:53:11.235454
36091	8854	2298	2016-12-19 20:53:12.936022	2016-12-19 20:53:12.936022
36092	8855	2298	2016-12-19 20:53:14.586821	2016-12-19 20:53:14.586821
36093	8856	2298	2016-12-19 20:53:16.160773	2016-12-19 20:53:16.160773
36094	8857	2298	2016-12-19 20:53:17.812048	2016-12-19 20:53:17.812048
36095	8858	2298	2016-12-19 20:53:19.442066	2016-12-19 20:53:19.442066
36096	8859	2298	2016-12-19 20:53:21.116685	2016-12-19 20:53:21.116685
36097	8860	2298	2016-12-19 20:53:22.744157	2016-12-19 20:53:22.744157
36098	8861	2298	2016-12-19 20:53:24.356617	2016-12-19 20:53:24.356617
36099	8862	2298	2016-12-19 20:53:25.992397	2016-12-19 20:53:25.992397
36100	8863	2298	2016-12-19 20:53:29.767121	2016-12-19 20:53:29.767121
36101	7647	2298	2016-12-19 20:53:29.785617	2016-12-19 20:53:29.785617
36102	7648	2298	2016-12-19 20:53:29.798217	2016-12-19 20:53:29.798217
36103	8864	2298	2016-12-19 20:53:31.693842	2016-12-19 20:53:31.693842
36104	8865	2298	2016-12-19 20:53:33.534967	2016-12-19 20:53:33.534967
36105	8866	2298	2016-12-19 20:53:35.524361	2016-12-19 20:53:35.524361
36106	8867	2298	2016-12-19 20:53:38.826841	2016-12-19 20:53:38.826841
36107	8868	2298	2016-12-19 20:53:40.536826	2016-12-19 20:53:40.536826
36108	8869	2298	2016-12-19 20:53:42.163302	2016-12-19 20:53:42.163302
36109	8870	2298	2016-12-19 20:53:43.800466	2016-12-19 20:53:43.800466
36110	8871	2298	2016-12-19 20:53:45.508715	2016-12-19 20:53:45.508715
36111	8872	2298	2016-12-19 20:53:47.184875	2016-12-19 20:53:47.184875
36112	8829	2298	2016-12-19 20:53:47.200955	2016-12-19 20:53:47.200955
36113	8830	2298	2016-12-19 20:53:47.219418	2016-12-19 20:53:47.219418
36114	8831	2298	2016-12-19 20:53:47.231543	2016-12-19 20:53:47.231543
36115	8873	2298	2016-12-19 20:53:48.944161	2016-12-19 20:53:48.944161
36116	8389	2301	2016-12-19 20:53:50.736496	2016-12-19 20:53:50.736496
36117	8832	2301	2016-12-19 20:53:50.759497	2016-12-19 20:53:50.759497
36118	8833	2301	2016-12-19 20:53:50.772995	2016-12-19 20:53:50.772995
36119	8834	2301	2016-12-19 20:53:50.796969	2016-12-19 20:53:50.796969
36120	8835	2301	2016-12-19 20:53:50.821061	2016-12-19 20:53:50.821061
36121	8836	2301	2016-12-19 20:53:50.831781	2016-12-19 20:53:50.831781
36122	8837	2301	2016-12-19 20:53:50.85174	2016-12-19 20:53:50.85174
36123	8838	2301	2016-12-19 20:53:50.862579	2016-12-19 20:53:50.862579
36124	8839	2301	2016-12-19 20:53:50.885478	2016-12-19 20:53:50.885478
36125	8840	2301	2016-12-19 20:53:50.900516	2016-12-19 20:53:50.900516
36126	8841	2301	2016-12-19 20:53:50.909131	2016-12-19 20:53:50.909131
36127	8842	2301	2016-12-19 20:53:50.925362	2016-12-19 20:53:50.925362
36128	8843	2301	2016-12-19 20:53:50.939982	2016-12-19 20:53:50.939982
36129	8844	2301	2016-12-19 20:53:50.953697	2016-12-19 20:53:50.953697
36130	8845	2301	2016-12-19 20:53:50.973078	2016-12-19 20:53:50.973078
36131	8846	2301	2016-12-19 20:53:50.989486	2016-12-19 20:53:50.989486
36132	8847	2301	2016-12-19 20:53:51.005686	2016-12-19 20:53:51.005686
36133	8848	2301	2016-12-19 20:53:51.022824	2016-12-19 20:53:51.022824
36134	8849	2301	2016-12-19 20:53:51.045596	2016-12-19 20:53:51.045596
36135	8850	2301	2016-12-19 20:53:51.056536	2016-12-19 20:53:51.056536
36136	8851	2301	2016-12-19 20:53:53.391088	2016-12-19 20:53:53.391088
36137	8852	2301	2016-12-19 20:53:53.453488	2016-12-19 20:53:53.453488
36138	8853	2301	2016-12-19 20:53:53.470316	2016-12-19 20:53:53.470316
36139	8854	2301	2016-12-19 20:53:53.485444	2016-12-19 20:53:53.485444
36140	8855	2301	2016-12-19 20:53:53.494239	2016-12-19 20:53:53.494239
36141	8856	2301	2016-12-19 20:53:53.510328	2016-12-19 20:53:53.510328
36142	8857	2301	2016-12-19 20:53:53.528093	2016-12-19 20:53:53.528093
36143	8858	2301	2016-12-19 20:53:53.545135	2016-12-19 20:53:53.545135
36144	8859	2301	2016-12-19 20:53:53.568229	2016-12-19 20:53:53.568229
36145	8860	2301	2016-12-19 20:53:53.586159	2016-12-19 20:53:53.586159
36146	8861	2301	2016-12-19 20:53:53.607901	2016-12-19 20:53:53.607901
36147	8862	2301	2016-12-19 20:53:53.62403	2016-12-19 20:53:53.62403
36148	8863	2301	2016-12-19 20:53:53.642525	2016-12-19 20:53:53.642525
36149	7647	2301	2016-12-19 20:53:53.658607	2016-12-19 20:53:53.658607
36150	7648	2301	2016-12-19 20:53:53.668799	2016-12-19 20:53:53.668799
36151	8864	2301	2016-12-19 20:53:53.700799	2016-12-19 20:53:53.700799
36152	8865	2301	2016-12-19 20:53:53.721257	2016-12-19 20:53:53.721257
36153	8866	2301	2016-12-19 20:53:53.740758	2016-12-19 20:53:53.740758
36154	8867	2301	2016-12-19 20:53:53.755695	2016-12-19 20:53:53.755695
36155	8868	2301	2016-12-19 20:53:53.76877	2016-12-19 20:53:53.76877
36156	8869	2301	2016-12-19 20:53:54.919019	2016-12-19 20:53:54.919019
36157	8870	2301	2016-12-19 20:53:54.989483	2016-12-19 20:53:54.989483
36158	8871	2301	2016-12-19 20:53:55.004573	2016-12-19 20:53:55.004573
36159	8872	2301	2016-12-19 20:53:55.023884	2016-12-19 20:53:55.023884
36160	8873	2301	2016-12-19 20:53:55.046661	2016-12-19 20:53:55.046661
36161	8173	2305	2016-12-19 20:53:56.402887	2016-12-19 20:53:56.402887
36162	8174	2305	2016-12-19 20:53:56.539491	2016-12-19 20:53:56.539491
36163	8175	2305	2016-12-19 20:53:56.557923	2016-12-19 20:53:56.557923
36164	8176	2305	2016-12-19 20:53:56.606526	2016-12-19 20:53:56.606526
36165	8177	2305	2016-12-19 20:53:56.636428	2016-12-19 20:53:56.636428
36166	8178	2305	2016-12-19 20:53:56.669299	2016-12-19 20:53:56.669299
36167	8253	2305	2016-12-19 20:53:56.689887	2016-12-19 20:53:56.689887
36168	8202	2307	2016-12-19 20:53:59.432061	2016-12-19 20:53:59.432061
36169	8206	2307	2016-12-19 20:53:59.498923	2016-12-19 20:53:59.498923
36170	8207	2307	2016-12-19 20:53:59.527352	2016-12-19 20:53:59.527352
36171	8209	2307	2016-12-19 20:53:59.543529	2016-12-19 20:53:59.543529
36172	8219	2307	2016-12-19 20:53:59.558661	2016-12-19 20:53:59.558661
36173	8221	2307	2016-12-19 20:53:59.575583	2016-12-19 20:53:59.575583
36174	8224	2307	2016-12-19 20:53:59.596428	2016-12-19 20:53:59.596428
36175	8225	2307	2016-12-19 20:53:59.612728	2016-12-19 20:53:59.612728
36176	8226	2307	2016-12-19 20:53:59.634225	2016-12-19 20:53:59.634225
36177	8227	2307	2016-12-19 20:53:59.649882	2016-12-19 20:53:59.649882
36178	8228	2307	2016-12-19 20:53:59.662901	2016-12-19 20:53:59.662901
36179	8229	2307	2016-12-19 20:53:59.681248	2016-12-19 20:53:59.681248
36180	8230	2307	2016-12-19 20:53:59.703969	2016-12-19 20:53:59.703969
36181	8231	2307	2016-12-19 20:53:59.731044	2016-12-19 20:53:59.731044
36182	8232	2307	2016-12-19 20:53:59.744025	2016-12-19 20:53:59.744025
36183	8234	2307	2016-12-19 20:53:59.761456	2016-12-19 20:53:59.761456
36184	8236	2307	2016-12-19 20:53:59.778292	2016-12-19 20:53:59.778292
36185	8172	2308	2016-12-19 20:54:01.053696	2016-12-19 20:54:01.053696
36186	8193	2308	2016-12-19 20:54:01.127574	2016-12-19 20:54:01.127574
36187	8194	2308	2016-12-19 20:54:01.148525	2016-12-19 20:54:01.148525
36188	8173	2303	2016-12-19 20:54:03.658064	2016-12-19 20:54:03.658064
36189	8174	2303	2016-12-19 20:54:03.721811	2016-12-19 20:54:03.721811
36190	8175	2303	2016-12-19 20:54:03.734738	2016-12-19 20:54:03.734738
36191	8176	2303	2016-12-19 20:54:03.753043	2016-12-19 20:54:03.753043
36192	8177	2303	2016-12-19 20:54:03.778951	2016-12-19 20:54:03.778951
36193	8178	2303	2016-12-19 20:54:03.800143	2016-12-19 20:54:03.800143
36194	8179	2303	2016-12-19 20:54:03.817203	2016-12-19 20:54:03.817203
36195	8172	2303	2016-12-19 20:54:03.839919	2016-12-19 20:54:03.839919
36196	8183	2303	2016-12-19 20:54:03.858433	2016-12-19 20:54:03.858433
36197	8184	2303	2016-12-19 20:54:03.881965	2016-12-19 20:54:03.881965
36198	8185	2303	2016-12-19 20:54:03.894111	2016-12-19 20:54:03.894111
36199	8186	2303	2016-12-19 20:54:03.913615	2016-12-19 20:54:03.913615
36200	8187	2303	2016-12-19 20:54:03.933424	2016-12-19 20:54:03.933424
36201	8188	2303	2016-12-19 20:54:03.950651	2016-12-19 20:54:03.950651
36202	8193	2303	2016-12-19 20:54:03.968255	2016-12-19 20:54:03.968255
36203	8194	2303	2016-12-19 20:54:03.989197	2016-12-19 20:54:03.989197
36204	8202	2303	2016-12-19 20:54:04.004343	2016-12-19 20:54:04.004343
36205	8206	2303	2016-12-19 20:54:04.028654	2016-12-19 20:54:04.028654
36206	8207	2303	2016-12-19 20:54:04.048335	2016-12-19 20:54:04.048335
36207	8209	2303	2016-12-19 20:54:04.065068	2016-12-19 20:54:04.065068
36208	8210	2303	2016-12-19 20:54:06.28803	2016-12-19 20:54:06.28803
36209	8211	2303	2016-12-19 20:54:06.351214	2016-12-19 20:54:06.351214
36210	8219	2303	2016-12-19 20:54:06.363285	2016-12-19 20:54:06.363285
36211	8221	2303	2016-12-19 20:54:06.384589	2016-12-19 20:54:06.384589
36212	8222	2303	2016-12-19 20:54:06.399504	2016-12-19 20:54:06.399504
36213	8223	2303	2016-12-19 20:54:06.417184	2016-12-19 20:54:06.417184
36214	8224	2303	2016-12-19 20:54:06.434158	2016-12-19 20:54:06.434158
36215	8225	2303	2016-12-19 20:54:06.445312	2016-12-19 20:54:06.445312
36216	8226	2303	2016-12-19 20:54:06.468404	2016-12-19 20:54:06.468404
36217	8227	2303	2016-12-19 20:54:06.478492	2016-12-19 20:54:06.478492
36218	8228	2303	2016-12-19 20:54:06.495732	2016-12-19 20:54:06.495732
36219	8229	2303	2016-12-19 20:54:06.511724	2016-12-19 20:54:06.511724
36220	8230	2303	2016-12-19 20:54:06.52388	2016-12-19 20:54:06.52388
36221	8231	2303	2016-12-19 20:54:06.548863	2016-12-19 20:54:06.548863
36222	8232	2303	2016-12-19 20:54:06.566592	2016-12-19 20:54:06.566592
36223	8234	2303	2016-12-19 20:54:06.584414	2016-12-19 20:54:06.584414
36224	8236	2303	2016-12-19 20:54:06.595376	2016-12-19 20:54:06.595376
36225	8238	2303	2016-12-19 20:54:06.62806	2016-12-19 20:54:06.62806
36226	8239	2303	2016-12-19 20:54:06.637187	2016-12-19 20:54:06.637187
36227	8240	2303	2016-12-19 20:54:06.657503	2016-12-19 20:54:06.657503
36228	8241	2303	2016-12-19 20:54:08.310095	2016-12-19 20:54:08.310095
36229	8245	2303	2016-12-19 20:54:08.36655	2016-12-19 20:54:08.36655
36230	8246	2303	2016-12-19 20:54:08.382641	2016-12-19 20:54:08.382641
36231	8247	2303	2016-12-19 20:54:08.399686	2016-12-19 20:54:08.399686
36232	8248	2303	2016-12-19 20:54:08.415978	2016-12-19 20:54:08.415978
36233	8249	2303	2016-12-19 20:54:08.43803	2016-12-19 20:54:08.43803
36234	8250	2303	2016-12-19 20:54:08.44873	2016-12-19 20:54:08.44873
36235	8253	2303	2016-12-19 20:54:08.461907	2016-12-19 20:54:08.461907
36236	8179	2309	2016-12-19 20:54:11.160557	2016-12-19 20:54:11.160557
36237	8183	2309	2016-12-19 20:54:11.219647	2016-12-19 20:54:11.219647
36238	8184	2309	2016-12-19 20:54:11.239839	2016-12-19 20:54:11.239839
36239	8185	2309	2016-12-19 20:54:11.24837	2016-12-19 20:54:11.24837
36240	8186	2309	2016-12-19 20:54:11.26097	2016-12-19 20:54:11.26097
36241	8187	2309	2016-12-19 20:54:11.288035	2016-12-19 20:54:11.288035
36242	8188	2309	2016-12-19 20:54:11.297298	2016-12-19 20:54:11.297298
36243	8210	2309	2016-12-19 20:54:11.312336	2016-12-19 20:54:11.312336
36244	8211	2309	2016-12-19 20:54:11.32958	2016-12-19 20:54:11.32958
36245	8222	2309	2016-12-19 20:54:11.346295	2016-12-19 20:54:11.346295
36246	8223	2309	2016-12-19 20:54:11.365285	2016-12-19 20:54:11.365285
36247	8238	2309	2016-12-19 20:54:11.375425	2016-12-19 20:54:11.375425
36248	8239	2309	2016-12-19 20:54:11.395991	2016-12-19 20:54:11.395991
36249	8240	2309	2016-12-19 20:54:11.412358	2016-12-19 20:54:11.412358
36250	8241	2309	2016-12-19 20:54:11.439449	2016-12-19 20:54:11.439449
36251	8245	2309	2016-12-19 20:54:11.456958	2016-12-19 20:54:11.456958
36252	8246	2309	2016-12-19 20:54:11.472058	2016-12-19 20:54:11.472058
36253	8247	2309	2016-12-19 20:54:11.487253	2016-12-19 20:54:11.487253
36254	8248	2309	2016-12-19 20:54:11.50192	2016-12-19 20:54:11.50192
36255	8249	2309	2016-12-19 20:54:11.524199	2016-12-19 20:54:11.524199
36256	8250	2309	2016-12-19 20:54:12.739671	2016-12-19 20:54:12.739671
36257	7465	2311	2016-12-19 20:54:13.905871	2016-12-19 20:54:13.905871
36258	8204	2312	2016-12-19 20:54:15.844277	2016-12-19 20:54:15.844277
36259	8205	2312	2016-12-19 20:54:15.912187	2016-12-19 20:54:15.912187
36260	8208	2312	2016-12-19 20:54:15.934972	2016-12-19 20:54:15.934972
36261	7483	2312	2016-12-19 20:54:15.953346	2016-12-19 20:54:15.953346
36262	7484	2312	2016-12-19 20:54:15.970572	2016-12-19 20:54:15.970572
36263	8235	2312	2016-12-19 20:54:15.987855	2016-12-19 20:54:15.987855
36264	8237	2312	2016-12-19 20:54:16.001436	2016-12-19 20:54:16.001436
36265	8243	2312	2016-12-19 20:54:16.018669	2016-12-19 20:54:16.018669
36266	8244	2312	2016-12-19 20:54:16.042804	2016-12-19 20:54:16.042804
36267	8212	2312	2016-12-19 20:54:16.057299	2016-12-19 20:54:16.057299
36268	8213	2312	2016-12-19 20:54:16.08258	2016-12-19 20:54:16.08258
36269	8251	2312	2016-12-19 20:54:16.092745	2016-12-19 20:54:16.092745
36270	7465	2310	2016-12-19 20:54:18.346089	2016-12-19 20:54:18.346089
36271	8203	2310	2016-12-19 20:54:18.405512	2016-12-19 20:54:18.405512
36272	8204	2310	2016-12-19 20:54:18.424084	2016-12-19 20:54:18.424084
36273	8205	2310	2016-12-19 20:54:18.441913	2016-12-19 20:54:18.441913
36274	8208	2310	2016-12-19 20:54:18.460958	2016-12-19 20:54:18.460958
36275	7483	2310	2016-12-19 20:54:18.475751	2016-12-19 20:54:18.475751
36276	7484	2310	2016-12-19 20:54:18.500545	2016-12-19 20:54:18.500545
36277	7639	2310	2016-12-19 20:54:18.519761	2016-12-19 20:54:18.519761
36278	8235	2310	2016-12-19 20:54:18.538032	2016-12-19 20:54:18.538032
36279	8152	2310	2016-12-19 20:54:18.558223	2016-12-19 20:54:18.558223
36280	8237	2310	2016-12-19 20:54:18.581086	2016-12-19 20:54:18.581086
36281	8243	2310	2016-12-19 20:54:18.597687	2016-12-19 20:54:18.597687
36282	8244	2310	2016-12-19 20:54:18.619663	2016-12-19 20:54:18.619663
36283	8212	2310	2016-12-19 20:54:18.639946	2016-12-19 20:54:18.639946
36284	8213	2310	2016-12-19 20:54:18.66873	2016-12-19 20:54:18.66873
36285	8251	2310	2016-12-19 20:54:18.680477	2016-12-19 20:54:18.680477
36286	8254	2310	2016-12-19 20:54:18.69468	2016-12-19 20:54:18.69468
36287	8254	2313	2016-12-19 20:54:19.900712	2016-12-19 20:54:19.900712
36288	8158	2314	2016-12-19 20:54:21.206413	2016-12-19 20:54:21.206413
36289	8220	2314	2016-12-19 20:54:21.277501	2016-12-19 20:54:21.277501
36290	8252	2314	2016-12-19 20:54:21.298598	2016-12-19 20:54:21.298598
36291	8158	2315	2016-12-19 20:54:22.47562	2016-12-19 20:54:22.47562
36292	8220	2315	2016-12-19 20:54:22.543174	2016-12-19 20:54:22.543174
36293	8156	2316	2016-12-19 20:54:24.308631	2016-12-19 20:54:24.308631
36294	8157	2316	2016-12-19 20:54:24.382735	2016-12-19 20:54:24.382735
36295	8159	2316	2016-12-19 20:54:24.393598	2016-12-19 20:54:24.393598
36296	8160	2316	2016-12-19 20:54:24.419851	2016-12-19 20:54:24.419851
36297	8161	2316	2016-12-19 20:54:24.443245	2016-12-19 20:54:24.443245
36298	8162	2316	2016-12-19 20:54:24.466453	2016-12-19 20:54:24.466453
36299	8163	2316	2016-12-19 20:54:24.476951	2016-12-19 20:54:24.476951
36300	8164	2316	2016-12-19 20:54:24.494127	2016-12-19 20:54:24.494127
36301	8165	2316	2016-12-19 20:54:24.504309	2016-12-19 20:54:24.504309
36302	8166	2316	2016-12-19 20:54:24.527231	2016-12-19 20:54:24.527231
36303	8167	2316	2016-12-19 20:54:24.541575	2016-12-19 20:54:24.541575
36304	8168	2316	2016-12-19 20:54:24.558947	2016-12-19 20:54:24.558947
36305	8169	2316	2016-12-19 20:54:24.579066	2016-12-19 20:54:24.579066
36306	8170	2316	2016-12-19 20:54:24.596162	2016-12-19 20:54:24.596162
36307	8171	2316	2016-12-19 20:54:24.615462	2016-12-19 20:54:24.615462
36308	8180	2316	2016-12-19 20:54:24.630502	2016-12-19 20:54:24.630502
36309	8181	2316	2016-12-19 20:54:24.649414	2016-12-19 20:54:24.649414
36310	8182	2316	2016-12-19 20:54:24.659623	2016-12-19 20:54:24.659623
36311	7658	2316	2016-12-19 20:54:24.6777	2016-12-19 20:54:24.6777
36312	7659	2316	2016-12-19 20:54:24.69261	2016-12-19 20:54:24.69261
36313	7660	2316	2016-12-19 20:54:26.2775	2016-12-19 20:54:26.2775
36314	8189	2316	2016-12-19 20:54:26.342765	2016-12-19 20:54:26.342765
36315	8190	2316	2016-12-19 20:54:26.355707	2016-12-19 20:54:26.355707
36316	8191	2316	2016-12-19 20:54:26.367461	2016-12-19 20:54:26.367461
36317	8192	2316	2016-12-19 20:54:26.386898	2016-12-19 20:54:26.386898
36318	8195	2316	2016-12-19 20:54:26.395123	2016-12-19 20:54:26.395123
36319	8196	2316	2016-12-19 20:54:26.412242	2016-12-19 20:54:26.412242
36320	8197	2316	2016-12-19 20:54:26.425116	2016-12-19 20:54:26.425116
36321	8198	2316	2016-12-19 20:54:26.43935	2016-12-19 20:54:26.43935
36322	8199	2316	2016-12-19 20:54:26.455959	2016-12-19 20:54:26.455959
36323	8200	2316	2016-12-19 20:54:26.472314	2016-12-19 20:54:26.472314
36324	8201	2316	2016-12-19 20:54:26.492852	2016-12-19 20:54:26.492852
36325	8214	2316	2016-12-19 20:54:26.509172	2016-12-19 20:54:26.509172
36326	8215	2316	2016-12-19 20:54:26.524681	2016-12-19 20:54:26.524681
36327	8216	2316	2016-12-19 20:54:26.536632	2016-12-19 20:54:26.536632
36328	8217	2316	2016-12-19 20:54:26.55323	2016-12-19 20:54:26.55323
36329	8218	2316	2016-12-19 20:54:26.568085	2016-12-19 20:54:26.568085
36330	8242	2316	2016-12-19 20:54:26.577414	2016-12-19 20:54:26.577414
36331	8874	2319	2016-12-19 20:54:29.605899	2016-12-19 20:54:29.605899
36332	8875	2319	2016-12-19 20:54:31.179911	2016-12-19 20:54:31.179911
36333	8876	2319	2016-12-19 20:54:32.687772	2016-12-19 20:54:32.687772
36334	8877	2319	2016-12-19 20:54:34.220713	2016-12-19 20:54:34.220713
36335	8878	2319	2016-12-19 20:54:35.758276	2016-12-19 20:54:35.758276
36336	8879	2319	2016-12-19 20:54:37.279674	2016-12-19 20:54:37.279674
36337	8880	2319	2016-12-19 20:54:38.928844	2016-12-19 20:54:38.928844
36338	8881	2319	2016-12-19 20:54:40.546856	2016-12-19 20:54:40.546856
36339	8882	2319	2016-12-19 20:54:42.045791	2016-12-19 20:54:42.045791
36340	8883	2319	2016-12-19 20:54:43.695113	2016-12-19 20:54:43.695113
36341	8884	2319	2016-12-19 20:54:45.248281	2016-12-19 20:54:45.248281
36342	8885	2318	2016-12-19 20:54:48.791495	2016-12-19 20:54:48.791495
36343	8886	2318	2016-12-19 20:54:50.380969	2016-12-19 20:54:50.380969
36344	8887	2318	2016-12-19 20:54:51.972852	2016-12-19 20:54:51.972852
36345	8888	2318	2016-12-19 20:54:53.546547	2016-12-19 20:54:53.546547
36346	8889	2318	2016-12-19 20:54:55.072124	2016-12-19 20:54:55.072124
36347	8890	2318	2016-12-19 20:54:56.584158	2016-12-19 20:54:56.584158
36348	8891	2318	2016-12-19 20:54:58.169276	2016-12-19 20:54:58.169276
36349	8892	2318	2016-12-19 20:54:59.710268	2016-12-19 20:54:59.710268
36350	8893	2318	2016-12-19 20:55:01.152384	2016-12-19 20:55:01.152384
36351	8894	2318	2016-12-19 20:55:02.935099	2016-12-19 20:55:02.935099
36352	8895	2318	2016-12-19 20:55:04.748143	2016-12-19 20:55:04.748143
36353	8896	2318	2016-12-19 20:55:06.461704	2016-12-19 20:55:06.461704
36354	8897	2318	2016-12-19 20:55:08.098998	2016-12-19 20:55:08.098998
36355	8898	2318	2016-12-19 20:55:09.706227	2016-12-19 20:55:09.706227
36356	8899	2318	2016-12-19 20:55:11.148004	2016-12-19 20:55:11.148004
36357	8900	2318	2016-12-19 20:55:12.61172	2016-12-19 20:55:12.61172
36358	8901	2318	2016-12-19 20:55:14.199098	2016-12-19 20:55:14.199098
36359	8902	2318	2016-12-19 20:55:15.73901	2016-12-19 20:55:15.73901
36360	8903	2318	2016-12-19 20:55:17.136076	2016-12-19 20:55:17.136076
36361	8904	2318	2016-12-19 20:55:18.643514	2016-12-19 20:55:18.643514
36362	8905	2318	2016-12-19 20:55:21.760216	2016-12-19 20:55:21.760216
36363	8906	2318	2016-12-19 20:55:23.263485	2016-12-19 20:55:23.263485
36364	8907	2318	2016-12-19 20:55:24.842294	2016-12-19 20:55:24.842294
36365	8908	2318	2016-12-19 20:55:26.421083	2016-12-19 20:55:26.421083
36366	8909	2318	2016-12-19 20:55:27.970975	2016-12-19 20:55:27.970975
36367	8910	2318	2016-12-19 20:55:29.53567	2016-12-19 20:55:29.53567
36368	8911	2318	2016-12-19 20:55:30.979134	2016-12-19 20:55:30.979134
36369	8912	2318	2016-12-19 20:55:32.443562	2016-12-19 20:55:32.443562
36370	8874	2318	2016-12-19 20:55:32.46493	2016-12-19 20:55:32.46493
36371	8875	2318	2016-12-19 20:55:32.49097	2016-12-19 20:55:32.49097
36372	8913	2318	2016-12-19 20:55:33.9728	2016-12-19 20:55:33.9728
36373	8876	2318	2016-12-19 20:55:33.99975	2016-12-19 20:55:33.99975
36374	8877	2318	2016-12-19 20:55:34.025757	2016-12-19 20:55:34.025757
36375	8878	2318	2016-12-19 20:55:34.053836	2016-12-19 20:55:34.053836
36376	8879	2318	2016-12-19 20:55:34.063597	2016-12-19 20:55:34.063597
36377	8880	2318	2016-12-19 20:55:34.080809	2016-12-19 20:55:34.080809
36378	8881	2318	2016-12-19 20:55:34.09729	2016-12-19 20:55:34.09729
36379	8882	2318	2016-12-19 20:55:34.120231	2016-12-19 20:55:34.120231
36380	8883	2318	2016-12-19 20:55:34.141504	2016-12-19 20:55:34.141504
36381	8884	2318	2016-12-19 20:55:34.152806	2016-12-19 20:55:34.152806
36382	8885	2320	2016-12-19 20:55:35.94116	2016-12-19 20:55:35.94116
36383	8886	2320	2016-12-19 20:55:36.028139	2016-12-19 20:55:36.028139
36384	8887	2320	2016-12-19 20:55:36.069832	2016-12-19 20:55:36.069832
36385	8888	2320	2016-12-19 20:55:36.105202	2016-12-19 20:55:36.105202
36386	8889	2320	2016-12-19 20:55:36.133426	2016-12-19 20:55:36.133426
36387	8890	2320	2016-12-19 20:55:36.14467	2016-12-19 20:55:36.14467
36388	8891	2320	2016-12-19 20:55:36.153397	2016-12-19 20:55:36.153397
36389	8892	2320	2016-12-19 20:55:36.173911	2016-12-19 20:55:36.173911
36390	8893	2320	2016-12-19 20:55:36.192496	2016-12-19 20:55:36.192496
36391	8894	2320	2016-12-19 20:55:36.217582	2016-12-19 20:55:36.217582
36392	8895	2320	2016-12-19 20:55:36.2281	2016-12-19 20:55:36.2281
36393	8896	2320	2016-12-19 20:55:36.238468	2016-12-19 20:55:36.238468
36394	8897	2320	2016-12-19 20:55:36.255676	2016-12-19 20:55:36.255676
36395	8898	2320	2016-12-19 20:55:36.27358	2016-12-19 20:55:36.27358
36396	8899	2320	2016-12-19 20:55:36.288979	2016-12-19 20:55:36.288979
36397	8900	2320	2016-12-19 20:55:36.301149	2016-12-19 20:55:36.301149
36398	8901	2320	2016-12-19 20:55:36.311915	2016-12-19 20:55:36.311915
36399	8902	2320	2016-12-19 20:55:36.329803	2016-12-19 20:55:36.329803
36400	8903	2320	2016-12-19 20:55:36.346873	2016-12-19 20:55:36.346873
36401	8904	2320	2016-12-19 20:55:36.3702	2016-12-19 20:55:36.3702
36402	8905	2320	2016-12-19 20:55:37.57993	2016-12-19 20:55:37.57993
36403	8906	2320	2016-12-19 20:55:37.635026	2016-12-19 20:55:37.635026
36404	8907	2320	2016-12-19 20:55:37.646431	2016-12-19 20:55:37.646431
36405	8908	2320	2016-12-19 20:55:37.662053	2016-12-19 20:55:37.662053
36406	8909	2320	2016-12-19 20:55:37.677403	2016-12-19 20:55:37.677403
36407	8910	2320	2016-12-19 20:55:37.692002	2016-12-19 20:55:37.692002
36408	8911	2320	2016-12-19 20:55:37.716481	2016-12-19 20:55:37.716481
36409	8912	2320	2016-12-19 20:55:37.730675	2016-12-19 20:55:37.730675
36410	8914	2317	2016-12-19 20:55:40.249945	2016-12-19 20:55:40.249945
36411	8255	2317	2016-12-19 20:55:40.263781	2016-12-19 20:55:40.263781
36412	8885	2317	2016-12-19 20:55:40.283159	2016-12-19 20:55:40.283159
36413	8886	2317	2016-12-19 20:55:40.309939	2016-12-19 20:55:40.309939
36414	8887	2317	2016-12-19 20:55:40.322118	2016-12-19 20:55:40.322118
36415	8888	2317	2016-12-19 20:55:40.33959	2016-12-19 20:55:40.33959
36416	8889	2317	2016-12-19 20:55:40.358873	2016-12-19 20:55:40.358873
36417	8890	2317	2016-12-19 20:55:40.379908	2016-12-19 20:55:40.379908
36418	8891	2317	2016-12-19 20:55:40.399098	2016-12-19 20:55:40.399098
36419	8892	2317	2016-12-19 20:55:40.418554	2016-12-19 20:55:40.418554
36420	8893	2317	2016-12-19 20:55:40.437832	2016-12-19 20:55:40.437832
36421	8894	2317	2016-12-19 20:55:40.456706	2016-12-19 20:55:40.456706
36422	8895	2317	2016-12-19 20:55:40.4761	2016-12-19 20:55:40.4761
36423	8896	2317	2016-12-19 20:55:40.495388	2016-12-19 20:55:40.495388
36424	8897	2317	2016-12-19 20:55:40.516758	2016-12-19 20:55:40.516758
36425	8898	2317	2016-12-19 20:55:40.545493	2016-12-19 20:55:40.545493
36426	8899	2317	2016-12-19 20:55:40.556733	2016-12-19 20:55:40.556733
36427	8900	2317	2016-12-19 20:55:40.582483	2016-12-19 20:55:40.582483
36428	8901	2317	2016-12-19 20:55:40.614429	2016-12-19 20:55:40.614429
36429	8902	2317	2016-12-19 20:55:40.631324	2016-12-19 20:55:40.631324
36430	8903	2317	2016-12-19 20:55:42.219508	2016-12-19 20:55:42.219508
36431	8904	2317	2016-12-19 20:55:42.281914	2016-12-19 20:55:42.281914
36432	8905	2317	2016-12-19 20:55:42.296769	2016-12-19 20:55:42.296769
36433	8906	2317	2016-12-19 20:55:42.314568	2016-12-19 20:55:42.314568
36434	8907	2317	2016-12-19 20:55:42.335984	2016-12-19 20:55:42.335984
36435	8908	2317	2016-12-19 20:55:42.360151	2016-12-19 20:55:42.360151
36436	8909	2317	2016-12-19 20:55:42.376149	2016-12-19 20:55:42.376149
36437	8910	2317	2016-12-19 20:55:42.393322	2016-12-19 20:55:42.393322
36438	8911	2317	2016-12-19 20:55:42.41101	2016-12-19 20:55:42.41101
36439	8912	2317	2016-12-19 20:55:42.421865	2016-12-19 20:55:42.421865
36440	8915	2317	2016-12-19 20:55:44.135309	2016-12-19 20:55:44.135309
36441	8916	2317	2016-12-19 20:55:45.786212	2016-12-19 20:55:45.786212
36442	8917	2317	2016-12-19 20:55:47.437341	2016-12-19 20:55:47.437341
36443	8918	2317	2016-12-19 20:55:49.033263	2016-12-19 20:55:49.033263
36444	8919	2317	2016-12-19 20:55:50.737767	2016-12-19 20:55:50.737767
36445	8920	2317	2016-12-19 20:55:52.274965	2016-12-19 20:55:52.274965
36446	8921	2317	2016-12-19 20:55:53.953257	2016-12-19 20:55:53.953257
36447	8874	2317	2016-12-19 20:55:53.980726	2016-12-19 20:55:53.980726
36448	8875	2317	2016-12-19 20:55:53.991188	2016-12-19 20:55:53.991188
36449	8913	2317	2016-12-19 20:55:54.003356	2016-12-19 20:55:54.003356
36450	8876	2317	2016-12-19 20:55:55.315198	2016-12-19 20:55:55.315198
36451	8877	2317	2016-12-19 20:55:55.385881	2016-12-19 20:55:55.385881
36452	8878	2317	2016-12-19 20:55:55.397633	2016-12-19 20:55:55.397633
36453	8879	2317	2016-12-19 20:55:55.40713	2016-12-19 20:55:55.40713
36454	8880	2317	2016-12-19 20:55:55.425569	2016-12-19 20:55:55.425569
36455	8881	2317	2016-12-19 20:55:55.459015	2016-12-19 20:55:55.459015
36456	8882	2317	2016-12-19 20:55:55.481698	2016-12-19 20:55:55.481698
36457	8883	2317	2016-12-19 20:55:55.492701	2016-12-19 20:55:55.492701
36458	8884	2317	2016-12-19 20:55:55.516953	2016-12-19 20:55:55.516953
36459	8922	2317	2016-12-19 20:55:57.498147	2016-12-19 20:55:57.498147
36460	8923	2317	2016-12-19 20:55:59.215705	2016-12-19 20:55:59.215705
36461	8924	2317	2016-12-19 20:56:00.832997	2016-12-19 20:56:00.832997
36462	8255	2321	2016-12-19 20:56:02.141548	2016-12-19 20:56:02.141548
36463	8915	2321	2016-12-19 20:56:02.158468	2016-12-19 20:56:02.158468
36464	8273	2322	2016-12-19 20:56:04.057706	2016-12-19 20:56:04.057706
36465	8848	2322	2016-12-19 20:56:04.125307	2016-12-19 20:56:04.125307
36466	8623	2322	2016-12-19 20:56:04.145611	2016-12-19 20:56:04.145611
36467	8624	2322	2016-12-19 20:56:04.175013	2016-12-19 20:56:04.175013
36468	8613	2322	2016-12-19 20:56:04.204408	2016-12-19 20:56:04.204408
36469	8618	2322	2016-12-19 20:56:04.218517	2016-12-19 20:56:04.218517
36470	8616	2322	2016-12-19 20:56:04.239114	2016-12-19 20:56:04.239114
36471	8621	2322	2016-12-19 20:56:04.256042	2016-12-19 20:56:04.256042
36472	8602	2322	2016-12-19 20:56:04.280199	2016-12-19 20:56:04.280199
36473	8603	2322	2016-12-19 20:56:04.295243	2016-12-19 20:56:04.295243
36474	8604	2322	2016-12-19 20:56:04.312051	2016-12-19 20:56:04.312051
36475	8599	2322	2016-12-19 20:56:04.330115	2016-12-19 20:56:04.330115
36476	8606	2322	2016-12-19 20:56:04.355578	2016-12-19 20:56:04.355578
36477	8608	2322	2016-12-19 20:56:04.367384	2016-12-19 20:56:04.367384
36478	8607	2322	2016-12-19 20:56:04.389528	2016-12-19 20:56:04.389528
36479	8610	2322	2016-12-19 20:56:04.404018	2016-12-19 20:56:04.404018
36480	8622	2322	2016-12-19 20:56:04.418828	2016-12-19 20:56:04.418828
36481	8839	2322	2016-12-19 20:56:04.438355	2016-12-19 20:56:04.438355
36482	8838	2322	2016-12-19 20:56:04.450143	2016-12-19 20:56:04.450143
36483	8832	2322	2016-12-19 20:56:04.474772	2016-12-19 20:56:04.474772
36484	8833	2322	2016-12-19 20:56:06.085881	2016-12-19 20:56:06.085881
36485	8835	2322	2016-12-19 20:56:06.106104	2016-12-19 20:56:06.106104
36486	7768	2322	2016-12-19 20:56:06.125863	2016-12-19 20:56:06.125863
36487	7853	2322	2016-12-19 20:56:06.15214	2016-12-19 20:56:06.15214
36488	7770	2322	2016-12-19 20:56:06.164607	2016-12-19 20:56:06.164607
36489	7854	2322	2016-12-19 20:56:06.187123	2016-12-19 20:56:06.187123
36490	7769	2322	2016-12-19 20:56:06.199453	2016-12-19 20:56:06.199453
36491	7771	2322	2016-12-19 20:56:06.213185	2016-12-19 20:56:06.213185
36492	7759	2322	2016-12-19 20:56:06.235024	2016-12-19 20:56:06.235024
36493	7765	2322	2016-12-19 20:56:06.245981	2016-12-19 20:56:06.245981
36494	7760	2322	2016-12-19 20:56:06.266859	2016-12-19 20:56:06.266859
36495	7761	2322	2016-12-19 20:56:06.283253	2016-12-19 20:56:06.283253
36496	7764	2322	2016-12-19 20:56:06.312319	2016-12-19 20:56:06.312319
36497	7763	2322	2016-12-19 20:56:06.332022	2016-12-19 20:56:06.332022
36498	8478	2322	2016-12-19 20:56:06.355655	2016-12-19 20:56:06.355655
36499	7415	2322	2016-12-19 20:56:06.366656	2016-12-19 20:56:06.366656
36500	7419	2322	2016-12-19 20:56:06.391646	2016-12-19 20:56:06.391646
36501	7420	2322	2016-12-19 20:56:06.412515	2016-12-19 20:56:06.412515
36502	7832	2322	2016-12-19 20:56:06.426319	2016-12-19 20:56:06.426319
36503	7846	2322	2016-12-19 20:56:06.450019	2016-12-19 20:56:06.450019
36504	7416	2322	2016-12-19 20:56:08.207238	2016-12-19 20:56:08.207238
36505	7414	2322	2016-12-19 20:56:08.268234	2016-12-19 20:56:08.268234
36506	7421	2322	2016-12-19 20:56:08.279846	2016-12-19 20:56:08.279846
36507	7382	2322	2016-12-19 20:56:08.298461	2016-12-19 20:56:08.298461
36508	7381	2322	2016-12-19 20:56:08.313834	2016-12-19 20:56:08.313834
36509	7410	2322	2016-12-19 20:56:08.338256	2016-12-19 20:56:08.338256
36510	7409	2322	2016-12-19 20:56:08.354047	2016-12-19 20:56:08.354047
36511	8202	2322	2016-12-19 20:56:08.369107	2016-12-19 20:56:08.369107
36512	8332	2322	2016-12-19 20:56:08.380937	2016-12-19 20:56:08.380937
36513	7841	2322	2016-12-19 20:56:08.404584	2016-12-19 20:56:08.404584
36514	7840	2322	2016-12-19 20:56:08.417778	2016-12-19 20:56:08.417778
36515	7411	2322	2016-12-19 20:56:08.434787	2016-12-19 20:56:08.434787
36516	7412	2322	2016-12-19 20:56:08.452923	2016-12-19 20:56:08.452923
36517	7391	2322	2016-12-19 20:56:08.467242	2016-12-19 20:56:08.467242
36518	7392	2322	2016-12-19 20:56:08.487944	2016-12-19 20:56:08.487944
36519	7844	2322	2016-12-19 20:56:08.501209	2016-12-19 20:56:08.501209
36520	7845	2322	2016-12-19 20:56:08.513094	2016-12-19 20:56:08.513094
36521	7843	2322	2016-12-19 20:56:08.527268	2016-12-19 20:56:08.527268
36522	7842	2322	2016-12-19 20:56:08.541658	2016-12-19 20:56:08.541658
36523	8209	2322	2016-12-19 20:56:08.562857	2016-12-19 20:56:08.562857
36524	7429	2322	2016-12-19 20:56:11.390203	2016-12-19 20:56:11.390203
36525	7523	2322	2016-12-19 20:56:11.456256	2016-12-19 20:56:11.456256
36526	7512	2322	2016-12-19 20:56:11.472437	2016-12-19 20:56:11.472437
36527	7518	2322	2016-12-19 20:56:11.492053	2016-12-19 20:56:11.492053
36528	7524	2322	2016-12-19 20:56:11.502668	2016-12-19 20:56:11.502668
36529	7519	2322	2016-12-19 20:56:11.520911	2016-12-19 20:56:11.520911
36530	7525	2322	2016-12-19 20:56:11.540549	2016-12-19 20:56:11.540549
36531	7521	2322	2016-12-19 20:56:11.558205	2016-12-19 20:56:11.558205
36532	7520	2322	2016-12-19 20:56:11.574159	2016-12-19 20:56:11.574159
36533	7463	2322	2016-12-19 20:56:11.595743	2016-12-19 20:56:11.595743
36534	8462	2322	2016-12-19 20:56:11.609762	2016-12-19 20:56:11.609762
36535	7496	2322	2016-12-19 20:56:11.627053	2016-12-19 20:56:11.627053
36536	8536	2322	2016-12-19 20:56:11.641547	2016-12-19 20:56:11.641547
36537	8537	2322	2016-12-19 20:56:11.657806	2016-12-19 20:56:11.657806
36538	8540	2322	2016-12-19 20:56:11.673279	2016-12-19 20:56:11.673279
36539	8336	2322	2016-12-19 20:56:11.684085	2016-12-19 20:56:11.684085
36540	8077	2322	2016-12-19 20:56:11.695939	2016-12-19 20:56:11.695939
36541	7849	2322	2016-12-19 20:56:11.716172	2016-12-19 20:56:11.716172
36542	8421	2322	2016-12-19 20:56:11.734431	2016-12-19 20:56:11.734431
36543	7522	2322	2016-12-19 20:56:11.751909	2016-12-19 20:56:11.751909
36544	7793	2322	2016-12-19 20:56:13.984201	2016-12-19 20:56:13.984201
36545	7471	2322	2016-12-19 20:56:14.051737	2016-12-19 20:56:14.051737
36546	7359	2322	2016-12-19 20:56:14.064464	2016-12-19 20:56:14.064464
36547	7604	2322	2016-12-19 20:56:14.074321	2016-12-19 20:56:14.074321
36548	7603	2322	2016-12-19 20:56:14.100286	2016-12-19 20:56:14.100286
36549	7586	2322	2016-12-19 20:56:14.124581	2016-12-19 20:56:14.124581
36550	7587	2322	2016-12-19 20:56:14.142693	2016-12-19 20:56:14.142693
36551	7588	2322	2016-12-19 20:56:14.161454	2016-12-19 20:56:14.161454
36552	7589	2322	2016-12-19 20:56:14.170796	2016-12-19 20:56:14.170796
36553	7606	2322	2016-12-19 20:56:14.183478	2016-12-19 20:56:14.183478
36554	7605	2322	2016-12-19 20:56:14.200742	2016-12-19 20:56:14.200742
36555	8812	2322	2016-12-19 20:56:14.223336	2016-12-19 20:56:14.223336
36556	7661	2322	2016-12-19 20:56:14.243948	2016-12-19 20:56:14.243948
36557	7652	2322	2016-12-19 20:56:14.255826	2016-12-19 20:56:14.255826
36558	8174	2322	2016-12-19 20:56:14.271637	2016-12-19 20:56:14.271637
36559	8176	2322	2016-12-19 20:56:14.291688	2016-12-19 20:56:14.291688
36560	8178	2322	2016-12-19 20:56:14.313935	2016-12-19 20:56:14.313935
36561	8177	2322	2016-12-19 20:56:14.338549	2016-12-19 20:56:14.338549
36562	8465	2322	2016-12-19 20:56:14.357725	2016-12-19 20:56:14.357725
36563	7838	2322	2016-12-19 20:56:14.378733	2016-12-19 20:56:14.378733
36564	8473	2322	2016-12-19 20:56:16.115963	2016-12-19 20:56:16.115963
36565	8733	2322	2016-12-19 20:56:16.172267	2016-12-19 20:56:16.172267
36566	8734	2322	2016-12-19 20:56:16.193641	2016-12-19 20:56:16.193641
36567	8817	2322	2016-12-19 20:56:16.203229	2016-12-19 20:56:16.203229
36568	8086	2322	2016-12-19 20:56:16.221718	2016-12-19 20:56:16.221718
36569	8088	2322	2016-12-19 20:56:16.236255	2016-12-19 20:56:16.236255
36570	8087	2322	2016-12-19 20:56:16.258294	2016-12-19 20:56:16.258294
36571	8085	2322	2016-12-19 20:56:16.27092	2016-12-19 20:56:16.27092
36572	8094	2322	2016-12-19 20:56:16.285314	2016-12-19 20:56:16.285314
36573	8095	2322	2016-12-19 20:56:16.300317	2016-12-19 20:56:16.300317
36574	8093	2322	2016-12-19 20:56:16.316206	2016-12-19 20:56:16.316206
36575	8096	2322	2016-12-19 20:56:16.333076	2016-12-19 20:56:16.333076
36576	8081	2322	2016-12-19 20:56:16.353006	2016-12-19 20:56:16.353006
36577	8080	2322	2016-12-19 20:56:16.363979	2016-12-19 20:56:16.363979
36578	8274	2322	2016-12-19 20:56:16.382094	2016-12-19 20:56:16.382094
36579	7794	2322	2016-12-19 20:56:16.401277	2016-12-19 20:56:16.401277
36580	7819	2322	2016-12-19 20:56:16.418148	2016-12-19 20:56:16.418148
36581	8309	2322	2016-12-19 20:56:16.43486	2016-12-19 20:56:16.43486
36582	8009	2322	2016-12-19 20:56:16.451635	2016-12-19 20:56:16.451635
36583	8333	2322	2016-12-19 20:56:16.471082	2016-12-19 20:56:16.471082
36584	8507	2322	2016-12-19 20:56:18.431986	2016-12-19 20:56:18.431986
36585	8330	2322	2016-12-19 20:56:18.506113	2016-12-19 20:56:18.506113
36586	8792	2322	2016-12-19 20:56:18.517514	2016-12-19 20:56:18.517514
36587	8767	2322	2016-12-19 20:56:18.537023	2016-12-19 20:56:18.537023
36588	8768	2322	2016-12-19 20:56:18.547666	2016-12-19 20:56:18.547666
36589	8769	2322	2016-12-19 20:56:18.562418	2016-12-19 20:56:18.562418
36590	8793	2322	2016-12-19 20:56:18.588298	2016-12-19 20:56:18.588298
36591	8819	2322	2016-12-19 20:56:18.598105	2016-12-19 20:56:18.598105
36592	8818	2322	2016-12-19 20:56:18.60903	2016-12-19 20:56:18.60903
36593	8752	2322	2016-12-19 20:56:18.63308	2016-12-19 20:56:18.63308
36594	8794	2322	2016-12-19 20:56:18.65206	2016-12-19 20:56:18.65206
36595	8573	2322	2016-12-19 20:56:18.672612	2016-12-19 20:56:18.672612
36596	8671	2322	2016-12-19 20:56:18.681841	2016-12-19 20:56:18.681841
36597	8795	2322	2016-12-19 20:56:18.703665	2016-12-19 20:56:18.703665
36598	8755	2322	2016-12-19 20:56:18.718253	2016-12-19 20:56:18.718253
36599	8756	2322	2016-12-19 20:56:18.735029	2016-12-19 20:56:18.735029
36600	8757	2322	2016-12-19 20:56:18.750686	2016-12-19 20:56:18.750686
36601	7612	2322	2016-12-19 20:56:18.763256	2016-12-19 20:56:18.763256
36602	7611	2322	2016-12-19 20:56:18.782931	2016-12-19 20:56:18.782931
36603	7563	2322	2016-12-19 20:56:18.797432	2016-12-19 20:56:18.797432
36604	7562	2322	2016-12-19 20:56:20.596986	2016-12-19 20:56:20.596986
36605	8724	2322	2016-12-19 20:56:20.667251	2016-12-19 20:56:20.667251
36606	7998	2322	2016-12-19 20:56:20.678147	2016-12-19 20:56:20.678147
36607	8508	2322	2016-12-19 20:56:20.686462	2016-12-19 20:56:20.686462
36608	8349	2322	2016-12-19 20:56:20.705004	2016-12-19 20:56:20.705004
36609	7394	2322	2016-12-19 20:56:20.719461	2016-12-19 20:56:20.719461
36610	7778	2322	2016-12-19 20:56:20.750094	2016-12-19 20:56:20.750094
36611	7395	2322	2016-12-19 20:56:20.761347	2016-12-19 20:56:20.761347
36612	7724	2322	2016-12-19 20:56:20.776057	2016-12-19 20:56:20.776057
36613	7726	2322	2016-12-19 20:56:20.799153	2016-12-19 20:56:20.799153
36614	8803	2322	2016-12-19 20:56:20.81922	2016-12-19 20:56:20.81922
36615	8516	2322	2016-12-19 20:56:20.845946	2016-12-19 20:56:20.845946
36616	7494	2322	2016-12-19 20:56:20.859856	2016-12-19 20:56:20.859856
36617	8194	2322	2016-12-19 20:56:20.877276	2016-12-19 20:56:20.877276
36618	8193	2322	2016-12-19 20:56:20.896524	2016-12-19 20:56:20.896524
36619	8499	2322	2016-12-19 20:56:20.918088	2016-12-19 20:56:20.918088
36620	8504	2322	2016-12-19 20:56:20.93268	2016-12-19 20:56:20.93268
36621	8506	2322	2016-12-19 20:56:20.963606	2016-12-19 20:56:20.963606
36622	8505	2322	2016-12-19 20:56:20.982521	2016-12-19 20:56:20.982521
36623	7976	2322	2016-12-19 20:56:20.99679	2016-12-19 20:56:20.99679
36624	7365	2322	2016-12-19 20:56:24.931239	2016-12-19 20:56:24.931239
36625	7619	2322	2016-12-19 20:56:24.991022	2016-12-19 20:56:24.991022
36626	8461	2322	2016-12-19 20:56:25.002356	2016-12-19 20:56:25.002356
36627	8827	2322	2016-12-19 20:56:25.015405	2016-12-19 20:56:25.015405
36628	8828	2322	2016-12-19 20:56:25.035169	2016-12-19 20:56:25.035169
36629	8598	2322	2016-12-19 20:56:25.047057	2016-12-19 20:56:25.047057
36630	8004	2322	2016-12-19 20:56:25.071088	2016-12-19 20:56:25.071088
36631	7622	2322	2016-12-19 20:56:25.08235	2016-12-19 20:56:25.08235
36632	7623	2322	2016-12-19 20:56:25.101503	2016-12-19 20:56:25.101503
36633	8591	2322	2016-12-19 20:56:25.118221	2016-12-19 20:56:25.118221
36634	8005	2322	2016-12-19 20:56:25.135178	2016-12-19 20:56:25.135178
36635	8293	2322	2016-12-19 20:56:25.14711	2016-12-19 20:56:25.14711
36636	8458	2322	2016-12-19 20:56:25.165628	2016-12-19 20:56:25.165628
36637	7714	2322	2016-12-19 20:56:25.184556	2016-12-19 20:56:25.184556
36638	7710	2322	2016-12-19 20:56:25.215012	2016-12-19 20:56:25.215012
36639	7715	2322	2016-12-19 20:56:25.232157	2016-12-19 20:56:25.232157
36640	7713	2322	2016-12-19 20:56:25.249279	2016-12-19 20:56:25.249279
36641	8387	2322	2016-12-19 20:56:25.274977	2016-12-19 20:56:25.274977
36642	8386	2322	2016-12-19 20:56:25.290401	2016-12-19 20:56:25.290401
36643	7828	2322	2016-12-19 20:56:25.299969	2016-12-19 20:56:25.299969
36644	8804	2322	2016-12-19 20:56:27.854264	2016-12-19 20:56:27.854264
36645	7574	2322	2016-12-19 20:56:27.929432	2016-12-19 20:56:27.929432
36646	7582	2322	2016-12-19 20:56:27.951166	2016-12-19 20:56:27.951166
36647	7581	2322	2016-12-19 20:56:27.963843	2016-12-19 20:56:27.963843
36648	7580	2322	2016-12-19 20:56:27.983534	2016-12-19 20:56:27.983534
36649	7503	2322	2016-12-19 20:56:27.998004	2016-12-19 20:56:27.998004
36650	8801	2322	2016-12-19 20:56:28.021497	2016-12-19 20:56:28.021497
36651	8490	2322	2016-12-19 20:56:28.03585	2016-12-19 20:56:28.03585
36652	8486	2322	2016-12-19 20:56:28.045824	2016-12-19 20:56:28.045824
36653	8521	2322	2016-12-19 20:56:28.062912	2016-12-19 20:56:28.062912
36654	8535	2322	2016-12-19 20:56:28.076808	2016-12-19 20:56:28.076808
36655	8829	2322	2016-12-19 20:56:28.10133	2016-12-19 20:56:28.10133
36656	8384	2322	2016-12-19 20:56:28.118518	2016-12-19 20:56:28.118518
36657	8254	2322	2016-12-19 20:56:28.147233	2016-12-19 20:56:28.147233
36658	7679	2322	2016-12-19 20:56:28.159725	2016-12-19 20:56:28.159725
36659	7674	2322	2016-12-19 20:56:28.176184	2016-12-19 20:56:28.176184
36660	7670	2322	2016-12-19 20:56:28.202595	2016-12-19 20:56:28.202595
36661	7656	2322	2016-12-19 20:56:28.226883	2016-12-19 20:56:28.226883
36662	7657	2322	2016-12-19 20:56:28.237797	2016-12-19 20:56:28.237797
36663	7655	2322	2016-12-19 20:56:28.258288	2016-12-19 20:56:28.258288
36664	7654	2322	2016-12-19 20:56:30.047228	2016-12-19 20:56:30.047228
36665	8496	2322	2016-12-19 20:56:30.065571	2016-12-19 20:56:30.065571
36666	8498	2322	2016-12-19 20:56:30.084164	2016-12-19 20:56:30.084164
36667	8253	2322	2016-12-19 20:56:30.102601	2016-12-19 20:56:30.102601
36668	8459	2322	2016-12-19 20:56:30.120365	2016-12-19 20:56:30.120365
36669	8460	2322	2016-12-19 20:56:30.141426	2016-12-19 20:56:30.141426
36670	8275	2322	2016-12-19 20:56:30.159554	2016-12-19 20:56:30.159554
36671	7851	2322	2016-12-19 20:56:30.170078	2016-12-19 20:56:30.170078
36672	8276	2322	2016-12-19 20:56:30.187486	2016-12-19 20:56:30.187486
36673	8316	2322	2016-12-19 20:56:30.20413	2016-12-19 20:56:30.20413
36674	8329	2322	2016-12-19 20:56:30.226462	2016-12-19 20:56:30.226462
36675	7829	2322	2016-12-19 20:56:30.238273	2016-12-19 20:56:30.238273
36676	7756	2322	2016-12-19 20:56:30.254699	2016-12-19 20:56:30.254699
36677	7641	2322	2016-12-19 20:56:30.286092	2016-12-19 20:56:30.286092
36678	8489	2322	2016-12-19 20:56:30.304036	2016-12-19 20:56:30.304036
36679	7827	2322	2016-12-19 20:56:30.32239	2016-12-19 20:56:30.32239
36680	7814	2322	2016-12-19 20:56:30.335489	2016-12-19 20:56:30.335489
36681	7812	2322	2016-12-19 20:56:30.350829	2016-12-19 20:56:30.350829
36682	7811	2322	2016-12-19 20:56:30.365565	2016-12-19 20:56:30.365565
36683	7813	2322	2016-12-19 20:56:30.39218	2016-12-19 20:56:30.39218
36684	8382	2322	2016-12-19 20:56:32.286965	2016-12-19 20:56:32.286965
36685	7491	2322	2016-12-19 20:56:32.342364	2016-12-19 20:56:32.342364
36686	7576	2322	2016-12-19 20:56:32.36252	2016-12-19 20:56:32.36252
36687	8925	2322	2016-12-19 20:56:34.289769	2016-12-19 20:56:34.289769
36688	7808	2322	2016-12-19 20:56:34.300071	2016-12-19 20:56:34.300071
36689	8378	2322	2016-12-19 20:56:34.311837	2016-12-19 20:56:34.311837
36690	8814	2322	2016-12-19 20:56:34.322676	2016-12-19 20:56:34.322676
36691	7444	2322	2016-12-19 20:56:34.335967	2016-12-19 20:56:34.335967
36692	8758	2322	2016-12-19 20:56:34.346864	2016-12-19 20:56:34.346864
36693	8277	2322	2016-12-19 20:56:34.35745	2016-12-19 20:56:34.35745
36694	8379	2322	2016-12-19 20:56:34.378384	2016-12-19 20:56:34.378384
36695	8380	2322	2016-12-19 20:56:34.392931	2016-12-19 20:56:34.392931
36696	8488	2322	2016-12-19 20:56:34.41067	2016-12-19 20:56:34.41067
36697	7398	2322	2016-12-19 20:56:34.430481	2016-12-19 20:56:34.430481
36698	7400	2322	2016-12-19 20:56:34.446169	2016-12-19 20:56:34.446169
36699	8487	2322	2016-12-19 20:56:34.467888	2016-12-19 20:56:34.467888
36700	7978	2323	2016-12-19 20:56:36.33298	2016-12-19 20:56:36.33298
36701	7899	2323	2016-12-19 20:56:36.503709	2016-12-19 20:56:36.503709
36702	7926	2323	2016-12-19 20:56:36.511634	2016-12-19 20:56:36.511634
36703	7930	2323	2016-12-19 20:56:36.524072	2016-12-19 20:56:36.524072
36704	7929	2323	2016-12-19 20:56:36.547464	2016-12-19 20:56:36.547464
36705	7927	2323	2016-12-19 20:56:36.566246	2016-12-19 20:56:36.566246
36706	7928	2323	2016-12-19 20:56:36.590945	2016-12-19 20:56:36.590945
36707	7937	2323	2016-12-19 20:56:36.60258	2016-12-19 20:56:36.60258
36708	7938	2323	2016-12-19 20:56:36.62302	2016-12-19 20:56:36.62302
36709	7931	2323	2016-12-19 20:56:36.637353	2016-12-19 20:56:36.637353
36710	7882	2323	2016-12-19 20:56:36.662702	2016-12-19 20:56:36.662702
36711	7950	2323	2016-12-19 20:56:36.681734	2016-12-19 20:56:36.681734
36712	7949	2323	2016-12-19 20:56:36.699217	2016-12-19 20:56:36.699217
36713	7887	2323	2016-12-19 20:56:36.730152	2016-12-19 20:56:36.730152
36714	7906	2323	2016-12-19 20:56:36.747821	2016-12-19 20:56:36.747821
36715	8007	2323	2016-12-19 20:56:36.769139	2016-12-19 20:56:36.769139
36716	7971	2323	2016-12-19 20:56:36.779116	2016-12-19 20:56:36.779116
36717	8374	2323	2016-12-19 20:56:36.79152	2016-12-19 20:56:36.79152
36718	7892	2323	2016-12-19 20:56:36.814088	2016-12-19 20:56:36.814088
36719	7891	2323	2016-12-19 20:56:36.822899	2016-12-19 20:56:36.822899
36720	7890	2323	2016-12-19 20:56:38.828513	2016-12-19 20:56:38.828513
36721	7870	2323	2016-12-19 20:56:38.904898	2016-12-19 20:56:38.904898
36722	7871	2323	2016-12-19 20:56:38.916565	2016-12-19 20:56:38.916565
36723	8241	2323	2016-12-19 20:56:38.937457	2016-12-19 20:56:38.937457
36724	8240	2323	2016-12-19 20:56:38.948194	2016-12-19 20:56:38.948194
36725	8238	2323	2016-12-19 20:56:38.960213	2016-12-19 20:56:38.960213
36726	8239	2323	2016-12-19 20:56:38.981797	2016-12-19 20:56:38.981797
36727	8484	2323	2016-12-19 20:56:38.998415	2016-12-19 20:56:38.998415
36728	7901	2323	2016-12-19 20:56:39.02212	2016-12-19 20:56:39.02212
36729	7872	2323	2016-12-19 20:56:39.03326	2016-12-19 20:56:39.03326
36730	7369	2323	2016-12-19 20:56:39.047205	2016-12-19 20:56:39.047205
36731	7900	2323	2016-12-19 20:56:39.065604	2016-12-19 20:56:39.065604
36732	7889	2323	2016-12-19 20:56:39.077074	2016-12-19 20:56:39.077074
36733	7896	2323	2016-12-19 20:56:39.089533	2016-12-19 20:56:39.089533
36734	7879	2323	2016-12-19 20:56:39.11377	2016-12-19 20:56:39.11377
36735	7934	2323	2016-12-19 20:56:39.134028	2016-12-19 20:56:39.134028
36736	7450	2323	2016-12-19 20:56:39.148463	2016-12-19 20:56:39.148463
36737	7451	2323	2016-12-19 20:56:39.158387	2016-12-19 20:56:39.158387
36738	7452	2323	2016-12-19 20:56:39.172085	2016-12-19 20:56:39.172085
36739	7453	2323	2016-12-19 20:56:39.192576	2016-12-19 20:56:39.192576
36740	7454	2323	2016-12-19 20:56:40.94439	2016-12-19 20:56:40.94439
36741	7455	2323	2016-12-19 20:56:41.015918	2016-12-19 20:56:41.015918
36742	7456	2323	2016-12-19 20:56:41.036625	2016-12-19 20:56:41.036625
36743	7457	2323	2016-12-19 20:56:41.06006	2016-12-19 20:56:41.06006
36744	7458	2323	2016-12-19 20:56:41.07394	2016-12-19 20:56:41.07394
36745	7880	2323	2016-12-19 20:56:41.093208	2016-12-19 20:56:41.093208
36746	7990	2323	2016-12-19 20:56:41.123382	2016-12-19 20:56:41.123382
36747	7897	2323	2016-12-19 20:56:41.139406	2016-12-19 20:56:41.139406
36748	7920	2323	2016-12-19 20:56:41.157231	2016-12-19 20:56:41.157231
36749	7894	2323	2016-12-19 20:56:41.174148	2016-12-19 20:56:41.174148
36750	7918	2323	2016-12-19 20:56:41.187462	2016-12-19 20:56:41.187462
36751	7919	2323	2016-12-19 20:56:41.209603	2016-12-19 20:56:41.209603
36752	7921	2323	2016-12-19 20:56:41.218664	2016-12-19 20:56:41.218664
36753	7922	2323	2016-12-19 20:56:41.252828	2016-12-19 20:56:41.252828
36754	7873	2323	2016-12-19 20:56:41.280066	2016-12-19 20:56:41.280066
36755	7893	2323	2016-12-19 20:56:41.307157	2016-12-19 20:56:41.307157
36756	7924	2323	2016-12-19 20:56:41.32001	2016-12-19 20:56:41.32001
36757	7875	2323	2016-12-19 20:56:41.339845	2016-12-19 20:56:41.339845
36758	8223	2323	2016-12-19 20:56:41.356072	2016-12-19 20:56:41.356072
36759	8637	2323	2016-12-19 20:56:41.374706	2016-12-19 20:56:41.374706
36760	8706	2323	2016-12-19 20:56:43.026703	2016-12-19 20:56:43.026703
36761	8707	2323	2016-12-19 20:56:43.087198	2016-12-19 20:56:43.087198
36762	8266	2323	2016-12-19 20:56:43.103277	2016-12-19 20:56:43.103277
36763	8265	2323	2016-12-19 20:56:43.122198	2016-12-19 20:56:43.122198
36764	8264	2323	2016-12-19 20:56:43.141982	2016-12-19 20:56:43.141982
36765	7951	2323	2016-12-19 20:56:43.153825	2016-12-19 20:56:43.153825
36766	7907	2323	2016-12-19 20:56:43.17215	2016-12-19 20:56:43.17215
36767	7908	2323	2016-12-19 20:56:43.18237	2016-12-19 20:56:43.18237
36768	7909	2323	2016-12-19 20:56:43.197392	2016-12-19 20:56:43.197392
36769	7910	2323	2016-12-19 20:56:43.215517	2016-12-19 20:56:43.215517
36770	7912	2323	2016-12-19 20:56:43.226598	2016-12-19 20:56:43.226598
36771	7911	2323	2016-12-19 20:56:43.240706	2016-12-19 20:56:43.240706
36772	8022	2323	2016-12-19 20:56:43.26627	2016-12-19 20:56:43.26627
36773	7963	2323	2016-12-19 20:56:43.28572	2016-12-19 20:56:43.28572
36774	7962	2323	2016-12-19 20:56:43.315263	2016-12-19 20:56:43.315263
36775	7965	2323	2016-12-19 20:56:43.352434	2016-12-19 20:56:43.352434
36776	7964	2323	2016-12-19 20:56:43.373588	2016-12-19 20:56:43.373588
36777	7957	2323	2016-12-19 20:56:43.387093	2016-12-19 20:56:43.387093
36778	7952	2323	2016-12-19 20:56:43.40412	2016-12-19 20:56:43.40412
36779	7955	2323	2016-12-19 20:56:43.428573	2016-12-19 20:56:43.428573
36780	7954	2323	2016-12-19 20:56:45.488283	2016-12-19 20:56:45.488283
36781	7956	2323	2016-12-19 20:56:45.553948	2016-12-19 20:56:45.553948
36782	7953	2323	2016-12-19 20:56:45.565143	2016-12-19 20:56:45.565143
36783	7876	2323	2016-12-19 20:56:45.585736	2016-12-19 20:56:45.585736
36784	7958	2323	2016-12-19 20:56:45.595459	2016-12-19 20:56:45.595459
36785	7959	2323	2016-12-19 20:56:45.613224	2016-12-19 20:56:45.613224
36786	7961	2323	2016-12-19 20:56:45.63905	2016-12-19 20:56:45.63905
36787	8160	2323	2016-12-19 20:56:45.64952	2016-12-19 20:56:45.64952
36788	8161	2323	2016-12-19 20:56:45.670342	2016-12-19 20:56:45.670342
36789	8156	2323	2016-12-19 20:56:45.682165	2016-12-19 20:56:45.682165
36790	7647	2323	2016-12-19 20:56:45.710734	2016-12-19 20:56:45.710734
36791	7648	2323	2016-12-19 20:56:45.723429	2016-12-19 20:56:45.723429
36792	7371	2323	2016-12-19 20:56:45.750231	2016-12-19 20:56:45.750231
36793	7361	2323	2016-12-19 20:56:45.758719	2016-12-19 20:56:45.758719
36794	8218	2323	2016-12-19 20:56:45.775425	2016-12-19 20:56:45.775425
36795	8214	2323	2016-12-19 20:56:45.790562	2016-12-19 20:56:45.790562
36796	8215	2323	2016-12-19 20:56:45.815131	2016-12-19 20:56:45.815131
36797	8216	2323	2016-12-19 20:56:45.831735	2016-12-19 20:56:45.831735
36798	8217	2323	2016-12-19 20:56:45.852761	2016-12-19 20:56:45.852761
36799	8772	2323	2016-12-19 20:56:45.86925	2016-12-19 20:56:45.86925
36800	8773	2323	2016-12-19 20:56:47.439182	2016-12-19 20:56:47.439182
36801	7877	2323	2016-12-19 20:56:47.499884	2016-12-19 20:56:47.499884
36802	8824	2323	2016-12-19 20:56:47.516972	2016-12-19 20:56:47.516972
36803	8157	2323	2016-12-19 20:56:47.534484	2016-12-19 20:56:47.534484
36804	8171	2323	2016-12-19 20:56:47.545712	2016-12-19 20:56:47.545712
36805	8159	2323	2016-12-19 20:56:47.560424	2016-12-19 20:56:47.560424
36806	8162	2323	2016-12-19 20:56:47.578392	2016-12-19 20:56:47.578392
36807	8163	2323	2016-12-19 20:56:47.597611	2016-12-19 20:56:47.597611
36808	8164	2323	2016-12-19 20:56:47.617083	2016-12-19 20:56:47.617083
36809	8166	2323	2016-12-19 20:56:47.627009	2016-12-19 20:56:47.627009
36810	8165	2323	2016-12-19 20:56:47.641802	2016-12-19 20:56:47.641802
36811	8191	2323	2016-12-19 20:56:47.66064	2016-12-19 20:56:47.66064
36812	8192	2323	2016-12-19 20:56:47.677657	2016-12-19 20:56:47.677657
36813	8169	2323	2016-12-19 20:56:47.699973	2016-12-19 20:56:47.699973
36814	8168	2323	2016-12-19 20:56:47.710541	2016-12-19 20:56:47.710541
36815	8167	2323	2016-12-19 20:56:47.736543	2016-12-19 20:56:47.736543
36816	7977	2323	2016-12-19 20:56:47.749159	2016-12-19 20:56:47.749159
36817	7665	2323	2016-12-19 20:56:47.773619	2016-12-19 20:56:47.773619
36818	7895	2323	2016-12-19 20:56:47.788732	2016-12-19 20:56:47.788732
\.


--
-- Name: relations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('relations_id_seq', 36818, true);


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

