#!/usr/bin/node

function getMaxSubSum(li) {
    let msf = Number.MIN_SAFE_INTEGER;
    let meh = 0;

    for (let i of li) {
	meh = meh + i;
	if (msf < meh)
	    msf = meh;
	if (meh < 0)
	    meh = 0;
    }
    return msf;
}

const li = [2, -1, 2, 3, -9];
console.log(getMaxSubSum(li));
