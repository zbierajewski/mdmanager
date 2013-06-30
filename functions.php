<?php
        function rmdir_recursive($dir) {
    foreach(glob($dir . '/*') as $file) {
        if(is_dir($file))
            rmdir_recursive($file);
        else
            unlink($file);
    }
    rmdir_recursive($dir);
}
?>
