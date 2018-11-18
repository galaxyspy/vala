/* geocode-glib-1.0.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Geocode", gir_namespace = "GeocodeGlib", gir_version = "1.0", lower_case_cprefix = "geocode_")]
namespace Geocode {
	namespace LocationAccuracy {
		[CCode (cheader_filename = "geocode-glib/geocode-glib.h", cname = "GEOCODE_LOCATION_ACCURACY_CITY")]
		public const int CITY;
		[CCode (cheader_filename = "geocode-glib/geocode-glib.h", cname = "GEOCODE_LOCATION_ACCURACY_CONTINENT")]
		public const int CONTINENT;
		[CCode (cheader_filename = "geocode-glib/geocode-glib.h", cname = "GEOCODE_LOCATION_ACCURACY_COUNTRY")]
		public const int COUNTRY;
		[CCode (cheader_filename = "geocode-glib/geocode-glib.h", cname = "GEOCODE_LOCATION_ACCURACY_REGION")]
		public const int REGION;
		[CCode (cheader_filename = "geocode-glib/geocode-glib.h", cname = "GEOCODE_LOCATION_ACCURACY_STREET")]
		public const int STREET;
		[CCode (cheader_filename = "geocode-glib/geocode-glib.h", cname = "GEOCODE_LOCATION_ACCURACY_UNKNOWN")]
		public const int UNKNOWN;
	}
	[CCode (cheader_filename = "geocode-glib/geocode-glib.h", type_id = "geocode_bounding_box_get_type ()")]
	public class BoundingBox : GLib.Object {
		[CCode (has_construct_function = false)]
		public BoundingBox (double top, double bottom, double left, double right);
		[Version (since = "3.23.1")]
		public bool equal (Geocode.BoundingBox b);
		public double get_bottom ();
		public double get_left ();
		public double get_right ();
		public double get_top ();
		public double bottom { get; construct; }
		public double left { get; construct; }
		public double right { get; construct; }
		public double top { get; construct; }
	}
	[CCode (cheader_filename = "geocode-glib/geocode-glib.h", type_id = "geocode_forward_get_type ()")]
	public class Forward : GLib.Object {
		[CCode (has_construct_function = false)]
		protected Forward ();
		[CCode (has_construct_function = false)]
		public Forward.for_params (GLib.HashTable<string,GLib.Value?> @params);
		[CCode (has_construct_function = false)]
		public Forward.for_string (string str);
		public uint get_answer_count ();
		public bool get_bounded ();
		public unowned Geocode.BoundingBox? get_search_area ();
		public GLib.List<Geocode.Place> search () throws GLib.Error;
		public async GLib.List<Geocode.Place> search_async (GLib.Cancellable? cancellable = null) throws GLib.Error;
		public void set_answer_count (uint count);
		[Version (since = "3.23.1")]
		public void set_backend (Geocode.Backend? backend);
		public void set_bounded (bool bounded);
		public void set_search_area (Geocode.BoundingBox box);
		public uint answer_count { get; set; }
		public bool bounded { get; set; }
		public Geocode.BoundingBox search_area { get; set; }
	}
	[CCode (cheader_filename = "geocode-glib/geocode-glib.h", type_id = "geocode_location_get_type ()")]
	public class Location : GLib.Object {
		[CCode (has_construct_function = false)]
		public Location (double latitude, double longitude, double accuracy = LocationAccuracy.UNKNOWN);
		[Version (since = "3.23.1")]
		public bool equal (Geocode.Location b);
		public double get_accuracy ();
		public double get_altitude ();
		public Geocode.LocationCRS get_crs ();
		public unowned string get_description ();
		public double get_distance_from (Geocode.Location locb);
		public double get_latitude ();
		public double get_longitude ();
		public uint64 get_timestamp ();
		public void set_description (string description);
		public bool set_from_uri (string uri) throws GLib.Error;
		public string to_uri (Geocode.LocationURIScheme scheme);
		[CCode (has_construct_function = false)]
		public Location.with_description (double latitude, double longitude, double accuracy, string description);
		[NoAccessorMethod]
		public double accuracy { get; set; }
		[NoAccessorMethod]
		public double altitude { get; set; }
		public Geocode.LocationCRS crs { get; construct; }
		public string description { get; set; }
		[NoAccessorMethod]
		public double latitude { get; set; }
		[NoAccessorMethod]
		public double longitude { get; set; }
		public uint64 timestamp { get; construct; }
	}
	[CCode (cheader_filename = "geocode-glib/geocode-glib.h", type_id = "geocode_mock_backend_get_type ()")]
	[Version (since = "3.23.1")]
	public class MockBackend : GLib.Object, Geocode.Backend {
		[CCode (has_construct_function = false)]
		public MockBackend ();
		public void add_forward_result (GLib.HashTable<string,GLib.Value?> @params, GLib.List<Geocode.Place>? results, GLib.Error? error);
		public void add_reverse_result (GLib.HashTable<string,GLib.Value?> @params, GLib.List<Geocode.Place>? results, GLib.Error? error);
		public void clear ();
		public unowned GLib.GenericArray<Geocode.MockBackendQuery?> get_query_log ();
	}
	[CCode (cheader_filename = "geocode-glib/geocode-glib.h", type_id = "geocode_nominatim_get_type ()")]
	[Version (since = "3.23.1")]
	public class Nominatim : GLib.Object, Geocode.Backend {
		[CCode (has_construct_function = false)]
		public Nominatim (string base_url, string maintainer_email_address);
		public static Geocode.Nominatim get_gnome ();
		[NoWrapper]
		public virtual string query (string uri, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[NoWrapper]
		public virtual async string query_async (string uri, GLib.Cancellable? cancellable) throws GLib.Error;
		[NoAccessorMethod]
		public string base_url { owned get; construct; }
		[NoAccessorMethod]
		public string maintainer_email_address { owned get; construct; }
		[NoAccessorMethod]
		public string user_agent { owned get; set; }
	}
	[CCode (cheader_filename = "geocode-glib/geocode-glib.h", type_id = "geocode_place_get_type ()")]
	public class Place : GLib.Object {
		[CCode (has_construct_function = false)]
		public Place (string name, Geocode.PlaceType place_type);
		[Version (since = "3.23.1")]
		public bool equal (Geocode.Place b);
		public unowned string get_administrative_area ();
		public unowned string get_area ();
		public unowned Geocode.BoundingBox get_bounding_box ();
		public unowned string get_building ();
		public unowned string get_continent ();
		public unowned string get_country ();
		public unowned string get_country_code ();
		public unowned string get_county ();
		public unowned GLib.Icon get_icon ();
		public unowned Geocode.Location get_location ();
		public unowned string get_name ();
		public unowned string get_osm_id ();
		public Geocode.PlaceOsmType get_osm_type ();
		public Geocode.PlaceType get_place_type ();
		public unowned string get_postal_code ();
		public unowned string get_state ();
		public unowned string get_street ();
		public unowned string get_street_address ();
		public unowned string get_town ();
		public void set_administrative_area (string admin_area);
		public void set_area (string area);
		public void set_bounding_box (Geocode.BoundingBox bbox);
		public void set_building (string building);
		public void set_continent (string continent);
		public void set_country (string country);
		public void set_country_code (string country_code);
		public void set_county (string county);
		public void set_location (Geocode.Location location);
		public void set_name (string name);
		public void set_postal_code (string postal_code);
		public void set_state (string state);
		public void set_street (string street);
		public void set_street_address (string street_address);
		public void set_town (string town);
		[CCode (has_construct_function = false)]
		public Place.with_location (string name, Geocode.PlaceType place_type, Geocode.Location location);
		public string administrative_area { get; set; }
		public string area { get; set; }
		public Geocode.BoundingBox bounding_box { get; set; }
		public string building { get; set; }
		public string continent { get; set; }
		public string country { get; set; }
		public string country_code { get; set; }
		public string county { get; set; }
		public GLib.Icon icon { get; }
		public Geocode.Location location { get; set; }
		public string name { get; set; }
		[NoAccessorMethod]
		public string osm_id { owned get; set; }
		[NoAccessorMethod]
		public Geocode.PlaceOsmType osm_type { get; set; }
		public Geocode.PlaceType place_type { get; construct; }
		public string postal_code { get; set; }
		public string state { get; set; }
		public string street { get; set; }
		public string street_address { get; set; }
		public string town { get; set; }
	}
	[CCode (cheader_filename = "geocode-glib/geocode-glib.h", type_id = "geocode_reverse_get_type ()")]
	public class Reverse : GLib.Object {
		[CCode (has_construct_function = false)]
		protected Reverse ();
		[CCode (has_construct_function = false)]
		public Reverse.for_location (Geocode.Location location);
		public Geocode.Place resolve () throws GLib.Error;
		public async Geocode.Place resolve_async (GLib.Cancellable? cancellable = null) throws GLib.Error;
		[Version (since = "3.23.1")]
		public void set_backend (Geocode.Backend? backend);
	}
	[CCode (cheader_filename = "geocode-glib/geocode-glib.h", type_cname = "GeocodeBackendInterface", type_id = "geocode_backend_get_type ()")]
	[Version (since = "3.23.1")]
	public interface Backend : GLib.Object {
		public abstract GLib.List<Geocode.Place> forward_search (GLib.HashTable<string,GLib.Value?> @params, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public abstract async GLib.List<Geocode.Place> forward_search_async (GLib.HashTable<string,GLib.Value?> @params, GLib.Cancellable? cancellable) throws GLib.Error;
		public abstract GLib.List<Geocode.Place> reverse_resolve (GLib.HashTable<string,GLib.Value?> @params, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public abstract async GLib.List<Geocode.Place> reverse_resolve_async (GLib.HashTable<string,GLib.Value?> @params, GLib.Cancellable? cancellable) throws GLib.Error;
	}
	[CCode (cheader_filename = "geocode-glib/geocode-glib.h", has_type_id = false)]
	[Version (since = "3.23.1")]
	public struct MockBackendQuery {
		public weak GLib.HashTable<void*,void*> @params;
		public bool is_forward;
		public weak GLib.List<Geocode.Place> results;
		public weak GLib.Error error;
	}
	[CCode (cheader_filename = "geocode-glib/geocode-glib.h", cprefix = "GEOCODE_LOCATION_CRS_", type_id = "geocode_location_crs_get_type ()")]
	public enum LocationCRS {
		WGS84
	}
	[CCode (cheader_filename = "geocode-glib/geocode-glib.h", cprefix = "GEOCODE_LOCATION_URI_SCHEME_", type_id = "geocode_location_uri_scheme_get_type ()")]
	public enum LocationURIScheme {
		GEO
	}
	[CCode (cheader_filename = "geocode-glib/geocode-glib.h", cprefix = "GEOCODE_PLACE_OSM_TYPE_", type_id = "geocode_place_osm_type_get_type ()")]
	public enum PlaceOsmType {
		UNKNOWN,
		NODE,
		RELATION,
		WAY
	}
	[CCode (cheader_filename = "geocode-glib/geocode-glib.h", cprefix = "GEOCODE_PLACE_TYPE_", type_id = "geocode_place_type_get_type ()")]
	public enum PlaceType {
		UNKNOWN,
		BUILDING,
		STREET,
		TOWN,
		STATE,
		COUNTY,
		LOCAL_ADMINISTRATIVE_AREA,
		POSTAL_CODE,
		COUNTRY,
		ISLAND,
		AIRPORT,
		RAILWAY_STATION,
		BUS_STOP,
		MOTORWAY,
		DRAINAGE,
		LAND_FEATURE,
		MISCELLANEOUS,
		SUPERNAME,
		POINT_OF_INTEREST,
		SUBURB,
		COLLOQUIAL,
		ZONE,
		HISTORICAL_STATE,
		HISTORICAL_COUNTY,
		CONTINENT,
		TIME_ZONE,
		ESTATE,
		HISTORICAL_TOWN,
		OCEAN,
		SEA,
		SCHOOL,
		PLACE_OF_WORSHIP,
		RESTAURANT,
		BAR,
		LIGHT_RAIL_STATION
	}
	[CCode (cheader_filename = "geocode-glib/geocode-glib.h", cprefix = "GEOCODE_ERROR_", type_id = "geocode_error_get_type ()")]
	public errordomain Error {
		PARSE,
		NOT_SUPPORTED,
		NO_MATCHES,
		INVALID_ARGUMENTS,
		INTERNAL_SERVER;
		public static GLib.Quark quark ();
	}
	[CCode (cheader_filename = "geocode-glib/geocode-glib.h")]
	[Version (replacement = "Error.quark")]
	public static GLib.Quark error_quark ();
}
