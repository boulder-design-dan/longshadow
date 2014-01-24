<?php 

/**
 * Home template
 *
 */

include("./head.inc");

?>
    <div id="home-map-overlay" class="homerollover tooltip" title="The Series"><a href="#theseries"><img src="site/assets/img/transparent.png"></a></div>
    <div class="parallax-background-0" data-stellar-background-ratio=".1"></div>
    <div class="parallax-background-1" data-stellar-background-ratio=".1"></div>
    <div class="parallax-background-2" data-stellar-background-ratio="-.05"></div>

<?php    include("./header.inc"); ?>
<!-- home panel - dummy div to get position for next div-->
<div id="home-panel"></div>


<!-- end home panel -->
<!-- The Series Section -->
<div id="theseries" class="page">
    <!-- Title -->

                    <h2 class="title">The Series</h2>


        <!-- End Title -->

        <!-- series tabs -->
    <div id="basictabs" class="span12">
        <ul>
            <?php

            foreach($page->tabbed_text_area as $key => $tabs_title) {
                if($key == 0) { $class = "first"; } else { $class = "";}
                echo "<li class='$class'><a href=\"#tab-$key\">{$tabs_title->tab_title}</li></a>";
            }
            ?>





        </ul>
    <?php

    foreach($page->tabbed_text_area as $key => $tabs_content) {

        echo "<div id='tab-$key' class='tabcontent'>{$tabs_content->tab_content}</div>";
    }
    ?>
    </div>
</div>

<?php
//echo $page->body;

include("./foot.inc"); 

