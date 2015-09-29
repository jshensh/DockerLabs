<?php
    if (file_exists("test.txt")) {
        echo file_get_contents("test.txt");
    } else {
        file_put_contents("test.txt",date("H:i:s"));
    }
