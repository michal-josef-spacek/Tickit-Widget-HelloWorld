package Tickit::Widget::HelloWorld::Common;

use base 'Tickit::Widget';
use strict;
use warnings;

use Class::Utils qw(set_params split_params);

our $VERSION = 0.01;

sub new {
	my ($class, @params) = @_;

	# Create object.
	my ($object_params_ar, $other_params_ar) = split_params(
		['text'], @params);
	my $self = $class->SUPER::new(@{$other_params_ar});

	# Test to print.
	$self->{'text'} = 'Hello world';

	# Process parameters.
	set_params($self, @{$object_params_ar});

	$self->{'_text_length'} = length $self->{'text'};

	return $self;
}

sub cols {
	my $self = shift;

	return $self->{'_text_length'};
}

sub lines { 
	return 1;
}

sub render_to_rb {
	my ($self, $rb, $rect) = @_;

	my $win = $self->window;

	$rb->eraserect($rect);

	$rb->text_at(
		($win->lines - 1) / 2,
		($win->cols - $self->{'_text_length'}) / 2,
		$self->{'text'},
	);

	return;
}

1;

__END__
