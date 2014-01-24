<!-- Header -->
<div id="home"></div>
<header>
    <div class="sticky-nav">
        <a id="mobile-nav" class="menu-nav" href="#menu-nav"></a>

        <div id="logo">
            <a id="goUp" href="index.html" title="Longshadow | Days of Amy Davis">LONGSHADOW<span class="subheading">The Days of Amy Davis</span></a>
        </div>

        <nav id="menu">
            <ul id='menu-nav'>
                <?php

                // Create the top navigation list by listing the children of the homepage.
                // If the section we are in is the current (identified by $page->rootParent)
                // then note it with <a class='on'> so we can style it differently in our CSS.
                // In this case we also want the homepage to be part of our top navigation,
                // so we prepend it to the pages we cycle through:

                $homepage = $pages->get("/");
                $children = $homepage->children;
                $children->prepend($homepage);

                foreach($children as $child) {
                    $jumpurl = $child->get("jumpmenu_url|url"); // use redirect_url if there, otherwise use url
                    $exclude = $child->class_external? " class='external'" : ""; // check external link class for one page nav
                    $class = $child === $page ? " class='current'" : '';
                    echo "<li$class><a$exclude href='{$jumpurl}'>{$child->title}</a></li>";
                }

                ?>
            </ul>

        </nav>

    </div>
</header>
<!-- End Header -->