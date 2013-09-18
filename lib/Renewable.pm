package Renewable;
use Mojo::Base 'Mojolicious';
use Models::Schema;

# This method will run once at server start
sub startup {
  my $self = shift;

  # Documentation browser under "/perldoc"
  $self->plugin('PODRenderer');

  #setup config file
  $self->plugin( 'config' );
  
  # set-up db connection
  has schema => sub {
    return Models::Schema->connect(
          $self->{config}->{database}->{dsn},
          $self->{config}->{database}->{user},
          $self->{config}->{database}->{password},
          {
            quote_names => 1,
            mysql_enable_utf8 => 1,
          },
    );
  };
  
  # Router
  my $r = $self->routes;

  # Normal route to controller
  $r->namespaces(['Renewable::Controllers']);
  $r->route('/')->to( 'home#welcome' );
  $r->route('/home')->to( 'home#welcome' );
  $r->route('/signup')->to( 'signup#add' );
  $r->route('/activity')->to( 'activity#index' );
  $r->route('/photogallery')->to( 'PhotoGallery#index' );
  $r->route('/contact')->to( 'contact#index' );
}

1;
