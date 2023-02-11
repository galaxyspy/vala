/* gstreamer-tag-1.0.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Gst", gir_namespace = "GstTag", gir_version = "1.0", lower_case_cprefix = "gst_")]
namespace Gst {
	namespace Tag {
		namespace CDDA {
			[CCode (cheader_filename = "gst/tag/tag.h", cname = "GST_TAG_CDDA_CDDB_DISCID")]
			public const string CDDB_DISCID;
			[CCode (cheader_filename = "gst/tag/tag.h", cname = "GST_TAG_CDDA_CDDB_DISCID_FULL")]
			public const string CDDB_DISCID_FULL;
			[CCode (cheader_filename = "gst/tag/tag.h", cname = "GST_TAG_CDDA_MUSICBRAINZ_DISCID")]
			public const string MUSICBRAINZ_DISCID;
			[CCode (cheader_filename = "gst/tag/tag.h", cname = "GST_TAG_CDDA_MUSICBRAINZ_DISCID_FULL")]
			public const string MUSICBRAINZ_DISCID_FULL;
		}
		namespace CMML {
			[CCode (cheader_filename = "gst/tag/tag.h", cname = "GST_TAG_CMML_CLIP")]
			public const string CLIP;
			[CCode (cheader_filename = "gst/tag/tag.h", cname = "GST_TAG_CMML_HEAD")]
			public const string HEAD;
			[CCode (cheader_filename = "gst/tag/tag.h", cname = "GST_TAG_CMML_STREAM")]
			public const string STREAM;
		}
		namespace Capturing {
			[CCode (cheader_filename = "gst/tag/tag.h", cname = "GST_TAG_CAPTURING_CONTRAST")]
			public const string CONTRAST;
			[CCode (cheader_filename = "gst/tag/tag.h", cname = "GST_TAG_CAPTURING_DIGITAL_ZOOM_RATIO")]
			public const string DIGITAL_ZOOM_RATIO;
			[CCode (cheader_filename = "gst/tag/tag.h", cname = "GST_TAG_CAPTURING_EXPOSURE_COMPENSATION")]
			public const string EXPOSURE_COMPENSATION;
			[CCode (cheader_filename = "gst/tag/tag.h", cname = "GST_TAG_CAPTURING_EXPOSURE_MODE")]
			public const string EXPOSURE_MODE;
			[CCode (cheader_filename = "gst/tag/tag.h", cname = "GST_TAG_CAPTURING_EXPOSURE_PROGRAM")]
			public const string EXPOSURE_PROGRAM;
			[CCode (cheader_filename = "gst/tag/tag.h", cname = "GST_TAG_CAPTURING_FLASH_FIRED")]
			public const string FLASH_FIRED;
			[CCode (cheader_filename = "gst/tag/tag.h", cname = "GST_TAG_CAPTURING_FLASH_MODE")]
			public const string FLASH_MODE;
			[CCode (cheader_filename = "gst/tag/tag.h", cname = "GST_TAG_CAPTURING_FOCAL_LENGTH")]
			public const string FOCAL_LENGTH;
			[CCode (cheader_filename = "gst/tag/tag.h", cname = "GST_TAG_CAPTURING_FOCAL_LENGTH_35_MM")]
			[Version (since = "1.10")]
			public const string FOCAL_LENGTH_35_MM;
			[CCode (cheader_filename = "gst/tag/tag.h", cname = "GST_TAG_CAPTURING_FOCAL_RATIO")]
			public const string FOCAL_RATIO;
			[CCode (cheader_filename = "gst/tag/tag.h", cname = "GST_TAG_CAPTURING_GAIN_ADJUSTMENT")]
			public const string GAIN_ADJUSTMENT;
			[CCode (cheader_filename = "gst/tag/tag.h", cname = "GST_TAG_CAPTURING_ISO_SPEED")]
			public const string ISO_SPEED;
			[CCode (cheader_filename = "gst/tag/tag.h", cname = "GST_TAG_CAPTURING_METERING_MODE")]
			public const string METERING_MODE;
			[CCode (cheader_filename = "gst/tag/tag.h", cname = "GST_TAG_CAPTURING_SATURATION")]
			public const string SATURATION;
			[CCode (cheader_filename = "gst/tag/tag.h", cname = "GST_TAG_CAPTURING_SCENE_CAPTURE_TYPE")]
			public const string SCENE_CAPTURE_TYPE;
			[CCode (cheader_filename = "gst/tag/tag.h", cname = "GST_TAG_CAPTURING_SHARPNESS")]
			public const string SHARPNESS;
			[CCode (cheader_filename = "gst/tag/tag.h", cname = "GST_TAG_CAPTURING_SHUTTER_SPEED")]
			public const string SHUTTER_SPEED;
			[CCode (cheader_filename = "gst/tag/tag.h", cname = "GST_TAG_CAPTURING_SOURCE")]
			public const string SOURCE;
			[CCode (cheader_filename = "gst/tag/tag.h", cname = "GST_TAG_CAPTURING_WHITE_BALANCE")]
			public const string WHITE_BALANCE;
		}
		namespace Image {
			[CCode (cheader_filename = "gst/tag/tag.h", cname = "GST_TAG_IMAGE_HORIZONTAL_PPI")]
			public const string HORIZONTAL_PPI;
			[CCode (cheader_filename = "gst/tag/tag.h", cname = "GST_TAG_IMAGE_VERTICAL_PPI")]
			public const string VERTICAL_PPI;
		}
		namespace List {
			[CCode (cheader_filename = "gst/tag/tag.h")]
			public static bool add_id3_image (Gst.TagList tag_list, [CCode (array_length_cname = "image_data_len", array_length_pos = 2.5, array_length_type = "guint")] uint8[] image_data, uint id3_picture_type);
			[CCode (cheader_filename = "gst/tag/tag.h")]
			public static Gst.TagList from_exif_buffer (Gst.Buffer buffer, int byte_order, uint32 base_offset);
			[CCode (cheader_filename = "gst/tag/tag.h")]
			public static Gst.TagList from_exif_buffer_with_tiff_header (Gst.Buffer buffer);
			[CCode (cheader_filename = "gst/tag/tag.h")]
			public static Gst.TagList? from_id3v2_tag (Gst.Buffer buffer);
			[CCode (cheader_filename = "gst/tag/tag.h")]
			public static Gst.TagList? from_vorbiscomment ([CCode (array_length_cname = "size", array_length_pos = 1.5, array_length_type = "gsize")] uint8[] data, [CCode (array_length_cname = "id_data_length", array_length_pos = 2.5, array_length_type = "guint")] uint8[] id_data, out string vendor_string);
			[CCode (cheader_filename = "gst/tag/tag.h")]
			public static Gst.TagList? from_vorbiscomment_buffer (Gst.Buffer buffer, [CCode (array_length_cname = "id_data_length", array_length_pos = 2.5, array_length_type = "guint")] uint8[] id_data, out string vendor_string);
			[CCode (cheader_filename = "gst/tag/tag.h")]
			public static Gst.TagList? from_xmp_buffer (Gst.Buffer buffer);
			[CCode (cheader_filename = "gst/tag/tag.h")]
			public static Gst.TagList? new_from_id3v1 ([CCode (array_length = false)] uint8 data[128]);
			[CCode (cheader_filename = "gst/tag/tag.h")]
			public static Gst.Buffer to_exif_buffer (Gst.TagList taglist, int byte_order, uint32 base_offset);
			[CCode (cheader_filename = "gst/tag/tag.h")]
			public static Gst.Buffer to_exif_buffer_with_tiff_header (Gst.TagList taglist);
			[CCode (cheader_filename = "gst/tag/tag.h")]
			public static Gst.Buffer to_vorbiscomment_buffer (Gst.TagList list, [CCode (array_length_cname = "id_data_length", array_length_pos = 2.5, array_length_type = "guint")] uint8[] id_data, string? vendor_string);
			[CCode (cheader_filename = "gst/tag/tag.h")]
			public static Gst.Buffer? to_xmp_buffer (Gst.TagList list, bool read_only, [CCode (array_length = false, array_null_terminated = true)] string[] schemas);
		}
		namespace MusicBrainz {
			[CCode (cheader_filename = "gst/tag/tag.h", cname = "GST_TAG_MUSICBRAINZ_ALBUMARTISTID")]
			public const string ALBUMARTISTID;
			[CCode (cheader_filename = "gst/tag/tag.h", cname = "GST_TAG_MUSICBRAINZ_ALBUMID")]
			public const string ALBUMID;
			[CCode (cheader_filename = "gst/tag/tag.h", cname = "GST_TAG_MUSICBRAINZ_ARTISTID")]
			public const string ARTISTID;
			[CCode (cheader_filename = "gst/tag/tag.h", cname = "GST_TAG_MUSICBRAINZ_RELEASEGROUPID")]
			[Version (since = "1.18")]
			public const string RELEASEGROUPID;
			[CCode (cheader_filename = "gst/tag/tag.h", cname = "GST_TAG_MUSICBRAINZ_RELEASETRACKID")]
			[Version (since = "1.18")]
			public const string RELEASETRACKID;
			[CCode (cheader_filename = "gst/tag/tag.h", cname = "GST_TAG_MUSICBRAINZ_TRACKID")]
			public const string TRACKID;
			[CCode (cheader_filename = "gst/tag/tag.h", cname = "GST_TAG_MUSICBRAINZ_TRMID")]
			public const string TRMID;
		}
		[CCode (cheader_filename = "gst/tag/tag.h", type_id = "gst_tag_demux_get_type ()")]
		[GIR (name = "TagDemux")]
		public abstract class Demux : Gst.Element {
			[CCode (has_construct_function = false)]
			protected Demux ();
			[NoWrapper]
			public virtual bool identify_tag (Gst.Buffer buffer, bool start_tag, uint tag_size);
			[NoWrapper]
			public virtual Gst.TagList merge_tags (Gst.TagList start_tags, Gst.TagList end_tags);
			[NoWrapper]
			public virtual Gst.Tag.DemuxResult parse_tag (Gst.Buffer buffer, bool start_tag, uint tag_size, Gst.TagList tags);
		}
		[CCode (cheader_filename = "gst/tag/tag.h", type_id = "gst_tag_mux_get_type ()")]
		[GIR (name = "TagMux")]
		public abstract class Mux : Gst.Element, Gst.TagSetter {
			[CCode (has_construct_function = false)]
			protected Mux ();
			[NoWrapper]
			public virtual Gst.Buffer render_end_tag (Gst.TagList tag_list);
			[NoWrapper]
			public virtual Gst.Buffer render_start_tag (Gst.TagList tag_list);
		}
		[CCode (cheader_filename = "gst/tag/tag.h", type_cname = "GstTagXmpWriterInterface", type_id = "gst_tag_xmp_writer_get_type ()")]
		[GIR (name = "TagXmpWriter")]
		public interface XmpWriter : Gst.Element {
			public void add_all_schemas ();
			public void add_schema (string schema);
			public bool has_schema (string schema);
			public void remove_all_schemas ();
			public void remove_schema (string schema);
			public Gst.Buffer tag_list_to_xmp_buffer (Gst.TagList taglist, bool read_only);
		}
		[CCode (cheader_filename = "gst/tag/tag.h", cprefix = "GST_TAG_DEMUX_RESULT_", type_id = "gst_tag_demux_result_get_type ()")]
		[GIR (name = "TagDemuxResult")]
		public enum DemuxResult {
			BROKEN_TAG,
			AGAIN,
			OK
		}
		[CCode (cheader_filename = "gst/tag/tag.h", cprefix = "GST_TAG_IMAGE_TYPE_", type_id = "gst_tag_image_type_get_type ()")]
		[GIR (name = "TagImageType")]
		public enum ImageType {
			NONE,
			UNDEFINED,
			FRONT_COVER,
			BACK_COVER,
			LEAFLET_PAGE,
			MEDIUM,
			LEAD_ARTIST,
			ARTIST,
			CONDUCTOR,
			BAND_ORCHESTRA,
			COMPOSER,
			LYRICIST,
			RECORDING_LOCATION,
			DURING_RECORDING,
			DURING_PERFORMANCE,
			VIDEO_CAPTURE,
			FISH,
			ILLUSTRATION,
			BAND_ARTIST_LOGO,
			PUBLISHER_STUDIO_LOGO
		}
		[CCode (cheader_filename = "gst/tag/tag.h", cprefix = "GST_TAG_LICENSE_", type_id = "gst_tag_license_flags_get_type ()")]
		[Flags]
		[GIR (name = "TagLicenseFlags")]
		public enum LicenseFlags {
			PERMITS_REPRODUCTION,
			PERMITS_DISTRIBUTION,
			PERMITS_DERIVATIVE_WORKS,
			PERMITS_SHARING,
			REQUIRES_NOTICE,
			REQUIRES_ATTRIBUTION,
			REQUIRES_SHARE_ALIKE,
			REQUIRES_SOURCE_CODE,
			REQUIRES_COPYLEFT,
			REQUIRES_LESSER_COPYLEFT,
			PROHIBITS_COMMERCIAL_USE,
			PROHIBITS_HIGH_INCOME_NATION_USE,
			CREATIVE_COMMONS_LICENSE,
			FREE_SOFTWARE_FOUNDATION_LICENSE
		}
		[CCode (cheader_filename = "gst/tag/tag.h", cname = "GST_TAG_ACOUSTID_FINGERPRINT")]
		[Version (since = "1.18")]
		public const string ACOUSTID_FINGERPRINT;
		[CCode (cheader_filename = "gst/tag/tag.h", cname = "GST_TAG_ACOUSTID_ID")]
		[Version (since = "1.18")]
		public const string ACOUSTID_ID;
		[CCode (cheader_filename = "gst/tag/tag.h", cname = "GST_TAG_ID3V2_HEADER_SIZE")]
		public const int ID3V2_HEADER_SIZE;
		[CCode (cheader_filename = "gst/tag/tag.h", cname = "GST_TAG_MUSICAL_KEY")]
		[Version (since = "1.2")]
		public const string MUSICAL_KEY;
		[CCode (cheader_filename = "gst/tag/tag.h")]
		public static bool check_language_code (string lang_code);
		[CCode (cheader_filename = "gst/tag/tag.h")]
		public static string? freeform_string_to_utf8 ([CCode (array_length_cname = "size", array_length_pos = 1.5)] char[] data, [CCode (array_length = false, array_null_terminated = true)] string[] env_vars);
		[CCode (cheader_filename = "gst/tag/tag.h")]
		public static unowned string? from_id3_tag (string id3_tag);
		[CCode (cheader_filename = "gst/tag/tag.h")]
		public static unowned string? from_id3_user_tag (string type, string id3_user_tag);
		[CCode (cheader_filename = "gst/tag/tag.h")]
		public static unowned string? from_vorbis_tag (string vorbis_tag);
		[CCode (cheader_filename = "gst/tag/tag.h")]
		public static uint get_id3v2_tag_size (Gst.Buffer buffer);
		[CCode (cheader_filename = "gst/tag/tag.h")]
		public static unowned string? get_language_code_iso_639_1 (string lang_code);
		[CCode (cheader_filename = "gst/tag/tag.h")]
		public static unowned string? get_language_code_iso_639_2B (string lang_code);
		[CCode (cheader_filename = "gst/tag/tag.h")]
		public static unowned string? get_language_code_iso_639_2T (string lang_code);
		[CCode (array_length = false, array_null_terminated = true, cheader_filename = "gst/tag/tag.h")]
		public static string[] get_language_codes ();
		[CCode (cheader_filename = "gst/tag/tag.h")]
		public static unowned string? get_language_name (string language_code);
		[CCode (cheader_filename = "gst/tag/tag.h")]
		public static unowned string? get_license_description (string license_ref);
		[CCode (cheader_filename = "gst/tag/tag.h")]
		public static Gst.Tag.LicenseFlags get_license_flags (string license_ref);
		[CCode (cheader_filename = "gst/tag/tag.h")]
		public static unowned string? get_license_jurisdiction (string license_ref);
		[CCode (cheader_filename = "gst/tag/tag.h")]
		public static unowned string? get_license_nick (string license_ref);
		[CCode (cheader_filename = "gst/tag/tag.h")]
		public static unowned string? get_license_title (string license_ref);
		[CCode (cheader_filename = "gst/tag/tag.h")]
		public static unowned string? get_license_version (string license_ref);
		[CCode (array_length = false, array_null_terminated = true, cheader_filename = "gst/tag/tag.h")]
		public static string[] get_licenses ();
		[CCode (cheader_filename = "gst/tag/tag.h")]
		public static uint id3_genre_count ();
		[CCode (cheader_filename = "gst/tag/tag.h")]
		public static unowned string? id3_genre_get (uint id);
		[CCode (cheader_filename = "gst/tag/tag.h")]
		public static Gst.Sample? image_data_to_image_sample ([CCode (array_length_cname = "image_data_len", array_length_pos = 1.5, array_length_type = "guint")] uint8[] image_data, Gst.Tag.ImageType image_type);
		[CCode (cheader_filename = "gst/tag/tag.h")]
		public static bool parse_extended_comment (string ext_comment, out string? key, out string? lang, out string value, bool fail_if_no_key);
		[CCode (cheader_filename = "gst/tag/tag.h")]
		public static void register_musicbrainz_tags ();
		[CCode (cheader_filename = "gst/tag/tag.h")]
		public static unowned string? to_id3_tag (string gst_tag);
		[CCode (cheader_filename = "gst/tag/tag.h")]
		public static GLib.List<string> to_vorbis_comments (Gst.TagList list, string tag);
		[CCode (cheader_filename = "gst/tag/tag.h")]
		public static unowned string? to_vorbis_tag (string gst_tag);
		[CCode (cheader_filename = "gst/tag/tag.h", cname = "gst_vorbis_tag_add")]
		public static void vorbis_tag_add (Gst.TagList list, string tag, string value);
		[CCode (array_length = false, array_null_terminated = true, cheader_filename = "gst/tag/tag.h")]
		public static unowned string[] xmp_list_schemas ();
	}
}
