(
z = {
	arg freq = 400, amp = 0.1;
	var sig;
	sig = SinOsc.ar(freq, 0, amp, 0);
}.play;
)

z.set(\freq, 750, \amp, 0.15);

z.free;



(
y = {
	arg noiseHz = 8;
	var freq, amp, sig;
	freq = LFNoise0.kr(noiseHz).exprange(200, 1000);
	amp = LFNoise1.kr(12).exprange(0.02, 1);

	sig = SinOsc.ar(freq, 0, amp, 0);
}.play;
)

y.set(\noiseHz, 32);
y.free;
