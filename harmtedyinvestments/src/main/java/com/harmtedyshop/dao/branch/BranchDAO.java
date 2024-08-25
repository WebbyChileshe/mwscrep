package com.harmtedyshop.dao.branch;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.harmtedyshop.model.Branch;
import com.harmtedyshop.util.DBConnection;

public class BranchDAO {
    private static final String SELECT_ALL_BRANCHES = "SELECT branch_id, branch_name FROM branch";

    public static List<Branch> getAllBranches() throws SQLException {
        List<Branch> branches = new ArrayList<>();
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(SELECT_ALL_BRANCHES);
             ResultSet rs = pstmt.executeQuery()) {
            while (rs.next()) {
                Branch branch = new Branch();
                branch.setBranchId(rs.getInt("branch_id"));
                branch.setBranchName(rs.getString("branch_name"));
                branches.add(branch);
            }
        }
        return branches;
    }
}
