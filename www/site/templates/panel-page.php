<?php 

/**
 * Home template
 *
 */

include("./head.inc");

?>
    <div class="parallax-background-5"></div>
    <div class="parallax-background-6"></div>
    <div class="overlay"></div>

<?php
foreach($page->panel_content_area as $key => $panels_content) {

    echo "<div id='panel-$key' class='modal'><a href='#' class='closeBtn'>Close</a>";
    if (count($panels_content->images)) {
        foreach($panels_content->images as $image) {
            $image = $image->width(200);
            echo "<img class='photo' src='{$image->url}' alt='{$image->description}' />";
        }
    }

    echo "{$panels_content->tab_title}{$panels_content->tab_content}</div>";
}
?>





<?php    include("./header.inc"); ?>

<!-- The tabbed Section -->
<div class="page" style="width:100%">
    <!-- Title -->

                    <h2 class="title"><?=$page->title;?></h2>


        <!-- End Title -->

        <!-- panels -->





    <div id="basicpanels">
        <?php
        foreach($page->panel_content_area as $key => $panels_content) {

        echo "<div class='item'>{$panels_content->tab_title}{$panels_content->summary}<a class='modalLink' href='#panel-$key'>Click Me</a>";

            if (count($panels_content->images)) {

                foreach($panels_content->images as $image) {
                    $image = $image->width(200);
                    echo "<img class='photo' src='{$image->url}' alt='{$image->description}' />";
                }
            }

        echo "</div>";
        }
        ?>






    </div>





</div>


<?php

include("./foot.inc"); 

