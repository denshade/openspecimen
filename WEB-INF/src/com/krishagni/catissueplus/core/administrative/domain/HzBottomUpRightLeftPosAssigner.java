package com.krishagni.catissueplus.core.administrative.domain;

import com.krishagni.catissueplus.core.common.Pair;

public class HzBottomUpRightLeftPosAssigner extends RowMajorPositionAssigner {
	@Override
	public Pair<Integer, Integer> getMapIdx(StorageContainer container, Integer row, Integer col) {
		return Pair.make(container.getNoOfRows() - row, container.getNoOfColumns() - col);
	}

	@Override
	public Pair<Integer, Integer> fromMapIdx(StorageContainer container, Integer rowIdx, Integer colIdx) {
		return Pair.make(container.getNoOfRows() - rowIdx, container.getNoOfColumns() - colIdx);
	}
}
