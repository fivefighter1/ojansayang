--
-- PostgreSQL database dump
--

-- Dumped from database version 13.0
-- Dumped by pg_dump version 13.0

-- Started on 2021-06-17 21:03:17

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 200 (class 1259 OID 26297)
-- Name: alumni; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni (
    id_alumni text NOT NULL,
    tahun_lulus date NOT NULL,
    nama_depan text NOT NULL,
    nama_belakang text,
    id_user text NOT NULL,
    id_sekolah text NOT NULL
);


ALTER TABLE public.alumni OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 26303)
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 26310)
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.failed_jobs_id_seq OWNER TO postgres;

--
-- TOC entry 3318 (class 0 OID 0)
-- Dependencies: 202
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- TOC entry 203 (class 1259 OID 26312)
-- Name: guru; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.guru (
    "NIP" text NOT NULL,
    nama_depan text NOT NULL,
    nama_belakang text,
    tanggal_lahir date NOT NULL,
    agama text NOT NULL,
    no_telepon text NOT NULL,
    jabatan text,
    jenis_kelamin text NOT NULL,
    photo text,
    "id_user " text NOT NULL
);


ALTER TABLE public.guru OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 26318)
-- Name: jadwal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jadwal (
    id_jadwal integer NOT NULL,
    waktu text NOT NULL,
    hari text NOT NULL,
    "NIS" integer NOT NULL,
    "NIP" text NOT NULL,
    kode_mata_pelajaran text NOT NULL
);


ALTER TABLE public.jadwal OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 26324)
-- Name: jadwal_id_jadwal_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.jadwal_id_jadwal_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jadwal_id_jadwal_seq OWNER TO postgres;

--
-- TOC entry 3319 (class 0 OID 0)
-- Dependencies: 205
-- Name: jadwal_id_jadwal_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.jadwal_id_jadwal_seq OWNED BY public.jadwal.id_jadwal;


--
-- TOC entry 206 (class 1259 OID 26326)
-- Name: jawaban; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jawaban (
    id_jawaban integer NOT NULL,
    file_jawaban text,
    "NIS" integer NOT NULL,
    id_soal_ujian integer NOT NULL
);


ALTER TABLE public.jawaban OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 26332)
-- Name: jawaban_id_jawaban_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.jawaban_id_jawaban_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jawaban_id_jawaban_seq OWNER TO postgres;

--
-- TOC entry 3320 (class 0 OID 0)
-- Dependencies: 207
-- Name: jawaban_id_jawaban_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.jawaban_id_jawaban_seq OWNED BY public.jawaban.id_jawaban;


--
-- TOC entry 208 (class 1259 OID 26334)
-- Name: kegiatan_sekolah; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kegiatan_sekolah (
    id_kegiatan integer NOT NULL,
    nama_kegiatan text NOT NULL,
    waktu_kegiatan date NOT NULL,
    id_sekolah text NOT NULL,
    photo_kegiatan_sekolah text
);


ALTER TABLE public.kegiatan_sekolah OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 26340)
-- Name: kegiatan_sekolah_id_kegiatan_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.kegiatan_sekolah_id_kegiatan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kegiatan_sekolah_id_kegiatan_seq OWNER TO postgres;

--
-- TOC entry 3321 (class 0 OID 0)
-- Dependencies: 209
-- Name: kegiatan_sekolah_id_kegiatan_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.kegiatan_sekolah_id_kegiatan_seq OWNED BY public.kegiatan_sekolah.id_kegiatan;


--
-- TOC entry 210 (class 1259 OID 26342)
-- Name: kelas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kelas (
    id_kelas integer NOT NULL,
    nama_kelas text NOT NULL,
    tingkat_kelas text NOT NULL
);


ALTER TABLE public.kelas OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 26348)
-- Name: keuangan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.keuangan (
    id_keuangan integer NOT NULL,
    keterangan_keuangan text NOT NULL,
    id_sekolah text NOT NULL,
    pemasukan_keuangan bigint,
    pengeluaran_keuangan bigint
);


ALTER TABLE public.keuangan OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 26354)
-- Name: kurikulum; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kurikulum (
    id_kurikulum text NOT NULL,
    nama_kurikulum text NOT NULL
);


ALTER TABLE public.kurikulum OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 26360)
-- Name: mata_pelajaran; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mata_pelajaran (
    kode_mata_pelajaran text NOT NULL,
    nama_mata_pelajaran text NOT NULL,
    kkm integer
);


ALTER TABLE public.mata_pelajaran OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 26366)
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 26369)
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO postgres;

--
-- TOC entry 3322 (class 0 OID 0)
-- Dependencies: 215
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- TOC entry 216 (class 1259 OID 26371)
-- Name: nilai; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nilai (
    id_nilai integer NOT NULL,
    poin_nilai integer NOT NULL,
    id_soal_ujian integer NOT NULL,
    kode_mata_pelajaran text NOT NULL,
    "NIS" integer NOT NULL
);


ALTER TABLE public.nilai OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 26377)
-- Name: nilai_id_nilai_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nilai_id_nilai_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nilai_id_nilai_seq OWNER TO postgres;

--
-- TOC entry 3323 (class 0 OID 0)
-- Dependencies: 217
-- Name: nilai_id_nilai_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nilai_id_nilai_seq OWNED BY public.nilai.id_nilai;


--
-- TOC entry 218 (class 1259 OID 26379)
-- Name: orangtua; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orangtua (
    id_orang_tua integer NOT NULL,
    nama_depan text NOT NULL,
    nama_belakang text,
    alamat_orang_tua text NOT NULL,
    keterangan_status text NOT NULL,
    "NIS" integer NOT NULL,
    nomor_telepon text,
    perkerjaan text
);


ALTER TABLE public.orangtua OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 26385)
-- Name: orangtua_id_orang_tua_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orangtua_id_orang_tua_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orangtua_id_orang_tua_seq OWNER TO postgres;

--
-- TOC entry 3324 (class 0 OID 0)
-- Dependencies: 219
-- Name: orangtua_id_orang_tua_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orangtua_id_orang_tua_seq OWNED BY public.orangtua.id_orang_tua;


--
-- TOC entry 220 (class 1259 OID 26387)
-- Name: password_resets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_resets OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 26393)
-- Name: pendaftaran; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pendaftaran (
    id_pendaftaran integer NOT NULL,
    informasi_pendaftaran text NOT NULL,
    id_sekolah text NOT NULL
);


ALTER TABLE public.pendaftaran OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 26399)
-- Name: pertemuan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pertemuan (
    id_pertemuan integer NOT NULL,
    nama_pertemuan text NOT NULL,
    keterangan_pertemuan text NOT NULL,
    id_jadwal integer NOT NULL
);


ALTER TABLE public.pertemuan OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 26405)
-- Name: pertemuan_id_pertemuan_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pertemuan_id_pertemuan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pertemuan_id_pertemuan_seq OWNER TO postgres;

--
-- TOC entry 3325 (class 0 OID 0)
-- Dependencies: 223
-- Name: pertemuan_id_pertemuan_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pertemuan_id_pertemuan_seq OWNED BY public.pertemuan.id_pertemuan;


--
-- TOC entry 224 (class 1259 OID 26407)
-- Name: presensi_guru; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.presensi_guru (
    id_presensi_guru integer NOT NULL,
    tanggal_presensi_guru date NOT NULL,
    keterangan_presensi_guru text,
    "NIP" text NOT NULL,
    waktu_presensi_guru time with time zone,
    id_pertemuan integer NOT NULL
);


ALTER TABLE public.presensi_guru OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 26413)
-- Name: presensi_guru_id_presensi_guru_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.presensi_guru_id_presensi_guru_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.presensi_guru_id_presensi_guru_seq OWNER TO postgres;

--
-- TOC entry 3326 (class 0 OID 0)
-- Dependencies: 225
-- Name: presensi_guru_id_presensi_guru_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.presensi_guru_id_presensi_guru_seq OWNED BY public.presensi_guru.id_presensi_guru;


--
-- TOC entry 226 (class 1259 OID 26415)
-- Name: presensi_siswa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.presensi_siswa (
    id_presensi_siswa integer NOT NULL,
    tanggal_presensi_siswa date NOT NULL,
    keterangan_presensi_siswa text,
    "NIS" integer NOT NULL,
    waktu_presensi_siswa time with time zone,
    id_pertemuan integer NOT NULL
);


ALTER TABLE public.presensi_siswa OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 26421)
-- Name: presensi_siswa_id_presensi_siswa_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.presensi_siswa_id_presensi_siswa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.presensi_siswa_id_presensi_siswa_seq OWNER TO postgres;

--
-- TOC entry 3327 (class 0 OID 0)
-- Dependencies: 227
-- Name: presensi_siswa_id_presensi_siswa_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.presensi_siswa_id_presensi_siswa_seq OWNED BY public.presensi_siswa.id_presensi_siswa;


--
-- TOC entry 228 (class 1259 OID 26423)
-- Name: prestasi_sekolah; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.prestasi_sekolah (
    id_prestrasi integer NOT NULL,
    nama_prestasi text NOT NULL,
    jenis_prestasi text NOT NULL,
    tahun_prestasi date NOT NULL,
    id_sekolah text NOT NULL
);


ALTER TABLE public.prestasi_sekolah OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 26429)
-- Name: prestasi_sekolah_id_prestrasi_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.prestasi_sekolah_id_prestrasi_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.prestasi_sekolah_id_prestrasi_seq OWNER TO postgres;

--
-- TOC entry 3328 (class 0 OID 0)
-- Dependencies: 229
-- Name: prestasi_sekolah_id_prestrasi_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.prestasi_sekolah_id_prestrasi_seq OWNED BY public.prestasi_sekolah.id_prestrasi;


--
-- TOC entry 230 (class 1259 OID 26431)
-- Name: role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.role (
    id_role integer NOT NULL,
    nama_role text NOT NULL
);


ALTER TABLE public.role OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 26437)
-- Name: sekolah; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sekolah (
    id_sekolah text NOT NULL,
    nama_sekolah text NOT NULL,
    alamat_sekolah text NOT NULL,
    no_telepon_sekolah text NOT NULL,
    id_kurikulum text NOT NULL,
    photo text
);


ALTER TABLE public.sekolah OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 26443)
-- Name: siswa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.siswa (
    "NIS" integer NOT NULL,
    nama_depan text NOT NULL,
    nama_belakang text,
    jenis_kelamin "char" NOT NULL,
    tanggal_lahir date NOT NULL,
    alamat_siswa text NOT NULL,
    id_kelas integer NOT NULL,
    no_telepon text NOT NULL,
    id_user text NOT NULL,
    photo text,
    agama text
);


ALTER TABLE public.siswa OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 26449)
-- Name: soal_ujian; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.soal_ujian (
    id_soal_ujian integer NOT NULL,
    file_soal text,
    keterangan_soal text,
    kode_mata_pelajaran text NOT NULL
);


ALTER TABLE public.soal_ujian OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 26455)
-- Name: soal_ujian_id_soal_ujian_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.soal_ujian_id_soal_ujian_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.soal_ujian_id_soal_ujian_seq OWNER TO postgres;

--
-- TOC entry 3329 (class 0 OID 0)
-- Dependencies: 234
-- Name: soal_ujian_id_soal_ujian_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.soal_ujian_id_soal_ujian_seq OWNED BY public.soal_ujian.id_soal_ujian;


--
-- TOC entry 235 (class 1259 OID 26457)
-- Name: spp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spp (
    id_spp integer NOT NULL,
    keterangan_spp text NOT NULL,
    "NIS" integer NOT NULL
);


ALTER TABLE public.spp OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 26755)
-- Name: spp_admin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spp_admin (
    id_spp_admin integer NOT NULL,
    "NIS" integer,
    nama_depan text,
    nama_belakang text,
    tanggal_aktual_pembayaran date,
    tanggal_jatuh_tempo date,
    harga_spp_detail integer,
    bukti_pembayaran text
);


ALTER TABLE public.spp_admin OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 26753)
-- Name: spp_admin_id_spp_admin_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.spp_admin ALTER COLUMN id_spp_admin ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.spp_admin_id_spp_admin_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 236 (class 1259 OID 26463)
-- Name: spp_detail; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spp_detail (
    id_spp_detail integer NOT NULL,
    status_spp_detail text NOT NULL,
    periode_spp_detail text NOT NULL,
    harga_spp_detail integer NOT NULL,
    id_spp integer NOT NULL,
    tanggal_aktual_pembayaran text
);


ALTER TABLE public.spp_detail OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 26469)
-- Name: spp_detail_id_spp_detail_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spp_detail_id_spp_detail_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spp_detail_id_spp_detail_seq OWNER TO postgres;

--
-- TOC entry 3331 (class 0 OID 0)
-- Dependencies: 237
-- Name: spp_detail_id_spp_detail_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spp_detail_id_spp_detail_seq OWNED BY public.spp_detail.id_spp_detail;


--
-- TOC entry 238 (class 1259 OID 26471)
-- Name: spp_id_spp_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spp_id_spp_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spp_id_spp_seq OWNER TO postgres;

--
-- TOC entry 3332 (class 0 OID 0)
-- Dependencies: 238
-- Name: spp_id_spp_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spp_id_spp_seq OWNED BY public.spp.id_spp;


--
-- TOC entry 239 (class 1259 OID 26473)
-- Name: user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."user" (
    id_user text NOT NULL,
    username text NOT NULL,
    password text NOT NULL,
    id_sekolah text NOT NULL,
    id_role integer NOT NULL
);


ALTER TABLE public."user" OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 26708)
-- Name: verifikasi_kehadiran; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.verifikasi_kehadiran (
    id integer NOT NULL,
    "NIS" integer,
    nama_depan text,
    tanggal_presensi_siswa date,
    kehadiran character(50),
    waktu_presensi_siswa time with time zone,
    "nama_belakang " text
);


ALTER TABLE public.verifikasi_kehadiran OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 26711)
-- Name: verifikasi_kehadiran_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.verifikasi_kehadiran ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.verifikasi_kehadiran_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3016 (class 2604 OID 26479)
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- TOC entry 3017 (class 2604 OID 26480)
-- Name: jadwal id_jadwal; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jadwal ALTER COLUMN id_jadwal SET DEFAULT nextval('public.jadwal_id_jadwal_seq'::regclass);


--
-- TOC entry 3018 (class 2604 OID 26481)
-- Name: jawaban id_jawaban; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jawaban ALTER COLUMN id_jawaban SET DEFAULT nextval('public.jawaban_id_jawaban_seq'::regclass);


--
-- TOC entry 3019 (class 2604 OID 26482)
-- Name: kegiatan_sekolah id_kegiatan; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kegiatan_sekolah ALTER COLUMN id_kegiatan SET DEFAULT nextval('public.kegiatan_sekolah_id_kegiatan_seq'::regclass);


--
-- TOC entry 3020 (class 2604 OID 26483)
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- TOC entry 3021 (class 2604 OID 26484)
-- Name: nilai id_nilai; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nilai ALTER COLUMN id_nilai SET DEFAULT nextval('public.nilai_id_nilai_seq'::regclass);


--
-- TOC entry 3022 (class 2604 OID 26485)
-- Name: orangtua id_orang_tua; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orangtua ALTER COLUMN id_orang_tua SET DEFAULT nextval('public.orangtua_id_orang_tua_seq'::regclass);


--
-- TOC entry 3023 (class 2604 OID 26486)
-- Name: pertemuan id_pertemuan; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pertemuan ALTER COLUMN id_pertemuan SET DEFAULT nextval('public.pertemuan_id_pertemuan_seq'::regclass);


--
-- TOC entry 3024 (class 2604 OID 26487)
-- Name: presensi_guru id_presensi_guru; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.presensi_guru ALTER COLUMN id_presensi_guru SET DEFAULT nextval('public.presensi_guru_id_presensi_guru_seq'::regclass);


--
-- TOC entry 3025 (class 2604 OID 26488)
-- Name: presensi_siswa id_presensi_siswa; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.presensi_siswa ALTER COLUMN id_presensi_siswa SET DEFAULT nextval('public.presensi_siswa_id_presensi_siswa_seq'::regclass);


--
-- TOC entry 3026 (class 2604 OID 26489)
-- Name: prestasi_sekolah id_prestrasi; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prestasi_sekolah ALTER COLUMN id_prestrasi SET DEFAULT nextval('public.prestasi_sekolah_id_prestrasi_seq'::regclass);


--
-- TOC entry 3027 (class 2604 OID 26490)
-- Name: soal_ujian id_soal_ujian; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.soal_ujian ALTER COLUMN id_soal_ujian SET DEFAULT nextval('public.soal_ujian_id_soal_ujian_seq'::regclass);


--
-- TOC entry 3028 (class 2604 OID 26491)
-- Name: spp id_spp; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spp ALTER COLUMN id_spp SET DEFAULT nextval('public.spp_id_spp_seq'::regclass);


--
-- TOC entry 3029 (class 2604 OID 26492)
-- Name: spp_detail id_spp_detail; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spp_detail ALTER COLUMN id_spp_detail SET DEFAULT nextval('public.spp_detail_id_spp_detail_seq'::regclass);


--
-- TOC entry 3269 (class 0 OID 26297)
-- Dependencies: 200
-- Data for Name: alumni; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.alumni (id_alumni, tahun_lulus, nama_depan, nama_belakang, id_user, id_sekolah) FROM stdin;
alu_01	2020-05-12	Lim	Ban Pit	alu_01	4779
alu_02	2020-05-12	Ahmad	Juprianto	alu_02	4779
alu_03	2020-05-12	Aldy	Setiawan	alu_03	4779
alu_04	2020-05-12	Abdul	Gunawan	alu_04	4779
alu_05	2020-05-12	Bento	Darmawan	alu_05	4779
alu_06	2020-05-12	Beni	Sunandar	alu_06	4779
alu_07	2020-05-12	Beti	Kristiani	alu_07	4779
alu_08	2020-05-12	Rosa	Meilinda	alu_08	4779
alu_09	2020-05-12	Ratna	Ayu	alu_09	4779
alu_10	2020-05-12	Raditya	Dika	alu_10	4780
alu_11	2020-05-12	Susi	Astuti	alu_11	4780
alu_12	2020-05-12	Susan	Susanti	alu_12	4780
alu_13	2020-05-12	Sutrisno	Sukomulyo	alu_13	4780
alu_14	2020-05-12	Kelvin	Sumargo	alu_14	4780
alu_15	2020-05-12	Kevin	Sunjaya	alu_15	4780
alu_16	2020-05-12	Lukman	Cahyadi	alu_16	4780
alu_17	2020-05-12	Lisda	Margianti	alu_17	4780
alu_18	2020-05-12	Laura	Angelica	alu_18	4780
alu_19	2020-05-12	Ogre	Arthemus	alu_19	4780
alu_20	2020-05-12	Violet	Cahaya Bintang	alu_20	4780
\.


--
-- TOC entry 3270 (class 0 OID 26303)
-- Dependencies: 201
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.failed_jobs (id, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- TOC entry 3272 (class 0 OID 26312)
-- Dependencies: 203
-- Data for Name: guru; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.guru ("NIP", nama_depan, nama_belakang, tanggal_lahir, agama, no_telepon, jabatan, jenis_kelamin, photo, "id_user ") FROM stdin;
2199384900003	Ignatius	Brahmadi	1982-08-12	Kristen	081657463276	Bendahara	L	\N	2199384900003
2199384900002	Sutisna	Mulyadi	1979-04-03	Islam	082277564423	Sekertaris	L	\N	2199384900002
2180384900001	Susi	Susanti	1980-05-06	Kristen	085512377654	Kepala Sekolah	P	\N	2180384900001
2180384900002	Sinta	Asih Mulyaningrat	1982-07-17	Kristen	083487235327	Guru Pengajar	P	\N	2180384900002
2180384900003	Bayu	Kurniawan	1989-06-21	Islam	081287465876	Bendahara	L	\N	2180384900003
2199384900004	Intan	Lestari	1975-12-22	Islam	08283746538	Guru Pengajar	P	\N	2199384900004
2199384900005	Dimas	Satya	1985-01-29	Islam	081254687851	Guru Pengajar	L	\N	2199384900005
2199384900006	Aji	Kusuma	1982-08-12	Katolik	085123568974	Guru Pengajar	L	\N	2199384900006
2199384900007	Willi	Wirahman	1979-04-03	Buddha	085445678912	Guru Pengajar	L	\N	2199384900007
2199384900008	Anthony	Martin	1980-05-06	Islam	082112346587	Guru Pengajar	L	\N	2199384900008
2199384900009	Vincent	Liu	1982-07-17	Katolik	089923498513	Guru Pengajar	L	\N	2199384900009
2199384900010	Givania	Angelica	1989-06-21	Buddha	082211779932	Guru Pengajar	P	\N	2199384900010
2199384900011	Natasya	Liu	1991-01-24	Islam	082546877946	Guru Pengajar	P	\N	2199384900011
2199384900012	Natasya	Dey	1992-12-01	Buddha	082146582584	Guru Pengajar	P	\N	2199384900012
2199384900013	Nicolas	Fladimire	1993-09-21	Islam	082278946513	Guru Pengajar	L	\N	2199384900013
2199384900014	Fernando	\N	1994-05-09	Buddha	082579978464	Guru Pengajar	L	\N	2199384900014
2199384900015	Akmal	Wijaya	1989-12-09	Islam	085112114584	Guru Pengajar	L	\N	2199384900015
2199384900016	Ryan	Nataniel	1988-04-19	Buddha	082112358521	Guru Pengajar	L	\N	2199384900016
2199384900017	Natanael	Halim	1992-04-28	Kristen	089255874561	Guru Pengajar	L	\N	2199384900017
2199384900018	Sania	Meredian	1992-06-08	Katolik	089256987877	Guru Pengajar	P	\N	2199384900018
2199384900019	Erika	Lianti	1993-12-06	Katolik	082178894561	Guru Pengajar	P	\N	2199384900019
2199384900020	Jessica	Liu	1994-08-25	Buddha	08512452851	Guru Pengajar	P	\N	2199384900020
2199384900022	Mega	Wati	1996-11-17	Kristen	085213134646	Guru Pengajar	P	\N	2199384900022
2199384900023	Monia	Lazarros	1994-12-14	Islam	08527894656	Guru Pengajar	P	\N	2199384900023
2199384900024	David	Sinaga	1995-05-08	Kristen	085111334466	Guru Pengajar	L	\N	2199384900024
2199384900025	Rifky	Firmansyah	1991-11-14	Islam	085477994466	Guru Pengajar	L	\N	2199384900025
2199384900026	Bagaskara	Setiadi	1992-08-14	Katolik	085322446688	Guru Pengajar	L	\N	2199384900026
2199384900027	Zaikhul	Sulton	1993-07-18	Katolik	085199776655	Guru Pengajar	L	\N	2199384900027
2199384900028	Jajang	Sukmara	1996-02-01	Islam	085100948000	Guru Pengajar	L	\N	2199384900028
2199384900029	Syahrul	Lutfi	1992-08-12	Kristen	085320657422	Guru Pengajar	L	\N	2199384900029
2199384900030	Anjasmara	\N	1992-08-29	Kristen	084578951110	Guru Pengajar	L	\N	2199384900030
2199384900031	Nining	Mulyaningsih	1993-05-18	Buddha	085122335849	Guru Pengajar	P	\N	2199384900031
2199384900032	Sri	Nur Hasannah	1992-04-14	Buddha	085100470098	Guru Pengajar	P	\N	2199384900032
219912345678345	Cahyo	Mulyo	1975-12-22	Hindu	08283746538	Guru Pengajar	L	\N	219912345678345
2199384900021	Melista	Lauda	1995-10-11	Islam	08569694747	Guru Pengajar	P	2199384900021.png	2199384900021
2190345800001	Diah	Dumai	1985-01-22	Hindu	085767834652	Staff Sekolah	L	\N	2190345800001
\.


--
-- TOC entry 3273 (class 0 OID 26318)
-- Dependencies: 204
-- Data for Name: jadwal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jadwal (id_jadwal, waktu, hari, "NIS", "NIP", kode_mata_pelajaran) FROM stdin;
1	10:00 - 12:00	Senin	210872440	219912345678345	MAT_2
5	07:00 - 08:30	Senin	210872470	2199384900019	MAT_1
3	07:00 - 08:30	Senin	210872440	2190345800001	PJOK_2
4	13:00 - 14:00	Senin	210872440	2199384900002	SB_2
296	07:00 - 08:30	Senin	210872529	2199384900016	MAT_11
297	08:30 - 09:30	Senin	210872529	2199384900017	PJOK_11
299	13:00 - 14:00	Senin	210872529	2199384900019	SB_11
300	07:00 - 08:30	Selasa	210872529	2199384900020	SEJ_11
301	08:30 - 09:30	Selasa	210872529	2199384900021	SB_11
302	10:00 - 12:00	Selasa	210872529	2199384900022	BI_11
304	07:00 - 08:30	Rabu	210872529	2199384900024	MAT_11
305	08:30 - 09:30	Rabu	210872529	2199384900025	PJOK_11
307	13:00 - 14:00	Rabu	210872529	2199384900027	SB_11
308	07:00 - 08:30	Kamis	210872529	2199384900028	BING_11
31	07:00 - 08:30	Selasa	210872440	2199384900004	PKN_2
6	08:30 - 09:30	Senin	210872470	2199384900021	PJOK_1
33	10:00 - 12:00	Selasa	210872440	2199384900006	BI_2
8	13:00 - 14:00	Senin	210872470	2199384900022	SB_1
9	07:00 - 08:30	Selasa	210872470	2199384900023	PKN_1
10	08:30 - 09:30	Selasa	210872470	2199384900022	SB_1
39	07:00 - 08:30	Kamis	210872440	2199384900012	BING_2
46	07:00 - 08:30	Senin	210872469	2199384900019	MAT_1
48	10:00 - 12:00	Senin	210872469	2199384900021	PJOK_1
49	13:00 - 14:00	Senin	210872469	2199384900022	SB_1
50	07:00 - 08:30	Selasa	210872469	2199384900023	PKN_1
52	10:00 - 12:00	Selasa	210872469	2199384900025	BI_1
58	07:00 - 08:30	Kamis	210872469	2199384900031	BING_1
65	07:00 - 08:30	Senin	210872481	2199384900009	MAT_3
66	08:30 - 09:30	Senin	210872481	2199384900010	PJOK_3
69	07:00 - 08:30	Selasa	210872481	2199384900013	PKN_3
71	10:00 - 12:00	Selasa	210872481	2199384900015	BI_3
84	07:00 - 08:30	Senin	210872487	2199384900028	MAT_4
85	08:30 - 09:30	Senin	210872487	2199384900029	PJOK_4
88	07:00 - 08:30	Selasa	210872487	2199384900032	PKN_4
96	07:00 - 08:30	Kamis	210872487	2199384900011	BING_4
103	07:00 - 08:30	Senin	210872492	2199384900018	MAT_5
109	10:00 - 12:00	Selasa	210872492	2199384900024	BI_5
32	07:00 - 08:30	Selasa	210872440	2199384900002	SB_2
35	07:00 - 08:30	Rabu	210872440	219912345678345	MAT_2
38	13:00 - 14:00	Rabu	210872440	2199384900002	SB_2
41	10:00 - 12:00	Kamis	210872440	219912345678345	MAT_2
43	07:00 - 08:30	Jumat	210872440	2190345800001	PJOK_2
45	10:00 - 12:00	Jumat	210872440	2199384900004	PKN_2
47	08:30 - 09:30	Senin	210872469	2199384900021	PJOK_1
51	08:30 - 09:30	Selasa	210872469	2199384900022	SB_1
60	10:00 - 12:00	Kamis	210872469	2199384900019	MAT_1
62	07:00 - 08:30	Jumat	210872469	2199384900021	PJOK_1
64	10:00 - 12:00	Jumat	210872469	2199384900023	PKN_1
68	13:00 - 14:00	Senin	210872481	2199384900003	SB_3
70	08:30 - 09:30	Selasa	210872481	2199384900003	SB_3
73	07:00 - 08:30	Rabu	210872481	2199384900009	MAT_3
74	08:30 - 09:30	Rabu	210872481	2199384900010	PJOK_3
76	13:00 - 14:00	Rabu	210872481	2199384900003	SB_3
79	10:00 - 12:00	Kamis	210872481	2199384900009	MAT_3
81	07:00 - 08:30	Jumat	210872481	2199384900010	PJOK_3
83	10:00 - 12:00	Jumat	210872481	2199384900013	PKN_3
87	13:00 - 14:00	Senin	210872487	2199384900007	SB_4
89	08:30 - 09:30	Selasa	210872487	2199384900007	SB_4
90	10:00 - 12:00	Selasa	210872487	2199384900008	BI_4
92	07:00 - 08:30	Rabu	210872487	2199384900028	MAT_4
93	08:30 - 09:30	Rabu	210872487	2199384900029	PJOK_4
95	13:00 - 14:00	Rabu	210872487	2199384900007	SB_4
98	10:00 - 12:00	Kamis	210872487	2199384900028	MAT_4
100	07:00 - 08:30	Jumat	210872487	2199384900029	PJOK_4
102	10:00 - 12:00	Jumat	210872487	2199384900032	PKN_4
104	08:30 - 09:30	Senin	210872492	2199384900009	PJOK_5
106	13:00 - 14:00	Senin	210872492	2199384900014	SB_5
108	08:30 - 09:30	Selasa	210872492	2199384900014	SB_5
107	07:00 - 08:30	Selasa	210872492	2199384900016	PKN_5
111	07:00 - 08:30	Rabu	210872492	2199384900018	MAT_5
112	08:30 - 09:30	Rabu	210872492	2199384900009	PJOK_5
115	07:00 - 08:30	Kamis	210872492	2199384900030	BING_5
13	07:00 - 08:30	Rabu	210872470	2199384900019	MAT_1
14	08:30 - 09:30	Rabu	210872470	2199384900021	PJOK_1
16	13:00 - 14:00	Rabu	210872470	2199384900022	SB_1
17	07:00 - 08:30	Kamis	210872470	2199384900031	BING_1
19	10:00 - 12:00	Kamis	210872470	2199384900019	MAT_1
21	07:00 - 08:30	Jumat	210872470	2199384900021	PJOK_1
141	07:00 - 08:30	Senin	210872504	2199384900027	MAT_7
142	08:30 - 09:30	Senin	210872504	2199384900028	PJOK_7
144	13:00 - 14:00	Senin	210872504	2199384900030	SB_7
145	07:00 - 08:30	Selasa	210872504	2199384900031	PKN_7
146	08:30 - 09:30	Selasa	210872504	2199384900032	SB_7
147	10:00 - 12:00	Selasa	210872504	2199384900004	BI_7
149	07:00 - 08:30	Rabu	210872504	2199384900006	MAT_7
150	08:30 - 09:30	Rabu	210872504	2199384900007	PJOK_7
152	13:00 - 14:00	Rabu	210872504	2199384900009	SB_7
153	07:00 - 08:30	Kamis	210872504	2199384900010	BING_7
155	10:00 - 12:00	Kamis	210872504	2199384900012	MAT_7
157	07:00 - 08:30	Jumat	210872504	2199384900014	PJOK_7
159	10:00 - 12:00	Jumat	210872504	2199384900016	PKN_7
160	07:00 - 08:30	Senin	210872510	2199384900017	MAT_8
161	08:30 - 09:30	Senin	210872510	2199384900018	PJOK_8
163	13:00 - 14:00	Senin	210872510	2199384900020	SB_8
164	07:00 - 08:30	Selasa	210872510	2199384900021	PKN_8
165	08:30 - 09:30	Selasa	210872510	2199384900022	SB_8
166	10:00 - 12:00	Selasa	210872510	2199384900023	BI_8
168	07:00 - 08:30	Rabu	210872510	2199384900025	MAT_8
169	08:30 - 09:30	Rabu	210872510	2199384900026	PJOK_8
171	13:00 - 14:00	Rabu	210872510	2199384900028	SB_8
172	07:00 - 08:30	Kamis	210872510	2199384900029	BING_8
174	10:00 - 12:00	Kamis	210872510	2199384900031	MAT_8
176	07:00 - 08:30	Jumat	210872510	2199384900004	PJOK_8
178	10:00 - 12:00	Jumat	210872510	2199384900006	PKN_8
179	07:00 - 08:30	Senin	210872516	2199384900007	MAT_9
180	08:30 - 09:30	Senin	210872516	2199384900008	PJOK_9
182	13:00 - 14:00	Senin	210872516	2199384900010	SB_9
183	07:00 - 08:30	Selasa	210872516	2199384900011	PKN_9
184	08:30 - 09:30	Selasa	210872516	2199384900012	SB_9
185	10:00 - 12:00	Selasa	210872516	2199384900013	BI_9
187	07:00 - 08:30	Rabu	210872516	2199384900015	MAT_9
188	08:30 - 09:30	Rabu	210872516	2199384900016	PJOK_9
190	13:00 - 14:00	Rabu	210872516	2199384900018	SB_9
191	07:00 - 08:30	Kamis	210872516	2199384900019	BING_9
193	10:00 - 12:00	Kamis	210872516	2199384900021	MAT_9
195	07:00 - 08:30	Jumat	210872516	2199384900023	PJOK_9
197	10:00 - 12:00	Jumat	210872516	2199384900025	PKN_9
310	10:00 - 12:00	Kamis	210872529	2199384900030	MAT_11
312	07:00 - 08:30	Jumat	210872529	2199384900032	PJOK_11
314	10:00 - 12:00	Jumat	210872529	2199384900005	SEJ_11
315	07:00 - 08:30	Senin	210872537	2199384900006	MAT_12
316	08:30 - 09:30	Senin	210872537	2199384900007	PJOK_12
318	13:00 - 14:00	Senin	210872537	2199384900009	SB_12
319	07:00 - 08:30	Selasa	210872537	2199384900010	SEJ_12
320	08:30 - 09:30	Selasa	210872537	2199384900011	SB_12
321	10:00 - 12:00	Selasa	210872537	2199384900012	BI_12
323	07:00 - 08:30	Rabu	210872537	2199384900014	MAT_12
324	08:30 - 09:30	Rabu	210872537	2199384900015	PJOK_12
122	07:00 - 08:30	Senin	210872498	2199384900017	MAT_6
123	08:30 - 09:30	Senin	210872498	2199384900020	PJOK_6
125	13:00 - 14:00	Senin	210872498	2199384900026	SB_6
127	08:30 - 09:30	Selasa	210872498	2199384900026	SB_6
126	07:00 - 08:30	Selasa	210872498	2199384900027	PKN_6
128	10:00 - 12:00	Selasa	210872498	2199384900031	BI_6
130	07:00 - 08:30	Rabu	210872498	2199384900017	MAT_6
131	08:30 - 09:30	Rabu	210872498	2199384900020	PJOK_6
133	13:00 - 14:00	Rabu	210872498	2199384900026	SB_6
134	07:00 - 08:30	Kamis	210872498	2199384900019	BING_6
326	13:00 - 14:00	Rabu	210872537	2199384900017	SB_12
327	07:00 - 08:30	Kamis	210872537	2199384900018	BING_12
220	07:00 - 08:30	Senin	210872522	2199384900026	MAT_10
221	08:30 - 09:30	Senin	210872522	2199384900027	PJOK_10
223	13:00 - 14:00	Senin	210872522	2199384900029	SB_10
224	07:00 - 08:30	Selasa	210872522	2199384900030	SEJ_10
225	08:30 - 09:30	Selasa	210872522	2199384900031	SB_10
226	10:00 - 12:00	Selasa	210872522	2199384900032	BI_10
228	07:00 - 08:30	Rabu	210872522	2199384900005	MAT_10
229	08:30 - 09:30	Rabu	210872522	2199384900006	PJOK_10
231	13:00 - 14:00	Rabu	210872522	2199384900008	SB_10
232	07:00 - 08:30	Kamis	210872522	2199384900009	BING_10
234	10:00 - 12:00	Kamis	210872522	2199384900011	MAT_10
236	07:00 - 08:30	Jumat	210872522	2199384900013	PJOK_10
238	10:00 - 12:00	Jumat	210872522	2199384900015	SEJ_10
329	10:00 - 12:00	Kamis	210872537	2199384900020	MAT_12
331	07:00 - 08:30	Jumat	210872537	2199384900022	PJOK_12
333	10:00 - 12:00	Jumat	210872537	2199384900024	SEJ_12
23	10:00 - 12:00	Jumat	210872470	2199384900023	PKN_1
36	08:30 - 09:30	Rabu	210872440	2190345800001	PJOK_2
54	07:00 - 08:30	Rabu	210872469	2199384900019	MAT_1
55	08:30 - 09:30	Rabu	210872469	2199384900021	PJOK_1
57	13:00 - 14:00	Rabu	210872469	2199384900022	SB_1
77	07:00 - 08:30	Kamis	210872481	2199384900005	BING_3
114	13:00 - 14:00	Rabu	210872492	2199384900014	SB_5
117	10:00 - 12:00	Kamis	210872492	2199384900018	MAT_5
119	07:00 - 08:30	Jumat	210872492	2199384900009	PJOK_5
121	10:00 - 12:00	Jumat	210872492	2199384900016	PKN_5
136	10:00 - 12:00	Kamis	210872498	2199384900017	MAT_6
138	07:00 - 08:30	Jumat	210872498	2199384900020	PJOK_6
140	10:00 - 12:00	Jumat	210872498	2199384900027	PKN_6
334	07:00 - 08:30	Senin	210872471	2199384900019	MAT_1
335	08:30 - 09:30	Senin	210872471	2199384900021	PJOK_1
337	13:00 - 14:00	Senin	210872471	2199384900022	SB_1
338	07:00 - 08:30	Selasa	210872471	2199384900023	PKN_1
339	08:30 - 09:30	Selasa	210872471	2199384900022	SB_1
340	10:00 - 12:00	Selasa	210872471	2199384900025	BI_1
342	07:00 - 08:30	Rabu	210872471	2199384900019	MAT_1
343	08:30 - 09:30	Rabu	210872471	2199384900021	PJOK_1
346	13:00 - 14:00	Rabu	210872471	2199384900022	SB_1
347	07:00 - 08:30	Kamis	210872471	2199384900031	BING_1
349	10:00 - 12:00	Kamis	210872471	2199384900019	MAT_1
351	07:00 - 08:30	Jumat	210872471	2199384900021	PJOK_1
353	10:00 - 12:00	Jumat	210872471	2199384900023	PKN_1
354	07:00 - 08:30	Senin	210872472	2199384900019	MAT_1
355	08:30 - 09:30	Senin	210872472	2199384900021	PJOK_1
357	13:00 - 14:00	Senin	210872472	2199384900022	SB_1
358	07:00 - 08:30	Selasa	210872472	2199384900023	PKN_1
359	08:30 - 09:30	Selasa	210872472	2199384900022	SB_1
360	10:00 - 12:00	Selasa	210872472	2199384900025	BI_1
362	07:00 - 08:30	Rabu	210872472	2199384900019	MAT_1
363	08:30 - 09:30	Rabu	210872472	2199384900021	PJOK_1
365	13:00 - 14:00	Rabu	210872472	2199384900022	SB_1
366	07:00 - 08:30	Kamis	210872472	2199384900031	BING_1
368	10:00 - 12:00	Kamis	210872472	2199384900019	MAT_1
370	07:00 - 08:30	Jumat	210872472	2199384900021	PJOK_1
372	10:00 - 12:00	Jumat	210872472	2199384900023	PKN_1
\.


--
-- TOC entry 3275 (class 0 OID 26326)
-- Dependencies: 206
-- Data for Name: jawaban; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jawaban (id_jawaban, file_jawaban, "NIS", id_soal_ujian) FROM stdin;
9	\N	210872469	14
10	\N	210872481	15
1	problemA3.py	210872469	1
2	problemA3.py	210872469	2
3	problemA3.py	210872469	3
4	problemA3.py	210872469	4
5	problemA3.py	210872469	5
6	problemA3.py	210872469	6
7	problemA3.py	210872469	7
8	problemA3.py	210872492	8
11	problemA3.py	210872470	1
12	problemA3.py	210872470	2
13	problemA3.py	210872470	3
14	problemA3.py	210872470	4
15	problemA3.py	210872470	5
16	problemA3.py	210872470	6
17	problemA3.py	210872470	7
18	\N	210872470	14
19	problemA3.py	210872471	1
20	problemA3.py	210872471	2
21	problemA3.py	210872471	3
22	problemA3.py	210872471	4
23	problemA3.py	210872471	5
24	problemA3.py	210872471	6
25	problemA3.py	210872471	7
34	WhatsApp Image 2021-06-06 at 12.24.08.jpeg	210872472	1
\.


--
-- TOC entry 3277 (class 0 OID 26334)
-- Dependencies: 208
-- Data for Name: kegiatan_sekolah; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.kegiatan_sekolah (id_kegiatan, nama_kegiatan, waktu_kegiatan, id_sekolah, photo_kegiatan_sekolah) FROM stdin;
2	Perpisahan	2021-03-09	4779	\N
1	Bazzar Senyum Sekolah	2021-02-15	4779	Bazzar Senyum Sekolah.jpg
7	Senyum Salam Sapa	2021-02-02	4779	\N
\.


--
-- TOC entry 3279 (class 0 OID 26342)
-- Dependencies: 210
-- Data for Name: kelas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.kelas (id_kelas, nama_kelas, tingkat_kelas) FROM stdin;
1	A	TK
2	B	TK
3	1A	SD
4	1B	SD
5	1C	SD
6	2A	SD
7	2B	SD
8	2C	SD
9	3A	SD
10	3B	SD
11	3C	SD
12	4A	SD
13	4B	SD
14	4C	SD
15	5A	SD
16	5B	SD
17	5C	SD
18	6A	SD
19	6B	SD
20	6C	SD
21	7A	SMP
22	7B	SMP
23	7C	SMP
24	8A	SMP
26	9A	SMP
27	10A	SMA
28	10B	SMA
29	10C	SMA
30	11A	SMA
31	11B	SMA
32	11C	SMA
33	12A	SMA
34	12B	SMA
35	12C	SMA
25	8B	SMP
\.


--
-- TOC entry 3280 (class 0 OID 26348)
-- Dependencies: 211
-- Data for Name: keuangan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.keuangan (id_keuangan, keterangan_keuangan, id_sekolah, pemasukan_keuangan, pengeluaran_keuangan) FROM stdin;
1	SPP siswa	4779	10000000	\N
2	Renovasi Toilet	4779	\N	5000000
\.


--
-- TOC entry 3281 (class 0 OID 26354)
-- Dependencies: 212
-- Data for Name: kurikulum; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.kurikulum (id_kurikulum, nama_kurikulum) FROM stdin;
K04	2004
K06	2006
K13	2013
K94	1994
\.


--
-- TOC entry 3282 (class 0 OID 26360)
-- Dependencies: 213
-- Data for Name: mata_pelajaran; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mata_pelajaran (kode_mata_pelajaran, nama_mata_pelajaran, kkm) FROM stdin;
BI_1	Bahasa Indonesia Kelas 1	68
BI_10	Bahasa Indonesia Kelas 10	70
BI_11	Bahasa Indonesia Kelas 11	70
BI_12	Bahasa Indonesia Kelas 12	70
BI_2	Bahasa Indonesia Kelas 2	68
BI_3	Bahasa Indonesia Kelas 3	68
BI_4	Bahasa Indonesia Kelas 4	68
BI_5	Bahasa Indonesia Kelas 5	68
BI_6	Bahasa Indonesia Kelas 6	68
BI_7	Bahasa Indonesia Kelas 7	68
BI_8	Bahasa Indonesia Kelas 8	68
BI_9	Bahasa Indonesia Kelas 9	68
BING_1	Bahasa Inggris Kelas 1	65
BING_10	Bahasa Inggris Kelas 10	68
BING_11	Bahasa Inggris Kelas 11	68
BING_12	Bahasa Inggris Kelas 12	68
BING_2	Bahasa Inggris Kelas 2	65
BING_3	Bahasa Inggris Kelas 3	65
BING_4	Bahasa Inggris Kelas 4	65
BING_5	Bahasa Inggris Kelas 5	65
BING_6	Bahasa Inggris Kelas 6	65
BING_7	Bahasa Inggris Kelas 7	65
BING_8	Bahasa Inggris Kelas 8	65
BING_9	Bahasa Inggris Kelas 9	65
GB_TK	Menggambar	60
MAT_1	Matematika Kelas 1	62
MAT_10	Matematika Kelas 10	65
MAT_11	Matematika Kelas 11	65
MAT_12	Matematika Kelas 12	65
MAT_2	Matematika Kelas 2	62
MAT_3	Matematika Kelas 3	62
MAT_4	Matematika Kelas 4	62
MAT_5	Matematika Kelas 5	62
MAT_6	Matematika Kelas 6	62
MAT_7	Matematika Kelas 7	62
MAT_8	Matematika Kelas 8	62
MAT_9	Matematika Kelas 9	62
MB_TK	Membaca	60
PJOK_1	Olahraga Kelas 1	69
PJOK_10	Olahraga Kelas 10	69
PJOK_11	Olahraga Kelas 11	69
PJOK_12	Olahraga Kelas 12	69
PJOK_2	Olahraga Kelas 2	69
PJOK_3	Olahraga Kelas 3	69
PJOK_4	Olahraga Kelas 4	69
PJOK_5	Olahraga Kelas 5	69
PJOK_6	Olahraga Kelas 6	69
PJOK_7	Olahraga Kelas 7	69
PJOK_8	Olahraga Kelas 8	69
PJOK_9	Olahraga Kelas 9	69
PKN_1	Pendidikan Kewarganegaraan Kelas 1	67
PKN_2	Pendidikan Kewarganegaraan Kelas 2	67
PKN_3	Pendidikan Kewarganegaraan Kelas 3	67
PKN_4	Pendidikan Kewarganegaraan Kelas 4	67
PKN_5	Pendidikan Kewarganegaraan Kelas 5	67
PKN_6	Pendidikan Kewarganegaraan Kelas 6	67
PKN_7	Pendidikan Kewarganegaraan Kelas 7	67
PKN_8	Pendidikan Kewarganegaraan Kelas 8	67
PKN_9	Pendidikan Kewarganegaraan Kelas 9	67
SB_1	Seni Budaya Kelas 1	67
SB_10	Seni Budaya Kelas 10	67
SB_11	Seni Budaya Kelas 11	67
SB_12	Seni Budaya Kelas 12	67
SB_2	Seni Budaya Kelas 2	67
SB_3	Seni Budaya Kelas 3	67
SB_4	Seni Budaya Kelas 4	67
SB_5	Seni Budaya Kelas 5	67
SB_6	Seni Budaya Kelas 6	67
SB_7	Seni Budaya Kelas 7	67
SB_8	Seni Budaya Kelas 8	67
SB_9	Seni Budaya Kelas 9	67
SEJ_10	Sejarah Kelas 10	67
SEJ_11	Sejarah Kelas 11	67
SEJ_12	Sejarah Kelas 12	67
TL_TK	Menulis	60
\.


--
-- TOC entry 3283 (class 0 OID 26366)
-- Dependencies: 214
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.migrations (id, migration, batch) FROM stdin;
1	2014_10_12_000000_create_users_table	1
2	2014_10_12_100000_create_password_resets_table	1
3	2019_08_19_000000_create_failed_jobs_table	1
\.


--
-- TOC entry 3285 (class 0 OID 26371)
-- Dependencies: 216
-- Data for Name: nilai; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nilai (id_nilai, poin_nilai, id_soal_ujian, kode_mata_pelajaran, "NIS") FROM stdin;
16	0	15	BING_3	210872481
17	0	1	MAT_1	210872470
18	0	2	PKN_1	210872470
19	0	3	BI_1	210872470
20	0	4	BING_1	210872470
22	0	6	SB_1	210872470
23	0	7	MAT_1	210872470
24	0	14	PJOK_1	210872470
25	0	1	MAT_1	210872471
26	0	2	PKN_1	210872471
27	0	3	BI_1	210872471
28	0	4	BING_1	210872471
30	0	6	SB_1	210872471
31	0	7	MAT_1	210872471
32	0	14	PJOK_1	210872471
4	80	4	BING_1	210872469
1	90	1	MAT_1	210872469
2	85	2	PKN_1	210872469
3	78	3	BI_1	210872469
6	100	6	SB_1	210872469
7	85	7	MAT_1	210872469
9	86	8	SB_5	210872492
12	0	14	PJOK_1	210872469
21	85	5	PJOK_1	210872470
8	80	5	PJOK_1	210872469
29	90	5	PJOK_1	210872471
\.


--
-- TOC entry 3287 (class 0 OID 26379)
-- Dependencies: 218
-- Data for Name: orangtua; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orangtua (id_orang_tua, nama_depan, nama_belakang, alamat_orang_tua, keterangan_status, "NIS", nomor_telepon, perkerjaan) FROM stdin;
2	Santi	Sulasti	Bandung	Ibu	210872437	085156122223	Penjahit
3	Bobby	Mc Donald	Bandung	Ayah	210872438	082131515681	Koki
5	Bambang	Koesdianto	Bandung	Ayah	210872440	081264222387	Wirausahawan
6	Lina	Ningsih	Bandung	Ibu	210872441	082216665876	Ibu Rumah Tangga
7	Diana	Tappang	Bandung	Ibu	210872442	082255562781	Dokter Hewan
8	Muhammad	Ridwan	Bandung	Wali	210872443	081231655779	Pengacara
9	Abhimanyu	\N	Bandung	Ayah	210872444	085222136897	Wirausahawan
10	Linda	Kumalasari\n	Bandung	Ibu	210872445	082216187496	Ibu Rumah Tangga
11	Siti	Sitomah	Bandung	Ibu	210872446	082212556896	Ibu Rumah Tangga
12	Alexander	Haris	Bandung	Ayah	210872447	082016156899	Wirausahawan
13	David	Steven	Bandung	Ayah	210872448	081231320239	Dokter
14	Daud	\N	Bandung	Ayah	210872449	085131669985	Guru
15	Fatmawati	\N	Bandung	Ibu	210872450	081231646849	Ibu Rumah Tangga
16	Suharja	Rivan	Bandung	Ayah	210872451	084126313699	Koki
17	Daniel	Bukhori	Bandung	Wali	210872452	084564999633\n	Wirausahawan
18	Richardo	Havoc	Bandung	Ayah	210872453	084646969982	Artis
19	Angel	Vardina	Bandung	Wali	210872454	084269699883	Penyanyi
20	Billie	Hartanto	Bandung	Wali	210872455	089920202182	Wirausahawan
21	Muhammad	Rinto	Bandung	Ayah	210872456	081261654883	Wirausahawan
22	Siska	Sulivan	Bandung	Wali	210872457	084899553221	Artis
23	Asep	\N	Bandung	Ayah	210872458	084126165563	Guru
24	Dadang	Sutarjo	Bandung	Ayah	210872459	081261564866	Pengacara
25	Hanson	\N	Bandung	Wali	210872460	081561558877	Wirausahawan
26	Karen	Kumalawongso	Bandung	Ibu	210872461	081231654889	Ibu Rumah Tangga
27	Bill	Henderson	Bandung	Ayah	210872462	082126164598	Wirausahawan
28	Stritisnawati	Kurnia	Bandung	Ibu	210872463	081216451875	Ibu Rumah Tangga
29	Richard	\N	Bandung	Wali	210872464	088995215321	Wirausahawan
30	Ryan	Stevenson	Bandung	Ayah	210872465	082223451126	Dokter Hewan
31	Meli	Christine	Bandung	Wali	210872466	084261622233	Dokter
32	Christian	\N	Bandung	Wali	210872467	081231645488	Artis
33	Dandi	Hermawan	Bandung	Ayah	210872468	081561622998	Guru
34	Heru	Hisak	Bandung	Wali	210872469	084646513219	Wirausahawan
35	Trisna	Karto	Bandung	Ayah	210872470	084121236898	Wirausahawan
36	Christine	\N	Bandung	Ibu	210872471	081231261848	Ibu Rumah Tangga
37	Steven	\N	Bandung	Wali	210872472	081561621688	Wirausahawan
38	Daniar	Rusni	Bandung	Ibu	210872473	081263162189	Ibu Rumah Tangga
39	Mewati	Han	Bandung	Ibu	210872474	081225536998	Ibu Rumah Tangga
40	Hans	Sven	Bandung	Ayah	210872475	081231365897	Koki
41	Richard	\N	Bandung	Ayah	210872476	084231231598	Pegawai
42	Ben	Peter	Bandung	Ayah	210872477	081212646548	Pegawai
43	Parker	Sihotang	Bandung	Ayah	210872478	081561648987	Wirausahawan
44	Sylvia	Hermawati	Bandung	Ibu	210872479	084126165498	Ibu Rumah Tangga
45	Tukul	\N	Bandung	Wali	210872480	081216459877	Pegawai
46	Johnson	Carter	Bandung	Ayah	210872481	081261654899	Wirausahawan
47	Selena	Karina	Bandung	Ibu	210872482	081621645487	Penyanyi
48	Phineas	Ferb	Bandung	Ayah	210872483	081516544897	Wirausahawan
49	Shandy	\N	Bandung	Ibu	210872484	081255533232	Ibu Rumah Tangga
50	Patrick	Star	Bandung	Wali	210872485	081561564987	Wirausahawan
51	Bob	\N	Bandung	Ayah	210872486	084826156478	Pengacara
54	Harry	Potter	Bandung	Ayah	210872487	084561632221	Pegawai
55	Gwen	Stacy	Bandung	Ibu	210872488	084645654897	Guru
56	Harry	Osborn	Bandung	Ayah	210872489	084164556487	Wirausahawan
57	May	\N	Bandung	Ibu	210872490	081216487988	Ibu Rumah Tangga
58	Garfield	\N	Bandung	Ayah	210872491	088944522113	Dokter
59	Hanna	Montana	Bandung	Ibu	210872492	081231615648	Ibu Rumah Tangga
60	Clint	Guntur	Bandung	Wali	210872493	084987842234	Wirausahawan
61	Hamzah	\N	Bandung	Ayah	210872494	081216456897	Pegawai
62	Ragna	Sonius	Bandung	Ayah	210872495	084123156489	Wirausahawan
63	Karina	\N	Bandung	Ibu	210872496	082163154878	Ibu Rumah Tangga
64	Granger	Ghandi	Bandung	Ayah	210872497	081325489987	Wirausahawan
65	Luo	Yi	Bandung	Ibu	210872498	084616522231	Wirausahawan
66	Theresa	\N	Bandung	Ibu	210872499	081112312452	Ibu Rumah Tangga
67	Christine	Ha	Bandung	Ibu	210872500	081615263157	Koki
68	Acton	Bene	Bandung	Ayah	210872501	088100550066	Wirausahawan
69	Addison	Wilson	Bandung	Ayah	210872502	088500900745	Dokter Hewan
70	Adney	Charlie	Bandung	Ayah	210872503	085123458963	Wirausahawan
71	Acher	Sebastian	Bandung	Wali	210872504	085212358794	Wirausahawan
72	Asyanti	Puji Astuti	Bandung	Ibu	210872505	085102584103	Ibu Rumah Tangga
73	Leonel	Messi	Bandung	Wali	210872506	0852104562031	Wirausahawan
74	Anang	Hermansyah	Bandung	Ayah	210872507	085215923574	Pegawai
75	Ahmad	Hendrawan	Bandung	Ayah	210872508	085274109630	Pengacara
76	Ling	Djohan	Bandung	Ibu	210872509	085274109632	Guru
77	Christiano	Ronaldo	Bandung	Ayah	210872510	085412396321	Pegawai
78	Banies	Bancoft	Bandung	Wali	210872511	0854123685213	Dokter
79	Axton	Brandon	Bandung	Ayah	210872512	085144995533	Wirausahawan
80	Alvina	Angela	Bandung	Ibu	210872513	0851114462255	Ibu Rumah Tangga
81	Blake	Baxter	Bandung	Ayah	210872514	085217465821	Wirausahawan
82	Backham	Banson	Bandung	Ayah	210872515	085211668521	Pegawai
83	Brett	Braylen	Bandung	Ayah	210872516	085214712585	Wirausahawan
84	Caesar	Cailen	Bandung	Ayah	210872517	082456897432	Wirausahawan
85	Cairo	Caius	Bandung	Wali	210872518	082154685214	Pegawai
86	Antonia	Meretta	Bandung	Ibu	210872519	0854789562244	Ibu Rumah Tangga
87	Calvin	Carlton	Bandung	Wali	210872520	085499556622	Wirausahawan\n
88	Clive	Colvin	Bandung	Ibu	210872521	081546885523	Pegawai
89	Dale	Daan	Bandung	Ayah	210872522	085299469521	Penyanyi
90	Daley	Darien	Bandung	Ayah	210872523	08513212325	Guru
91	Darwin	Dand	Bandung	Ayah	210872524	0852197851425	Wirausahawan
92	Earl	Edehard	Bandung	Wali	210872525	081156921556	Pegawai
93	Alma	Fitri	Bandung	Ibu	210872526	0811475698523	Ibu Rumah Tangga
94	Audrey	Audie	Bandung	Ibu	210872527	081159486257	Dokter
95	Egan	Erroll	Bandung	Ayah	210872528	081145682584	Wirausahawan
96	Fargo	Farrin	Bandung	Ayah	210872529	082178951254	Wirausahawan
97	Finch	Ferdinand	Bandung	Ayah	210872530	081145557799	Wirausahawan
98	Era	Ethel	Bandung	Ibu	210872531	081156238974	Ibu Rumah Tangga
99	Ella	Edith	Bandung	Ibu	210872532	081122559846	Ibu Rumah Tangga
100	Garret	Gaston	Bandung	Ayah	210872533	085263633021	Pengacara
101	Gamon	Gallagher	Bandung	Ayah	210872534	085102490658	Wirausahawan
102	Halbert	Halwell	Bandung	Ayah	210872535	085745687521	Wirausahawan
103	Happy	Holly	Bandung	Wali	210872536	081147569856	Guru
104	Jockson	Jai	Bandung	Wali	210872537	085245623311	Wirausahawan
105	Jarett	Jasper	Bandung	Ayah	210872538	085177985642	Dokter
106	Kade	Kennard	Bandung	Wali	210872539	085465239875	Wirausahawan
107	Kordel	Kurt	Bandung	Ayah	210872540	085123568420	Artis
108	Flora	Gabe	Bandung	Ibu	210872541	085166209000	Ibu Rumah Tangga
109	Lyndon	Linch	Bandung	Ayah	210872542	085177945600	Penyanyi
110	Maller	Moore	Bandung	Ayah	210872543	085200490075	Wirausahawan
111	Fawn	Vallen	Bandung	Ibu	210872544	085412356841	Wirausahawan
112	Peter	Parker	Bandung	Ayah	210872545	085124990051	Guru
113	Nora	Paige	Bandung	Ibu	210872546	085175009200	Ibu Rumah Tangga
4	Cucun	Liman	Subang	Ayah Kandung	210872439	085646772235	Pengusaha
\.


--
-- TOC entry 3289 (class 0 OID 26387)
-- Dependencies: 220
-- Data for Name: password_resets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.password_resets (email, token, created_at) FROM stdin;
\.


--
-- TOC entry 3290 (class 0 OID 26393)
-- Dependencies: 221
-- Data for Name: pendaftaran; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pendaftaran (id_pendaftaran, informasi_pendaftaran, id_sekolah) FROM stdin;
1	Pendaftaran Siswa/i baru angkatan 2021/2022	4779
\.


--
-- TOC entry 3291 (class 0 OID 26399)
-- Dependencies: 222
-- Data for Name: pertemuan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pertemuan (id_pertemuan, nama_pertemuan, keterangan_pertemuan, id_jadwal) FROM stdin;
14	Pertemuan Olahraga Kelas 1 Ke-1	Latihan Olahraga Dasar	335
15	Pertemuan Olahraga Kelas 1 Ke-1	Latihan Olahraga Dasar	6
16	Pertemuan Olahraga Kelas 1 Ke-1	Latihan Olahraga Dasar	47
17	Pertemuan Olahraga Kelas 1 Ke-1	Latihan Olahraga Dasar	355
18	Pertemuan Olahraga Kelas 1 Ke-1	Latihan Olahraga Dasar	48
19	Pertemuan Olahraga Kelas 1 Ke-1	Latihan Olahraga Dasar	55
20	Pertemuan Olahraga Kelas 1 Ke-1	Latihan Olahraga Dasar	14
21	Pertemuan Olahraga Kelas 1 Ke-1	Latihan Olahraga Dasar	343
22	Pertemuan Olahraga Kelas 1 Ke-1	Latihan Olahraga Dasar	363
23	Pertemuan Olahraga Kelas 1 Ke-1	Latihan Olahraga Dasar	351
24	Pertemuan Olahraga Kelas 1 Ke-1	Latihan Olahraga Dasar	62
25	Pertemuan Olahraga Kelas 1 Ke-1	Latihan Olahraga Dasar	21
26	Pertemuan Olahraga Kelas 1 Ke-1	Latihan Olahraga Dasar	370
27	Pertemuan Pendidikan Kewarganegaraan Kelas 8 Ke-1	Dasar Pancasila	164
28	asd	asd	335
29	asd	asd	6
30	asd	asd	47
31	asd	asd	355
32	asd	asd	48
33	asd	asd	55
34	asd	asd	14
35	asd	asd	343
36	asd	asd	363
37	asd	asd	351
38	asd	asd	62
39	asd	asd	21
40	asd	asd	370
\.


--
-- TOC entry 3293 (class 0 OID 26407)
-- Dependencies: 224
-- Data for Name: presensi_guru; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.presensi_guru (id_presensi_guru, tanggal_presensi_guru, keterangan_presensi_guru, "NIP", waktu_presensi_guru, id_pertemuan) FROM stdin;
3	2021-01-22	HADIR	2199384900021	13:43:34+07	14
4	2021-01-22	HADIR	2199384900021	14:31:40+07	27
5	2021-06-10	HADIR	2199384900021	12:05:10+07	29
\.


--
-- TOC entry 3295 (class 0 OID 26415)
-- Dependencies: 226
-- Data for Name: presensi_siswa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.presensi_siswa (id_presensi_siswa, tanggal_presensi_siswa, keterangan_presensi_siswa, "NIS", waktu_presensi_siswa, id_pertemuan) FROM stdin;
10	2021-06-16	HADIR	210872469	15:53:16+07	18
11	2021-06-16	HADIR	210872470	15:53:27+07	15
12	2021-06-16	HADIR	210872469	16:26:53+07	18
13	2021-06-16	HADIR	210872469	16:32:04+07	16
14	2021-06-16	HADIR	210872469	16:33:28+07	18
15	2021-06-17	HADIR	210872469	11:27:59+07	18
16	2021-06-17	HADIR	210872469	12:02:39+07	18
17	2021-06-17	HADIR	210872470	12:02:49+07	15
18	2021-06-17	HADIR	210872469	12:07:33+07	18
19	2021-06-17	HADIR	210872470	12:07:44+07	15
\.


--
-- TOC entry 3297 (class 0 OID 26423)
-- Dependencies: 228
-- Data for Name: prestasi_sekolah; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.prestasi_sekolah (id_prestrasi, nama_prestasi, jenis_prestasi, tahun_prestasi, id_sekolah) FROM stdin;
1	JUARA 1 Basket Putra	Non-Akademik	2020-12-12	4779
\.


--
-- TOC entry 3299 (class 0 OID 26431)
-- Dependencies: 230
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.role (id_role, nama_role) FROM stdin;
1	Admin
2	Guru
3	Siswa
4	Alumni
\.


--
-- TOC entry 3300 (class 0 OID 26437)
-- Dependencies: 231
-- Data for Name: sekolah; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sekolah (id_sekolah, nama_sekolah, alamat_sekolah, no_telepon_sekolah, id_kurikulum, photo) FROM stdin;
4780	SMAN 1 Soreang	Jl. Raya Soreang-Banjaran Km. 3 RT. 02 RW. 22 Desa Soreang Kecamatan Soreang Kabupaten Bandung Propinsi Jawa Barat 40911	0885429245	K04	\N
4779	SMAN 1 Ciwidey	Jln. Babakantiga No.125, Ciwidey, Kopo, Bandung, Jawa Barat,  40973,  Indonesia	08123456789	K04	\N
\.


--
-- TOC entry 3301 (class 0 OID 26443)
-- Dependencies: 232
-- Data for Name: siswa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.siswa ("NIS", nama_depan, nama_belakang, jenis_kelamin, tanggal_lahir, alamat_siswa, id_kelas, no_telepon, id_user, photo, agama) FROM stdin;
210872437	Andi	Surjana	L	2005-02-23	Bandung	27	082387453326	210872437	\N	Kristen
210872438	Jeremia	Manalu	L	2016-04-21	Bandung	1	08219857764	210872438	\N	Kristen
210872441	Andre	Rivaldo	L	2013-05-12	Bandung	6	082112397583	210872441	\N	Hindu
210872442	Michael	Tappang	L	2012-05-21	Bandung	9	088112366423	210872442	\N	Islam
210872443	Vanika	Ipsandy	P	2011-01-02	Bandung	12	08898787723	210872443	\N	Katolik
210872444	Lucky	\N	L	2010-04-12	Bandung	15	082784577743	210872444	\N	Kristen
210872445	Josrel	Chandra	L	2009-11-21	Bandung	18	085177389994	210872445	\N	Kristen
210872446	Tobias	Trenal	L	2008-05-17	Bandung	21	081123788742	210872446	\N	Hindu
210872447	Nikita	Rebeca	P	2007-07-18	Bandung	24	08899837772	210872447	\N	Katolik
210872448	Roy	Parsaoran	L	2006-09-19	Bandung	26	08111238847	210872448	\N	Katolik
210872449	Kristanto	Tanowijaya	L	2005-06-19	Bandung	27	088344556237	210872449	\N	Kristen
210872450	Sienie	Gracia	P	2004-03-10	Bandung	30	088233128764	210872450	\N	Islam
210872451	Mawar	\N	P	2003-03-10	Bandung	33	088123766647	210872451	\N	Islam
210872452	Levina	Anastasia	P	2003-01-02	Bandung	33	0889987664233	210872452	\N	Buddha
210872453	Hosea	Adipratama	L	2016-05-09	Bandung	1	089187636783	210872453	\N	Hindu
210872454	Ucok	Baba	L	2015-02-23	Bandung	2	085237565535	210872454	\N	Islam
210872455	Engkus	Kusnadi	L	2014-12-07	Bandung	3	085876544567	210872455	\N	Islam
210872456	Frans	Fega	L	2013-11-04	Bandung	6	085867899876	210872456	\N	Hindu
210872457	Kwee	Guan Chang	L	2012-09-01	Bandung	9	082123443211	210872457	\N	Buddha
210872458	Tan	Guan Liong	L	2011-08-25	Bandung	12	085678900987	210872458	\N	Buddha
210872459	Aam	Dewi Hamidah	L	2016-09-14	Bandung	1	085212344564	210872459	\N	Kristen
210872460	Ali	Alamsyah	L	2016-01-09	Bandung	1	085123225547	210872460	\N	Kristen
210872461	Alice	Haryono	P	2016-11-17	Bandung	1	085521363214	210872461	\N	Buddha
210872462	Aling	Hermawan Oey	P	2016-08-25	Bandung	1	085123455678	210872462	\N	Islam
210872463	Allan	Dijaya Keller	L	2016-12-01	Bandung	1	0851123474895	210872463	\N	Kristen
210872464	Alwi	Alatas	L	2015-02-01	Bandung	2	081123458796	210872464	\N	Buddha
210872465	Amalia	\N	P	2015-11-15	Bandung	2	085274174103	210872465	\N	Islam
210872466	Andy	Soewatdy	L	2015-02-28	Bandung	2	085514596321	210872466	\N	Kristen
210872467	Ang	Lian Ping	L	2015-09-06	Bandung	2	085147895632	210872467	\N	Islam
210872468	Aristotle	\N	L	2015-09-08	Bandung	2	085144758988	210872468	\N	Buddha
210872469	Arman	Sutedja	L	2014-05-08	Bandung	3	0851444662255	210872469	\N	Kristen
210872470	Benny	Tenges	L	2014-06-16	Bandung	3	085177995454	210872470	\N	Islam
210872471	Bernadette	Ruth Irawati	P	2014-11-15	Bandung	3	081235679845	210872471	\N	Islam
210872472	Budi	Mulyo Utomo	L	2014-07-18	Bandung	3	085222624495	210872472	\N	Kristen
210872473	Budi	Surjana	L	2014-05-28	Bandung	3	085112358956	210872473	\N	Islam
210872474	Charlie	Kasim	L	2014-08-19	Bandung	3	085496578956	210872474	\N	Buddha
210872475	Christian	Sugiarto	L	2013-12-11	Bandung	6	087596587489	210872475	\N	Kristen
210872476	Darwin	Sutanto	L	2013-04-14	Bandung	6	085598874466	210872476	\N	Islam
210872477	David	Alexander Yuwono	L	2013-04-17	Bandung	6	085144685597	210872477	\N	Islam
210872478	Evelyn	Djauhari	P	2013-12-18	Bandung	6	085279798989	210872478	\N	Buddha
210872479	Francisca	Citrasari	P	2013-11-18	Bandung	6	085112345599	210872479	\N	Kristen
210872480	Franky	Wijoyo	L	2013-05-11	Bandung	6	085111335522	210872480	\N	Buddha
210872481	Heng	Ijat Hong	L	2012-12-12	Bandung	9	085200992277	210872481	\N	Katolik
210872482	Henny	Santoso	L	2012-12-12	Bandung	9	085100150410	210872482	\N	Buddha
210872483	Irwan	Wibowo	L	2012-11-01	Bandung	9	085101470255	210872483	\N	Kristen
210872484	Ingrid	Wilianto	L	2012-11-15	Bandung	9	085112357894	210872484	\N	Katolik
210872485	Kartini	Dewi	P	2012-01-18	Bandung	9	085162584582	210872485	\N	Kristen
210872486	Ken	Ng	L	2012-04-12	Bandung	9	085124642159	210872486	\N	Kristen
210872487	Lee	Chuck Soo	L	2011-12-08	Bandung	12	085122558866	210872487	\N	Katolik
210872488	Letty	Johan	L	2011-01-11	Bandung	12	085233669955	210872488	\N	Buddha
210872489	Meizar	Suyardi	L	2011-07-14	Bandung	12	08524468521	210872489	\N	Katolik
210872490	Mei	Ing	P	2011-11-14	Bandung	12	085236963258	210872490	\N	Kristen
210872491	Nila	Fitana	P	2011-01-28	Bandung	12	0854456789562	210872491	\N	Katolik
210872492	Nio	Yantony	L	2010-04-05	Bandung	15	085122445956	210872492	\N	Kristen
210872493	Norbert	Alois Meixner	L	2010-08-07	Bandung	15	085123568974	210872493	\N	Katolik
210872494	Ratnawati	Sasongko	P	2010-08-09	Bandung	15	085556495588	210872494	\N	Buddha
210872495	Ratnesh	Bedi	L	2010-01-01	Bandung	15	085122331144	210872495	\N	Kristen
210872496	Tazif	Susanto	L	2010-08-07	Bandung	15	085177995588	210872496	\N	Katolik
210872497	Roger	Pinder	L	2010-12-01	Bandung	15	085008845874	210872497	\N	Islam
210872498	Ronald	Liem	L	2009-11-14	Bandung	18	088544669955	210872498	\N	Katolik
210872499	Rori	Indra	L	2009-03-12	Bandung	18	088711332255	210872499	\N	Kristen
210872500	Roy	Gosjen	L	2009-09-09	Bandung	18	088500110066	210872500	\N	Islam
210872501	Ruby	Ghozali	L	2009-11-18	Bandung	18	088100550066	210872501	\N	Buddha
210872502	Samin	Tan	L	2009-01-09	Bandung	18	088500900745	210872502	\N	Islam
210872503	Samuel	Setiawan	L	2009-12-09	Bandung	18	085123458963	210872503	\N	Kristen
210872504	Sandra	Setijono	P	2008-12-12	Bandung	21	085212358794	210872504	\N	Katolik
210872505	Setiabudi	Djaelani	L	2008-08-17	Bandung	21	085102584103	210872505	\N	Buddha
210872506	Siok	Lim Tjoa	L	2008-01-12	Bandung	21	0852104562031	210872506	\N	Buddha
210872507	Siti	Farihah	P	2008-12-08	Bandung	21	085215923574	210872507	\N	Katolik
210872508	Soesilowati	\N	P	2008-11-17	Bandung	21	085274109630	210872508	\N	Kristen
210872509	Solihin	\N	L	2008-02-08	Bandung	21	085274109632	210872509	\N	Katolik
210872510	Song	Wen Po	L	2007-12-01	Bandung	24	085412396321	210872510	\N	Katolik
210872511	Sony	Rudikan	L	2007-02-07	Bandung	24	0854123685213	210872511	\N	Kristen
210872512	Sonya	Riupassa	P	2007-01-04	Bandung	24	085144995533	210872512	\N	Katolik
210872513	Susanto	Suwarto	L	2007-01-14	Bandung	24	0851114462255	210872513	\N	Kristen
210872514	Susilowati	\N	P	2007-12-11	Bandung	24	085217465821	210872514	\N	Katolik
210872515	Susan	Valentinus	P	2007-12-14	Bandung	24	085211668521	210872515	\N	Islam
210872516	Susanto	Leon Patrick	L	2006-11-17	Bandung	26	085214712585	210872516	\N	Buddha
210872517	Sutikno	\N	L	2006-11-16	Bandung	26	082456897432	210872517	\N	Buddha
210872518	Tan	Ali Susanto	L	2006-06-16	Bandung	26	082154685214	210872518	\N	Islam
210872519	Tan	Loo Mei	L	2006-06-15	Bandung	26	0854789562244	210872519	\N	Katolik
210872520	Targian	Tan	L	2006-11-14	Bandung	26	085233665544	210872520	\N	Buddha
210872521	Teddy	Fadil	L	2006-11-18	Bandung	26	085499556622	210872521	\N	Islam
210872522	Teguh	Ganda Wijaya	L	2005-01-06	Bandung	27	081546885523	210872522	\N	Kristen
210872523	Teng	Goat Nio	L	2005-05-05	Bandung	27	085299469521	210872523	\N	Islam
210872524	Teresa	Suteja	P	2005-05-11	Bandung	27	0852197851425	210872524	\N	Islam
210872525	Theresia	Suciah	P	2005-11-15	Bandung	27	081156921556	210872525	\N	Kristen
210872526	Tiara	Dharini Josodirdjo	P	2005-02-01	Bandung	27	0811475698523	210872526	\N	Katolik
210872527	Timothius	Felix Intan	L	2005-05-12	Bandung	27	081159486257	210872527	\N	Islam
210872528	Tony	Laurens	L	2005-11-18	Bandung	27	081145682584	210872528	\N	Katolik
210872529	Tommy	Tanady	L	2004-11-04	Bandung	30	082178951254	210872529	\N	Kristen
210872530	Tossin	Surharya	L	2004-04-04	Bandung	30	081145557799	210872530	\N	Katolik
210872531	Toto	Soegiarto	L	2004-12-04	Bandung	30	081156238974	210872531	\N	Kristen
210872532	Tunggono	\N	L	2004-11-04	Bandung	30	081122559846	210872532	\N	Kristen
210872533	Utama	Halim	L	2004-11-17	Bandung	30	085263633021	210872533	\N	Kristen
210872534	Utomo	Djohan	L	2004-08-21	Bandung	30	085102490658	210872534	\N	Kristen
210872535	Varisa	Susilo	P	2004-11-19	Bandung	30	085745687521	210872535	\N	Buddha
210872536	Vemmy	Febriyanti	P	2004-08-29	Bandung	30	081147569856	210872536	\N	Katolik
210872537	Veronica	Lukito	P	2003-12-11	Bandung	33	085245623311	210872537	\N	Kristen
210872538	Vivi	Hottama	P	2003-11-18	Bandung	33	085177985642	210872538	\N	Katolik
210872539	Vivian	Kent Janawati	P	2003-04-11	Bandung	33	085465239875	210872539	\N	Islam
210872540	Vonny	Hatsono	L	2003-11-19	Bandung	33	085123568420	210872540	\N	Katolik
210872541	Wan	Peng Lim	L	2003-02-25	Bandung	33	085166209000	210872541	\N	Kristen
210872542	Wewey	Thahjadi	L	2003-11-14	Bandung	33	085177945600	210872542	\N	Kristen
210872543	Wibowo	Brotoraharjo	L	2003-08-05	Bandung	33	085200490075	210872543	\N	Buddha
210872544	Wicahyo	Ratomo	L	2003-11-15	Bandung	33	085412356841	210872544	\N	Kristen
210872545	Wida	Martha Sari Newton	P	2003-11-02	Bandung	33	085124990051	210872545	\N	Kristen
210872546	Widhi	Sesanti	L	2003-01-02	Bandung	33	085175009200	210872546	\N	Buddha
210872440	Matthew	Desailly	L	2014-11-22	Bandung	3	085872331145	210872440	\N	Kristen
210872439	Nathanael	Liman	P	2015-06-23	Subang	2	0821170827789	210872439	\N	Buddha
\.


--
-- TOC entry 3302 (class 0 OID 26449)
-- Dependencies: 233
-- Data for Name: soal_ujian; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.soal_ujian (id_soal_ujian, file_soal, keterangan_soal, kode_mata_pelajaran) FROM stdin;
15	prob-A_Over 9000.pdf	Ulangan Harian Bahasa Inggris Kelas 3 ke 1	BING_3
1	prob-A_Over 9000.pdf	Ulangan Harian Matematika Kelas 1 ke 1	MAT_1
2	prob-A_Over 9000.pdf	Ulangan Harian PKN Kelas 1 ke 1	PKN_1
3	prob-A_Over 9000.pdf	Ulangan Harian Bahasa Indonesia Kelas 1 ke 1	BI_1
4	prob-A_Over 9000.pdf	Ulangan Harian Bahasa Inggris Kelas 1 ke 1	BING_1
6	prob-A_Over 9000.pdf	Ulangan Harian Seni Budaya Kelas 1 ke 1	SB_1
7	prob-A_Over 9000.pdf	Ulangan Harian Matematika Kelas 1 ke 2	MAT_1
8	prob-A_Over 9000.pdf	Ulangan Harian Seni Budaya Kelas 5 ke 1	SB_5
5	For.Dummies.Design.Patterns.For.Dummies.May.2006.pdf	Ulangan Harian PJOK Kelas 1 ke 1	PJOK_1
14	prob-A_Over 9000.pdf	Ulangan Harian PJOK Kelas 1 ke 2	PJOK_1
\.


--
-- TOC entry 3304 (class 0 OID 26457)
-- Dependencies: 235
-- Data for Name: spp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spp (id_spp, keterangan_spp, "NIS") FROM stdin;
1	SPP Bulan Januari	210872469
2	SPP Bulan Februari	210872469
3	SPP Bulan Maret	210872469
\.


--
-- TOC entry 3312 (class 0 OID 26755)
-- Dependencies: 243
-- Data for Name: spp_admin; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spp_admin (id_spp_admin, "NIS", nama_depan, nama_belakang, tanggal_aktual_pembayaran, tanggal_jatuh_tempo, harga_spp_detail, bukti_pembayaran) FROM stdin;
42	210872469	Arman	Sutedja	2021-06-01	2021-06-30	500000	{"id_spp_admin":42,"NIS":210872469,"nama_depan":"Arman","nama_belakang":"Sutedja","tanggal_aktual_pembayaran":"2021-06-01","tanggal_jatuh_tempo":"2021-06-30","harga_spp_detail":500000,"bukti_pembayaran":null}
\.


--
-- TOC entry 3305 (class 0 OID 26463)
-- Dependencies: 236
-- Data for Name: spp_detail; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spp_detail (id_spp_detail, status_spp_detail, periode_spp_detail, harga_spp_detail, id_spp, tanggal_aktual_pembayaran) FROM stdin;
2	1	12-01-2021	100000	1	\N
3	0	12-02-2021	200000	2	13-01-2021
4	0	12-03-2021	300000	3	13-02-2021
\.


--
-- TOC entry 3308 (class 0 OID 26473)
-- Dependencies: 239
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."user" (id_user, username, password, id_sekolah, id_role) FROM stdin;
210872437	Andi Surjana	202cb962ac59075b964b07152d234b70	4779	3
admin4780	Angelina	202cb962ac59075b964b07152d234b70	4780	1
219912345678345	Cahyo Mulyo	202cb962ac59075b964b07152d234b70	4779	2
2190345800001	Diah Dumai	202cb962ac59075b964b07152d234b70	4779	2
2199384900003	Ignatius Brahmadi	202cb962ac59075b964b07152d234b70	4779	2
2199384900002	Sutisna Mulyadi	202cb962ac59075b964b07152d234b70	4779	2
2180384900001	Susi Susanti	202cb962ac59075b964b07152d234b70	4780	2
2180384900002	Sinta Asih Mulyaningrat	202cb962ac59075b964b07152d234b70	4780	2
2180384900003	Bayu Kurniawan	202cb962ac59075b964b07152d234b70	4780	2
210872438	Jeremia Manalu	202cb962ac59075b964b07152d234b70	4780	3
210872439	Nathanael Liman	202cb962ac59075b964b07152d234b70	4779	3
210872441	Andre Rivaldo	202cb962ac59075b964b07152d234b70	4779	3
210872442	Michael Tappang	202cb962ac59075b964b07152d234b70	4779	3
210872443	Vanika Ipsandy	202cb962ac59075b964b07152d234b70	4779	3
210872444	Lucky	202cb962ac59075b964b07152d234b70	4779	3
210872445	Josrel Chandra	202cb962ac59075b964b07152d234b70	4779	3
210872446	Tobias Trenal	202cb962ac59075b964b07152d234b70	4779	3
210872447	Nikita Rebeca	202cb962ac59075b964b07152d234b70	4779	3
210872448	Roy Parsaoran	202cb962ac59075b964b07152d234b70	4779	3
210872449	Kristanto Tanowijaya	202cb962ac59075b964b07152d234b70	4779	3
210872450	Sienie Gracia	202cb962ac59075b964b07152d234b70	4779	3
210872451	Mawar	202cb962ac59075b964b07152d234b70	4779	3
210872452	Levina Anastasia	202cb962ac59075b964b07152d234b70	4779	3
210872453	Hosea Adipratama	202cb962ac59075b964b07152d234b70	4779	3
210872454	Ucok Baba	202cb962ac59075b964b07152d234b70	4779	3
210872455	Engkus Kusnadi	202cb962ac59075b964b07152d234b70	4779	3
210872456	Frans Fega	202cb962ac59075b964b07152d234b70	4779	3
210872457	Kwee Guan Chang	202cb962ac59075b964b07152d234b70	4779	3
210872458	Tan Guan Liong	202cb962ac59075b964b07152d234b70	4779	3
alu_01	Lim Ban Pit	202cb962ac59075b964b07152d234b70	4779	4
alu_02	Ahmad Juprianto	202cb962ac59075b964b07152d234b70	4779	4
alu_03	Aldy Setiawan	202cb962ac59075b964b07152d234b70	4779	4
alu_04	Abdul Gunawan	202cb962ac59075b964b07152d234b70	4779	4
alu_05	Bento Darmawan	202cb962ac59075b964b07152d234b70	4779	4
alu_06	Beni Sunandar	202cb962ac59075b964b07152d234b70	4779	4
alu_07	Beti Kristiani	202cb962ac59075b964b07152d234b70	4779	4
alu_08	Rosa Meilinda	202cb962ac59075b964b07152d234b70	4779	4
alu_09	Ratna Ayu	202cb962ac59075b964b07152d234b70	4779	4
alu_10	Raditya Dika	202cb962ac59075b964b07152d234b70	4780	4
alu_11	Susi Astuti	202cb962ac59075b964b07152d234b70	4780	4
alu_12	Susan Susanti	202cb962ac59075b964b07152d234b70	4780	4
alu_13	Sutrisno Sukomulyo	202cb962ac59075b964b07152d234b70	4780	4
alu_14	Kelvin Sumargo	202cb962ac59075b964b07152d234b70	4780	4
alu_15	Kevin Sunjaya	202cb962ac59075b964b07152d234b70	4780	4
alu_16	Lukman Cahyadi	202cb962ac59075b964b07152d234b70	4780	4
alu_17	Lisda Margianti	202cb962ac59075b964b07152d234b70	4780	4
alu_18	Laura Angelica	202cb962ac59075b964b07152d234b70	4780	4
alu_19	Ogre Arthemus	202cb962ac59075b964b07152d234b70	4780	4
alu_20	Violet Cahaya Bintang	202cb962ac59075b964b07152d234b70	4780	4
2199384900004	Intan Lestari	202cb962ac59075b964b07152d234b70	4779	2
2199384900005	Dimas Satya	202cb962ac59075b964b07152d234b70	4779	2
2199384900006	Aji Kusuma	202cb962ac59075b964b07152d234b70	4779	2
2199384900007	Willi Wirahman	202cb962ac59075b964b07152d234b70	4779	2
2199384900008	Anthony Martin	202cb962ac59075b964b07152d234b70	4779	2
2199384900009	Vincent Liu	202cb962ac59075b964b07152d234b70	4779	2
2199384900010	Givania Angelica	202cb962ac59075b964b07152d234b70	4779	2
2199384900011	Natasya Liu	202cb962ac59075b964b07152d234b70	4779	2
2199384900012	Natasya Dey	202cb962ac59075b964b07152d234b70	4779	2
2199384900013	Nicolas Fladimire	202cb962ac59075b964b07152d234b70	4779	2
2199384900014	Fernando	202cb962ac59075b964b07152d234b70	4779	2
2199384900015	Akmal Wijaya	202cb962ac59075b964b07152d234b70	4779	2
2199384900016	Ryan Nataniel	202cb962ac59075b964b07152d234b70	4779	2
2199384900017	Natanael Halim	202cb962ac59075b964b07152d234b70	4779	2
2199384900018	Sania Meredian	202cb962ac59075b964b07152d234b70	4779	2
2199384900019	Erika Lianti	202cb962ac59075b964b07152d234b70	4779	2
2199384900020	Jessica Liu	202cb962ac59075b964b07152d234b70	4779	2
2199384900021	Melista Lauda	202cb962ac59075b964b07152d234b70	4779	2
2199384900022	Mega Wati	202cb962ac59075b964b07152d234b70	4779	2
2199384900023	Monia Lazarros	202cb962ac59075b964b07152d234b70	4779	2
2199384900024	David Sinaga	202cb962ac59075b964b07152d234b70	4779	2
2199384900025	Rifky Firmansyah	202cb962ac59075b964b07152d234b70	4779	2
2199384900026	Bagaskara Setiadi	202cb962ac59075b964b07152d234b70	4779	2
2199384900027	Zaikhul Sulton	202cb962ac59075b964b07152d234b70	4779	2
2199384900028	Jajang Sukmara	202cb962ac59075b964b07152d234b70	4779	2
2199384900029	Syahrul Lutfi	202cb962ac59075b964b07152d234b70	4779	2
2199384900030	Anjasmara	202cb962ac59075b964b07152d234b70	4779	2
2199384900031	Nining Mulyaningsih	202cb962ac59075b964b07152d234b70	4779	2
2199384900032	Sri Nur Hasannah	202cb962ac59075b964b07152d234b70	4779	2
210872459	Aam Dewi Hamidah	202cb962ac59075b964b07152d234b70	4779	3
210872460	Ali Alamsyah	202cb962ac59075b964b07152d234b70	4779	3
210872461	Alice Haryono	202cb962ac59075b964b07152d234b70	4779	3
210872462	Aling Hermawan Oey	202cb962ac59075b964b07152d234b70	4779	3
210872463	Allan Dijaya Keller	202cb962ac59075b964b07152d234b70	4779	3
210872464	Alwi Alatas	202cb962ac59075b964b07152d234b70	4779	3
210872465	Amalia	202cb962ac59075b964b07152d234b70	4779	3
210872466	Andy Soewatdy	202cb962ac59075b964b07152d234b70	4779	3
210872467	Ang Lian Ping	202cb962ac59075b964b07152d234b70	4779	3
210872468	Aristotle	202cb962ac59075b964b07152d234b70	4779	3
210872469	Arman sutedja	202cb962ac59075b964b07152d234b70	4779	3
210872470	Benny Tenges	202cb962ac59075b964b07152d234b70	4779	3
210872471	Bernadette Ruth Irawati	202cb962ac59075b964b07152d234b70	4779	3
210872472	Budi Mulyo Utomo	202cb962ac59075b964b07152d234b70	4779	3
210872473	Budi Surjana	202cb962ac59075b964b07152d234b70	4779	3
210872474	Charlie Kasim	202cb962ac59075b964b07152d234b70	4779	3
210872475	Christian Sugiarto	202cb962ac59075b964b07152d234b70	4779	3
210872476	Darwin Sutanto	202cb962ac59075b964b07152d234b70	4779	3
210872477	David Alexander Yuwono	202cb962ac59075b964b07152d234b70	4779	3
210872478	Evelyn Djauhari	202cb962ac59075b964b07152d234b70	4779	3
210872479	Francisca Citrasari	202cb962ac59075b964b07152d234b70	4779	3
210872480	Franky Wijoyo	202cb962ac59075b964b07152d234b70	4779	3
210872481	Heng Ijat Hong	202cb962ac59075b964b07152d234b70	4779	3
210872482	Henny Santoso	202cb962ac59075b964b07152d234b70	4779	3
210872483	Irwan Wibowo	202cb962ac59075b964b07152d234b70	4779	3
210872484	Ingrid Wilianto	202cb962ac59075b964b07152d234b70	4779	3
210872485	Kartini Dewi	202cb962ac59075b964b07152d234b70	4779	3
210872486	Ken Ng	202cb962ac59075b964b07152d234b70	4779	3
210872487	Lee Chuck Soo	202cb962ac59075b964b07152d234b70	4779	3
210872488	Letty Johan	202cb962ac59075b964b07152d234b70	4779	3
210872489	Meizar Suyardi	202cb962ac59075b964b07152d234b70	4779	3
210872490	Mei Ing	202cb962ac59075b964b07152d234b70	4779	3
210872491	Nila Fitana	202cb962ac59075b964b07152d234b70	4779	3
210872492	Nio Yantony	202cb962ac59075b964b07152d234b70	4779	3
210872493	Norbert Alois Meixner	202cb962ac59075b964b07152d234b70	4779	3
210872494	Ratnawati Sasongko	202cb962ac59075b964b07152d234b70	4779	3
210872495	Ratnesh Bedi	202cb962ac59075b964b07152d234b70	4779	3
210872496	Tazif Susanto	202cb962ac59075b964b07152d234b70	4779	3
210872497	Roger Pinder	202cb962ac59075b964b07152d234b70	4779	3
210872498	Ronald Liem	202cb962ac59075b964b07152d234b70	4779	3
210872499	Rori Indra	202cb962ac59075b964b07152d234b70	4779	3
210872500	Roy Gosjen	202cb962ac59075b964b07152d234b70	4779	3
210872501	Ruby Ghozali	202cb962ac59075b964b07152d234b70	4779	3
210872502	Samin Tan	202cb962ac59075b964b07152d234b70	4779	3
210872503	Samuel Setiawan	202cb962ac59075b964b07152d234b70	4779	3
210872504	Sandra Setijono	202cb962ac59075b964b07152d234b70	4779	3
210872505	Setiabudi Djaelani	202cb962ac59075b964b07152d234b70	4779	3
210872506	Siok Lim Tjoa	202cb962ac59075b964b07152d234b70	4779	3
210872507	Siti Farihah	202cb962ac59075b964b07152d234b70	4779	3
210872508	Soesilowati	202cb962ac59075b964b07152d234b70	4779	3
210872509	Solihin	202cb962ac59075b964b07152d234b70	4779	3
210872510	Song Wen Po	202cb962ac59075b964b07152d234b70	4779	3
210872511	Sony Rudikan	202cb962ac59075b964b07152d234b70	4779	3
210872512	Sonya Riupassa	202cb962ac59075b964b07152d234b70	4779	3
210872513	Susanto Suwarto	202cb962ac59075b964b07152d234b70	4779	3
210872514	Susilowati	202cb962ac59075b964b07152d234b70	4779	3
210872515	Susan Valentinus	202cb962ac59075b964b07152d234b70	4779	3
210872516	Susanto Leon Patrick	202cb962ac59075b964b07152d234b70	4779	3
210872517	Sutikno	202cb962ac59075b964b07152d234b70	4779	3
210872518	Tan Ali Susanto	202cb962ac59075b964b07152d234b70	4779	3
210872519	Tan Loo Mei	202cb962ac59075b964b07152d234b70	4779	3
210872520	Targian Tan	202cb962ac59075b964b07152d234b70	4779	3
210872521	Teddy Fadil	202cb962ac59075b964b07152d234b70	4779	3
210872522	Teguh Ganda Wijaya	202cb962ac59075b964b07152d234b70	4779	3
210872523	Teng Goat Nio	202cb962ac59075b964b07152d234b70	4779	3
210872524	Teresa Suteja	202cb962ac59075b964b07152d234b70	4779	3
210872525	Theresia Suciah	202cb962ac59075b964b07152d234b70	4779	3
210872526	Tiara Dharini Josodirdjo	202cb962ac59075b964b07152d234b70	4779	3
210872527	Timothius Felix Intan	202cb962ac59075b964b07152d234b70	4779	3
210872528	Tony Laurens	202cb962ac59075b964b07152d234b70	4779	3
210872529	Tommy Tanady	202cb962ac59075b964b07152d234b70	4779	3
210872530	Tossin Surharya	202cb962ac59075b964b07152d234b70	4779	3
210872531	Toto Soegiarto	202cb962ac59075b964b07152d234b70	4779	3
210872532	Tunggono	202cb962ac59075b964b07152d234b70	4779	3
210872533	Utama Halim	202cb962ac59075b964b07152d234b70	4779	3
210872534	Utomo Djohan	202cb962ac59075b964b07152d234b70	4779	3
210872535	Varisa Susilo	202cb962ac59075b964b07152d234b70	4779	3
210872536	Vemmy Febriyanti	202cb962ac59075b964b07152d234b70	4779	3
210872537	Veronica Lukito	202cb962ac59075b964b07152d234b70	4779	3
210872538	Vivi Hottama	202cb962ac59075b964b07152d234b70	4779	3
210872539	Vivian Kent Janawati	202cb962ac59075b964b07152d234b70	4779	3
210872540	Vonny Hatsono	202cb962ac59075b964b07152d234b70	4779	3
210872541	Wan Peng Lim	202cb962ac59075b964b07152d234b70	4779	3
210872542	Wewey Thahjadi	202cb962ac59075b964b07152d234b70	4779	3
210872543	Wibowo Brotoraharjo	202cb962ac59075b964b07152d234b70	4779	3
210872544	Wicahyo Ratomo	202cb962ac59075b964b07152d234b70	4779	3
210872545	Wida Martha Sari Newton	202cb962ac59075b964b07152d234b70	4779	3
210872546	Widhi Sesanti	202cb962ac59075b964b07152d234b70	4779	3
210872440	Matthew Desailly	202cb962ac59075b964b07152d234b70	4779	3
admin4779	Dadang Supriana	202cb962ac59075b964b07152d234b70	4779	1
\.


--
-- TOC entry 3309 (class 0 OID 26708)
-- Dependencies: 240
-- Data for Name: verifikasi_kehadiran; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.verifikasi_kehadiran (id, "NIS", nama_depan, tanggal_presensi_siswa, kehadiran, waktu_presensi_siswa, "nama_belakang ") FROM stdin;
51	210872469	Arman	2021-06-16	hadir                                             	15:53:16+07	\N
52	210872470	Benny	2021-06-16	tidak_hadir                                       	15:53:27+07	\N
\.


--
-- TOC entry 3333 (class 0 OID 0)
-- Dependencies: 202
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- TOC entry 3334 (class 0 OID 0)
-- Dependencies: 205
-- Name: jadwal_id_jadwal_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.jadwal_id_jadwal_seq', 69, true);


--
-- TOC entry 3335 (class 0 OID 0)
-- Dependencies: 207
-- Name: jawaban_id_jawaban_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.jawaban_id_jawaban_seq', 34, true);


--
-- TOC entry 3336 (class 0 OID 0)
-- Dependencies: 209
-- Name: kegiatan_sekolah_id_kegiatan_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.kegiatan_sekolah_id_kegiatan_seq', 14, true);


--
-- TOC entry 3337 (class 0 OID 0)
-- Dependencies: 215
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.migrations_id_seq', 3, true);


--
-- TOC entry 3338 (class 0 OID 0)
-- Dependencies: 217
-- Name: nilai_id_nilai_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nilai_id_nilai_seq', 32, true);


--
-- TOC entry 3339 (class 0 OID 0)
-- Dependencies: 219
-- Name: orangtua_id_orang_tua_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orangtua_id_orang_tua_seq', 115, true);


--
-- TOC entry 3340 (class 0 OID 0)
-- Dependencies: 223
-- Name: pertemuan_id_pertemuan_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pertemuan_id_pertemuan_seq', 40, true);


--
-- TOC entry 3341 (class 0 OID 0)
-- Dependencies: 225
-- Name: presensi_guru_id_presensi_guru_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.presensi_guru_id_presensi_guru_seq', 5, true);


--
-- TOC entry 3342 (class 0 OID 0)
-- Dependencies: 227
-- Name: presensi_siswa_id_presensi_siswa_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.presensi_siswa_id_presensi_siswa_seq', 19, true);


--
-- TOC entry 3343 (class 0 OID 0)
-- Dependencies: 229
-- Name: prestasi_sekolah_id_prestrasi_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.prestasi_sekolah_id_prestrasi_seq', 1, true);


--
-- TOC entry 3344 (class 0 OID 0)
-- Dependencies: 234
-- Name: soal_ujian_id_soal_ujian_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.soal_ujian_id_soal_ujian_seq', 23, true);


--
-- TOC entry 3345 (class 0 OID 0)
-- Dependencies: 242
-- Name: spp_admin_id_spp_admin_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spp_admin_id_spp_admin_seq', 45, true);


--
-- TOC entry 3346 (class 0 OID 0)
-- Dependencies: 237
-- Name: spp_detail_id_spp_detail_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spp_detail_id_spp_detail_seq', 4, true);


--
-- TOC entry 3347 (class 0 OID 0)
-- Dependencies: 238
-- Name: spp_id_spp_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spp_id_spp_seq', 3, true);


--
-- TOC entry 3348 (class 0 OID 0)
-- Dependencies: 241
-- Name: verifikasi_kehadiran_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.verifikasi_kehadiran_id_seq', 52, true);


--
-- TOC entry 3031 (class 2606 OID 26494)
-- Name: alumni alumni_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni
    ADD CONSTRAINT alumni_pkey PRIMARY KEY (id_alumni);


--
-- TOC entry 3035 (class 2606 OID 26496)
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- TOC entry 3037 (class 2606 OID 26498)
-- Name: guru guru_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.guru
    ADD CONSTRAINT guru_pkey PRIMARY KEY ("NIP");


--
-- TOC entry 3042 (class 2606 OID 26500)
-- Name: jadwal jadwal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jadwal
    ADD CONSTRAINT jadwal_pkey PRIMARY KEY (id_jadwal);


--
-- TOC entry 3046 (class 2606 OID 26502)
-- Name: jawaban jawaban_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jawaban
    ADD CONSTRAINT jawaban_pkey PRIMARY KEY (id_jawaban);


--
-- TOC entry 3049 (class 2606 OID 26504)
-- Name: kegiatan_sekolah kegiatan_sekolah_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kegiatan_sekolah
    ADD CONSTRAINT kegiatan_sekolah_pkey PRIMARY KEY (id_kegiatan);


--
-- TOC entry 3051 (class 2606 OID 26506)
-- Name: kelas kelas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kelas
    ADD CONSTRAINT kelas_pkey PRIMARY KEY (id_kelas);


--
-- TOC entry 3054 (class 2606 OID 26508)
-- Name: keuangan keuangan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.keuangan
    ADD CONSTRAINT keuangan_pkey PRIMARY KEY (id_keuangan);


--
-- TOC entry 3056 (class 2606 OID 26510)
-- Name: kurikulum kurikulum_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kurikulum
    ADD CONSTRAINT kurikulum_pkey PRIMARY KEY (id_kurikulum);


--
-- TOC entry 3058 (class 2606 OID 26512)
-- Name: mata_pelajaran mata_pelajaran_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mata_pelajaran
    ADD CONSTRAINT mata_pelajaran_pkey PRIMARY KEY (kode_mata_pelajaran);


--
-- TOC entry 3060 (class 2606 OID 26514)
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3065 (class 2606 OID 26516)
-- Name: nilai nilai_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nilai
    ADD CONSTRAINT nilai_pkey PRIMARY KEY (id_nilai);


--
-- TOC entry 3068 (class 2606 OID 26518)
-- Name: orangtua orangtua_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orangtua
    ADD CONSTRAINT orangtua_pkey PRIMARY KEY (id_orang_tua);


--
-- TOC entry 3072 (class 2606 OID 26520)
-- Name: pendaftaran pendaftaran_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pendaftaran
    ADD CONSTRAINT pendaftaran_pkey PRIMARY KEY (id_pendaftaran);


--
-- TOC entry 3075 (class 2606 OID 26522)
-- Name: pertemuan pertemuan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pertemuan
    ADD CONSTRAINT pertemuan_pkey PRIMARY KEY (id_pertemuan);


--
-- TOC entry 3079 (class 2606 OID 26524)
-- Name: presensi_guru presensi_guru_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.presensi_guru
    ADD CONSTRAINT presensi_guru_pkey PRIMARY KEY (id_presensi_guru);


--
-- TOC entry 3083 (class 2606 OID 26526)
-- Name: presensi_siswa presensi_siswa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.presensi_siswa
    ADD CONSTRAINT presensi_siswa_pkey PRIMARY KEY (id_presensi_siswa);


--
-- TOC entry 3086 (class 2606 OID 26528)
-- Name: prestasi_sekolah prestasi_sekolah_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prestasi_sekolah
    ADD CONSTRAINT prestasi_sekolah_pkey PRIMARY KEY (id_prestrasi);


--
-- TOC entry 3088 (class 2606 OID 26530)
-- Name: role role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id_role);


--
-- TOC entry 3091 (class 2606 OID 26532)
-- Name: sekolah sekolah_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sekolah
    ADD CONSTRAINT sekolah_pkey PRIMARY KEY (id_sekolah);


--
-- TOC entry 3095 (class 2606 OID 26534)
-- Name: siswa siswa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.siswa
    ADD CONSTRAINT siswa_pkey PRIMARY KEY ("NIS");


--
-- TOC entry 3097 (class 2606 OID 26536)
-- Name: soal_ujian soal_ujian_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.soal_ujian
    ADD CONSTRAINT soal_ujian_pkey PRIMARY KEY (id_soal_ujian);


--
-- TOC entry 3111 (class 2606 OID 26762)
-- Name: spp_admin spp_admin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spp_admin
    ADD CONSTRAINT spp_admin_pkey PRIMARY KEY (id_spp_admin);


--
-- TOC entry 3103 (class 2606 OID 26538)
-- Name: spp_detail spp_detail_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spp_detail
    ADD CONSTRAINT spp_detail_pkey PRIMARY KEY (id_spp_detail);


--
-- TOC entry 3100 (class 2606 OID 26540)
-- Name: spp spp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spp
    ADD CONSTRAINT spp_pkey PRIMARY KEY (id_spp);


--
-- TOC entry 3107 (class 2606 OID 26542)
-- Name: user user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id_user);


--
-- TOC entry 3109 (class 2606 OID 26764)
-- Name: verifikasi_kehadiran verifikasi_kehadiran_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.verifikasi_kehadiran
    ADD CONSTRAINT verifikasi_kehadiran_pkey PRIMARY KEY (id);


--
-- TOC entry 3038 (class 1259 OID 26543)
-- Name: fki_NIP_jadwal; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_NIP_jadwal" ON public.jadwal USING btree ("NIP");


--
-- TOC entry 3076 (class 1259 OID 26544)
-- Name: fki_NIP_presensi_guru; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_NIP_presensi_guru" ON public.presensi_guru USING btree ("NIP");


--
-- TOC entry 3039 (class 1259 OID 26545)
-- Name: fki_NIS_jadwal; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_NIS_jadwal" ON public.jadwal USING btree ("NIS");


--
-- TOC entry 3043 (class 1259 OID 26546)
-- Name: fki_NIS_jawaban; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_NIS_jawaban" ON public.jawaban USING btree ("NIS");


--
-- TOC entry 3061 (class 1259 OID 26547)
-- Name: fki_NIS_nilai; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_NIS_nilai" ON public.nilai USING btree ("NIS");


--
-- TOC entry 3066 (class 1259 OID 26548)
-- Name: fki_NIS_orangtua; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_NIS_orangtua" ON public.orangtua USING btree ("NIS");


--
-- TOC entry 3080 (class 1259 OID 26549)
-- Name: fki_NIS_presensi_siswa; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_NIS_presensi_siswa" ON public.presensi_siswa USING btree ("NIS");


--
-- TOC entry 3098 (class 1259 OID 26550)
-- Name: fki_NIS_spp; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_NIS_spp" ON public.spp USING btree ("NIS");


--
-- TOC entry 3073 (class 1259 OID 26551)
-- Name: fki_id_jadwal_pertemuan; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_jadwal_pertemuan ON public.pertemuan USING btree (id_jadwal);


--
-- TOC entry 3092 (class 1259 OID 26552)
-- Name: fki_id_kelas_siswa; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_kelas_siswa ON public.siswa USING btree (id_kelas);


--
-- TOC entry 3077 (class 1259 OID 26553)
-- Name: fki_id_pertemuan_presensi_guru; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_pertemuan_presensi_guru ON public.presensi_guru USING btree (id_pertemuan);


--
-- TOC entry 3081 (class 1259 OID 26554)
-- Name: fki_id_pertemuan_presensi_siswa; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_pertemuan_presensi_siswa ON public.presensi_siswa USING btree (id_pertemuan);


--
-- TOC entry 3104 (class 1259 OID 26555)
-- Name: fki_id_role_user; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_role_user ON public."user" USING btree (id_role);


--
-- TOC entry 3032 (class 1259 OID 26556)
-- Name: fki_id_sekolah_alumni; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_sekolah_alumni ON public.alumni USING btree (id_sekolah);


--
-- TOC entry 3047 (class 1259 OID 26557)
-- Name: fki_id_sekolah_kegiatan; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_sekolah_kegiatan ON public.kegiatan_sekolah USING btree (id_sekolah);


--
-- TOC entry 3052 (class 1259 OID 26558)
-- Name: fki_id_sekolah_keuangan; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_sekolah_keuangan ON public.keuangan USING btree (id_sekolah);


--
-- TOC entry 3070 (class 1259 OID 26559)
-- Name: fki_id_sekolah_pendaftaran; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_sekolah_pendaftaran ON public.pendaftaran USING btree (id_sekolah);


--
-- TOC entry 3084 (class 1259 OID 26560)
-- Name: fki_id_sekolah_prestasi; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_sekolah_prestasi ON public.prestasi_sekolah USING btree (id_sekolah);


--
-- TOC entry 3105 (class 1259 OID 26561)
-- Name: fki_id_sekolah_user; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_sekolah_user ON public."user" USING btree (id_sekolah);


--
-- TOC entry 3044 (class 1259 OID 26562)
-- Name: fki_id_soal_ujian_jawaban; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_soal_ujian_jawaban ON public.jawaban USING btree (id_soal_ujian);


--
-- TOC entry 3062 (class 1259 OID 26563)
-- Name: fki_id_soal_ujian_nilai; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_soal_ujian_nilai ON public.nilai USING btree (id_soal_ujian);


--
-- TOC entry 3101 (class 1259 OID 26564)
-- Name: fki_id_spp_spp_detail; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_spp_spp_detail ON public.spp_detail USING btree (id_spp);


--
-- TOC entry 3033 (class 1259 OID 26565)
-- Name: fki_id_user_alumni; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_user_alumni ON public.alumni USING btree (id_user);


--
-- TOC entry 3093 (class 1259 OID 26566)
-- Name: fki_id_user_siswa; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_user_siswa ON public.siswa USING btree (id_user);


--
-- TOC entry 3040 (class 1259 OID 26567)
-- Name: fki_kode_mata_pelajaran_jadwal; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_kode_mata_pelajaran_jadwal ON public.jadwal USING btree (kode_mata_pelajaran);


--
-- TOC entry 3063 (class 1259 OID 26568)
-- Name: fki_kode_mata_pelajaran_nilai; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_kode_mata_pelajaran_nilai ON public.nilai USING btree (kode_mata_pelajaran);


--
-- TOC entry 3089 (class 1259 OID 26569)
-- Name: fki_kurikulim_id_sekolah; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_kurikulim_id_sekolah ON public.sekolah USING btree (id_kurikulum);


--
-- TOC entry 3069 (class 1259 OID 26570)
-- Name: password_resets_email_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);


--
-- TOC entry 3114 (class 2606 OID 26571)
-- Name: jadwal NIP_jadwal; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jadwal
    ADD CONSTRAINT "NIP_jadwal" FOREIGN KEY ("NIP") REFERENCES public.guru("NIP") NOT VALID;


--
-- TOC entry 3127 (class 2606 OID 26576)
-- Name: presensi_guru NIP_presensi_guru; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.presensi_guru
    ADD CONSTRAINT "NIP_presensi_guru" FOREIGN KEY ("NIP") REFERENCES public.guru("NIP") NOT VALID;


--
-- TOC entry 3115 (class 2606 OID 26581)
-- Name: jadwal NIS_jadwal; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jadwal
    ADD CONSTRAINT "NIS_jadwal" FOREIGN KEY ("NIS") REFERENCES public.siswa("NIS") NOT VALID;


--
-- TOC entry 3117 (class 2606 OID 26586)
-- Name: jawaban NIS_jawaban; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jawaban
    ADD CONSTRAINT "NIS_jawaban" FOREIGN KEY ("NIS") REFERENCES public.siswa("NIS") NOT VALID;


--
-- TOC entry 3121 (class 2606 OID 26591)
-- Name: nilai NIS_nilai; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nilai
    ADD CONSTRAINT "NIS_nilai" FOREIGN KEY ("NIS") REFERENCES public.siswa("NIS") NOT VALID;


--
-- TOC entry 3124 (class 2606 OID 26596)
-- Name: orangtua NIS_orangtua; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orangtua
    ADD CONSTRAINT "NIS_orangtua" FOREIGN KEY ("NIS") REFERENCES public.siswa("NIS") NOT VALID;


--
-- TOC entry 3129 (class 2606 OID 26601)
-- Name: presensi_siswa NIS_presensi_siswa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.presensi_siswa
    ADD CONSTRAINT "NIS_presensi_siswa" FOREIGN KEY ("NIS") REFERENCES public.siswa("NIS") NOT VALID;


--
-- TOC entry 3135 (class 2606 OID 26606)
-- Name: spp NIS_spp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spp
    ADD CONSTRAINT "NIS_spp" FOREIGN KEY ("NIS") REFERENCES public.siswa("NIS") NOT VALID;


--
-- TOC entry 3126 (class 2606 OID 26611)
-- Name: pertemuan id_jadwal_pertemuan; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pertemuan
    ADD CONSTRAINT id_jadwal_pertemuan FOREIGN KEY (id_jadwal) REFERENCES public.jadwal(id_jadwal) NOT VALID;


--
-- TOC entry 3133 (class 2606 OID 26616)
-- Name: siswa id_kelas_siswa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.siswa
    ADD CONSTRAINT id_kelas_siswa FOREIGN KEY (id_kelas) REFERENCES public.kelas(id_kelas) NOT VALID;


--
-- TOC entry 3128 (class 2606 OID 26621)
-- Name: presensi_guru id_pertemuan_presensi_guru; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.presensi_guru
    ADD CONSTRAINT id_pertemuan_presensi_guru FOREIGN KEY (id_pertemuan) REFERENCES public.pertemuan(id_pertemuan) NOT VALID;


--
-- TOC entry 3130 (class 2606 OID 26626)
-- Name: presensi_siswa id_pertemuan_presensi_siswa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.presensi_siswa
    ADD CONSTRAINT id_pertemuan_presensi_siswa FOREIGN KEY (id_pertemuan) REFERENCES public.pertemuan(id_pertemuan) NOT VALID;


--
-- TOC entry 3137 (class 2606 OID 26631)
-- Name: user id_role_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT id_role_user FOREIGN KEY (id_role) REFERENCES public.role(id_role) NOT VALID;


--
-- TOC entry 3112 (class 2606 OID 26636)
-- Name: alumni id_sekolah_alumni; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni
    ADD CONSTRAINT id_sekolah_alumni FOREIGN KEY (id_sekolah) REFERENCES public.sekolah(id_sekolah) NOT VALID;


--
-- TOC entry 3119 (class 2606 OID 26641)
-- Name: kegiatan_sekolah id_sekolah_kegiatan; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kegiatan_sekolah
    ADD CONSTRAINT id_sekolah_kegiatan FOREIGN KEY (id_sekolah) REFERENCES public.sekolah(id_sekolah) NOT VALID;


--
-- TOC entry 3120 (class 2606 OID 26646)
-- Name: keuangan id_sekolah_keuangan; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.keuangan
    ADD CONSTRAINT id_sekolah_keuangan FOREIGN KEY (id_sekolah) REFERENCES public.sekolah(id_sekolah) NOT VALID;


--
-- TOC entry 3125 (class 2606 OID 26651)
-- Name: pendaftaran id_sekolah_pendaftaran; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pendaftaran
    ADD CONSTRAINT id_sekolah_pendaftaran FOREIGN KEY (id_sekolah) REFERENCES public.sekolah(id_sekolah) NOT VALID;


--
-- TOC entry 3131 (class 2606 OID 26656)
-- Name: prestasi_sekolah id_sekolah_prestasi; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prestasi_sekolah
    ADD CONSTRAINT id_sekolah_prestasi FOREIGN KEY (id_sekolah) REFERENCES public.sekolah(id_sekolah) NOT VALID;


--
-- TOC entry 3138 (class 2606 OID 26661)
-- Name: user id_sekolah_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT id_sekolah_user FOREIGN KEY (id_sekolah) REFERENCES public.sekolah(id_sekolah) NOT VALID;


--
-- TOC entry 3118 (class 2606 OID 26666)
-- Name: jawaban id_soal_ujian_jawaban; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jawaban
    ADD CONSTRAINT id_soal_ujian_jawaban FOREIGN KEY (id_soal_ujian) REFERENCES public.soal_ujian(id_soal_ujian) NOT VALID;


--
-- TOC entry 3122 (class 2606 OID 26671)
-- Name: nilai id_soal_ujian_nilai; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nilai
    ADD CONSTRAINT id_soal_ujian_nilai FOREIGN KEY (id_soal_ujian) REFERENCES public.soal_ujian(id_soal_ujian) NOT VALID;


--
-- TOC entry 3136 (class 2606 OID 26676)
-- Name: spp_detail id_spp_spp_detail; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spp_detail
    ADD CONSTRAINT id_spp_spp_detail FOREIGN KEY (id_spp) REFERENCES public.spp(id_spp) NOT VALID;


--
-- TOC entry 3113 (class 2606 OID 26681)
-- Name: alumni id_user_alumni; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni
    ADD CONSTRAINT id_user_alumni FOREIGN KEY (id_user) REFERENCES public."user"(id_user) NOT VALID;


--
-- TOC entry 3134 (class 2606 OID 26686)
-- Name: siswa id_user_siswa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.siswa
    ADD CONSTRAINT id_user_siswa FOREIGN KEY (id_user) REFERENCES public."user"(id_user) NOT VALID;


--
-- TOC entry 3116 (class 2606 OID 26691)
-- Name: jadwal kode_mata_pelajaran_jadwal; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jadwal
    ADD CONSTRAINT kode_mata_pelajaran_jadwal FOREIGN KEY (kode_mata_pelajaran) REFERENCES public.mata_pelajaran(kode_mata_pelajaran) NOT VALID;


--
-- TOC entry 3123 (class 2606 OID 26696)
-- Name: nilai kode_mata_pelajaran_nilai; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nilai
    ADD CONSTRAINT kode_mata_pelajaran_nilai FOREIGN KEY (kode_mata_pelajaran) REFERENCES public.mata_pelajaran(kode_mata_pelajaran) NOT VALID;


--
-- TOC entry 3132 (class 2606 OID 26701)
-- Name: sekolah kurikulum_id_sekolah; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sekolah
    ADD CONSTRAINT kurikulum_id_sekolah FOREIGN KEY (id_kurikulum) REFERENCES public.kurikulum(id_kurikulum) NOT VALID;


--
-- TOC entry 3330 (class 0 OID 0)
-- Dependencies: 243
-- Name: TABLE spp_admin; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT ON TABLE public.spp_admin TO PUBLIC;


-- Completed on 2021-06-17 21:03:17

--
-- PostgreSQL database dump complete
--

