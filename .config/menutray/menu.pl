#!/usr/bin/perl

# File generated by menutray v0.47

# DO NOT edit this file!
# Any change in this file will be lost!
# Edit '/home/vites/.config/menutray/schema.pl' instead!

use utf8;
use Gtk2 ('-init');

my $menu = 'Gtk2::Menu'->new;
my $icon = 'Gtk2::StatusIcon'->new;

$icon->set_from_icon_name('start-here');
$icon->set_visible(1);
$icon->signal_connect('button-release-event', \&show_icon_menu);

load_menu();

sub show_icon_menu {
    $menu->popup(undef, undef, sub {return Gtk2::StatusIcon::position_menu($menu, 0, 0, $icon)}, [1, 1], 0, 0);
    return 1;
}

sub load_menu {
{
    my $item = 'Gtk2::ImageMenuItem'->new("File\ Manager");
    $item->set_image('Gtk2::Image'->new_from_icon_name("file\-manager",q{menu}));
    $item->signal_connect('activate', sub {system "xdg\-open\ \. &"});
    $menu->append($item);
}

{
    my $item = 'Gtk2::ImageMenuItem'->new("Terminal");
    $item->set_image('Gtk2::Image'->new_from_icon_name("terminal",q{menu}));
    $item->signal_connect('activate', sub {system "xterm &"});
    $menu->append($item);
}

{
    my $item = 'Gtk2::ImageMenuItem'->new("Web\ Browser");
    $item->set_image('Gtk2::Image'->new_from_icon_name("web\-browser",q{menu}));
    $item->signal_connect('activate', sub {system "xdg\-open\ http\:\/\/ &"});
    $menu->append($item);
}

{
    my $item = 'Gtk2::ImageMenuItem'->new("Run\ command");
    $item->set_image('Gtk2::Image'->new_from_icon_name("system\-run",q{menu}));
    $item->signal_connect('activate', sub {system "gmrun &"});
    $menu->append($item);
}


    $menu->append('Gtk2::SeparatorMenuItem'->new);

    # # # # # # # # # # # # # # # # # # # # ACCESSORIES # # # # # # # # # # # # # # # # # # # # 
{
    my $apps = 'Gtk2::Menu'->new;
    my $cat = 'Gtk2::ImageMenuItem'->new("Accessories");
    $cat->set_image('Gtk2::Image'->new_from_icon_name("applications\-utilities",q{menu}));
{
    my $app = 'Gtk2::ImageMenuItem'->new("About\ Xfce");
    $app->signal_connect('activate', sub {system "xfce4\-about &"});
    $app->set_property('tooltip_text', "Information\ about\ the\ Xfce\ Desktop\ Environment");
    $app->set_image('Gtk2::Image'->new_from_icon_name("help\-about",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Archive\ Manager");
    $app->signal_connect('activate', sub {system "file\-roller &"});
    $app->set_property('tooltip_text', "Create\ and\ modify\ an\ archive");
    $app->set_image('Gtk2::Image'->new_from_icon_name("file\-roller",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Atom");
    $app->signal_connect('activate', sub {system "env\ PYTHON\=python2\ \/usr\/share\/atom\/atom &"});
    $app->set_property('tooltip_text', "A\ hackable\ text\ editor\ for\ the\ 21st\ Century\.");
    $app->set_image('Gtk2::Image'->new_from_icon_name("atom",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Books");
    $app->signal_connect('activate', sub {system "gnome\-books &"});
    $app->set_property('tooltip_text', "Access\,\ manage\ and\ share\ books");
    $app->set_image('Gtk2::Image'->new_from_icon_name("org\.gnome\.Books",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Bulk\ Rename");
    $app->signal_connect('activate', sub {system "\/usr\/lib\/Thunar\/ThunarBulkRename &"});
    $app->set_property('tooltip_text', "Rename\ Multiple\ Files");
    $app->set_image('Gtk2::Image'->new_from_icon_name("Thunar",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Calculator");
    $app->signal_connect('activate', sub {system "gnome\-calculator &"});
    $app->set_property('tooltip_text', "Perform\ arithmetic\,\ scientific\ or\ financial\ calculations");
    $app->set_image('Gtk2::Image'->new_from_icon_name("accessories\-calculator",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("compton");
    $app->signal_connect('activate', sub {system "compton\ \-\-xrender\-sync\-fence &"});
    $app->set_property('tooltip_text', "Compositor\ for\ X11");
    $app->set_image('Gtk2::Image'->new_from_icon_name("compton",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Desktop\ Search");
    $app->signal_connect('activate', sub {system "tracker\-needle &"});
    $app->set_property('tooltip_text', "Find\ what\ you\’re\ looking\ for\ on\ this\ computer\ by\ name\ or\ content\ using\ Tracker");
    $app->set_image('Gtk2::Image'->new_from_icon_name("system\-search",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Disks");
    $app->signal_connect('activate', sub {system "gnome\-disks &"});
    $app->set_property('tooltip_text', "Manage\ Drives\ and\ Media");
    $app->set_image('Gtk2::Image'->new_from_icon_name("gnome\-disks",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Documents");
    $app->signal_connect('activate', sub {system "gnome\-documents &"});
    $app->set_property('tooltip_text', "Access\,\ manage\ and\ share\ documents");
    $app->set_image('Gtk2::Image'->new_from_icon_name("org\.gnome\.Documents",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("File\ Manager");
    $app->signal_connect('activate', sub {system "exo\-open\ \-\-launch\ FileManager &"});
    $app->set_property('tooltip_text', "Browse\ the\ file\ system");
    $app->set_image('Gtk2::Image'->new_from_icon_name("system\-file\-manager",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Files");
    $app->signal_connect('activate', sub {system "nautilus\ \-\-new\-window &"});
    $app->set_property('tooltip_text', "Access\ and\ organize\ files");
    $app->set_image('Gtk2::Image'->new_from_icon_name("org\.gnome\.Nautilus",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Font\ Viewer");
    $app->signal_connect('activate', sub {system "gnome\-font\-viewer &"});
    $app->set_property('tooltip_text', "View\ fonts\ on\ your\ system");
    $app->set_image('Gtk2::Image'->new_from_icon_name("preferences\-desktop\-font",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Gitter");
    $app->signal_connect('activate', sub {system "\/usr\/bin\/gitter &"});
    $app->set_property('tooltip_text', "Where\ developers\ come\ to\ talk");
    $app->set_image('Gtk2::Image'->new_from_pixbuf('Gtk2::Gdk::Pixbuf'->new_from_file_at_size("\/opt\/Gitter\/linux64\/logo\.png",16,16)));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Go\ For\ It\!");
    $app->signal_connect('activate', sub {system "go\-for\-it &"});
    $app->set_property('tooltip_text', "A\ stylish\ to\-do\ list\ with\ built\-in\ productivity\ timer\.");
    $app->set_image('Gtk2::Image'->new_from_icon_name("go\-for\-it",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("HP\ Device\ Manager");
    $app->signal_connect('activate', sub {system "hp\-toolbox &"});
    $app->set_property('tooltip_text', "View\ device\ status\,\ ink\ levels\ and\ perform\ maintenance\.");
    $app->set_image('Gtk2::Image'->new_from_pixbuf('Gtk2::Gdk::Pixbuf'->new_from_file_at_size("\/usr\/share\/hplip\/data\/images\/128x128\/hp_logo\.png",16,16)));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Logs");
    $app->signal_connect('activate', sub {system "gnome\-logs &"});
    $app->set_property('tooltip_text', "View\ detailed\ event\ logs\ for\ the\ system");
    $app->set_image('Gtk2::Image'->new_from_icon_name("gnome\-logs",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Maps");
    $app->signal_connect('activate', sub {system "gapplication\ launch\ org\.gnome\.Maps &"});
    $app->set_property('tooltip_text', "A\ simple\ maps\ application");
    $app->set_image('Gtk2::Image'->new_from_icon_name("org\.gnome\.Maps",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Neovim");
    $app->signal_connect('activate', sub {system "xterm\ \-e\ \'nvim\' &"});
    $app->set_property('tooltip_text', "Edit\ text\ files");
    $app->set_image('Gtk2::Image'->new_from_icon_name("nvim",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("nitrogen");
    $app->signal_connect('activate', sub {system "nitrogen &"});
    $app->set_property('tooltip_text', "Browse\ and\ set\ desktop\ backgrounds");
    $app->set_image('Gtk2::Image'->new_from_icon_name("nitrogen",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Screenshot");
    $app->signal_connect('activate', sub {system "gnome\-screenshot\ \-\-interactive &"});
    $app->set_property('tooltip_text', "Save\ images\ of\ your\ screen\ or\ individual\ windows");
    $app->set_image('Gtk2::Image'->new_from_icon_name("applets\-screenshooter",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Terminal\ Emulator");
    $app->signal_connect('activate', sub {system "exo\-open\ \-\-launch\ TerminalEmulator &"});
    $app->set_property('tooltip_text', "Use\ the\ command\ line");
    $app->set_image('Gtk2::Image'->new_from_icon_name("utilities\-terminal",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Text\ Editor");
    $app->signal_connect('activate', sub {system "gedit &"});
    $app->set_property('tooltip_text', "Edit\ text\ files");
    $app->set_image('Gtk2::Image'->new_from_icon_name("gedit",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Thunar\ File\ Manager");
    $app->signal_connect('activate', sub {system "thunar &"});
    $app->set_property('tooltip_text', "Browse\ the\ filesystem\ with\ the\ file\ manager");
    $app->set_image('Gtk2::Image'->new_from_icon_name("Thunar",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("To\ Do");
    $app->signal_connect('activate', sub {system "gnome\-todo &"});
    $app->set_property('tooltip_text', "Manage\ your\ personal\ tasks");
    $app->set_image('Gtk2::Image'->new_from_icon_name("org\.gnome\.Todo",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Tweak\ Tool");
    $app->signal_connect('activate', sub {system "gnome\-tweak\-tool &"});
    $app->set_property('tooltip_text', "Tweak\ advanced\ GNOME\ 3\ settings");
    $app->set_image('Gtk2::Image'->new_from_icon_name("gnome\-tweak\-tool",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Weather");
    $app->signal_connect('activate', sub {system "gapplication\ launch\ org\.gnome\.Weather\.Application &"});
    $app->set_property('tooltip_text', "Show\ weather\ conditions\ and\ forecast");
    $app->set_image('Gtk2::Image'->new_from_icon_name("org\.gnome\.Weather",q{menu}));
    $apps->append($app);
}
    $cat->set_submenu($apps);
    $menu->append($cat);
}

    # # # # # # # # # # # # # # # # # # # # DEVELOPMENT # # # # # # # # # # # # # # # # # # # # 
{
    my $apps = 'Gtk2::Menu'->new;
    my $cat = 'Gtk2::ImageMenuItem'->new("Development");
    $cat->set_image('Gtk2::Image'->new_from_icon_name("applications\-development",q{menu}));
{
    my $app = 'Gtk2::ImageMenuItem'->new("Atom");
    $app->signal_connect('activate', sub {system "env\ PYTHON\=python2\ \/usr\/share\/atom\/atom &"});
    $app->set_property('tooltip_text', "A\ hackable\ text\ editor\ for\ the\ 21st\ Century\.");
    $app->set_image('Gtk2::Image'->new_from_icon_name("atom",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("CMake");
    $app->signal_connect('activate', sub {system "cmake\-gui &"});
    $app->set_property('tooltip_text', "Cross\-platform\ buildsystem");
    $app->set_image('Gtk2::Image'->new_from_icon_name("CMakeSetup",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Electron");
    $app->signal_connect('activate', sub {system "electron &"});
    $app->set_image('Gtk2::Image'->new_from_icon_name("electron",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Sublime\ Text\ 3\ Dev");
    $app->signal_connect('activate', sub {system "subl3 &"});
    $app->set_property('tooltip_text', "Sophisticated\ text\ editor\ for\ code\,\ markup\ and\ prose");
    $app->set_image('Gtk2::Image'->new_from_icon_name("sublime\-text",q{menu}));
    $apps->append($app);
}
    $cat->set_submenu($apps);
    $menu->append($cat);
}

    # # # # # # # # # # # # # # # # # # # # GAMES # # # # # # # # # # # # # # # # # # # # 
{
    my $apps = 'Gtk2::Menu'->new;
    my $cat = 'Gtk2::ImageMenuItem'->new("Games");
    $cat->set_image('Gtk2::Image'->new_from_icon_name("applications\-games",q{menu}));
{
    my $app = 'Gtk2::ImageMenuItem'->new("PlayOnLinux");
    $app->signal_connect('activate', sub {system "playonlinux &"});
    $app->set_property('tooltip_text', "PlayOnLinux");
    $app->set_image('Gtk2::Image'->new_from_pixbuf('Gtk2::Gdk::Pixbuf'->new_from_file_at_size("\/usr\/share\/playonlinux\/etc\/playonlinux\.png",16,16)));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Steam\ \(Native\)");
    $app->signal_connect('activate', sub {system "\/usr\/bin\/steam\-native &"});
    $app->set_property('tooltip_text', "Application\ for\ managing\ and\ playing\ games\ on\ Steam");
    $app->set_image('Gtk2::Image'->new_from_icon_name("steam",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Steam\ \(Runtime\)");
    $app->signal_connect('activate', sub {system "\/usr\/bin\/steam\-runtime &"});
    $app->set_property('tooltip_text', "Application\ for\ managing\ and\ playing\ games\ on\ Steam");
    $app->set_image('Gtk2::Image'->new_from_icon_name("steam",q{menu}));
    $apps->append($app);
}
    $cat->set_submenu($apps);
    $menu->append($cat);
}

    # # # # # # # # # # # # # # # # # # # # GRAPHICS # # # # # # # # # # # # # # # # # # # # 
{
    my $apps = 'Gtk2::Menu'->new;
    my $cat = 'Gtk2::ImageMenuItem'->new("Graphics");
    $cat->set_image('Gtk2::Image'->new_from_icon_name("applications\-graphics",q{menu}));
{
    my $app = 'Gtk2::ImageMenuItem'->new("Document\ Viewer");
    $app->signal_connect('activate', sub {system "evince &"});
    $app->set_property('tooltip_text', "View\ multi\-page\ documents");
    $app->set_image('Gtk2::Image'->new_from_icon_name("evince",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Gpick");
    $app->signal_connect('activate', sub {system "gpick &"});
    $app->set_property('tooltip_text', "Color\ picker");
    $app->set_image('Gtk2::Image'->new_from_icon_name("gpick",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Image\ Viewer");
    $app->signal_connect('activate', sub {system "eog &"});
    $app->set_property('tooltip_text', "Browse\ and\ rotate\ images");
    $app->set_image('Gtk2::Image'->new_from_icon_name("eog",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Photos");
    $app->signal_connect('activate', sub {system "gnome\-photos &"});
    $app->set_property('tooltip_text', "Access\,\ organize\ and\ share\ photos");
    $app->set_image('Gtk2::Image'->new_from_icon_name("org\.gnome\.Photos",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Pinta");
    $app->signal_connect('activate', sub {system "pinta &"});
    $app->set_property('tooltip_text', "Easily\ create\ and\ edit\ images");
    $app->set_image('Gtk2::Image'->new_from_icon_name("pinta",q{menu}));
    $apps->append($app);
}
    $cat->set_submenu($apps);
    $menu->append($cat);
}

    # # # # # # # # # # # # # # # # # # # # MULTIMEDIA # # # # # # # # # # # # # # # # # # # # 
{
    my $apps = 'Gtk2::Menu'->new;
    my $cat = 'Gtk2::ImageMenuItem'->new("Multimedia");
    $cat->set_image('Gtk2::Image'->new_from_icon_name("applications\-multimedia",q{menu}));
{
    my $app = 'Gtk2::ImageMenuItem'->new("Brasero");
    $app->signal_connect('activate', sub {system "brasero &"});
    $app->set_property('tooltip_text', "Create\ and\ copy\ CDs\ and\ DVDs");
    $app->set_image('Gtk2::Image'->new_from_icon_name("brasero",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Cheese");
    $app->signal_connect('activate', sub {system "cheese &"});
    $app->set_property('tooltip_text', "Take\ photos\ and\ videos\ with\ your\ webcam\,\ with\ fun\ graphical\ effects");
    $app->set_image('Gtk2::Image'->new_from_icon_name("org\.gnome\.Cheese",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Kodi");
    $app->signal_connect('activate', sub {system "kodi &"});
    $app->set_property('tooltip_text', "Manage\ and\ view\ your\ media");
    $app->set_image('Gtk2::Image'->new_from_icon_name("kodi",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Lollypop");
    $app->signal_connect('activate', sub {system "lollypop &"});
    $app->set_property('tooltip_text', "Play\ and\ organize\ your\ music\ collection");
    $app->set_image('Gtk2::Image'->new_from_icon_name("org\.gnome\.Lollypop",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Music");
    $app->signal_connect('activate', sub {system "gnome\-music &"});
    $app->set_property('tooltip_text', "Play\ and\ organize\ your\ music\ collection");
    $app->set_image('Gtk2::Image'->new_from_icon_name("gnome\-music",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Popcorn\ Time");
    $app->signal_connect('activate', sub {system "popcorntime &"});
    $app->set_property('tooltip_text', "Watch\ Movies\ and\ TV\ Shows\ instantly");
    $app->set_image('Gtk2::Image'->new_from_icon_name("popcorntime",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("PulseAudio\ Volume\ Control");
    $app->signal_connect('activate', sub {system "pavucontrol &"});
    $app->set_property('tooltip_text', "Adjust\ the\ volume\ level");
    $app->set_image('Gtk2::Image'->new_from_icon_name("multimedia\-volume\-control",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Qt\ V4L2\ test\ Utility");
    $app->signal_connect('activate', sub {system "qv4l2 &"});
    $app->set_property('tooltip_text', "Allow\ testing\ Video4Linux\ devices");
    $app->set_image('Gtk2::Image'->new_from_icon_name("qv4l2",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Sound\ Recorder");
    $app->signal_connect('activate', sub {system "gnome\-sound\-recorder &"});
    $app->set_property('tooltip_text', "Record\ sound\ via\ the\ microphone\ and\ play\ it\ back");
    $app->set_image('Gtk2::Image'->new_from_icon_name("gnome\-sound\-recorder",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Spotify");
    $app->signal_connect('activate', sub {system "spotify &"});
    $app->set_property('tooltip_text', "Spotify\ streaming\ music\ client");
    $app->set_image('Gtk2::Image'->new_from_icon_name("spotify\-client",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Videos");
    $app->signal_connect('activate', sub {system "totem &"});
    $app->set_property('tooltip_text', "Play\ movies");
    $app->set_image('Gtk2::Image'->new_from_icon_name("org\.gnome\.Totem",q{menu}));
    $apps->append($app);
}
    $cat->set_submenu($apps);
    $menu->append($cat);
}

    # # # # # # # # # # # # # # # # # # # # NETWORK # # # # # # # # # # # # # # # # # # # # 
{
    my $apps = 'Gtk2::Menu'->new;
    my $cat = 'Gtk2::ImageMenuItem'->new("Network");
    $cat->set_image('Gtk2::Image'->new_from_icon_name("applications\-internet",q{menu}));
{
    my $app = 'Gtk2::ImageMenuItem'->new("Avahi\ SSH\ Server\ Browser");
    $app->signal_connect('activate', sub {system "\/usr\/bin\/bssh &"});
    $app->set_property('tooltip_text', "Browse\ for\ Zeroconf\-enabled\ SSH\ Servers");
    $app->set_image('Gtk2::Image'->new_from_icon_name("network\-wired",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Avahi\ VNC\ Server\ Browser");
    $app->signal_connect('activate', sub {system "\/usr\/bin\/bvnc &"});
    $app->set_property('tooltip_text', "Browse\ for\ Zeroconf\-enabled\ VNC\ Servers");
    $app->set_image('Gtk2::Image'->new_from_icon_name("network\-wired",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Chromium");
    $app->signal_connect('activate', sub {system "chromium &"});
    $app->set_property('tooltip_text', "Access\ the\ Internet");
    $app->set_image('Gtk2::Image'->new_from_icon_name("chromium",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Firefox");
    $app->signal_connect('activate', sub {system "\/usr\/lib\/firefox\/firefox &"});
    $app->set_property('tooltip_text', "Browse\ the\ Web");
    $app->set_image('Gtk2::Image'->new_from_icon_name("firefox",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Firefox\ Beta");
    $app->signal_connect('activate', sub {system "\/usr\/lib\/firefox\-beta\/firefox &"});
    $app->set_property('tooltip_text', "Browse\ the\ Web");
    $app->set_image('Gtk2::Image'->new_from_icon_name("firefox\-beta",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Franz");
    $app->signal_connect('activate', sub {system "franz\-bin\ \-\- &"});
    $app->set_property('tooltip_text', "A\ free\ messaging\ app\ for\ WhatsApp\,\ Facebook\ Messenger\,\ Telegram\,\ Slack\ and\ more\.");
    $app->set_image('Gtk2::Image'->new_from_icon_name("franz",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Mail\ Reader");
    $app->signal_connect('activate', sub {system "exo\-open\ \-\-launch\ MailReader &"});
    $app->set_property('tooltip_text', "Read\ your\ email");
    $app->set_image('Gtk2::Image'->new_from_icon_name("internet\-mail",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Pidgin\ Internet\ Messenger");
    $app->signal_connect('activate', sub {system "pidgin &"});
    $app->set_property('tooltip_text', "Chat\ over\ IM\.\ \ Supports\ AIM\,\ Google\ Talk\,\ Jabber\/XMPP\,\ and\ more");
    $app->set_image('Gtk2::Image'->new_from_icon_name("pidgin",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Popcorn\ Time");
    $app->signal_connect('activate', sub {system "popcorntime &"});
    $app->set_property('tooltip_text', "Watch\ Movies\ and\ TV\ Shows\ instantly");
    $app->set_image('Gtk2::Image'->new_from_icon_name("popcorntime",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Steam\ \(Native\)");
    $app->signal_connect('activate', sub {system "\/usr\/bin\/steam\-native &"});
    $app->set_property('tooltip_text', "Application\ for\ managing\ and\ playing\ games\ on\ Steam");
    $app->set_image('Gtk2::Image'->new_from_icon_name("steam",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Steam\ \(Runtime\)");
    $app->signal_connect('activate', sub {system "\/usr\/bin\/steam\-runtime &"});
    $app->set_property('tooltip_text', "Application\ for\ managing\ and\ playing\ games\ on\ Steam");
    $app->set_image('Gtk2::Image'->new_from_icon_name("steam",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Transmission");
    $app->signal_connect('activate', sub {system "transmission\-gtk &"});
    $app->set_property('tooltip_text', "Download\ and\ share\ files\ over\ BitTorrent");
    $app->set_image('Gtk2::Image'->new_from_icon_name("transmission",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Vivaldi");
    $app->signal_connect('activate', sub {system "\/usr\/bin\/vivaldi\-stable &"});
    $app->set_property('tooltip_text', "Access\ the\ Internet");
    $app->set_image('Gtk2::Image'->new_from_icon_name("vivaldi",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Web\ Browser");
    $app->signal_connect('activate', sub {system "exo\-open\ \-\-launch\ WebBrowser &"});
    $app->set_property('tooltip_text', "Browse\ the\ web");
    $app->set_image('Gtk2::Image'->new_from_icon_name("web\-browser",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("YakYak");
    $app->signal_connect('activate', sub {system "yakyak &"});
    $app->set_property('tooltip_text', "Desktop\ client\ for\ Google\ Hangouts");
    $app->set_image('Gtk2::Image'->new_from_icon_name("yakyak",q{menu}));
    $apps->append($app);
}
    $cat->set_submenu($apps);
    $menu->append($cat);
}

    # # # # # # # # # # # # # # # # # # # # OFFICE # # # # # # # # # # # # # # # # # # # # 
{
    my $apps = 'Gtk2::Menu'->new;
    my $cat = 'Gtk2::ImageMenuItem'->new("Office");
    $cat->set_image('Gtk2::Image'->new_from_icon_name("applications\-office",q{menu}));
{
    my $app = 'Gtk2::ImageMenuItem'->new("Calendar");
    $app->signal_connect('activate', sub {system "gnome\-calendar &"});
    $app->set_property('tooltip_text', "Access\,\ and\ manage\ calendar");
    $app->set_image('Gtk2::Image'->new_from_icon_name("org\.gnome\.Calendar",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Contacts");
    $app->signal_connect('activate', sub {system "gnome\-contacts &"});
    $app->set_property('tooltip_text', "A\ contacts\ manager\ for\ GNOME");
    $app->set_image('Gtk2::Image'->new_from_icon_name("x\-office\-address\-book",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Document\ Viewer");
    $app->signal_connect('activate', sub {system "evince &"});
    $app->set_property('tooltip_text', "View\ multi\-page\ documents");
    $app->set_image('Gtk2::Image'->new_from_icon_name("evince",q{menu}));
    $apps->append($app);
}
    $cat->set_submenu($apps);
    $menu->append($cat);
}

    # # # # # # # # # # # # # # # # # # # # OTHER # # # # # # # # # # # # # # # # # # # # 
{
    my $apps = 'Gtk2::Menu'->new;
    my $cat = 'Gtk2::ImageMenuItem'->new("Other");
    $cat->set_image('Gtk2::Image'->new_from_icon_name("applications\-other",q{menu}));
{
    my $app = 'Gtk2::ImageMenuItem'->new("FromScratch");
    $app->signal_connect('activate', sub {system "fromscratch &"});
    $app->set_property('tooltip_text', "A\ simple\ but\ smart\ note\-taking\ app");
    $app->set_image('Gtk2::Image'->new_from_icon_name("fromscratch",q{menu}));
    $apps->append($app);
}
    $cat->set_submenu($apps);
    $menu->append($cat);
}

    # # # # # # # # # # # # # # # # # # # # SETTINGS # # # # # # # # # # # # # # # # # # # # 
{
    my $apps = 'Gtk2::Menu'->new;
    my $cat = 'Gtk2::ImageMenuItem'->new("Settings");
    $cat->set_image('Gtk2::Image'->new_from_icon_name("applications\-accessories",q{menu}));
{
    my $app = 'Gtk2::ImageMenuItem'->new("Adobe\ Flash\ Player");
    $app->signal_connect('activate', sub {system "flash\-player\-properties &"});
    $app->set_property('tooltip_text', "Preferences\ for\ Adobe\ Flash\ Player");
    $app->set_image('Gtk2::Image'->new_from_icon_name("flash\-player\-properties",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("ARandR");
    $app->signal_connect('activate', sub {system "arandr &"});
    $app->set_image('Gtk2::Image'->new_from_icon_name("display",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Customize\ Look\ and\ Feel");
    $app->signal_connect('activate', sub {system "lxappearance &"});
    $app->set_property('tooltip_text', "Customizes\ look\ and\ feel\ of\ your\ desktop\ and\ applications");
    $app->set_image('Gtk2::Image'->new_from_icon_name("preferences\-desktop\-theme",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("File\ Manager");
    $app->signal_connect('activate', sub {system "thunar\-settings &"});
    $app->set_property('tooltip_text', "Configure\ the\ Thunar\ file\ manager");
    $app->set_image('Gtk2::Image'->new_from_icon_name("system\-file\-manager",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Light\ Locker\ Settings");
    $app->signal_connect('activate', sub {system "\/usr\/bin\/light\-locker\-settings &"});
    $app->set_property('tooltip_text', "Configure\ locking\ your\ session");
    $app->set_image('Gtk2::Image'->new_from_icon_name("preferences\-desktop\-screensaver",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Network\ Connections");
    $app->signal_connect('activate', sub {system "nm\-connection\-editor &"});
    $app->set_property('tooltip_text', "Manage\ and\ change\ your\ network\ connection\ settings");
    $app->set_image('Gtk2::Image'->new_from_icon_name("preferences\-system\-network",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Preferred\ Applications");
    $app->signal_connect('activate', sub {system "exo\-preferred\-applications &"});
    $app->set_property('tooltip_text', "Preferred\ Applications\ \(Web\ Browser\,\ Mail\ Reader\ and\ Terminal\ Emulator\)");
    $app->set_image('Gtk2::Image'->new_from_icon_name("preferences\-desktop\-default\-applications",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Print\ Settings");
    $app->signal_connect('activate', sub {system "system\-config\-printer &"});
    $app->set_property('tooltip_text', "Configure\ printers");
    $app->set_image('Gtk2::Image'->new_from_icon_name("printer",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Qt5\ Settings");
    $app->signal_connect('activate', sub {system "qt5ct &"});
    $app->set_property('tooltip_text', "Qt5\ Configuration\ Tool");
    $app->set_image('Gtk2::Image'->new_from_icon_name("preferences\-desktop\-theme",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Screensaver");
    $app->signal_connect('activate', sub {system "xscreensaver\-demo &"});
    $app->set_property('tooltip_text', "Change\ screensaver\ properties");
    $app->set_image('Gtk2::Image'->new_from_icon_name("xscreensaver",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Search\ and\ Indexing");
    $app->signal_connect('activate', sub {system "tracker\-preferences &"});
    $app->set_property('tooltip_text', "Configure\ file\ indexing\ with\ Tracker");
    $app->set_image('Gtk2::Image'->new_from_icon_name("tracker",q{menu}));
    $apps->append($app);
}
    $cat->set_submenu($apps);
    $menu->append($cat);
}

    # # # # # # # # # # # # # # # # # # # # SYSTEM # # # # # # # # # # # # # # # # # # # # 
{
    my $apps = 'Gtk2::Menu'->new;
    my $cat = 'Gtk2::ImageMenuItem'->new("System");
    $cat->set_image('Gtk2::Image'->new_from_icon_name("applications\-system",q{menu}));
{
    my $app = 'Gtk2::ImageMenuItem'->new("Add\/Remove\ Software");
    $app->signal_connect('activate', sub {system "pamac\-manager &"});
    $app->set_property('tooltip_text', "Add\ or\ remove\ software\ installed\ on\ the\ system");
    $app->set_image('Gtk2::Image'->new_from_icon_name("system\-software\-install",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Avahi\ Zeroconf\ Browser");
    $app->signal_connect('activate', sub {system "\/usr\/bin\/avahi\-discover &"});
    $app->set_property('tooltip_text', "Browse\ for\ Zeroconf\ services\ available\ on\ your\ network");
    $app->set_image('Gtk2::Image'->new_from_icon_name("network\-wired",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Bulk\ Rename");
    $app->signal_connect('activate', sub {system "\/usr\/lib\/Thunar\/ThunarBulkRename &"});
    $app->set_property('tooltip_text', "Rename\ Multiple\ Files");
    $app->set_image('Gtk2::Image'->new_from_icon_name("Thunar",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Color\ Profile\ Viewer");
    $app->signal_connect('activate', sub {system "gcm\-viewer &"});
    $app->set_property('tooltip_text', "Inspect\ and\ compare\ installed\ color\ profiles");
    $app->set_image('Gtk2::Image'->new_from_icon_name("gnome\-color\-manager",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("dconf\ Editor");
    $app->signal_connect('activate', sub {system "dconf\-editor &"});
    $app->set_property('tooltip_text', "Directly\ edit\ your\ entire\ configuration\ database");
    $app->set_image('Gtk2::Image'->new_from_icon_name("dconf\-editor",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Disk\ Usage\ Analyzer");
    $app->signal_connect('activate', sub {system "baobab &"});
    $app->set_property('tooltip_text', "Check\ folder\ sizes\ and\ available\ disk\ space");
    $app->set_image('Gtk2::Image'->new_from_icon_name("baobab",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("GNOME\ System\ Monitor");
    $app->signal_connect('activate', sub {system "gnome\-system\-monitor &"});
    $app->set_property('tooltip_text', "View\ current\ processes\ and\ monitor\ system\ state");
    $app->set_image('Gtk2::Image'->new_from_icon_name("utilities\-system\-monitor",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Htop");
    $app->signal_connect('activate', sub {system "xterm\ \-e\ \'htop\' &"});
    $app->set_property('tooltip_text', "Show\ System\ Processes");
    $app->set_image('Gtk2::Image'->new_from_icon_name("htop",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Logs");
    $app->signal_connect('activate', sub {system "gnome\-logs &"});
    $app->set_property('tooltip_text', "View\ detailed\ event\ logs\ for\ the\ system");
    $app->set_image('Gtk2::Image'->new_from_icon_name("gnome\-logs",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Manage\ Printing");
    $app->signal_connect('activate', sub {system "\/usr\/bin\/xdg\-open\ http\:\/\/localhost\:631\/ &"});
    $app->set_property('tooltip_text', "CUPS\ Web\ Interface");
    $app->set_image('Gtk2::Image'->new_from_icon_name("cups",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Print\ Settings");
    $app->signal_connect('activate', sub {system "system\-config\-printer &"});
    $app->set_property('tooltip_text', "Configure\ printers");
    $app->set_image('Gtk2::Image'->new_from_icon_name("printer",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Settings");
    $app->signal_connect('activate', sub {system "gnome\-control\-center\ \-\-overview &"});
    $app->set_image('Gtk2::Image'->new_from_icon_name("preferences\-system",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Software\ Update");
    $app->signal_connect('activate', sub {system "pamac\-updater &"});
    $app->set_property('tooltip_text', "Update\ software\ installed\ on\ the\ system");
    $app->set_image('Gtk2::Image'->new_from_icon_name("system\-software\-update",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("System\ Log");
    $app->signal_connect('activate', sub {system "gnome\-system\-log &"});
    $app->set_property('tooltip_text', "View\ or\ monitor\ system\ log\ files");
    $app->set_image('Gtk2::Image'->new_from_icon_name("logview",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("System\ Monitor");
    $app->signal_connect('activate', sub {system "gnome\-system\-monitor &"});
    $app->set_property('tooltip_text', "View\ current\ processes\ and\ monitor\ system\ state");
    $app->set_image('Gtk2::Image'->new_from_icon_name("utilities\-system\-monitor",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Terminal");
    $app->signal_connect('activate', sub {system "gnome\-terminal &"});
    $app->set_property('tooltip_text', "Use\ the\ command\ line");
    $app->set_image('Gtk2::Image'->new_from_icon_name("utilities\-terminal",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Termite");
    $app->signal_connect('activate', sub {system "termite &"});
    $app->set_property('tooltip_text', "Use\ the\ command\ line");
    $app->set_image('Gtk2::Image'->new_from_icon_name("utilities\-terminal",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Thunar\ File\ Manager");
    $app->signal_connect('activate', sub {system "thunar &"});
    $app->set_property('tooltip_text', "Browse\ the\ filesystem\ with\ the\ file\ manager");
    $app->set_image('Gtk2::Image'->new_from_icon_name("Thunar",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("UXTerm");
    $app->signal_connect('activate', sub {system "uxterm &"});
    $app->set_property('tooltip_text', "standard\ terminal\ emulator\ for\ the\ X\ window\ system");
    $app->set_image('Gtk2::Image'->new_from_icon_name("xterm\-color_48x48",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("XTerm");
    $app->signal_connect('activate', sub {system "xterm &"});
    $app->set_property('tooltip_text', "standard\ terminal\ emulator\ for\ the\ X\ window\ system");
    $app->set_image('Gtk2::Image'->new_from_icon_name("xterm\-color_48x48",q{menu}));
    $apps->append($app);
}
    $cat->set_submenu($apps);
    $menu->append($cat);
}

    # # # # # # # # # # # # # # # # # # # # MENUTRAY # # # # # # # # # # # # # # # # # # # # 
{
    my $apps = 'Gtk2::Menu'->new;
    my $cat = 'Gtk2::ImageMenuItem'->new("Menutray");
    $cat->set_image('Gtk2::Image'->new_from_icon_name("preferences\-desktop",q{menu}));
{
    my $app = 'Gtk2::ImageMenuItem'->new("Config");
    $app->signal_connect('activate', sub {system "geany\ \\\/home\\\/vites\\\/\\\.config\\\/menutray\\\/config\\\.pl &"});
    $app->set_property('tooltip_text', "Open\ the\ configuration\ file");
    $app->set_image('Gtk2::Image'->new_from_icon_name("gtk\-edit",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Menu");
    $app->signal_connect('activate', sub {system "geany\ \\\/home\\\/vites\\\/\\\.config\\\/menutray\\\/menu\\\.pl &"});
    $app->set_property('tooltip_text', "Open\ the\ menu\ file\ for\ inspection");
    $app->set_image('Gtk2::Image'->new_from_icon_name("gtk\-edit",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Schema");
    $app->signal_connect('activate', sub {system "geany\ \\\/home\\\/vites\\\/\\\.config\\\/menutray\\\/schema\\\.pl &"});
    $app->set_property('tooltip_text', "Open\ the\ schema\ file\ to\ customize\ the\ menu");
    $app->set_image('Gtk2::Image'->new_from_icon_name("gtk\-edit",q{menu}));
    $apps->append($app);
}
    $cat->set_submenu($apps);
    $menu->append($cat);
}

    $menu->append('Gtk2::SeparatorMenuItem'->new);
{
    my $regenerate = 'Gtk2::ImageMenuItem'->new("Regenerate");
    $regenerate->set_property('tooltip_text', "Regenerate\ this\ menu\.");
    $regenerate->set_image('Gtk2::Image'->new_from_icon_name("gtk\-refresh",q{menu}));
    $regenerate->signal_connect('activate', sub {system "\/usr\/bin\/perl\ \\\/usr\\\/bin\\\/menutray\ \-i\ \-C\ \\\/home\\\/vites\\\/\\\.config\\\/menutray\\\/config\\\.pl\ \-S\ \\\/home\\\/vites\\\/\\\.config\\\/menutray\\\/schema\\\.pl\ \-o\ \\\/home\\\/vites\\\/\\\.config\\\/menutray\\\/menu\\\.pl &"; 'Gtk2'->main_quit});
    $menu->append($regenerate);
}
{
    my $quit = 'Gtk2::ImageMenuItem'->new("Exit");
    $quit->set_property('tooltip_text', "Close\ this\ application\.");
    $quit->set_image('Gtk2::Image'->new_from_icon_name("exit",q{menu}));
    $quit->signal_connect('activate', sub { Gtk2->main_quit });
    $menu->append($quit);
}
    $menu->show_all;
    return 1;
}
'Gtk2'->main;