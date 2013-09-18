package Renewable::Controllers::Home;
use Mojo::Base 'Mojolicious::Controller';

# This action will render a template
sub welcome {
  my $self = shift;

  my $dir = "/home/tudor/projects/renewable/public/assets/img/carousel";
  
  opendir DIR, $dir or die "cannot open dir $dir: $!";
      my @carousel_photo_files = readdir DIR; 
  closedir DIR;
  
  @carousel_photo_files = grep { ( $_ ne '.' ) and ( $_ ne '..' ) } @carousel_photo_files;
  
  my $logo_dir = "/home/tudor/projects/renewable/public/assets/img/partner_logos";
  
  opendir LOGO_DIR, $logo_dir or die "cannot open dir $logo_dir: $!";
      my @logo_photos = readdir LOGO_DIR; 
  closedir LOGO_DIR;
  
  @logo_photos = grep { ( $_ ne '.' ) and ( $_ ne '..' ) } @logo_photos;
  
  $self->render(
    carousel_photos => [@carousel_photo_files],
    logo_photos => [@logo_photos],
    template => 'views/home'
  );
}

1;
