<?php
function guid() {
    $uniqid = uniqid();
    $guid = 
        substr(hash('crc32', $uniqid), 0, 4) . '-' .
        substr(hash('crc32', $uniqid), 4, 4);
    return $guid;
}
?>