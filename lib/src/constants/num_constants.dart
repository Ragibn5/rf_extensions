const bool _isJS = identical(1.0, 1);

// Web (JavaScript) platform
const int _JS_MAX_SAFE_INTEGER = (1 << 53) - 1;
const int _JS_MIN_SAFE_INTEGER = -((1 << 53) - 1);

// Native platform (VM)
const int _VM_MAX_INTEGER = (1 << 63) - 1;
const int _VM_MIN_INTEGER = -(1 << 63);

int get maxInt => _isJS ? _JS_MAX_SAFE_INTEGER : _VM_MAX_INTEGER;

int get minInt => _isJS ? _JS_MIN_SAFE_INTEGER : _VM_MIN_INTEGER;
