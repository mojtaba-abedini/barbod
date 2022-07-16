import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:http/http.dart' as http;

class OpenStreetMapSearchAndPick extends StatefulWidget {
  final LatLong center;
  final void Function(PickedData pickedData) onPicked;

  const OpenStreetMapSearchAndPick(
      {Key? key, required this.center, required this.onPicked})
      : super(key: key);

  @override
  State<OpenStreetMapSearchAndPick> createState() =>
      _OpenStreetMapSearchAndPickState();
}

class _OpenStreetMapSearchAndPickState
    extends State<OpenStreetMapSearchAndPick> {
  MapController _mapController = MapController();
  final TextEditingController _searchController = TextEditingController();

  late List<String> _searchControllerFiltered;

  final FocusNode _focusNode = FocusNode();
  List<OSMdata> _options = <OSMdata>[];
  Timer? _debounce;

  void setNameCurrentPos() async {
    var client = http.Client();
    double latitude = _mapController.center.latitude;
    double longitude = _mapController.center.longitude;
    if (kDebugMode) {
      print(latitude);
    }
    if (kDebugMode) {
      print(longitude);
    }
    String url =
        'https://nominatim.openstreetmap.org/reverse?format=json&country=Iran&countrycodes=IR&accept-language=fa&lat=$latitude&lon=$longitude&zoom=18&addressdetails=0';

    var response = await client.post(Uri.parse(url));
    var decodedResponse =
        jsonDecode(utf8.decode(response.bodyBytes)) as Map<dynamic, dynamic>;


    _searchControllerFiltered =  (decodedResponse['display_name']).split(',');

    _searchController.text =
        ("${_searchControllerFiltered[0]}، ${_searchControllerFiltered[1]}، ${_searchControllerFiltered[2]}، ${_searchControllerFiltered[3]}، ${_searchControllerFiltered[4]}");
    setState(() {});
  }

  void setNameCurrentPosAtInit() async {
    var client = http.Client();
    double latitude = widget.center.latitude;
    double longitude = widget.center.longitude;
    if (kDebugMode) {
      print(latitude);
    }
    if (kDebugMode) {
      print(longitude);
    }
    String url =
        'https://nominatim.openstreetmap.org/reverse?format=json&country=Iran&countrycodes=IR&accept-language=fa&lat=$latitude&lon=$longitude&zoom=18&addressdetails=0';

    var response = await client.post(Uri.parse(url));
    var decodedResponse =
        jsonDecode(utf8.decode(response.bodyBytes)) as Map<dynamic, dynamic>;

    _searchControllerFiltered =  (decodedResponse['display_name']).split(',');

    _searchController.text =
        ("${_searchControllerFiltered[0]}، ${_searchControllerFiltered[1]}، ${_searchControllerFiltered[2]}، ${_searchControllerFiltered[3]}، ${_searchControllerFiltered[4]}");
    setState(() {});
  }

  @override
  void initState() {
    _mapController = MapController();

    _mapController.onReady.then((_) {
      setNameCurrentPosAtInit();
    });

    _mapController.mapEventStream.listen((event) async {
      if (event is MapEventMoveEnd) {
        var client = http.Client();
        String url =
            'https://nominatim.openstreetmap.org/reverse?format=json&country=Iran&countrycodes=IR&accept-language=fa&lat=${event.center.latitude}&lon=${event.center.longitude}&zoom=18&addressdetails=0';


        var response = await client.post(Uri.parse(url));
        var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes))
            as Map<dynamic, dynamic>;


        _searchControllerFiltered =  (decodedResponse['display_name']).split(',');

        _searchController.text =
        ("${_searchControllerFiltered[0]}، ${_searchControllerFiltered[1]}، ${_searchControllerFiltered[2]}، ${_searchControllerFiltered[3]}، ${_searchControllerFiltered[4]}");

        setState(() {});
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    _mapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder inputBorder = OutlineInputBorder(
      borderSide: BorderSide(color: Theme.of(context).primaryColor),
    );
    OutlineInputBorder inputFocusBorder = OutlineInputBorder(
      borderSide: BorderSide(color: Theme.of(context).primaryColor, width: 1.0),
    );

    // String? _autocompleteSelection;
    return SafeArea(
      child: Stack(
        children: [
          Positioned.fill(
              child: FlutterMap(
            options: MapOptions(
                center: LatLng(widget.center.latitude, widget.center.longitude),
                zoom: 15.0,
                maxZoom: 18,
                minZoom: 6),
            mapController: _mapController,
            layers: [
              TileLayerOptions(
                urlTemplate:
                    "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                subdomains: ['a', 'b', 'c'],
                // attributionBuilder: (_) {
                //   return Text("© OpenStreetMap contributors");
                // },
              ),
            ],
          )),
          // Positioned(
          //     top: MediaQuery.of(context).size.height * 0.5,
          //     left: 0,
          //     right: 0,
          //     child: IgnorePointer(
          //       child: Center(
          //         child: StatefulBuilder(builder: (context, setState) {
          //           return Text(
          //             _searchController.text,
          //             textAlign: TextAlign.center,
          //           );
          //         }),
          //       ),
          //     )),
          const Positioned.fill(
              child: IgnorePointer(
            child: Center(
              child: Icon(
                Icons.location_on,
                size: 35,
                color: Colors.pink,
              ),
            ),
          )),
          Positioned(
              bottom: 85,
              right: 10,
              child: FloatingActionButton(
                backgroundColor: Theme.of(context).primaryColor,
                onPressed: () {
                  _mapController.move(
                      _mapController.center, _mapController.zoom + 1);
                },
                child: const Icon(Icons.zoom_in_sharp),
              )),
          Positioned(
              bottom: 20,
              right: 10,
              child: FloatingActionButton(
                backgroundColor: Theme.of(context).primaryColor,
                onPressed: () {
                  _mapController.move(
                      _mapController.center, _mapController.zoom - 1);
                },
                child: const Icon(Icons.zoom_out_sharp),
              )),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Column(
                  children: [
                    TextFormField(
                        controller: _searchController,
                        focusNode: _focusNode,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                              onPressed: () {
                                _searchController.clear();
                              },
                              icon: const Icon(Icons.clear)),
                          hintText: 'جستجوی مکان ...',
                          border: inputBorder,
                          focusedBorder: inputFocusBorder,
                        ),
                        onChanged: (String value) {
                          if (_debounce?.isActive ?? false) _debounce?.cancel();

                          _debounce = Timer(const Duration(milliseconds: 2000),
                              () async {
                            if (kDebugMode) {
                              print(value);
                            }
                            var client = http.Client();
                            try {
                              String url =
                                  'https://nominatim.openstreetmap.org/search?q=$value&country=Iran&countrycodes=IR&accept-language=fa&format=json&polygon_geojson=1&addressdetails=0';
                              if (kDebugMode) {
                                print(url);
                              }
                              var response = await client.post(Uri.parse(url));
                              var decodedResponse =
                                  jsonDecode(utf8.decode(response.bodyBytes))
                                      as List<dynamic>;
                              if (kDebugMode) {
                                print(decodedResponse);
                              }
                              _options = decodedResponse
                                  .map((e) => OSMdata(
                                      displayname: e['display_name'],
                                      lat: double.parse(e['lat']),
                                      lon: double.parse(e['lon'])))
                                  .toList();
                              setState(() {});
                            } finally {
                              client.close();
                            }

                            setState(() {});
                          });
                        }),
                    StatefulBuilder(builder: ((context, setState) {
                      return ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: _options.length > 5 ? 5 : _options.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text((_options[index].displayname).split(",")[0],style: const TextStyle(fontWeight: FontWeight.bold),),
                              subtitle: Text(_options[index].displayname),
                              onTap: () {
                                _mapController.move(
                                    LatLng(_options[index].lat,
                                        _options[index].lon),
                                    15.0);

                                _focusNode.unfocus();
                                _options.clear();
                                setState(() {});
                              },
                            );
                          });
                    })),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                child: WideButton('انتخاب این مکان', onPressed: () async {
                  pickData().then((value) {
                    widget.onPicked(value);
                    Navigator.pop(context);
                  });
                }, backgroundcolor: Theme.of(context).primaryColor),
              ),
            ),
          )
        ],
      ),
    );
  }

  Future<PickedData> pickData() async {
    LatLong center = LatLong(
        _mapController.center.latitude, _mapController.center.longitude);
    var client = http.Client();
    String url =
        'https://nominatim.openstreetmap.org/reverse?format=json&country=Iran&countrycodes=IR&accept-language=fa&lat=${_mapController.center.latitude}&lon=${_mapController.center.longitude}&zoom=18&addressdetails=0';

    var response = await client.post(Uri.parse(url));
    var decodedResponse =
        jsonDecode(utf8.decode(response.bodyBytes)) as Map<dynamic, dynamic>;
    String displayName = decodedResponse['display_name'];
    return PickedData(center, displayName);
  }
}

class OSMdata {
  final String displayname;
  final double lat;
  final double lon;

  OSMdata({required this.displayname, required this.lat, required this.lon});

  @override
  String toString() {
    return '$displayname, $lat, $lon';
  }

  @override
  bool operator ==(Object other) {
    if (other.runtimeType != runtimeType) {
      return false;
    }
    return other is OSMdata && other.displayname == displayname;
  }

  @override
  int get hashCode => Object.hash(displayname, lat, lon);
}

class LatLong {
  final double latitude;
  final double longitude;

  LatLong(this.latitude, this.longitude);
}

class PickedData {
  final LatLong latLong;
  final String address;

  PickedData(this.latLong, this.address);
}

class WideButton extends StatelessWidget {
  const WideButton(this.text,
      {Key? key,
      required,
      this.padding = 0.0,
      this.height = 45,
      required this.onPressed,
      required this.backgroundcolor})
      : super(key: key);

  /// Should be inside a column, row or flex widget
  final String text;
  final double padding;
  final double height;
  final Color backgroundcolor;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: MediaQuery.of(context).size.width <= 600
          ? MediaQuery.of(context).size.width
          : 600,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: padding),
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(backgroundcolor),
          ),
          onPressed: onPressed,
          child: Text(text),
        ),
      ),
    );
  }
}
