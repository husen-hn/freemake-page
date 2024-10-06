'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.json": "f33f1dfdc6a9d800d85703a9e7bc2127",
"assets/assets/images/tech_enthusiasts.webp": "b9623c893383466015b01b46cf8916e9",
"assets/assets/images/professional.webp": "ea6ac47040a00e856928cf4fb9ff1f9a",
"assets/assets/images/logo.png": "fda857c4a74f6c0f14cd45d41e92449b",
"assets/assets/images/choose_media.webp": "29b4758416a9a7e59c32ee7ddd1244c0",
"assets/assets/images/casual_user.webp": "2b410329c9b89dc117f68e078a54bd3d",
"assets/assets/images/choose_format.webp": "daa8c869e28796eabdb157b63138535f",
"assets/assets/images/sc3.png": "824dcbd595948e6f2782594d29c5bc89",
"assets/assets/images/sc4.png": "7afb3bd41276bce20458bce9cbdb0634",
"assets/assets/images/sc0.png": "d5c25ab6e874e2701720c8d890e12137",
"assets/assets/images/direct_download.webp": "5145157872a9f5dfbc521d002ea3e0db",
"assets/assets/images/cafebazaar_download.webp": "31f548daec7f8034c09b625a347985c3",
"assets/assets/images/sc7.png": "6eba778c599f37e4ad8df658a942eb06",
"assets/assets/images/sc8.png": "c1f54ed02ed62287c2ae30f5f9c2fb3f",
"assets/assets/images/sc1.png": "27b8147d7f27763d5fef6db696b40b6c",
"assets/assets/images/content_creator.webp": "843552baad157a90d40e8f88d8ba3a19",
"assets/assets/images/sc5.png": "25e85a653d364a4df2bd2bf921dd4b74",
"assets/assets/images/app_icon.webp": "714f36678b1df6cd5a7d3b8afa24b670",
"assets/assets/images/convert.webp": "06bd4ad898f08d62595958dd9392dd1e",
"assets/assets/images/convert_media.webp": "0c116af184128235edd0aa7c8ad01b8c",
"assets/assets/images/sc2.png": "c857323fd2274d2a6537d0cea090f490",
"assets/assets/images/logo.webp": "76a1b107e4d4dc14a6607ebcf69642f8",
"assets/assets/images/menu.webp": "32f97ff53c63425bfb220acfbefdfaa5",
"assets/assets/images/sc6.png": "07cfbba30158d69d1c747bf457dfbc7a",
"assets/assets/fonts/Poppins-Bold.ttf": "08c20a487911694291bd8c5de41315ad",
"assets/assets/fonts/Montserrat-SemiBold.ttf": "cc10461cb5e0a6f2621c7179f4d6de17",
"assets/assets/fonts/Poppins-SemiBold.ttf": "6f1520d107205975713ba09df778f93f",
"assets/assets/fonts/Montserrat-Bold.ttf": "ed86af2ed5bbaf879e9f2ec2e2eac929",
"assets/assets/fonts/Poppins-Regular.ttf": "093ee89be9ede30383f39a899c485a82",
"assets/assets/fonts/Montserrat-Regular.ttf": "5e077c15f6e1d334dd4e9be62b28ac75",
"assets/AssetManifest.bin.json": "b11d7ac69dfe7d160935d2c1bc51ee85",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "65b09a5aa0004e5a049f8925b9cb7502",
"assets/FontManifest.json": "ea47989c23991ef8a0ba994fcfdddec0",
"assets/NOTICES": "5c65db9a50b7f0e05b660f29b33013be",
"assets/fonts/MaterialIcons-Regular.otf": "321d18e791d9a99bd93e20a8e2462249",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"main.dart.js": "2dfcbae386cc14b9d9a4d38d01f26a82",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"flutter_bootstrap.js": "049f374b2d04c78157a92a0bc99d8be4",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"index.html": "3ae92c531f08baa68f6a9dc5e85f1e2b",
"/": "3ae92c531f08baa68f6a9dc5e85f1e2b",
"favicon.ico": "4d44dfa4571cb6ed4aa5fadd36c13782",
"version.json": "da1a4afa7a242dacfba76a77a870ea33",
"manifest.json": "933828d98d193ba202b429761f28697b",
"splash/img/light-2x.png": "e6b739012d9e623fffc837aacf217b87",
"splash/img/dark-4x.png": "c7dabbd2a02501f5131e62fc8fd76405",
"splash/img/dark-1x.png": "78cd55741a4e80e865bc1fc24b4bfeb5",
"splash/img/light-1x.png": "78cd55741a4e80e865bc1fc24b4bfeb5",
"splash/img/dark-2x.png": "e6b739012d9e623fffc837aacf217b87",
"splash/img/dark-3x.png": "f4f4e1a14ca2e4ee053cd4459ebb1d78",
"splash/img/light-4x.png": "c7dabbd2a02501f5131e62fc8fd76405",
"splash/img/light-3x.png": "f4f4e1a14ca2e4ee053cd4459ebb1d78"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
