<div class="n2-heading-bar <?php echo $snapClass; ?>">
    <?php
    if ($snap == false) :
        ?>
        <div class="n2-h1 n2-heading"><?php echo $title; ?></div>
    <?php
    endif;
    ?>

    <?php
    if (count($menu)):
        ?>
        <div class="n2-heading-menu">
            <?php
            foreach ($menu AS $menu):
                echo $menu;
            endforeach;
            ?>
        </div>
    <?php
    endif;
    ?>

    <?php
    if (!empty($actions)):
        ?>
        <div class="n2-heading-actions">
            <span class="n2-heading-actions-label n2-h4"></span>
            <?php
            echo $actions;
            ?>
        </div>
    <?php
    endif;
    ?>
</div>

<script type="text/javascript">
    nextend.ready(
        function ($) {
            var label = $('.n2-heading-actions-label');
            $('.n2-heading-actions > a').on({
                mouseenter: function () {
                    label.html($(this).data('label'));
                },
                mouseleave: function () {
                    label.html('');
                }
            });
        }
    );
</script>

<?php
if ($snap !== false) :
    ?>
    <script type="text/javascript">
        nextend.ready(
            function ($) {
                var topOffset = $('#wpadminbar, .navbar-fixed-top').height() + $('.n2-top-bar').height() + 2 <?php echo $snap; ?>;
                $('.<?php echo $snapClass; ?>').each(function () {
                    var bar = $(this);
                    bar.css({height: 0, marginTop: -34});
                    bar.fixTo(bar.parent(), {
                        top: topOffset
                    });
                });
            }
        );
    </script>
<?php
endif;
?>