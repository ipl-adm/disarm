/* Disarm Runtime
 * --------------
 * Kat @katsaii
 */

/// @desc Reads the contents of a file and attempts to build a new disarm instance from the contents.
/// @param {string} filepath The path of the Spriter project file.
function disarm_import(_path) {
    if not (file_exists(_path)) {
        return undefined;
    }
    var file = file_text_open_read(_path);
    var src = "";
    while not (file_text_eof(file)) {
        src += file_text_readln(file);
    }
    file_text_close(file);
    return disarm_import_from_string(src);
}

/// @desc Attempts to parse this JSON string into a disarm instance.
/// @param {string} scon The Spriter JSON file as a string.
function disarm_import_from_string(_scon) {
    return disarm_import_from_struct(json_parse(_scon));
}

/// @desc Uses this GML struct to construct a disarm instance.
/// @param {struct} struct A struct containing the Spriter project information.
function disarm_import_from_struct(_struct) {
    if not (is_struct(struct)) {
        return undefined;
    }
}