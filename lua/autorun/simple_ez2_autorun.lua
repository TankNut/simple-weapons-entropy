if SERVER then
	--resource.AddWorkshop("")
end

for i = 1, 9 do
	sound.Add({
		name = "Entropy.Clothmovement" .. i,
		channel = CHAN_STATIC,
		volume = 0.85,
		level = 75,
		pitch = {90, 105},
		sound = "simple_weapons/ez2/cloth/cloth" .. i .. ".wav"
	})
end

sound.Add({
	name = "Entropy.Clothsend",
	channel = CHAN_STATIC,
	volume = 0.85,
	level = 75,
	pitch = {90, 105},
	sound = "simple_weapons/ez2/cloth/cloth_send.wav"
})

sound.Add({
	name = "Entropy.Clothrecall",
	channel = CHAN_STATIC,
	volume = 0.85,
	level = 75,
	pitch = {90, 105},
	sound = "simple_weapons/ez2/cloth/cloth_recall.wav"
})
