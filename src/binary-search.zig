const std = @import("std");

pub fn badBinarySearch(arr: []const u8, value: u8) ?usize {
    var left: usize = 0;
    var right: usize = arr.len - 1;

    while (left <= right) {
        const midpoint = (left + right) / 2;
        const target = arr[midpoint];

        if (target == value) return midpoint;
        if (target < value) {
            left = midpoint - 1;
        } else {
            right = midpoint + 1;
        }
    }

    return null;
}

pub fn betterBinarySearch(arr: []const u8, value: u8) ?usize {
    var left: usize = 0;
    var right: usize = arr.len;

    while (left < right) {
        const midpoint = left + (right - left) / 2;
        const target = arr[midpoint];

        if (target == value) return midpoint;
        if (target < value) {
            left = midpoint + 1;
        } else {
            right = midpoint;
        }
    }

    return null;
}
