package Renewable::Controllers::Signup;
use Mojo::Base 'Mojolicious::Controller';

sub add {
    my $self = shift;
    
    $self->render(
        template => 'views/signup/signup');
}

1;