'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter.js": "7d69e653079438abfbb24b82a655b0a4",
"manifest.json": "45d88daa59b186c5fd5830faaa30a7bc",
"index.html": "9b395ba36cd62014d22a6294c5cbc1a3",
"/": "9b395ba36cd62014d22a6294c5cbc1a3",
"assets/AssetManifest.bin": "22c9f007ab8323d3009ad274d138a7fb",
"assets/fonts/MaterialIcons-Regular.otf": "32fce58e2acb9c420eab0fe7b828b761",
"assets/AssetManifest.bin.json": "292ad50e0c7328093196abe676a47531",
"assets/FontManifest.json": "6389d4948eda5e05e66f3b2032c7b2e2",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"assets/NOTICES": "ebaf7be535c102e1554ce4bfa2728b29",
"assets/AssetManifest.json": "9ac60bbf7d0c48450568977e12526f06",
"assets/packages/blue_screen/fonts/meiryon_boot.ttf": "bf5bd75a3f6acd4cfda536b08979fa44",
"assets/packages/blue_screen/fonts/cht_boot.ttf": "e0a6806babe233d9b46b19038b6e57b3",
"assets/packages/blue_screen/fonts/wgl4_boot.ttf": "946004997cde5c87d36be295ada21e6d",
"assets/packages/blue_screen/fonts/kor_boot.ttf": "1051c465cabf77440b9221d00ba96a64",
"assets/packages/blue_screen/fonts/segmono_boot.ttf": "6d36ee6ba7ec0351a02ab332c34dbfad",
"assets/packages/blue_screen/fonts/chs_boot.ttf": "30cfe75b8d657f95ebb12425c5664ec6",
"assets/packages/blue_screen/fonts/segoe_slboot.ttf": "149132a90ac0f90ff143389bfdac89ef",
"assets/packages/blue_screen/fonts/msyh_boot.ttf": "a9d82b79b00a6c7625421c4e25c27488",
"assets/packages/blue_screen/fonts/jpn_boot.ttf": "19cc65d8c5ff8fd106de74283ee1c647",
"assets/packages/blue_screen/fonts/msjhn_boot.ttf": "8da7e7056b8e5a4c6fdee9f0e6ec7dd8",
"assets/packages/blue_screen/fonts/malgun_boot.ttf": "ea39014e02be67331526052ce881cfda",
"assets/packages/blue_screen/fonts/segoen_slboot.ttf": "2605bdf99e8a6685d444cf461e989383",
"assets/packages/blue_screen/fonts/meiryo_boot.ttf": "364029dfa3d0420eeecbd2f171a35770",
"assets/packages/blue_screen/fonts/malgunn_boot.ttf": "3f3fe82966233e693f196330ef79bf18",
"assets/packages/blue_screen/fonts/msjh_boot.ttf": "d1134a5274f4a803a7aa6fc2af7ce029",
"assets/packages/blue_screen/fonts/msyhn_boot.ttf": "7e28d971e5bd6742f5fd4f0d353356f2",
"assets/packages/blue_screen/assets/screenshot.png": "cf8ec81ff533be21984acf4b929468bd",
"assets/packages/blue_screen/assets/image.png": "abe6d8c5ba86efa9ede6c6c1923357df",
"assets/packages/blue_screen/lib/fonts/meiryon_boot.ttf": "bf5bd75a3f6acd4cfda536b08979fa44",
"assets/packages/blue_screen/lib/fonts/cht_boot.ttf": "e0a6806babe233d9b46b19038b6e57b3",
"assets/packages/blue_screen/lib/fonts/wgl4_boot.ttf": "946004997cde5c87d36be295ada21e6d",
"assets/packages/blue_screen/lib/fonts/kor_boot.ttf": "1051c465cabf77440b9221d00ba96a64",
"assets/packages/blue_screen/lib/fonts/segmono_boot.ttf": "6d36ee6ba7ec0351a02ab332c34dbfad",
"assets/packages/blue_screen/lib/fonts/chs_boot.ttf": "30cfe75b8d657f95ebb12425c5664ec6",
"assets/packages/blue_screen/lib/fonts/segoe_slboot.ttf": "149132a90ac0f90ff143389bfdac89ef",
"assets/packages/blue_screen/lib/fonts/msyh_boot.ttf": "a9d82b79b00a6c7625421c4e25c27488",
"assets/packages/blue_screen/lib/fonts/jpn_boot.ttf": "19cc65d8c5ff8fd106de74283ee1c647",
"assets/packages/blue_screen/lib/fonts/msjhn_boot.ttf": "8da7e7056b8e5a4c6fdee9f0e6ec7dd8",
"assets/packages/blue_screen/lib/fonts/malgun_boot.ttf": "ea39014e02be67331526052ce881cfda",
"assets/packages/blue_screen/lib/fonts/segoen_slboot.ttf": "2605bdf99e8a6685d444cf461e989383",
"assets/packages/blue_screen/lib/fonts/meiryo_boot.ttf": "364029dfa3d0420eeecbd2f171a35770",
"assets/packages/blue_screen/lib/fonts/malgunn_boot.ttf": "3f3fe82966233e693f196330ef79bf18",
"assets/packages/blue_screen/lib/fonts/msjh_boot.ttf": "d1134a5274f4a803a7aa6fc2af7ce029",
"assets/packages/blue_screen/lib/fonts/msyhn_boot.ttf": "7e28d971e5bd6742f5fd4f0d353356f2",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"main.dart.js": "3624a9d99720f4ea1caeaa7444505719",
"version.json": "d14fe5a935a62152290561b4011e687d",
"canvaskit/canvaskit.wasm": "73584c1a3367e3eaf757647a8f5c5989",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"canvaskit/skwasm.wasm": "2fc47c0a0c3c7af8542b601634fe9674",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"canvaskit/chromium/canvaskit.wasm": "143af6ff368f9cd21c863bfa4274c406",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
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
