
import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Cam_picture_view.dart';

List<CameraDescription> cameras = [];

class CameraAccess extends StatefulWidget {
  const CameraAccess({super.key});

  @override
  State<CameraAccess> createState() => _CameraAccessState();
}

class _CameraAccessState extends State<CameraAccess> {
  late CameraController cameraController;
  late Future<void> cameravalue;
  late FlashMode currentflashmode = FlashMode.off;
  bool flipCamera=true;

  @override
  void initState() {
    super.initState();
    cameraController = CameraController(cameras[1], ResolutionPreset.high);
    cameravalue = cameraController.initialize();
    cameraController.setFlashMode(FlashMode.off);
  }

  @override
  void dispose() {
    // Dispose of the camera controller when the widget is disposed
    cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.clear_rounded,
              color: Colors.white,
            )),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                if (currentflashmode != FlashMode.auto) {
                  currentflashmode = FlashMode.auto;
                } else {
                  currentflashmode = FlashMode.off;
                }
              });
            },
            icon: currentflashmode == FlashMode.auto
                ? const Icon(Icons.flash_auto)
                : const Icon(Icons.flash_off),
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          FutureBuilder(
            future: cameravalue,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return SizedBox(
                    height: MediaQuery.of(context).size.height / 1.3,
                    width: MediaQuery.of(context).size.width,
                    child: CameraPreview(cameraController));
              } else {
                return const Center(
                  child: CupertinoActivityIndicator(),
                );
              }
            },
          ),
          Positioned(
            bottom: 0.0,
            child: Container(
              padding: const EdgeInsets.all(10),
              color: Colors.black,
              width: MediaQuery.of(context).size.width,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.photo,
                              color: Colors.white,
                            )),
                        GestureDetector(
                            onLongPress: (){
                              
                            },
                            onLongPressUp: (){
                      
                            },
                            onTap: () {
                              takePhoto(context);
                            },
                            child: const Icon(
                              Icons.panorama_fish_eye,
                              color: Colors.white,
                              weight: 5,
                              size: 70,
                            )),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                flipCamera=!flipCamera;
                                if(flipCamera==false){
                                cameraController = CameraController(cameras[1], ResolutionPreset.high);
                                print(cameras[1]);
                                }
                                else{
                                  cameraController = CameraController(cameras[0], ResolutionPreset.high);
                                }
                              });
                            },
                            icon: const Icon(Icons.flip_camera_android,
                                color: Colors.white)),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Hold for Video Tap for Photos",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    )
                  ]),
            ),
          )
        ],
      ),
    );
  }

  void takePhoto(BuildContext context) async {
    XFile file = await cameraController.takePicture();
    // ignore: use_build_context_synchronously
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (builder) => CameraPictureView(
                  path: file.path,
                )));
  }
}


