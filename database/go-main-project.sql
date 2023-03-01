-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2023 at 11:53 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `go-main-project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(300) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `username`, `password`) VALUES
(1, 'admin', 'admin@yopmail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(4, 'husnain raza', 'husnain.raza@genetechsolutions.com', 'husnain.raza', '$2a$10$JPVJl2hhb2ZQJElJoTTXAOULNbjI9JVtN.pdU0ZMbjBElkT7j3OM2'),
(5, 'admin', 'admin123@yopmail.com', 'admin1', '0192023a7bbd73250516f069df18b500'),
(6, 'test', 'test1@yopmail.com', 'test', '$2a$10$x8wgB3OzhHfmdkvd3mWN3efvgcf2pVKT9wE0B4xyu8Sus8YSbcFgC'),
(7, 'alpha', 'alpha@yopmail.com', 'alpha', '$2a$10$daUQBaR3yIQU8wmxk7OJDuTav2K.Hs7sOmsNXWvTcwj/Tvxs.bgOq');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(255) UNSIGNED NOT NULL,
  `details` varchar(300) NOT NULL,
  `image` varchar(300) DEFAULT NULL,
  `title` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `details`, `image`, `title`) VALUES
(4, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae laudantium dolor nisi obcaecati, non laboriosam asperiores doloremque tempora repellendus iure!', '1677071928601172200.jpg', 'Possimus aliquam veniam'),
(5, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae laudantium dolor nisi obcaecati, non laboriosam asperiores doloremque tempora repellendus iure!', '1677071952982154200.jpg', 'Repudiandae laudantium'),
(6, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae laudantium dolor nisi obcaecati, non laboriosam asperiores doloremque tempora repellendus iure!', '1677071974161510200.jpg', 'Laboriosam asperiores');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `coursename` varchar(300) NOT NULL,
  `lesson` varchar(100) NOT NULL,
  `week` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `description` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `coursename`, `lesson`, `week`, `price`, `description`) VALUES
(6, 'CSS', '10 Lesson', '1 week', '$5.00', 'shdashd asdkaslkd askdlaskd askdlaskldk');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `id` int(6) UNSIGNED NOT NULL,
  `title` varchar(30) NOT NULL,
  `url` varchar(50) DEFAULT NULL,
  `image` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`id`, `title`, `url`, `image`) VALUES
(16, 'Washing', '#', '1677225057753693300.webp'),
(17, 'Interior Washing ', '#', '1677225124212253900.webp'),
(18, 'Washing ', '#', '1677225148061022000.webp'),
(19, 'interior', '#', '1677227355673611400.webp');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(6) UNSIGNED NOT NULL,
  `title` varchar(30) NOT NULL,
  `details` varchar(300) DEFAULT NULL,
  `image` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `title`, `details`, `image`) VALUES
(14, 'Optional Cleaning Services', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quo enim illum adipisci corrupti cumque, velit autem beatae quisquam incidunt optio!', '1677212453335509100.webp'),
(15, 'Services For Tires', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quo enim illum', '1677212517901577800.webp'),
(16, 'Express Exterior', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quo enim illum', '1677212536862881100.webp'),
(17, 'Auto Detailing', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quo enim illum', '1677212553870195400.webp'),
(18, 'Full Services Wash', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quo enim illum', '1677212570350512200.webp'),
(19, 'Complete Wash', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quo enim illum', '1677212588150343100.webp');

-- --------------------------------------------------------

--
-- Table structure for table `speakers`
--

CREATE TABLE `speakers` (
  `id` int(11) NOT NULL,
  `speakername` varchar(100) NOT NULL,
  `facebook` varchar(300) NOT NULL,
  `instagram` varchar(300) NOT NULL,
  `twiter` varchar(300) NOT NULL,
  `linkdin` varchar(300) NOT NULL,
  `image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `speakers`
--

INSERT INTO `speakers` (`id`, `speakername`, `facebook`, `instagram`, `twiter`, `linkdin`, `image`) VALUES
(6, 'Abdul Sami', 'https://www.facebook.com/login/', 'instagram', 'https://www.facebook.com/login/', 'https://www.facebook.com/login/', '1676447272356944500.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(11) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `detail` varchar(300) NOT NULL,
  `facebook` varchar(300) NOT NULL,
  `github` varchar(300) NOT NULL,
  `dropbox` varchar(300) NOT NULL,
  `twitter` varchar(300) NOT NULL,
  `image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `designation`, `name`, `detail`, `facebook`, `github`, `dropbox`, `twitter`, `image`) VALUES
(9, 'FOUNDER 1', 'Matthew Davis', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magni quos esse tenetur illo qui, nostrum.', '#', '#', '#', '#', '1677242267696651700.jpg'),
(15, 'Washer', 'Sam Simth', '	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magni quos esse tenetur illo qui, nostrum.', '#', '#', '#', '#', '1677228461889629600.jpg'),
(16, 'Interior Washer', 'Erza Scarllet', '	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magni quos esse tenetur illo qui, nostrum.', '#', '#', '#', '#', '1677228543417789400.jpg'),
(17, 'Exterior Washer', 'Mike Law', '	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magni quos esse tenetur illo qui, nostrum.', '#', '#', '#', '#', '1677228591639228200.jpg'),
(18, 'Exterior Washer 2', 'Mike Law', '	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magni quos esse tenetur illo qui, nostrum.', '#', '#', '#', '#', '1677241006805746600.jpg'),
(19, 'Exterior Washer 3', 'Mike Law', '	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magni quos esse tenetur illo qui, nostrum.', '#', '#', '#', '#', '1677241069704373200.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `id` int(6) UNSIGNED NOT NULL,
  `name` varchar(300) NOT NULL,
  `details` varchar(300) NOT NULL,
  `image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`id`, `name`, `details`, `image`) VALUES
(11, 'Karim Abdullah', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eaque doloribus autem aperiam earum nostrum omnis blanditiis corporis perspiciatis adipisci nihil.', '1677233569411313300.jpg'),
(12, 'Habib Aziz', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eaque doloribus autem aperiam earum nostrum omnis blanditiis corporis perspiciatis adipisci nihil.', '1677233613122691100.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `name` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `username` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `roll` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `roll`) VALUES
(20, 'husnain raza', 'husnain.raza@genetechsolutions.com', 'admin123456', '$2a$10$olmWq/bjwvywlKdg0uNc.uV/BlZSlY8bC1Rp27vkwr7mip3P28K4i', 'author'),
(22, 'admin-main', 'admin-main@example.com', 'admin-main', '0192023a7bbd73250516f069df18b500', 'admin'),
(25, 'husnain raza', 'admin123456', 'husnain.raza@genetechsolutions.com', '$2a$10$olmWq/bjwvywlKdg0uNc.uV/BlZSlY8bC1Rp27vkwr7mip3P28K4i', 'author'),
(26, 'husnain raza', 'admin123456', 'husnain.raza@genetechsolutions.com', '$2a$10$olmWq/bjwvywlKdg0uNc.uV/BlZSlY8bC1Rp27vkwr7mip3P28K4i', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `speakers`
--
ALTER TABLE `speakers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `speakers`
--
ALTER TABLE `speakers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
