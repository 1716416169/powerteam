package com.powerteam.vo;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
public class TreeNode<T> {

    public TreeNode() {
        Children = new ArrayList<>();
    }

    private T Node;
    private List<TreeNode<T>> Children;
}
