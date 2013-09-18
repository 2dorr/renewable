package Renewable::Controllers::PhotoGallery;
use Mojo::Base 'Mojolicious::Controller';

sub index {
  my $self = shift;
  
  my $dir = "/home/tudor/projects/renewable/public/assets/img/photo_gallery";
  
  opendir DIR, $dir or die "cannot open dir $dir: $!";
      my @photo_files = readdir DIR; 
  closedir DIR;
  
  @photo_files = grep { ( $_ ne '.' ) and ( $_ ne '..' ) } @photo_files;
  
  $self->render(
      photos => [@photo_files],
      template => 'views/photogallery'
    );
}

1;