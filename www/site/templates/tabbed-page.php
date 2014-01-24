<?php 

/**
 * Home template
 *
 */

include("./head.inc");

?>
    <div class="parallax-background-5"></div>
    <div class="parallax-background-6"></div>

<?php    include("./header.inc"); ?>

<!-- The tabbed Section -->
<div class="page">
    <!-- Title -->

                    <h2 class="title"><?=$page->title;?></h2>


        <!-- End Title -->

        <!-- tabs -->
    <div id="basictabs">
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

include("./foot.inc"); 

